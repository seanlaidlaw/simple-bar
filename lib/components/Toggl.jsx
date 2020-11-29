import { ClockIcon } from './Icons.jsx'
import { getSettings } from '../settings.js'


const Toggl = ({ output }) => {
  const settings = getSettings()
  const { widgets } = settings
  const { togglWidget } = widgets
  if (!togglWidget || !output) return null

  const { timer } = output
  if (timer == "There is no time entry running!" ) return null



  return (
    <div className="spotify">
      <ClockIcon className="date__icon" />
      {timer}
    </div>
  )
}

export default Toggl