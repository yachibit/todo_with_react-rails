@Task = React.createClass
  render: ->
    taskNodes = @props.tasks.map (task) ->
      `<li>{task.title}</li>`
    `<ul className='Task'>
       {taskNodes}
     </ul>`
