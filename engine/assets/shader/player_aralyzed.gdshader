shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE: hint_screen_texture,filter_linear_mipmap;

void fragment() {
    vec4 original_color = texture(SCREEN_TEXTURE, UV);
    float gray = dot(original_color.rgb, vec3(0.299, 0.587, 0.114));
    COLOR = vec4(vec3(gray), original_color.a);
}