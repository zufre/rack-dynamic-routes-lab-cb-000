class Application
  @@items = []

  def call(env)
    resp = Rack::Response.new
    req = Rack::Response.new(env)

    if req.path.match(/items/)
  item_name = req.path.split("/items/").last
  if @@items.find {|i| i.name == item_name}
    item = @@items.find {|i| i.name == item_name}
    resp.write item.price
      else
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
