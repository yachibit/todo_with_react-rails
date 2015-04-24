@Task = React.createClass
  _onDestroy: ->
    @props.onDestroy(@props.task.id)

  render: ->
    `<li>
       {this.props.task.title}
       <button className='destroy' onClick={this._onDestroy}>
         x
       </button>
     </li>`
