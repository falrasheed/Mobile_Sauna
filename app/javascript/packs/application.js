import "bootstrap"
// import "../plugins/flatpickr";
import flatpickr from "flatpickr"
import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

flatpickr(".datepicker", {});
flatpickr("#range_start", {
  disableMobile: true,
  altInput: true,
  plugins: [new rangePlugin({ input: "#range_end"})]
});

