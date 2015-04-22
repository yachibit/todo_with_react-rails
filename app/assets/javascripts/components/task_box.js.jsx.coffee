@TaskBox = React.createClass
  getInitialState: ->
    tasks: @props.tasks

  handleTaskSubmit: (task) ->
    $.ajax
      url: @props.url
      dataType: 'json'
      type: 'POST'
      data: task: task
    .done (data) =>
      @setState tasks: data
    .fail (xhr, status, err) =>
      console.error @props.url, status, err.toString()

  render: ->
    `<div className='TaskBox'>
       <h1>
         TaskList
       </h1>
       <TaskForm onTaskSubmit={this.handleTaskSubmit} />
       <TaskList tasks={this.state.tasks} />
     </div>`
