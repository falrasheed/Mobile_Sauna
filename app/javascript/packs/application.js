import "bootstrap";
// import "../plugins/flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import flatpickr from "flatpickr";
// import "flatpickr/dist/flatpickr.min.css" // Note this is important!
// import rangePlugin from "flatpickr/dist/plugins/rangePlugin"
import 'mapbox-gl/dist/mapbox-gl.css';
import { initMapbox } from '../plugins/init_mapbox';
import { flat } from '../plugins/flatpickr';

initMapbox();
// flat();

// $(document).ready(function() {
//   // Transition effect for navbar
//   $(window).scroll(function() {
//     // checks if window is scrolled more than 500px, adds/removes solid class
//     if($(this).scrollTop() > 500) {
//         $('.navbar').addClass('solid');
//     } else {
//         $('.navbar').removeClass('solid');
//     }
//   });
// });
