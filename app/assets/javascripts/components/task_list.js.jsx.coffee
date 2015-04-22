@TaskList = React.createClass
  render: ->
    `<div className='TaskList'>
       <Task tasks={this.props.tasks} />
     </div>`
