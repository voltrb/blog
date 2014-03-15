class IndexController < ModelController

  def main_path
    params._controller.or('index') + "/" + params._action.or('home')
  end
end
