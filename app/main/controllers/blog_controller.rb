class BlogController < ModelController

  def initialize(*args)
    puts "New Blog Controller"
    super
  end

  def index
    self.model = :store
  end

  def show
    # TODO: calling first doesn't return what we need
    result = store._posts.find(_id: params._id)

    self.model = result
  end

  def new
    self.model = store._posts.buffer
  end

  def edit
    store._posts.find(_id: params._id).then do |result|
      self.model = result[0].buffer
    end.fail do |error|
      puts "FAILED WITH: #{error}"
    end
  end

  def save
    model.save!.then do
      go '/blog'
    end.fail do |val|
      puts "Failed with #{val.inspect}"
    end
  end
end