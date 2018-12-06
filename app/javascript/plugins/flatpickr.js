import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!

flatpickr(".datepicker", {
  enableTime: true,
  dateFormat: "Y-m-d H:i",
  inline: true,
  "locale": {
      "firstDayOfWeek": 1
  },
  minDate: new Date().fp_incr(0)
})
