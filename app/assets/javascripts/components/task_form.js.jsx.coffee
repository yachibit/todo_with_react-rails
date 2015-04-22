@TaskForm = React.createClass
  handleSubmit: (e) ->
    e.preventDefault()
    title = React.findDOMNode(@refs.title).value.trim()
    return unless title
    @props.onTaskSubmit { title: title, completed: false }
    @refs.title.getDOMNode().value = ''

  render: ->
    `<form className='TaskForm' onSubmit={this.handleSubmit}>
       <input type='text' placeholder='What needs to be done?' ref='title' />
       <input type='submit' value='Post' />
     </form>`
