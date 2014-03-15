class MainController < ModelController

  def main_path
    params._controller.or('main') + "/" + params._action.or('index')
  end
end
