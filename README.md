# Civid - Continuous Integration Video Notifier

Civid is a simple sinatra application, which listens for two routes: /pass and /fail.  When a request is made to one of these, a YouTube search is made with a specified set of keywords, then a random video is selected, and played in the browser using Launchy.  You can configure the keywords for pass and fail by modifying the constants PASS_KEYWORDS and FAIL_KEYWORDS in civid.rb.

At Tribesports, we have hooked our continuous integration server (jenkins) to hit /pass when the build is successful, and /fail when the build fails.  The sinatra application runs on an old laptop that is hooked up to a digital projector.  The keywords we use for pass are "great goal" and for fail "own goal".  Watching the outcome of the video lets us know whether the build has succeeded.
