(defpackage #:cl-raylib
  (:nicknames #:raylib)
  (:use #:cl #:cffi #:alexandria)
  (:export
    ;; Basic Colors
    #:+lightgray+
    #:+gray+
    #:+darkgray+
    #:+yellow+
    #:+gold+
    #:+orange+
    #:+pink+
    #:+red+
    #:+maroon+
    #:+green+
    #:+lime+
    #:+darkgreen+
    #:+skyblue+
    #:+blue+
    #:+darkblue+
    #:+purple+
    #:+violet+
    #:+darkpurple+
    #:+beige+
    #:+brown+
    #:+darkbrown+
    #:+white+
    #:+black+
    #:+blank+
    #:+magenta+
    #:+raywhite+

    #:make-vector2
    #:vector2-x
    #:vector2-y

    #:make-vector3
    #:vector3-x
    #:vector3-y
    #:vector3-z

    #:make-vector4
    #:vector4-x
    #:vector4-y
    #:vector4-z
    #:vector4-w

    #:make-rectangle
    #:rectangle-x
    #:rectangle-y
    #:rectangle-width
    #:rectangle-height

    #:make-texture
    #:texture-id
    #:texture-width
    #:texture-height
    #:texture-mipmaps
    #:texture-format

    #:make-render-texture
    #:render-texture-id
    #:render-texture-texture
    #:render-texture-depth
    #:render-texture-depth-texture

    #:make-patch-info
    #:patch-info-rec
    #:patch-info-left
    #:patch-info-top
    #:patch-info-right
    #:patch-info-bottom
    #:patch-info-type

    #:make-char-info
    #:char-info-value
    #:char-info-offset-x
    #:char-info-offset-y
    #:char-info-advance-x
    #:char-info-image

    #:make-font
    #:font-base-size
    #:font-chars-count
    #:font-texture
    #:font-recs
    #:font-chars

    #:make-camera3d
    #:camera3d-position
    #:camera3d-target
    #:camera3d-up
    #:camera3d-fovy
    #:camera3d-type

    #:make-camera2d
    #:camera2d-offset
    #:camera2d-target
    #:camera2d-rotation
    #:camera2d-zoom

    ;; Log

    ;; Keyboard keys
    #:+key-apostrophe+
    #:+key-comma+
    #:+key-minus+
    #:+key-period+
    #:+key-slash+
    #:+key-zero+
    #:+key-one+
    #:+key-two+
    #:+key-three+
    #:+key-four+
    #:+key-five+
    #:+key-six+
    #:+key-seven+
    #:+key-eight+
    #:+key-nine+
    #:+key-semicolon+
    #:+key-equal+
    #:+key-a+
    #:+key-b+
    #:+key-c+
    #:+key-d+
    #:+key-e+
    #:+key-f+
    #:+key-g+
    #:+key-h+
    #:+key-i+
    #:+key-j+
    #:+key-k+
    #:+key-l+
    #:+key-m+
    #:+key-n+
    #:+key-o+
    #:+key-p+
    #:+key-q+
    #:+key-r+
    #:+key-s+
    #:+key-t+
    #:+key-u+
    #:+key-v+
    #:+key-w+
    #:+key-x+
    #:+key-y+
    #:+key-z+

    ; Function keys
    #:+key-space+
    #:+key-escape+
    #:+key-enter+
    #:+key-tab+
    #:+key-backspace+
    #:+key-insert+
    #:+key-delete+
    #:+key-right+
    #:+key-left+
    #:+key-down+
    #:+key-up+
    #:+key-page-up+
    #:+key-page-down+
    #:+key-home+
    #:+key-end+
    #:+key-caps-lock+
    #:+key-scroll-lock+
    #:+key-num-lock+
    #:+key-print-screen+
    #:+key-pause+
    #:+key-f1+
    #:+key-f2+
    #:+key-f3+
    #:+key-f4+
    #:+key-f5+
    #:+key-f6+
    #:+key-f7+
    #:+key-f8+
    #:+key-f9+
    #:+key-f10+
    #:+key-f11+
    #:+key-f12+
    #:+key-left-shift+
    #:+key-left-control+
    #:+key-left-alt+
    #:+key-left-super+
    #:+key-right-shift+
    #:+key-right-control+
    #:+key-right-alt+
    #:+key-right-super+
    #:+key-kb-menu+
    #:+key-left-bracket+
    #:+key-backslash+
    #:+key-right-bracket+
    #:+key-grave+


    #:+mouse-button-left+
    #:+mouse-button-right+
    #:+mouse-button-middle+
    #:+mouse-button-side+
    #:+mouse-button-extra+
    #:+mouse-button-forward+
    #:+mouse-button-back+



    #:+camera-custom+
    #:+camera-free+
    #:+camera-orbital+
    #:+camera-first-person+
    #:+camera-third-person+

    #:+camera-perspective+
    #:+camera-orthographic+

    #:init-window
    #:window-should-close
    #:close-window
    #:is-window-ready
    #:is-window-minimized
    #:is-window-resized
    #:is-window-hidden
    #:is-window-fullscreen
    #:toggle-fullscreen
    #:unhide-window
    #:hide-window
    #:set-window-icon
    #:set-window-title
    #:set-window-position
    #:set-window-monitor
    #:set-window-min-size
    #:set-window-size
    #:get-window-handle
    #:get-screen-width
    #:get-screen-height
    #:get-monitor-count
    #:get-monitor-width
    #:get-monitor-height
    #:get-monitor-physical-width
    #:get-monitor-physical-height
    #:get-window-position
    #:get-monitor-name
    #:get-clipboard-text
    #:set-clipboard-text
    #:show-cursor
    #:hide-cursor
    #:is-cursor-hidden
    #:enable-cursor
    #:disable-cursor
    #:clear-background
    #:begin-drawing
    #:end-drawing
    #:begin-mode-2d
    #:end-mode-2d
    #:begin-mode-3d
    #:end-mode-3d
    #:begin-texture-mode
    #:end-texture-mode
    #:begin-scissor-mode
    #:end-scissor-mode
    #:get-mouse-ray
    #:get-camera-matrix
    #:get-camera-matrix-2d
    #:get-world-to-screen
    #:set-target-fps
    #:get-fps
    #:get-frame-time
    #:get-time
    #:color-to-int
    #:color-normalize
    #:color-from-normalized
    #:color-to-hsv
    #:color-from-hsv
    #:get-color
    #:fade
    #:set-config-flags
    #:set-trace-log-level
    #:set-trace-log-exit
    #:trace-log
    #:take-screenshot
    #:get-random-value
    #:load-file-data
    #:save-file-data
    #:load-file-text
    #:save-file-text
    #:file-exists
    #:is-file-extension
    #:directory-exists
    #:get-extension
    #:get-file-name
    #:get-file-name-without-ext
    #:get-directory-path
    #:get-prev-directory-path
    #:get-working-directory
    #:get-directory-files
    #:change-directory
    #:is-file-dropped
    #:get-dropped-files
    #:clear-dropped-files
    #:get-file-mod-time
    #:compress-data
    #:decompress-data
    #:save-storage-value
    #:load-storage-value
    #:open-url
    #:is-key-pressed
    #:is-key-down
    #:is-key-released
    #:is-key-up
    #:set-exit-key
    #:get-key-pressed
    #:is-gamepad-available
    #:is-gamepad-name
    #:get-gamepad-name
    #:is-gamepad-button-pressed
    #:is-gamepad-button-down
    #:is-gamepad-button-released
    #:is-gamepad-button-up
    #:get-gamepad-button-pressed
    #:get-gamepad-axis-count
    #:get-gamepad-axis-movement
    #:is-mouse-button-pressed
    #:is-mouse-button-down
    #:is-mouse-button-released
    #:is-mouse-button-up
    #:get-mouse-x
    #:get-mouse-y
    #:get-mouse-position
    #:set-mouse-position
    #:set-mouse-offset
    #:set-mouse-scale
    #:get-mouse-wheel-move
    #:get-touch-x
    #:get-touch-y
    #:get-touch-position
    #:set-gestures-enabled
    #:is-gesture-detected
    #:get-gesture-detected
    #:get-touch-points-count
    #:get-gesture-hold-duration
    #:get-gesture-drag-vector
    #:get-gesture-drag-angle
    #:get-gesture-pinch-vector
    #:get-gesture-pinch-angle
    #:set-camera-mode
    #:update-camera
    #:set-camera-pan-control
    #:set-camera-alt-control
    #:set-camera-smooth-zoom-control
    #:set-camera-move-controls
    #:draw-pixel
    #:draw-pixel-v
    #:draw-line
    #:draw-line-v
    #:draw-line-ex
    #:draw-line-bezier
    #:draw-line-bezier-quad
    #:draw-line-bezier-cubic
    #:draw-line-strip
    #:draw-circle
    #:draw-circle-sector
    #:draw-circle-sector-lines
    #:draw-circle-gradient
    #:draw-circle-v
    #:draw-circle-lines
    #:draw-ellipse
    #:draw-ellipse-lines
    #:draw-ring
    #:draw-ring-lines
    #:draw-rectangle
    #:draw-rectangle-rec
    #:draw-rectangle-pro
    #:draw-rectangle-gradient-v
    #:draw-rectangle-gradient-h
    #:draw-rectangle-gradient-ex
    #:draw-rectangle-lines
    #:draw-rectangle-lines-ex
    #:draw-rectangle-rounded
    #:draw-rectangle-rounded-lines
    #:draw-triangle
    #:draw-triangle-lines
    #:draw-triangle-fan
    #:draw-triangle-strip
    #:draw-poly
    #:draw-poly-lines
    #:check-collision-recs
    #:check-collision-circles
    #:check-collision-circle-rec
    #:get-collision-rec
    #:check-collision-point-rec
    #:check-collision-point-circle
    #:check-collision-point-triangle
    #:load-image
    #:load-image-ex
    #:load-image-pro
    #:load-image-raw
    #:unload-image
    #:export-image
    #:export-image-as-code
    #:get-image-data
    #:get-image-data-normalized
    #:gen-image-color
    #:gen-image-gradient-v
    #:gen-image-gradient-h
    #:gen-image-gradient-radial
    #:gen-image-checked
    #:gen-image-white-noise
    #:gen-image-perlin-noise
    #:gen-image-cellular
    #:image-copy
    #:image-from-image
    #:image-text
    #:image-text-ex
    #:image-to-pot
    #:image-format
    #:image-alpha-mask
    #:image-alpha-clear
    #:image-alpha-crop
    #:image-alpha-premultiply
    #:image-crop
    #:image-resize
    #:image-resize-n-n
    #:image-resize-canvas
    #:image-mipmaps
    #:image-dither
    #:image-flip-vertical
    #:image-flip-horizontal
    #:image-rotate-cw
    #:image-rotate-ccw
    #:image-color-tint
    #:image-color-invert
    #:image-color-grayscale
    #:image-color-contrast
    #:image-color-brightness
    #:image-color-replace
    #:image-extract-palette
    #:get-image-alpha-border
    #:load-texture
    #:load-texture-from-image
    #:load-texture-cubemap
    #:load-render-texture
    #:unload-texture
    #:unload-render-texture
    #:update-texture
    #:get-texture-data
    #:get-screen-data
    #:gen-texture-mipmaps
    #:set-texture-filter
    #:set-texture-wrap
    #:draw-texture
    #:draw-texture-v
    #:draw-texture-ex
    #:draw-texture-rec
    #:draw-texture-quad
    #:draw-texture-pro
    #:draw-texture-n-patch
    #:get-font-default
    #:load-font
    #:load-font-ex
    #:load-font-from-image
    #:load-font-data
    #:unload-font
    #:draw-fps
    #:draw-text
    #:draw-text-ex
    #:draw-text-rec
    #:draw-text-rec-ex
    #:draw-text-codepoint
    #:measure-text
    #:measure-text-ex
    #:get-glyph-index
    #:text-copy
    #:text-is-equal
    #:text-length
    #:text-format
    #:text-subtext
    #:text-replace
    #:text-insert
    #:text-join
    #:text-split
    #:text-append
    #:text-find-index
    #:text-to-upper
    #:text-to-lower
    #:text-to-pascal
    #:text-to-integer
    #:text-to-utf8
    #:get-codepoints
    #:get-codepoints-count
    #:get-next-codepoint
    #:codepoint-to-utf8
    #:draw-line-3d
    #:draw-circle-3d
    #:draw-cube
    #:draw-cube-v
    #:draw-cube-wires
    #:draw-cube-wires-v
    #:draw-cube-texture
    #:draw-sphere
    #:draw-sphere-ex
    #:draw-sphere-wires
    #:draw-cylinder
    #:draw-cylinder-wires
    #:draw-plane
    #:draw-ray
    #:draw-grid
    #:draw-gizmo
    #:load-model
    #:load-model-from-mesh
    #:unload-model
    #:load-meshes
    #:export-mesh
    #:unload-mesh
    #:load-materials
    #:load-material-defaults
    #:unload-material
    #:set-material-texture
    #:set-model-mesh-material
    #:load-model-animations
    #:update-model-animation
    #:unload-model-animation
    #:is-model-animation-valid
    #:gen-mesh-plane
    #:gen-mesh-cube
    #:gen-mesh-sphere
    #:gen-mesh-hemi-sphere
    #:gen-mesh-cylinder
    #:gen-mesh-torus
    #:gen-mesh-knot
    #:gen-mesh-heightmap
    #:gen-mesh-cubicmap
    #:mesh-bounding-box
    #:mesh-tangents
    #:mesh-binormals
    #:draw-model
    #:draw-model-ex
    #:draw-model-wires
    #:draw-model-wires-ex
    #:draw-bounding-box
    #:draw-billboard
    #:draw-billboard-rec
    #:calculate-bounding-box
    #:check-collision-spheres
    #:check-collision-boxes
    #:check-collision-box-sphere
    #:check-collision-ray-sphere
    #:check-collision-ray-sphere-ex
    #:check-collision-ray-box
    #:get-collision-ray-model
    #:get-collision-ray-triangle
    #:get-collision-ray-ground
    #:load-shader
    #:load-shader-code
    #:unload-shader
    #:get-shader-default
    #:get-texture-default
    #:get-shapes-texture
    #:get-shapes-texture-rec
    #:set-shapes-texture
    #:get-shader-location
    #:set-shader-value
    #:set-shader-value-v
    #:set-shader-value-matrix
    #:set-shader-value-texture
    #:set-matrix-projection
    #:set-matrix-modelview
    #:get-matrix-modelview
    #:get-matrix-projection
    #:gen-texture-cubemap
    #:gen-texture-irradiance
    #:gen-texture-prefilter
    #:gen-texture-brdf
    #:begin-shader-mode
    #:end-shader-mode
    #:begin-blend-mode
    #:end-blend-mode
    #:init-vr-simulator
    #:close-vr-simulator
    #:update-vr-tracking
    #:set-vr-configuration
    #:is-vr-simulator-ready
    #:toggle-vr-mode
    #:begin-vr-drawing
    #:end-vr-drawing
    #:init-audio-device
    #:close-audio-device
    #:is-audio-device-ready
    #:set-master-volume
    #:load-wave
    #:load-sound
    #:load-sound-from-wave
    #:update-sound
    #:unload-wave
    #:unload-sound
    #:export-wave
    #:export-wave-as-code
    #:play-sound
    #:pause-sound
    #:resume-sound
    #:play-sound-multi
    #:stop-sound-multi
    #:get-sounds-playing
    #:is-sound-playing
    #:set-sound-volume
    #:set-sound-pitch
    #:wave-format
    #:wave-copy
    #:wave-crop
    #:get-wave-data
    #:load-music-stream
    #:unload-music-stream
    #:play-music-stream
    #:update-music-stream
    #:stop-music-stream
    #:pause-music-stream
    #:resume-music-stream
    #:is-music-playing
    #:set-music-volume
    #:set-music-pitch
    #:get-music-loop-count
    #:get-music-time-length
    #:get-music-time-played
    #:init-audio-stream
    #:update-audio-stream
    #:close-audio-stream
    #:is-audio-stream-processed
    #:play-audio-stream
    #:pause-audio-stream
    #:resume-audio-stream
    #:is-audio-stream-palying
    #:stop-audio-stream
    #:set-audio-stream-volume
    #:set-audio-stream-pitch
    #:set-audio-stream-buffer-size


    ;; high level api
    #:with-window
    #:with-drawing
    #:with-mode-2d
    #:with-mode-3d
    #:with-texture-mode
    #:with-shader-mode
    #:with-blend-mode
    #:with-vr-simulator
    #:with-vr-drawing
    #:with-audio-device
    #:with-audio-stream
    #:with-sound))
