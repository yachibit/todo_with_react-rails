@TaskList = React.createClass
  render: ->
    tasks = @props.tasks.map (task) =>
      _onDestroy = this.props.onDestroy
      console.log _onDestroy
      `<Task task={task} onDestroy={_onDestroy} />`
    `<ul className='TaskList'>
       {tasks}
     </ul>`
