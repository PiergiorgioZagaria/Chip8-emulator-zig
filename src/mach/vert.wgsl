struct VertexOutput {
    @builtin(position) position: vec4<f32>,
    @location(0) fragUV: vec2<f32>,
};

@stage(vertex)fn main(
    @builtin(vertex_index) VertexIndex: u32
) -> VertexOutput {
    var out: VertexOutput;
    out.position = array<vec4<f32>, 6>(
        vec4<f32>(-1.0, -1.0, 0.0, 1.0),
        vec4<f32>(1.0, -1.0, 0.0, 1.0),
        vec4<f32>(-1.0, 1.0, 0.0, 1.0),
        vec4<f32>(1.0, -1.0, 0.0, 1.0),
        vec4<f32>(1.0, 1.0, 0.0, 1.0),
        vec4<f32>(-1.0, 1.0, 0.0, 1.0),
    )[VertexIndex];
    out.fragUV = ((out.position + vec4(1.0)) / 2.0).xy;
    out.fragUV.y = -out.fragUV.y + 1.0;
    return out;
}
