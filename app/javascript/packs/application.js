require("@rails/ujs").start()

// import CSS
import "stylesheets/application.scss";

// import vendor JS
import "jquery";
import "bootstrap";

// import images
const importAll = r => r.keys().map(r);
importAll(require.context("../images", false, /\.(png|jpe?g|svg)$/));
