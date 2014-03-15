get "/about", _action: 'about'
get "/blog/{_id}/edit", _controller: 'blog', _action: 'edit'
get "/blog/{_id}", _controller: 'blog', _action: 'show'
get "/blog", _controller: 'blog', _action: 'index'
get "/blog/new", _controller: 'blog', _action: 'new'


# The main route
get '/'