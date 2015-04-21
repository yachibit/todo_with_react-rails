@TaskList = React.createClass
  render: ->
   `<div className='TaskList'>
      <h1>
        TaskList
      </h1>
      <Task tasks={this.props.tasks} />
    </div>`
