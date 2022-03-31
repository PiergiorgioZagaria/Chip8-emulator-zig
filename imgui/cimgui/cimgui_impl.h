#pragma once

typedef struct SDL_Window SDL_Window;
typedef struct SDL_Renderer SDL_Renderer;
struct SDL_Window;
struct SDL_Renderer;
typedef union SDL_Event SDL_Event;

struct SDL_Renderer;

CIMGUI_API bool ImGui_ImplSDL2_InitForOpenGL(SDL_Window *window,
                                             void *sdl_gl_context);
CIMGUI_API bool ImGui_ImplSDL2_InitForVulkan(SDL_Window *window);
CIMGUI_API bool ImGui_ImplSDL2_InitForD3D(SDL_Window *window);
CIMGUI_API bool ImGui_ImplSDL2_InitForMetal(SDL_Window *window);
CIMGUI_API bool ImGui_ImplSDL2_InitForSDLRenderer(SDL_Window *window,
                                                  SDL_Renderer *renderer);
CIMGUI_API void ImGui_ImplSDL2_Shutdown(void);
CIMGUI_API void ImGui_ImplSDL2_NewFrame(void);
CIMGUI_API bool ImGui_ImplSDL2_ProcessEvent(const SDL_Event *event);
CIMGUI_API bool ImGui_ImplSDLRenderer_Init(SDL_Renderer *renderer);
CIMGUI_API void ImGui_ImplSDLRenderer_Shutdown(void);
CIMGUI_API void ImGui_ImplSDLRenderer_NewFrame(void);
CIMGUI_API void ImGui_ImplSDLRenderer_RenderDrawData(ImDrawData *draw_data);
CIMGUI_API bool ImGui_ImplSDLRenderer_CreateFontsTexture(void);
CIMGUI_API void ImGui_ImplSDLRenderer_DestroyFontsTexture(void);
CIMGUI_API bool ImGui_ImplSDLRenderer_CreateDeviceObjects(void);
CIMGUI_API void ImGui_ImplSDLRenderer_DestroyDeviceObjects(void);
// #ifdef __cplusplus
// extern "C" {
// #endif
// bool ImGui_ImplSDL2_InitForOpenGL(SDL_Window *window, void *sdl_gl_context);
// bool ImGui_ImplSDL2_InitForVulkan(SDL_Window *window);
// bool ImGui_ImplSDL2_InitForD3D(SDL_Window *window);
// bool ImGui_ImplSDL2_InitForMetal(SDL_Window *window);
// bool ImGui_ImplSDL2_InitForSDLRenderer(SDL_Window *window,
//                                        SDL_Renderer *renderer);
// void ImGui_ImplSDL2_Shutdown(void);
// void ImGui_ImplSDL2_NewFrame(void);
// bool ImGui_ImplSDL2_ProcessEvent(const SDL_Event *event);
// bool ImGui_ImplSDLRenderer_Init(SDL_Renderer *renderer);
// void ImGui_ImplSDLRenderer_Shutdown(void);
// void ImGui_ImplSDLRenderer_NewFrame(void);
// void ImGui_ImplSDLRenderer_RenderDrawData(ImDrawData *draw_data);
// bool ImGui_ImplSDLRenderer_CreateFontsTexture(void);
// void ImGui_ImplSDLRenderer_DestroyFontsTexture(void);
// bool ImGui_ImplSDLRenderer_CreateDeviceObjects(void);
// void ImGui_ImplSDLRenderer_DestroyDeviceObjects(void);

// #ifdef __cplusplus
// }
// #endif
