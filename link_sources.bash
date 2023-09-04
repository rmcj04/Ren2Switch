

mkdir -p source/module
mkdir -p include/module include/module/pygame_sdl2 include/module/src

ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.color.c) source/module/pygame_sdl2.color.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.controller.c) source/module/pygame_sdl2.controller.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.display.c) source/module/pygame_sdl2.display.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.draw.c) source/module/pygame_sdl2.draw.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.error.c) source/module/pygame_sdl2.error.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.event.c) source/module/pygame_sdl2.event.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.font.c) source/module/pygame_sdl2.font.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.gfxdraw.c) source/module/pygame_sdl2.gfxdraw.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.image.c) source/module/pygame_sdl2.image.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.joystick.c) source/module/pygame_sdl2.joystick.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.key.c) source/module/pygame_sdl2.key.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.locals.c) source/module/pygame_sdl2.locals.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.mixer.c) source/module/pygame_sdl2.mixer.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.mixer_music.c) source/module/pygame_sdl2.mixer_music.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.mouse.c) source/module/pygame_sdl2.mouse.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.power.c) source/module/pygame_sdl2.power.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.pygame_time.c) source/module/pygame_sdl2.pygame_time.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.rect.c) source/module/pygame_sdl2.rect.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.render.c) source/module/pygame_sdl2.render.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.rwobject.c) source/module/pygame_sdl2.rwobject.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.scrap.c) source/module/pygame_sdl2.scrap.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.surface.c) source/module/pygame_sdl2.surface.c
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.transform.c) source/module/pygame_sdl2.transform.c

ln -sf $(realpath pygame_sdl2-source/src/SDL2_rotozoom.c) source/module/SDL2_rotozoom.c
ln -sf $(realpath pygame_sdl2-source/src/SDL_gfxPrimitives.c) source/module/SDL_gfxPrimitives.c
ln -sf $(realpath pygame_sdl2-source/src/alphablit.c) source/module/alphablit.c
ln -sf $(realpath pygame_sdl2-source/src/write_jpeg.c) source/module/write_jpeg.c
ln -sf $(realpath pygame_sdl2-source/src/write_png.c) source/module/write_png.c

ln -sf $(realpath renpy-source/module/IMG_savepng.c) source/module/IMG_savepng.c
ln -sf $(realpath renpy-source/module/core.c) source/module/core.c
ln -sf $(realpath renpy-source/module/egl_none.c) source/module/egl_none.c
ln -sf $(realpath renpy-source/module/ffmedia.c) source/module/ffmedia.c
ln -sf $(realpath renpy-source/module/ftsupport.c) source/module/ftsupport.c

ln -sf $(realpath renpy-source/module/gen-static/_renpy.c) source/module/_renpy.c
ln -sf $(realpath renpy-source/module/gen-static/_renpybidi.c) source/module/_renpybidi.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.audio.renpysound.c) source/module/renpy.audio.renpysound.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.display.accelerator.c) source/module/renpy.display.accelerator.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.display.matrix.c) source/module/renpy.display.matrix.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.display.render.c) source/module/renpy.display.render.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.gl.c) source/module/renpy.gl.gl.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.gldraw.c) source/module/renpy.gl.gldraw.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.glenviron_shader.c) source/module/renpy.gl.glenviron_shader.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.glrtt_copy.c) source/module/renpy.gl.glrtt_copy.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.glrtt_fbo.c) source/module/renpy.gl.glrtt_fbo.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl.gltexture.c) source/module/renpy.gl.gltexture.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.parsersupport.c) source/module/renpy.parsersupport.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.pydict.c) source/module/renpy.pydict.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.style.c) source/module/renpy.style.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_activate_functions.c) source/module/renpy.styledata.style_activate_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_functions.c) source/module/renpy.styledata.style_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_hover_functions.c) source/module/renpy.styledata.style_hover_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_idle_functions.c) source/module/renpy.styledata.style_idle_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_insensitive_functions.c) source/module/renpy.styledata.style_insensitive_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_selected_activate_functions.c) source/module/renpy.styledata.style_selected_activate_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_selected_functions.c) source/module/renpy.styledata.style_selected_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_selected_hover_functions.c) source/module/renpy.styledata.style_selected_hover_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_selected_idle_functions.c) source/module/renpy.styledata.style_selected_idle_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.style_selected_insensitive_functions.c) source/module/renpy.styledata.style_selected_insensitive_functions.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.styleclass.c) source/module/renpy.styledata.styleclass.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.styledata.stylesets.c) source/module/renpy.styledata.stylesets.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.text.ftfont.c) source/module/renpy.text.ftfont.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.text.textsupport.c) source/module/renpy.text.textsupport.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.text.texwrap.c) source/module/renpy.text.texwrap.c

ln -sf $(realpath renpy-source/module/renpybidicore.c) source/module/renpybidicore.c
ln -sf $(realpath renpy-source/module/renpysound_core.c) source/module/renpysound_core.c
ln -sf $(realpath renpy-source/module/subpixel.c) source/module/subpixel.c
ln -sf $(realpath renpy-source/module/ttgsubtable.c) source/module/ttgsubtable.c


ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.display_api.h) include/module/pygame_sdl2/pygame_sdl2.display_api.h
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.event.h) include/module/pygame_sdl2/pygame_sdl2.event.h
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.rwobject_api.h) include/module/pygame_sdl2/pygame_sdl2.rwobject_api.h
ln -sf $(realpath pygame_sdl2-source/gen-static/pygame_sdl2.surface_api.h) include/module/pygame_sdl2/pygame_sdl2.surface_api.h
ln -sf $(realpath pygame_sdl2-source/src/SDL2_rotozoom.h) include/module/SDL2_rotozoom.h
ln -sf $(realpath pygame_sdl2-source/src/SDL_gfxPrimitives.h) include/module/SDL_gfxPrimitives.h
ln -sf $(realpath pygame_sdl2-source/src/SDL_gfxPrimitives_font.h) include/module/SDL_gfxPrimitives_font.h
ln -sf $(realpath pygame_sdl2-source/src/pygame_sdl2/pygame_sdl2.h) include/module/pygame_sdl2/pygame_sdl2.h
ln -sf $(realpath pygame_sdl2-source/src/python_threads.h) include/module/python_threads.h
ln -sf $(realpath pygame_sdl2-source/src/surface.h) include/module/src/surface.h
ln -sf $(realpath pygame_sdl2-source/src/write_jpeg.h) include/module/write_jpeg.h
ln -sf $(realpath pygame_sdl2-source/src/write_png.h) include/module/write_png.h
ln -sf $(realpath pygame_sdl2-source/src/sdl_image_compat.h) include/module/sdl_image_compat.h

ln -sf $(realpath renpy-source/module/IMG_savepng.h) include/module/IMG_savepng.h
ln -sf $(realpath renpy-source/module/eglsupport.h) include/module/eglsupport.h
ln -sf $(realpath renpy-source/module/ftsupport.h) include/module/ftsupport.h
ln -sf $(realpath renpy-source/module/gl2debug.h) include/module/gl2debug.h
ln -sf $(realpath renpy-source/module/glcompat.h) include/module/glcompat.h
ln -sf $(realpath renpy-source/module/mmx.h) include/module/mmx.h
ln -sf $(realpath renpy-source/module/pyfreetype.h) include/module/pyfreetype.h
ln -sf $(realpath renpy-source/module/renpy.h) include/module/renpy.h
ln -sf $(realpath renpy-source/module/renpybidicore.h) include/module/renpybidicore.h
ln -sf $(realpath renpy-source/module/renpygl.h) include/module/renpygl.h
ln -sf $(realpath renpy-source/module/renpysound_core.h) include/module/renpysound_core.h
ln -sf $(realpath renpy-source/module/steamcallbacks.h) include/module/steamcallbacks.h
ln -sf $(realpath renpy-source/module/ttgsubtable.h) include/module/ttgsubtable.h

ln -sf $(realpath renpy-source/module/gen-static/renpy.compat.dictviews.c) source/module/renpy.compat.dictviews.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2draw.c) source/module/renpy.gl2.gl2draw.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2mesh.c) source/module/renpy.gl2.gl2mesh.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2mesh2.c) source/module/renpy.gl2.gl2mesh2.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2mesh3.c) source/module/renpy.gl2.gl2mesh3.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2model.c) source/module/renpy.gl2.gl2model.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2polygon.c) source/module/renpy.gl2.gl2polygon.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2shader.c) source/module/renpy.gl2.gl2shader.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.gl2.gl2texture.c) source/module/renpy.gl2.gl2texture.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.uguu.gl.c) source/module/renpy.uguu.gl.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.uguu.uguu.c) source/module/renpy.uguu.uguu.c

ln -sf $(realpath renpy-source/module/gen-static/renpy.encryption.c) source/module/renpy.encryption.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.lexersupport.c) source/module/renpy.lexersupport.c
ln -sf $(realpath renpy-source/module/gen-static/renpy.display.quaternion.c) source/module/renpy.display.quaternion.c
