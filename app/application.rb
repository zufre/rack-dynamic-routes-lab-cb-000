class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match(/items/)
      item_name = req.path.split("/items").last
      if item = @@items.find{|i| i.name.downcase == item_name.downcase}
        resp.write item.priceelse
        rep.write "Item not found"
        resp.status = 400
      end
    else
      resp.write "Route not found"
      resp.status = 404
    end
    resp.finish
  end
end
