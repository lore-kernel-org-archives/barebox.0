Delivery-date: Fri, 14 Jan 2022 11:07:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JUA-001wae-RC
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 11:07:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8JU8-0004Kn-5k
	for lore@pengutronix.de; Fri, 14 Jan 2022 11:07:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yMRCwSW0BMzhR6Z7wm/u3L4oMEp6PX+FFcYgwMdQycQ=; b=yYNvIR+8qzN3nZNl/lmXSTCSPs
	zj2uiKTG48q7MHi18YTMc7j7hSa7JBMU+CFnpCubZ9iGUHq81aC8CIsYTIVrLCnlHU+WZj56bfU3o
	410Sr93i9XdKmbOAWuFiURdIpN+yvg0SPcbaUYZadTqxUAgh/nuFKDuayagk/nKZg0EdToLFiQlKJ
	ScmN770R8ZvlKy+ymaaReMK5czNY8+Ed5V/uMd/0aoHnVcWM1AtqZVmND9u03INitK8XRjWQSPj16
	WpenDORH88h0dnIjk9Pm1Ky6UFIvHCc/MU2w9rafoGa7wPCIbYhdUWo5y4F17kBrvHUiyDFwzvwwB
	7gPRQWrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8JSX-008dey-BZ; Fri, 14 Jan 2022 10:05:25 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8JSP-008ddK-Hl
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 10:05:21 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1n8JSN-00046B-Nf; Fri, 14 Jan 2022 11:05:15 +0100
To: Jules Maselbas <jmaselbas@kalray.eu>, barebox@lists.infradead.org
References: <20220110221255.5003-1-jmaselbas@kalray.eu>
 <20220110221255.5003-3-jmaselbas@kalray.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0ca90254-a1d1-7151-0236-4dd92ee4d620@pengutronix.de>
Date: Fri, 14 Jan 2022 11:05:15 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220110221255.5003-3-jmaselbas@kalray.eu>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_020517_979189_AE773634 
X-CRM114-Status: GOOD (  53.42  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/5] gui: Add qoi image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.01.22 23:12, Jules Maselbas wrote:

Could you add a link there the project is from, what version
you're importing. Perhaps how to update them in the future?
(Do we touch the header, or is it just some macros we define
outside).

> Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
> ---
>  lib/gui/Kconfig  |   5 +
>  lib/gui/Makefile |   1 +
>  lib/gui/qoi.c    |  94 +++++++
>  lib/gui/qoi.h    | 671 +++++++++++++++++++++++++++++++++++++++++++++++
>  4 files changed, 771 insertions(+)
>  create mode 100644 lib/gui/qoi.c
>  create mode 100644 lib/gui/qoi.h
> 
> diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
> index 2625d9fb2f..f0263c71cc 100644
> --- a/lib/gui/Kconfig
> +++ b/lib/gui/Kconfig
> @@ -16,6 +16,11 @@ config PNG
>  	bool "png"
>  	select ZLIB
>  
> +config QOI
> +	bool "qoi"
> +	help
> +	  Support for the Quite OK Image format
> +
>  if PNG
>  
>  choice
> diff --git a/lib/gui/Makefile b/lib/gui/Makefile
> index 31e66225d7..5ed190e9f8 100644
> --- a/lib/gui/Makefile
> +++ b/lib/gui/Makefile
> @@ -1,5 +1,6 @@
>  obj-$(CONFIG_BMP)	+= bmp.o
>  obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
> +obj-$(CONFIG_QOI)	+= qoi.o
>  obj-$(CONFIG_PNG)	+= png.o
>  obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
>  obj-$(CONFIG_PICOPNG)	+= png_pico.o picopng.o
> diff --git a/lib/gui/qoi.c b/lib/gui/qoi.c
> new file mode 100644
> index 0000000000..f6c1bc1b94
> --- /dev/null
> +++ b/lib/gui/qoi.c

License statement missing.

> @@ -0,0 +1,94 @@
> +#include <common.h>
> +#include <errno.h>
> +#include <malloc.h>
> +#include <fb.h>
> +#include <asm/byteorder.h>
> +#include <gui/graphic_utils.h>
> +#include <init.h>
> +#include <gui/image_renderer.h>
> +#include <asm/unaligned.h>
> +
> +#define QOI_NO_STDIO
> +#define QOI_IMPLEMENTATION
> +#include "qoi.h"
> +
> +static struct image *qoi_open(char *inbuf, int insize)
> +{
> +	struct image *img;
> +	void *data;
> +	qoi_desc qoi;
> +
> +	img = calloc(1, sizeof(*img));
> +	if (!img)
> +		return ERR_PTR(-ENOMEM);
> +
> +	data = qoi_decode(inbuf, insize, &qoi, 0);
> +	if (!data) {
> +		free(img);
> +		return ERR_PTR(-ENOMEM);
> +	}
> +
> +	img->data = data;
> +	img->height = qoi.height;
> +	img->width = qoi.width;
> +	img->bits_per_pixel = qoi.channels * 8;
> +
> +	pr_debug("qoi: %d x %d  x %d data@0x%p\n", img->width, img->height,
> +		 img->bits_per_pixel, img->data);

Nitpick: You can define a common prefix
with pr_fmt at the top of the file, e.g

#define pr_fmt(fmt) "qoi: " fmt

> +	return img;
> +}
> +
> +static void qoi_close(struct image *img)
> +{
> +	free(img->data);

Curious API that open() is allocating, but close's caller is
the one resposible for freeing. Should probably be fixed up.

> +}
> +
> +static int qoi_renderer(struct screen *sc, struct surface *s, struct image *img)
> +{
> +	int alpha = img->bits_per_pixel == (4 * 8);
> +	int width = s->width;
> +	int height = s->height;
> +	int startx = s->x;
> +	int starty = s->y;
> +	void *buf;
> +
> +	if (s->width < 0)
> +		width = img->width;
> +	if (s->height < 0)
> +		height = img->height;
> +
> +	if (startx < 0) {
> +		startx = (sc->s.width - width) / 2;
> +		if (startx < 0)
> +			startx = 0;
> +	}
> +
> +	if (starty < 0) {
> +		starty = (sc->s.height - height) / 2;
> +		if (starty < 0)
> +			starty = 0;
> +	}
> +
> +	width = min(width, sc->s.width - startx);
> +	height = min(height, sc->s.height - starty);
> +
> +	buf = gui_screen_render_buffer(sc);
> +
> +	gu_rgba_blend(sc->info, img, buf, height, width, startx, starty, alpha);
> +
> +	return img->height;
> +}
> +
> +static struct image_renderer qoi = {
> +	.type = filetype_qoi,
> +	.open = qoi_open,
> +	.close = qoi_close,
> +	.renderer = qoi_renderer,
> +	.keep_file_data = 1,

Do you really need this? For bmp, it makes sense, because the pixel data isn't
compressed, so there are direct pointers into it. But if you uncompress into a
newly allocated buffer, you should not need to keep (and leak) inbuf's content

> +};
> +
> +static int qoi_init(void)
> +{
> +	return image_renderer_register(&qoi);
> +}
> +fs_initcall(qoi_init);
> diff --git a/lib/gui/qoi.h b/lib/gui/qoi.h
> new file mode 100644
> index 0000000000..988f9edcb4
> --- /dev/null
> +++ b/lib/gui/qoi.h
> @@ -0,0 +1,671 @@
> +/*
> +
> +QOI - The "Quite OK Image" format for fast, lossless image compression
> +
> +Dominic Szablewski - https://phoboslab.org
> +
> +
> +-- LICENSE: The MIT License(MIT)

Can you turn this into a SPDX-License-Identifier: please?

> +
> +Copyright(c) 2021 Dominic Szablewski
> +
> +Permission is hereby granted, free of charge, to any person obtaining a copy of
> +this software and associated documentation files(the "Software"), to deal in
> +the Software without restriction, including without limitation the rights to
> +use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
> +of the Software, and to permit persons to whom the Software is furnished to do
> +so, subject to the following conditions :
> +The above copyright notice and this permission notice shall be included in all
> +copies or substantial portions of the Software.
> +THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
> +IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
> +FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
> +AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
> +LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> +OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
> +SOFTWARE.
> +
> +
> +-- About
> +
> +QOI encodes and decodes images in a lossless format. Compared to stb_image and
> +stb_image_write QOI offers 20x-50x faster encoding, 3x-4x faster decoding and
> +20% better compression.
> +
> +
> +-- Synopsis
> +
> +// Define `QOI_IMPLEMENTATION` in *one* C/C++ file before including this
> +// library to create the implementation.
> +
> +#define QOI_IMPLEMENTATION
> +#include "qoi.h"
> +
> +// Encode and store an RGBA buffer to the file system. The qoi_desc describes
> +// the input pixel data.
> +qoi_write("image_new.qoi", rgba_pixels, &(qoi_desc){
> +	.width = 1920,
> +	.height = 1080,
> +	.channels = 4,
> +	.colorspace = QOI_SRGB
> +});
> +
> +// Load and decode a QOI image from the file system into a 32bbp RGBA buffer.
> +// The qoi_desc struct will be filled with the width, height, number of channels
> +// and colorspace read from the file header.
> +qoi_desc desc;
> +void *rgba_pixels = qoi_read("image.qoi", &desc, 4);
> +
> +
> +
> +-- Documentation
> +
> +This library provides the following functions;
> +- qoi_read    -- read and decode a QOI file
> +- qoi_decode  -- decode the raw bytes of a QOI image from memory
> +- qoi_write   -- encode and write a QOI file
> +- qoi_encode  -- encode an rgba buffer into a QOI image in memory
> +
> +See the function declaration below for the signature and more information.
> +
> +If you don't want/need the qoi_read and qoi_write functions, you can define
> +QOI_NO_STDIO before including this library.
> +
> +This library uses malloc() and free(). To supply your own malloc implementation
> +you can define QOI_MALLOC and QOI_FREE before including this library.
> +
> +This library uses memset() to zero-initialize the index. To supply your own
> +implementation you can define QOI_ZEROARR before including this library.
> +
> +
> +-- Data Format
> +
> +A QOI file has a 14 byte header, followed by any number of data "chunks" and an
> +8-byte end marker.
> +
> +struct qoi_header_t {
> +	char     magic[4];   // magic bytes "qoif"
> +	uint32_t width;      // image width in pixels (BE)
> +	uint32_t height;     // image height in pixels (BE)
> +	uint8_t  channels;   // 3 = RGB, 4 = RGBA
> +	uint8_t  colorspace; // 0 = sRGB with linear alpha, 1 = all channels linear
> +};
> +
> +Images are encoded row by row, left to right, top to bottom. The decoder and
> +encoder start with {r: 0, g: 0, b: 0, a: 255} as the previous pixel value. An
> +image is complete when all pixels specified by width * height have been covered.
> +
> +Pixels are encoded as
> + - a run of the previous pixel
> + - an index into an array of previously seen pixels
> + - a difference to the previous pixel value in r,g,b
> + - full r,g,b or r,g,b,a values
> +
> +The color channels are assumed to not be premultiplied with the alpha channel
> +("un-premultiplied alpha").
> +
> +A running array[64] (zero-initialized) of previously seen pixel values is
> +maintained by the encoder and decoder. Each pixel that is seen by the encoder
> +and decoder is put into this array at the position formed by a hash function of
> +the color value. In the encoder, if the pixel value at the index matches the
> +current pixel, this index position is written to the stream as QOI_OP_INDEX.
> +The hash function for the index is:
> +
> +	index_position = (r * 3 + g * 5 + b * 7 + a * 11) % 64
> +
> +Each chunk starts with a 2- or 8-bit tag, followed by a number of data bits. The
> +bit length of chunks is divisible by 8 - i.e. all chunks are byte aligned. All
> +values encoded in these data bits have the most significant bit on the left.
> +
> +The 8-bit tags have precedence over the 2-bit tags. A decoder must check for the
> +presence of an 8-bit tag first.
> +
> +The byte stream's end is marked with 7 0x00 bytes followed a single 0x01 byte.
> +
> +
> +The possible chunks are:
> +
> +
> +.- QOI_OP_INDEX ----------.
> +|         Byte[0]         |
> +|  7  6  5  4  3  2  1  0 |
> +|-------+-----------------|
> +|  0  0 |     index       |
> +`-------------------------`
> +2-bit tag b00
> +6-bit index into the color index array: 0..63
> +
> +A valid encoder must not issue 2 or more consecutive QOI_OP_INDEX chunks to the
> +same index. QOI_OP_RUN should be used instead.
> +
> +
> +.- QOI_OP_DIFF -----------.
> +|         Byte[0]         |
> +|  7  6  5  4  3  2  1  0 |
> +|-------+-----+-----+-----|
> +|  0  1 |  dr |  dg |  db |
> +`-------------------------`
> +2-bit tag b01
> +2-bit   red channel difference from the previous pixel between -2..1
> +2-bit green channel difference from the previous pixel between -2..1
> +2-bit  blue channel difference from the previous pixel between -2..1
> +
> +The difference to the current channel values are using a wraparound operation,
> +so "1 - 2" will result in 255, while "255 + 1" will result in 0.
> +
> +Values are stored as unsigned integers with a bias of 2. E.g. -2 is stored as
> +0 (b00). 1 is stored as 3 (b11).
> +
> +The alpha value remains unchanged from the previous pixel.
> +
> +
> +.- QOI_OP_LUMA -------------------------------------.
> +|         Byte[0]         |         Byte[1]         |
> +|  7  6  5  4  3  2  1  0 |  7  6  5  4  3  2  1  0 |
> +|-------+-----------------+-------------+-----------|
> +|  1  0 |  green diff     |   dr - dg   |  db - dg  |
> +`---------------------------------------------------`
> +2-bit tag b10
> +6-bit green channel difference from the previous pixel -32..31
> +4-bit   red channel difference minus green channel difference -8..7
> +4-bit  blue channel difference minus green channel difference -8..7
> +
> +The green channel is used to indicate the general direction of change and is
> +encoded in 6 bits. The red and blue channels (dr and db) base their diffs off
> +of the green channel difference and are encoded in 4 bits. I.e.:
> +	dr_dg = (cur_px.r - prev_px.r) - (cur_px.g - prev_px.g)
> +	db_dg = (cur_px.b - prev_px.b) - (cur_px.g - prev_px.g)
> +
> +The difference to the current channel values are using a wraparound operation,
> +so "10 - 13" will result in 253, while "250 + 7" will result in 1.
> +
> +Values are stored as unsigned integers with a bias of 32 for the green channel
> +and a bias of 8 for the red and blue channel.
> +
> +The alpha value remains unchanged from the previous pixel.
> +
> +
> +.- QOI_OP_RUN ------------.
> +|         Byte[0]         |
> +|  7  6  5  4  3  2  1  0 |
> +|-------+-----------------|
> +|  1  1 |       run       |
> +`-------------------------`
> +2-bit tag b11
> +6-bit run-length repeating the previous pixel: 1..62
> +
> +The run-length is stored with a bias of -1. Note that the run-lengths 63 and 64
> +(b111110 and b111111) are illegal as they are occupied by the QOI_OP_RGB and
> +QOI_OP_RGBA tags.
> +
> +
> +.- QOI_OP_RGB ------------------------------------------.
> +|         Byte[0]         | Byte[1] | Byte[2] | Byte[3] |
> +|  7  6  5  4  3  2  1  0 | 7 .. 0  | 7 .. 0  | 7 .. 0  |
> +|-------------------------+---------+---------+---------|
> +|  1  1  1  1  1  1  1  0 |   red   |  green  |  blue   |
> +`-------------------------------------------------------`
> +8-bit tag b11111110
> +8-bit   red channel value
> +8-bit green channel value
> +8-bit  blue channel value
> +
> +The alpha value remains unchanged from the previous pixel.
> +
> +
> +.- QOI_OP_RGBA ---------------------------------------------------.
> +|         Byte[0]         | Byte[1] | Byte[2] | Byte[3] | Byte[4] |
> +|  7  6  5  4  3  2  1  0 | 7 .. 0  | 7 .. 0  | 7 .. 0  | 7 .. 0  |
> +|-------------------------+---------+---------+---------+---------|
> +|  1  1  1  1  1  1  1  1 |   red   |  green  |  blue   |  alpha  |
> +`-----------------------------------------------------------------`
> +8-bit tag b11111111
> +8-bit   red channel value
> +8-bit green channel value
> +8-bit  blue channel value
> +8-bit alpha channel value
> +
> +*/
> +
> +
> +/* -----------------------------------------------------------------------------
> +Header - Public functions */
> +
> +#ifndef QOI_H
> +#define QOI_H
> +
> +#ifdef __cplusplus
> +extern "C" {
> +#endif
> +
> +/* A pointer to a qoi_desc struct has to be supplied to all of qoi's functions.
> +It describes either the input format (for qoi_write and qoi_encode), or is
> +filled with the description read from the file header (for qoi_read and
> +qoi_decode).
> +
> +The colorspace in this qoi_desc is an enum where
> +	0 = sRGB, i.e. gamma scaled RGB channels and a linear alpha channel
> +	1 = all channels are linear
> +You may use the constants QOI_SRGB or QOI_LINEAR. The colorspace is purely
> +informative. It will be saved to the file header, but does not affect
> +how chunks are en-/decoded. */
> +
> +#define QOI_SRGB   0
> +#define QOI_LINEAR 1
> +
> +typedef struct {
> +	unsigned int width;
> +	unsigned int height;
> +	unsigned char channels;
> +	unsigned char colorspace;
> +} qoi_desc;
> +
> +#ifndef QOI_NO_STDIO
> +
> +/* Encode raw RGB or RGBA pixels into a QOI image and write it to the file
> +system. The qoi_desc struct must be filled with the image width, height,
> +number of channels (3 = RGB, 4 = RGBA) and the colorspace.
> +
> +The function returns 0 on failure (invalid parameters, or fopen or malloc
> +failed) or the number of bytes written on success. */
> +
> +int qoi_write(const char *filename, const void *data, const qoi_desc *desc);
> +
> +
> +/* Read and decode a QOI image from the file system. If channels is 0, the
> +number of channels from the file header is used. If channels is 3 or 4 the
> +output format will be forced into this number of channels.
> +
> +The function either returns NULL on failure (invalid data, or malloc or fopen
> +failed) or a pointer to the decoded pixels. On success, the qoi_desc struct
> +will be filled with the description from the file header.
> +
> +The returned pixel data should be free()d after use. */
> +
> +void *qoi_read(const char *filename, qoi_desc *desc, int channels);
> +
> +#endif /* QOI_NO_STDIO */
> +
> +
> +/* Encode raw RGB or RGBA pixels into a QOI image in memory.
> +
> +The function either returns NULL on failure (invalid parameters or malloc
> +failed) or a pointer to the encoded data on success. On success the out_len
> +is set to the size in bytes of the encoded data.
> +
> +The returned qoi data should be free()d after use. */
> +
> +void *qoi_encode(const void *data, const qoi_desc *desc, int *out_len);
> +
> +
> +/* Decode a QOI image from memory.
> +
> +The function either returns NULL on failure (invalid parameters or malloc
> +failed) or a pointer to the decoded pixels. On success, the qoi_desc struct
> +is filled with the description from the file header.
> +
> +The returned pixel data should be free()d after use. */
> +
> +void *qoi_decode(const void *data, int size, qoi_desc *desc, int channels);
> +
> +
> +#ifdef __cplusplus
> +}
> +#endif
> +#endif /* QOI_H */
> +
> +
> +/* -----------------------------------------------------------------------------
> +Implementation */
> +
> +#ifdef QOI_IMPLEMENTATION
> +#include <stdlib.h>
> +#include <string.h>
> +
> +#ifndef QOI_MALLOC
> +	#define QOI_MALLOC(sz) malloc(sz)
> +	#define QOI_FREE(p)    free(p)
> +#endif
> +#ifndef QOI_ZEROARR
> +	#define QOI_ZEROARR(a) memset((a),0,sizeof(a))
> +#endif
> +
> +#define QOI_OP_INDEX  0x00 /* 00xxxxxx */
> +#define QOI_OP_DIFF   0x40 /* 01xxxxxx */
> +#define QOI_OP_LUMA   0x80 /* 10xxxxxx */
> +#define QOI_OP_RUN    0xc0 /* 11xxxxxx */
> +#define QOI_OP_RGB    0xfe /* 11111110 */
> +#define QOI_OP_RGBA   0xff /* 11111111 */
> +
> +#define QOI_MASK_2    0xc0 /* 11000000 */
> +
> +#define QOI_COLOR_HASH(C) (C.rgba.r*3 + C.rgba.g*5 + C.rgba.b*7 + C.rgba.a*11)
> +#define QOI_MAGIC \
> +	(((unsigned int)'q') << 24 | ((unsigned int)'o') << 16 | \
> +	 ((unsigned int)'i') <<  8 | ((unsigned int)'f'))
> +#define QOI_HEADER_SIZE 14
> +
> +/* 2GB is the max file size that this implementation can safely handle. We guard
> +against anything larger than that, assuming the worst case with 5 bytes per
> +pixel, rounded down to a nice clean value. 400 million pixels ought to be
> +enough for anybody. */
> +#define QOI_PIXELS_MAX ((unsigned int)400000000)
> +
> +typedef union {
> +	struct { unsigned char r, g, b, a; } rgba;
> +	unsigned int v;
> +} qoi_rgba_t;
> +
> +static const unsigned char qoi_padding[8] = {0,0,0,0,0,0,0,1};
> +
> +static void qoi_write_32(unsigned char *bytes, int *p, unsigned int v) {
> +	bytes[(*p)++] = (0xff000000 & v) >> 24;
> +	bytes[(*p)++] = (0x00ff0000 & v) >> 16;
> +	bytes[(*p)++] = (0x0000ff00 & v) >> 8;
> +	bytes[(*p)++] = (0x000000ff & v);
> +}
> +
> +static unsigned int qoi_read_32(const unsigned char *bytes, int *p) {
> +	unsigned int a = bytes[(*p)++];
> +	unsigned int b = bytes[(*p)++];
> +	unsigned int c = bytes[(*p)++];
> +	unsigned int d = bytes[(*p)++];
> +	return a << 24 | b << 16 | c << 8 | d;
> +}
> +
> +void *qoi_encode(const void *data, const qoi_desc *desc, int *out_len) {
> +	int i, max_size, p, run;
> +	int px_len, px_end, px_pos, channels;
> +	unsigned char *bytes;
> +	const unsigned char *pixels;
> +	qoi_rgba_t index[64];
> +	qoi_rgba_t px, px_prev;
> +
> +	if (
> +		data == NULL || out_len == NULL || desc == NULL ||
> +		desc->width == 0 || desc->height == 0 ||
> +		desc->channels < 3 || desc->channels > 4 ||
> +		desc->colorspace > 1 ||
> +		desc->height >= QOI_PIXELS_MAX / desc->width
> +	) {
> +		return NULL;
> +	}
> +
> +	max_size =
> +		desc->width * desc->height * (desc->channels + 1) +
> +		QOI_HEADER_SIZE + sizeof(qoi_padding);
> +
> +	p = 0;
> +	bytes = (unsigned char *) QOI_MALLOC(max_size);
> +	if (!bytes) {
> +		return NULL;
> +	}
> +
> +	qoi_write_32(bytes, &p, QOI_MAGIC);
> +	qoi_write_32(bytes, &p, desc->width);
> +	qoi_write_32(bytes, &p, desc->height);
> +	bytes[p++] = desc->channels;
> +	bytes[p++] = desc->colorspace;
> +
> +
> +	pixels = (const unsigned char *)data;
> +
> +	QOI_ZEROARR(index);
> +
> +	run = 0;
> +	px_prev.rgba.r = 0;
> +	px_prev.rgba.g = 0;
> +	px_prev.rgba.b = 0;
> +	px_prev.rgba.a = 255;
> +	px = px_prev;
> +
> +	px_len = desc->width * desc->height * desc->channels;
> +	px_end = px_len - desc->channels;
> +	channels = desc->channels;
> +
> +	for (px_pos = 0; px_pos < px_len; px_pos += channels) {
> +		if (channels == 4) {
> +			px = *(qoi_rgba_t *)(pixels + px_pos);
> +		}
> +		else {
> +			px.rgba.r = pixels[px_pos + 0];
> +			px.rgba.g = pixels[px_pos + 1];
> +			px.rgba.b = pixels[px_pos + 2];
> +		}
> +
> +		if (px.v == px_prev.v) {
> +			run++;
> +			if (run == 62 || px_pos == px_end) {
> +				bytes[p++] = QOI_OP_RUN | (run - 1);
> +				run = 0;
> +			}
> +		}
> +		else {
> +			int index_pos;
> +
> +			if (run > 0) {
> +				bytes[p++] = QOI_OP_RUN | (run - 1);
> +				run = 0;
> +			}
> +
> +			index_pos = QOI_COLOR_HASH(px) % 64;
> +
> +			if (index[index_pos].v == px.v) {
> +				bytes[p++] = QOI_OP_INDEX | index_pos;
> +			}
> +			else {
> +				index[index_pos] = px;
> +
> +				if (px.rgba.a == px_prev.rgba.a) {
> +					signed char vr = px.rgba.r - px_prev.rgba.r;
> +					signed char vg = px.rgba.g - px_prev.rgba.g;
> +					signed char vb = px.rgba.b - px_prev.rgba.b;
> +
> +					signed char vg_r = vr - vg;
> +					signed char vg_b = vb - vg;
> +
> +					if (
> +						vr > -3 && vr < 2 &&
> +						vg > -3 && vg < 2 &&
> +						vb > -3 && vb < 2
> +					) {
> +						bytes[p++] = QOI_OP_DIFF | (vr + 2) << 4 | (vg + 2) << 2 | (vb + 2);
> +					}
> +					else if (
> +						vg_r >  -9 && vg_r <  8 &&
> +						vg   > -33 && vg   < 32 &&
> +						vg_b >  -9 && vg_b <  8
> +					) {
> +						bytes[p++] = QOI_OP_LUMA     | (vg   + 32);
> +						bytes[p++] = (vg_r + 8) << 4 | (vg_b +  8);
> +					}
> +					else {
> +						bytes[p++] = QOI_OP_RGB;
> +						bytes[p++] = px.rgba.r;
> +						bytes[p++] = px.rgba.g;
> +						bytes[p++] = px.rgba.b;
> +					}
> +				}
> +				else {
> +					bytes[p++] = QOI_OP_RGBA;
> +					bytes[p++] = px.rgba.r;
> +					bytes[p++] = px.rgba.g;
> +					bytes[p++] = px.rgba.b;
> +					bytes[p++] = px.rgba.a;
> +				}
> +			}
> +		}
> +		px_prev = px;
> +	}
> +
> +	for (i = 0; i < (int)sizeof(qoi_padding); i++) {
> +		bytes[p++] = qoi_padding[i];
> +	}
> +
> +	*out_len = p;
> +	return bytes;
> +}
> +
> +void *qoi_decode(const void *data, int size, qoi_desc *desc, int channels) {
> +	const unsigned char *bytes;
> +	unsigned int header_magic;
> +	unsigned char *pixels;
> +	qoi_rgba_t index[64];
> +	qoi_rgba_t px;
> +	int px_len, chunks_len, px_pos;
> +	int p = 0, run = 0;
> +
> +	if (
> +		data == NULL || desc == NULL ||
> +		(channels != 0 && channels != 3 && channels != 4) ||
> +		size < QOI_HEADER_SIZE + (int)sizeof(qoi_padding)
> +	) {
> +		return NULL;
> +	}
> +
> +	bytes = (const unsigned char *)data;
> +
> +	header_magic = qoi_read_32(bytes, &p);
> +	desc->width = qoi_read_32(bytes, &p);
> +	desc->height = qoi_read_32(bytes, &p);
> +	desc->channels = bytes[p++];
> +	desc->colorspace = bytes[p++];
> +
> +	if (
> +		desc->width == 0 || desc->height == 0 ||
> +		desc->channels < 3 || desc->channels > 4 ||
> +		desc->colorspace > 1 ||
> +		header_magic != QOI_MAGIC ||
> +		desc->height >= QOI_PIXELS_MAX / desc->width
> +	) {
> +		return NULL;
> +	}
> +
> +	if (channels == 0) {
> +		channels = desc->channels;
> +	}
> +
> +	px_len = desc->width * desc->height * channels;
> +	pixels = (unsigned char *) QOI_MALLOC(px_len);
> +	if (!pixels) {
> +		return NULL;
> +	}
> +
> +	QOI_ZEROARR(index);
> +	px.rgba.r = 0;
> +	px.rgba.g = 0;
> +	px.rgba.b = 0;
> +	px.rgba.a = 255;
> +
> +	chunks_len = size - (int)sizeof(qoi_padding);
> +	for (px_pos = 0; px_pos < px_len; px_pos += channels) {
> +		if (run > 0) {
> +			run--;
> +		}
> +		else if (p < chunks_len) {
> +			int b1 = bytes[p++];
> +
> +			if (b1 == QOI_OP_RGB) {
> +				px.rgba.r = bytes[p++];
> +				px.rgba.g = bytes[p++];
> +				px.rgba.b = bytes[p++];
> +			}
> +			else if (b1 == QOI_OP_RGBA) {
> +				px.rgba.r = bytes[p++];
> +				px.rgba.g = bytes[p++];
> +				px.rgba.b = bytes[p++];
> +				px.rgba.a = bytes[p++];
> +			}
> +			else if ((b1 & QOI_MASK_2) == QOI_OP_INDEX) {
> +				px = index[b1];
> +			}
> +			else if ((b1 & QOI_MASK_2) == QOI_OP_DIFF) {
> +				px.rgba.r += ((b1 >> 4) & 0x03) - 2;
> +				px.rgba.g += ((b1 >> 2) & 0x03) - 2;
> +				px.rgba.b += ( b1       & 0x03) - 2;
> +			}
> +			else if ((b1 & QOI_MASK_2) == QOI_OP_LUMA) {
> +				int b2 = bytes[p++];
> +				int vg = (b1 & 0x3f) - 32;
> +				px.rgba.r += vg - 8 + ((b2 >> 4) & 0x0f);
> +				px.rgba.g += vg;
> +				px.rgba.b += vg - 8 +  (b2       & 0x0f);
> +			}
> +			else if ((b1 & QOI_MASK_2) == QOI_OP_RUN) {
> +				run = (b1 & 0x3f);
> +			}
> +
> +			index[QOI_COLOR_HASH(px) % 64] = px;
> +		}
> +
> +		if (channels == 4) {
> +			*(qoi_rgba_t*)(pixels + px_pos) = px;
> +		}
> +		else {
> +			pixels[px_pos + 0] = px.rgba.r;
> +			pixels[px_pos + 1] = px.rgba.g;
> +			pixels[px_pos + 2] = px.rgba.b;
> +		}
> +	}
> +
> +	return pixels;
> +}
> +
> +#ifndef QOI_NO_STDIO
> +#include <stdio.h>
> +
> +int qoi_write(const char *filename, const void *data, const qoi_desc *desc) {
> +	FILE *f = fopen(filename, "wb");
> +	int size;
> +	void *encoded;
> +
> +	if (!f) {
> +		return 0;
> +	}
> +
> +	encoded = qoi_encode(data, desc, &size);
> +	if (!encoded) {
> +		fclose(f);
> +		return 0;
> +	}
> +
> +	fwrite(encoded, 1, size, f);
> +	fclose(f);
> +
> +	QOI_FREE(encoded);
> +	return size;
> +}
> +
> +void *qoi_read(const char *filename, qoi_desc *desc, int channels) {
> +	FILE *f = fopen(filename, "rb");
> +	int size, bytes_read;
> +	void *pixels, *data;
> +
> +	if (!f) {
> +		return NULL;
> +	}
> +
> +	fseek(f, 0, SEEK_END);
> +	size = ftell(f);
> +	if (size <= 0) {
> +		fclose(f);
> +		return NULL;
> +	}
> +	fseek(f, 0, SEEK_SET);
> +
> +	data = QOI_MALLOC(size);
> +	if (!data) {
> +		fclose(f);
> +		return NULL;
> +	}
> +
> +	bytes_read = fread(data, 1, size, f);
> +	fclose(f);
> +
> +	pixels = qoi_decode(data, bytes_read, desc, channels);
> +	QOI_FREE(data);
> +	return pixels;
> +}
> +
> +#endif /* QOI_NO_STDIO */
> +#endif /* QOI_IMPLEMENTATION */
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

