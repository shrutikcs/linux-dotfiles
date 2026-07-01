float sdSegment(vec2 p, vec2 a, vec2 b) {
    vec2 pa = p - a;
    vec2 ba = b - a;
    float h = clamp(dot(pa, ba) / max(dot(ba, ba), 0.001), 0.0, 1.0);
    return length(pa - ba * h);
}

vec2 cursorCenter(vec4 cursor) {
    return vec2(-cursor.x + cursor.z * 0.5, iResolution.y - cursor.y + cursor.w * 0.5);
}

void mainImage(out vec4 fragColor, in vec2 fragCoord) {
    vec4 base = texture(iChannel0, fragCoord / iResolution.xy);

    vec2 current = cursorCenter(iCurrentCursor);
    vec2 previous = cursorCenter(iPreviousCursor);
    float elapsed = max(iTime - iTimeCursorChange, 0.0);
    float fade = 1.0 - smoothstep(0.0, 0.18, elapsed);

    float cursorSize = max(max(iCurrentCursor.z, iCurrentCursor.w), 8.0);
    float dist = sdSegment(fragCoord, previous, current);
    float trail = smoothstep(cursorSize * 0.85, 0.0, dist) * fade;
    float glow = smoothstep(cursorSize * 1.8, 0.0, dist) * fade * 0.35;

    vec3 color = mix(base.rgb, iCursorColor, min(trail * 0.45 + glow * 0.25, 0.45));
    fragColor = vec4(color, base.a);
}
