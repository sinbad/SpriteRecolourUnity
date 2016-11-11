# SpriteRecolour Unity demo project

This is a demonstration Unity project for [SpriteRecolour](https://github.com/sinbad/spriterecolour)
command line tool.

![Example](SpriteRecolourAnimated.gif)

From any sprite, a 'reference' sprite is generated which indexes either a
palette texture, or an array of shader parameters, either of which can then be
swapped to recolour the sprites without any additional copies of the sprite
texture.

This demo has both examples of using 1D palette textures and shader parameters.
The reference sprite is different in each case because for the palette
texture the UV ranges from 0-1 regardless of palette size (with the texture
shrinking), while with shader parameters the indexing is more direct. You
can make either work with one reference sprite with some additional calculations
in the shader, but usually you would pick one approach or the other to make it
simpler, hence why I've shown them as separate examples.

The shader parameter version dynamically lerps between two palettes; you could
do that with the palette texture too by updating the texture in code (it's small)
but the example fits parameters better.

Hope it's useful!

# Attribution

Thanks to Stephen Challener (Redshrike) and Zi Ye, for the [Sinbad sprite](http://opengameart.org/content/four-characters-my-lpc-entries), figured it was appropriate since it's the
mascot for an engine I previously created, [Ogre3D](http://ogre3d.org)

# License (MIT)

Copyright © 2016 Steve Streeting

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
