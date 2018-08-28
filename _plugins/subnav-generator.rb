require "pp"

class SubnavGenerator < Jekyll::Generator

  def generate(site)
    site.config['navigation'] = generateFromFiles(site)
    # site.config['navigation'] = generateFromConfig(site)
    pp site.config['navigation']
  end

  # def generateFromFiles(site)
  #   nav = site.pages.select{ |page|
  #     path = page.url.split("/")
  #     path.shift
  #     path.length <= 1
  #   }

  #   return nav.map { |e|
  #     page = { 'title' => e.data['title'], 'url' => e.url}

  #     if e.data['folder'] == true
  #       page['children'] = getPageChildren(site, page)
  #       site.pages.delete(e)
  #     end

  #     page
  #   }
  # end

  def generateFromFiles(site)
    pages = site.pages.select { |page| 
      page.ext != '.scss' and page.ext != '.css'
    }

    nav = []
    pages.each { |page|
      pageHash = { 'key' => page.basename, 'title' => page.data['title'], 'url' => page.url }
      
      path = page.path.split('/')
      path.shift

      url = page.url.split('/')
      url.shift
      page.data['root'] = '../' * url.length
      
      if(path.length > 1)
        key = path.first
        folderHash = nav.find {|p| p['key'] == key }
        if( !folderHash )
          folderName = getTitle(key)
          folderHash = { 'key' => key, 'title' => folderName, 'children' => []}
          nav.push(folderHash)
        end
        folderHash['children'].push(pageHash)
      else
        nav.push(pageHash)
      end
    }

    nav.sort_by(&:first)
  end

  def generateFromConfig(site)
    site.config['navigation'].each { |page|
      if page['url'] and page['url'] != '/'
        subnav = getPageChildren(site, page)
        page["children"] = subnav unless subnav.empty?
      end
    }
    return site.config['navigation']
  end

  def getTitle(key)
    key.gsub(/\d+/,'').gsub('-', ' ').strip.split.map(&:capitalize).join(' ')
  end

  def getPageChildren(site, page)
    site.pages.select {|x| 
      x['url'].include? page['url'] if x['url'] and x['url'] != page['url']
    }
  end
end
