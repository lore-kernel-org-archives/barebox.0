Delivery-date: Tue, 18 Jan 2022 00:04:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b3B-0051KE-VA
	for lore@lore.pengutronix.de; Tue, 18 Jan 2022 00:04:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9b38-00013x-HX
	for lore@pengutronix.de; Tue, 18 Jan 2022 00:04:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N+DuAlho/NnJiY8Ch9liWh/c8/eZUh6T9zAy3nrzfzE=; b=DTJNc0ROgYYvxN
	+zw89IPlKUtgw7hsj7wz00hzzSu6Sd8bWrFqYw29D7+UKVQ5r1th1QVyIr3JrCrmujYoBbOXjnE7v
	VkxZTkvNB6pgnsItEy9jrZ6Ry2S6vJOcM26xiK/9Vx0ABAMv6+xLx12LPeN1iajRAJUyH+KlhVh/c
	XpAxY2flknrpHjfSbtd+LJkwhbKqbkvdwL4pc2sbT1ixgkckEVWe/IBLjUR2d5/NcJrV3vfSt5S7M
	bt+b5usEjtzSES+EAEy+rzJ9YvTiCCVT/BRMYmYgQD4jMHh/KLwbc+QNIjeUjG4ZVM3BNPjKsXc9h
	DcpCjUfL5BkfGFCsBQEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9b1m-00GXXN-9O; Mon, 17 Jan 2022 23:03:06 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9b1W-00GXRl-80
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 23:02:55 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 9CA7B1B7B28F
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1642460560;
 bh=ax36JsKFpFbbaSx6+qa7Kmjxq1TI2+0l0gPVA1nQshA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References;
 b=mN5shlkmwfWYKGSPxNyHsmWqjIkhQi1lZ/Alk1QKnWIi7y6vVQUemKWmRG2ZgubKq
 0nTirVgSnoZMbILr92If8HC/RMbtzsMLTKzfoSH6/8fyTm6nwo/ZrRXY9Bte4afGmw
 6HuyEHWUOL6SDQmJ8vnPoSV3UZtTQ2NyH1xLJNik=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id 5698D1B7B23A
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <4059.61e5f590.1fa18.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 207281B7B2A6
 for <barebox@lists.infradead.org>; Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 059D927E03F5;
 Tue, 18 Jan 2022 00:02:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id E1EB427E03DD;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu E1EB427E03DD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642460559;
 bh=vU2x6U4M1Y2fG++3ei9CCyIxVSz0HxX8nUckzlOXBRg=;
 h=From:To:Date:Message-Id;
 b=g3sdOpZKlAKFsBZvdjPaEJOgwycn0+AM1MVE79U6JwktieSK7ix4pP0x/DUcAU01E
 Le6W0C7yZMwCVbCz3PbHoLmGJHJnZO+J5JgrM8oGbGdNzAClhNbJL9hqW91H98CHbH
 S1BD6uGYWzf44YDB1xYQxSEoavRWRRNeobGbYWOk=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ywsQJLmoV4mm; Tue, 18 Jan 2022 00:02:39 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id BD3C027E03CB;
 Tue, 18 Jan 2022 00:02:39 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Tue, 18 Jan 2022 00:02:32 +0100
Message-Id: <20220117230235.13549-3-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117230235.13549-1-jmaselbas@kalray.eu>
References: <20220117230235.13549-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_150250_945176_BB228F7A 
X-CRM114-Status: GOOD (  32.08  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] gui: Add qoi image format
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The "Quite OK Image Format", aka QOI, aims to be a fast, lossless image
compression format, with comparable compression factor against png, and
beeing faster to encode and decode.

In barebox only care about decoding, the qoi image format might be an
intresting alternative to both bmp and png, some kind of midle ground.

The project home page can be found at https://qoiformat.org, there is
a reference implementation, for both encoder and decoder, in a single
header file (qoi.h) hosted at https://github.com/phoboslab/qoi.

There is no plan for future version, this is a frozen format.
In case the reference implementation should be updated, the qoi.h file
must be copied to the lib/gui/qoi.h without requiring modifications.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
changes in v2:
 - added pr_fmt in lib/gui/qoi.c
 - added missing SPDX license identifier
 - removed not needed .keep_file_data=1
---
 lib/gui/Kconfig  |   5 +
 lib/gui/Makefile |   1 +
 lib/gui/qoi.c    |  97 +++++++
 lib/gui/qoi.h    | 673 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 776 insertions(+)
 create mode 100644 lib/gui/qoi.c
 create mode 100644 lib/gui/qoi.h

diff --git a/lib/gui/Kconfig b/lib/gui/Kconfig
index 2625d9fb2f..f0263c71cc 100644
--- a/lib/gui/Kconfig
+++ b/lib/gui/Kconfig
@@ -16,6 +16,11 @@ config PNG
 	bool "png"
 	select ZLIB
 
+config QOI
+	bool "qoi"
+	help
+	  Support for the Quite OK Image format
+
 if PNG
 
 choice
diff --git a/lib/gui/Makefile b/lib/gui/Makefile
index 31e66225d7..5ed190e9f8 100644
--- a/lib/gui/Makefile
+++ b/lib/gui/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_BMP)	+= bmp.o
 obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
+obj-$(CONFIG_QOI)	+= qoi.o
 obj-$(CONFIG_PNG)	+= png.o
 obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
 obj-$(CONFIG_PICOPNG)	+= png_pico.o picopng.o
diff --git a/lib/gui/qoi.c b/lib/gui/qoi.c
new file mode 100644
index 0000000000..b931868f16
--- /dev/null
+++ b/lib/gui/qoi.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
+
+#define pr_fmt(fmt) "qoi: " fmt
+
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <fb.h>
+#include <asm/byteorder.h>
+#include <gui/graphic_utils.h>
+#include <init.h>
+#include <gui/image_renderer.h>
+#include <asm/unaligned.h>
+
+#define QOI_NO_STDIO
+#define QOI_IMPLEMENTATION
+#include "qoi.h"
+
+static struct image *qoi_open(char *inbuf, int insize)
+{
+	struct image *img;
+	void *data;
+	qoi_desc qoi;
+
+	img = calloc(1, sizeof(*img));
+	if (!img)
+		return ERR_PTR(-ENOMEM);
+
+	data = qoi_decode(inbuf, insize, &qoi, 0);
+	if (!data) {
+		free(img);
+		return ERR_PTR(-ENOMEM);
+	}
+
+	img->data = data;
+	img->height = qoi.height;
+	img->width = qoi.width;
+	img->bits_per_pixel = qoi.channels * 8;
+
+	pr_debug("%d x %d  x %d data@0x%p\n", img->width, img->height,
+		 img->bits_per_pixel, img->data);
+	return img;
+}
+
+static void qoi_close(struct image *img)
+{
+	free(img->data);
+}
+
+static int qoi_renderer(struct screen *sc, struct surface *s, struct image *img)
+{
+	int alpha = img->bits_per_pixel == (4 * 8);
+	int width = s->width;
+	int height = s->height;
+	int startx = s->x;
+	int starty = s->y;
+	void *buf;
+
+	if (s->width < 0)
+		width = img->width;
+	if (s->height < 0)
+		height = img->height;
+
+	if (startx < 0) {
+		startx = (sc->s.width - width) / 2;
+		if (startx < 0)
+			startx = 0;
+	}
+
+	if (starty < 0) {
+		starty = (sc->s.height - height) / 2;
+		if (starty < 0)
+			starty = 0;
+	}
+
+	width = min(width, sc->s.width - startx);
+	height = min(height, sc->s.height - starty);
+
+	buf = gui_screen_render_buffer(sc);
+
+	gu_rgba_blend(sc->info, img, buf, height, width, startx, starty, alpha);
+
+	return img->height;
+}
+
+static struct image_renderer qoi = {
+	.type = filetype_qoi,
+	.open = qoi_open,
+	.close = qoi_close,
+	.renderer = qoi_renderer,
+};
+
+static int qoi_init(void)
+{
+	return image_renderer_register(&qoi);
+}
+fs_initcall(qoi_init);
diff --git a/lib/gui/qoi.h b/lib/gui/qoi.h
new file mode 100644
index 0000000000..aea441434c
--- /dev/null
+++ b/lib/gui/qoi.h
@@ -0,0 +1,673 @@
+/* SPDX-License-Identifier: MIT */
+/* SPDX-FileCopyrightText: 2021 Dominic Szablewski */
+/*
+
+QOI - The "Quite OK Image" format for fast, lossless image compression
+
+Dominic Szablewski - https://phoboslab.org
+
+
+-- LICENSE: The MIT License(MIT)
+
+Copyright(c) 2021 Dominic Szablewski
+
+Permission is hereby granted, free of charge, to any person obtaining a copy of
+this software and associated documentation files(the "Software"), to deal in
+the Software without restriction, including without limitation the rights to
+use, copy, modify, merge, publish, distribute, sublicense, and / or sell copies
+of the Software, and to permit persons to whom the Software is furnished to do
+so, subject to the following conditions :
+The above copyright notice and this permission notice shall be included in all
+copies or substantial portions of the Software.
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
+SOFTWARE.
+
+
+-- About
+
+QOI encodes and decodes images in a lossless format. Compared to stb_image and
+stb_image_write QOI offers 20x-50x faster encoding, 3x-4x faster decoding and
+20% better compression.
+
+
+-- Synopsis
+
+// Define `QOI_IMPLEMENTATION` in *one* C/C++ file before including this
+// library to create the implementation.
+
+#define QOI_IMPLEMENTATION
+#include "qoi.h"
+
+// Encode and store an RGBA buffer to the file system. The qoi_desc describes
+// the input pixel data.
+qoi_write("image_new.qoi", rgba_pixels, &(qoi_desc){
+	.width = 1920,
+	.height = 1080,
+	.channels = 4,
+	.colorspace = QOI_SRGB
+});
+
+// Load and decode a QOI image from the file system into a 32bbp RGBA buffer.
+// The qoi_desc struct will be filled with the width, height, number of channels
+// and colorspace read from the file header.
+qoi_desc desc;
+void *rgba_pixels = qoi_read("image.qoi", &desc, 4);
+
+
+
+-- Documentation
+
+This library provides the following functions;
+- qoi_read    -- read and decode a QOI file
+- qoi_decode  -- decode the raw bytes of a QOI image from memory
+- qoi_write   -- encode and write a QOI file
+- qoi_encode  -- encode an rgba buffer into a QOI image in memory
+
+See the function declaration below for the signature and more information.
+
+If you don't want/need the qoi_read and qoi_write functions, you can define
+QOI_NO_STDIO before including this library.
+
+This library uses malloc() and free(). To supply your own malloc implementation
+you can define QOI_MALLOC and QOI_FREE before including this library.
+
+This library uses memset() to zero-initialize the index. To supply your own
+implementation you can define QOI_ZEROARR before including this library.
+
+
+-- Data Format
+
+A QOI file has a 14 byte header, followed by any number of data "chunks" and an
+8-byte end marker.
+
+struct qoi_header_t {
+	char     magic[4];   // magic bytes "qoif"
+	uint32_t width;      // image width in pixels (BE)
+	uint32_t height;     // image height in pixels (BE)
+	uint8_t  channels;   // 3 = RGB, 4 = RGBA
+	uint8_t  colorspace; // 0 = sRGB with linear alpha, 1 = all channels linear
+};
+
+Images are encoded row by row, left to right, top to bottom. The decoder and
+encoder start with {r: 0, g: 0, b: 0, a: 255} as the previous pixel value. An
+image is complete when all pixels specified by width * height have been covered.
+
+Pixels are encoded as
+ - a run of the previous pixel
+ - an index into an array of previously seen pixels
+ - a difference to the previous pixel value in r,g,b
+ - full r,g,b or r,g,b,a values
+
+The color channels are assumed to not be premultiplied with the alpha channel
+("un-premultiplied alpha").
+
+A running array[64] (zero-initialized) of previously seen pixel values is
+maintained by the encoder and decoder. Each pixel that is seen by the encoder
+and decoder is put into this array at the position formed by a hash function of
+the color value. In the encoder, if the pixel value at the index matches the
+current pixel, this index position is written to the stream as QOI_OP_INDEX.
+The hash function for the index is:
+
+	index_position = (r * 3 + g * 5 + b * 7 + a * 11) % 64
+
+Each chunk starts with a 2- or 8-bit tag, followed by a number of data bits. The
+bit length of chunks is divisible by 8 - i.e. all chunks are byte aligned. All
+values encoded in these data bits have the most significant bit on the left.
+
+The 8-bit tags have precedence over the 2-bit tags. A decoder must check for the
+presence of an 8-bit tag first.
+
+The byte stream's end is marked with 7 0x00 bytes followed a single 0x01 byte.
+
+
+The possible chunks are:
+
+
+.- QOI_OP_INDEX ----------.
+|         Byte[0]         |
+|  7  6  5  4  3  2  1  0 |
+|-------+-----------------|
+|  0  0 |     index       |
+`-------------------------`
+2-bit tag b00
+6-bit index into the color index array: 0..63
+
+A valid encoder must not issue 2 or more consecutive QOI_OP_INDEX chunks to the
+same index. QOI_OP_RUN should be used instead.
+
+
+.- QOI_OP_DIFF -----------.
+|         Byte[0]         |
+|  7  6  5  4  3  2  1  0 |
+|-------+-----+-----+-----|
+|  0  1 |  dr |  dg |  db |
+`-------------------------`
+2-bit tag b01
+2-bit   red channel difference from the previous pixel between -2..1
+2-bit green channel difference from the previous pixel between -2..1
+2-bit  blue channel difference from the previous pixel between -2..1
+
+The difference to the current channel values are using a wraparound operation,
+so "1 - 2" will result in 255, while "255 + 1" will result in 0.
+
+Values are stored as unsigned integers with a bias of 2. E.g. -2 is stored as
+0 (b00). 1 is stored as 3 (b11).
+
+The alpha value remains unchanged from the previous pixel.
+
+
+.- QOI_OP_LUMA -------------------------------------.
+|         Byte[0]         |         Byte[1]         |
+|  7  6  5  4  3  2  1  0 |  7  6  5  4  3  2  1  0 |
+|-------+-----------------+-------------+-----------|
+|  1  0 |  green diff     |   dr - dg   |  db - dg  |
+`---------------------------------------------------`
+2-bit tag b10
+6-bit green channel difference from the previous pixel -32..31
+4-bit   red channel difference minus green channel difference -8..7
+4-bit  blue channel difference minus green channel difference -8..7
+
+The green channel is used to indicate the general direction of change and is
+encoded in 6 bits. The red and blue channels (dr and db) base their diffs off
+of the green channel difference and are encoded in 4 bits. I.e.:
+	dr_dg = (cur_px.r - prev_px.r) - (cur_px.g - prev_px.g)
+	db_dg = (cur_px.b - prev_px.b) - (cur_px.g - prev_px.g)
+
+The difference to the current channel values are using a wraparound operation,
+so "10 - 13" will result in 253, while "250 + 7" will result in 1.
+
+Values are stored as unsigned integers with a bias of 32 for the green channel
+and a bias of 8 for the red and blue channel.
+
+The alpha value remains unchanged from the previous pixel.
+
+
+.- QOI_OP_RUN ------------.
+|         Byte[0]         |
+|  7  6  5  4  3  2  1  0 |
+|-------+-----------------|
+|  1  1 |       run       |
+`-------------------------`
+2-bit tag b11
+6-bit run-length repeating the previous pixel: 1..62
+
+The run-length is stored with a bias of -1. Note that the run-lengths 63 and 64
+(b111110 and b111111) are illegal as they are occupied by the QOI_OP_RGB and
+QOI_OP_RGBA tags.
+
+
+.- QOI_OP_RGB ------------------------------------------.
+|         Byte[0]         | Byte[1] | Byte[2] | Byte[3] |
+|  7  6  5  4  3  2  1  0 | 7 .. 0  | 7 .. 0  | 7 .. 0  |
+|-------------------------+---------+---------+---------|
+|  1  1  1  1  1  1  1  0 |   red   |  green  |  blue   |
+`-------------------------------------------------------`
+8-bit tag b11111110
+8-bit   red channel value
+8-bit green channel value
+8-bit  blue channel value
+
+The alpha value remains unchanged from the previous pixel.
+
+
+.- QOI_OP_RGBA ---------------------------------------------------.
+|         Byte[0]         | Byte[1] | Byte[2] | Byte[3] | Byte[4] |
+|  7  6  5  4  3  2  1  0 | 7 .. 0  | 7 .. 0  | 7 .. 0  | 7 .. 0  |
+|-------------------------+---------+---------+---------+---------|
+|  1  1  1  1  1  1  1  1 |   red   |  green  |  blue   |  alpha  |
+`-----------------------------------------------------------------`
+8-bit tag b11111111
+8-bit   red channel value
+8-bit green channel value
+8-bit  blue channel value
+8-bit alpha channel value
+
+*/
+
+
+/* -----------------------------------------------------------------------------
+Header - Public functions */
+
+#ifndef QOI_H
+#define QOI_H
+
+#ifdef __cplusplus
+extern "C" {
+#endif
+
+/* A pointer to a qoi_desc struct has to be supplied to all of qoi's functions.
+It describes either the input format (for qoi_write and qoi_encode), or is
+filled with the description read from the file header (for qoi_read and
+qoi_decode).
+
+The colorspace in this qoi_desc is an enum where
+	0 = sRGB, i.e. gamma scaled RGB channels and a linear alpha channel
+	1 = all channels are linear
+You may use the constants QOI_SRGB or QOI_LINEAR. The colorspace is purely
+informative. It will be saved to the file header, but does not affect
+how chunks are en-/decoded. */
+
+#define QOI_SRGB   0
+#define QOI_LINEAR 1
+
+typedef struct {
+	unsigned int width;
+	unsigned int height;
+	unsigned char channels;
+	unsigned char colorspace;
+} qoi_desc;
+
+#ifndef QOI_NO_STDIO
+
+/* Encode raw RGB or RGBA pixels into a QOI image and write it to the file
+system. The qoi_desc struct must be filled with the image width, height,
+number of channels (3 = RGB, 4 = RGBA) and the colorspace.
+
+The function returns 0 on failure (invalid parameters, or fopen or malloc
+failed) or the number of bytes written on success. */
+
+int qoi_write(const char *filename, const void *data, const qoi_desc *desc);
+
+
+/* Read and decode a QOI image from the file system. If channels is 0, the
+number of channels from the file header is used. If channels is 3 or 4 the
+output format will be forced into this number of channels.
+
+The function either returns NULL on failure (invalid data, or malloc or fopen
+failed) or a pointer to the decoded pixels. On success, the qoi_desc struct
+will be filled with the description from the file header.
+
+The returned pixel data should be free()d after use. */
+
+void *qoi_read(const char *filename, qoi_desc *desc, int channels);
+
+#endif /* QOI_NO_STDIO */
+
+
+/* Encode raw RGB or RGBA pixels into a QOI image in memory.
+
+The function either returns NULL on failure (invalid parameters or malloc
+failed) or a pointer to the encoded data on success. On success the out_len
+is set to the size in bytes of the encoded data.
+
+The returned qoi data should be free()d after use. */
+
+void *qoi_encode(const void *data, const qoi_desc *desc, int *out_len);
+
+
+/* Decode a QOI image from memory.
+
+The function either returns NULL on failure (invalid parameters or malloc
+failed) or a pointer to the decoded pixels. On success, the qoi_desc struct
+is filled with the description from the file header.
+
+The returned pixel data should be free()d after use. */
+
+void *qoi_decode(const void *data, int size, qoi_desc *desc, int channels);
+
+
+#ifdef __cplusplus
+}
+#endif
+#endif /* QOI_H */
+
+
+/* -----------------------------------------------------------------------------
+Implementation */
+
+#ifdef QOI_IMPLEMENTATION
+#include <stdlib.h>
+#include <string.h>
+
+#ifndef QOI_MALLOC
+	#define QOI_MALLOC(sz) malloc(sz)
+	#define QOI_FREE(p)    free(p)
+#endif
+#ifndef QOI_ZEROARR
+	#define QOI_ZEROARR(a) memset((a),0,sizeof(a))
+#endif
+
+#define QOI_OP_INDEX  0x00 /* 00xxxxxx */
+#define QOI_OP_DIFF   0x40 /* 01xxxxxx */
+#define QOI_OP_LUMA   0x80 /* 10xxxxxx */
+#define QOI_OP_RUN    0xc0 /* 11xxxxxx */
+#define QOI_OP_RGB    0xfe /* 11111110 */
+#define QOI_OP_RGBA   0xff /* 11111111 */
+
+#define QOI_MASK_2    0xc0 /* 11000000 */
+
+#define QOI_COLOR_HASH(C) (C.rgba.r*3 + C.rgba.g*5 + C.rgba.b*7 + C.rgba.a*11)
+#define QOI_MAGIC \
+	(((unsigned int)'q') << 24 | ((unsigned int)'o') << 16 | \
+	 ((unsigned int)'i') <<  8 | ((unsigned int)'f'))
+#define QOI_HEADER_SIZE 14
+
+/* 2GB is the max file size that this implementation can safely handle. We guard
+against anything larger than that, assuming the worst case with 5 bytes per
+pixel, rounded down to a nice clean value. 400 million pixels ought to be
+enough for anybody. */
+#define QOI_PIXELS_MAX ((unsigned int)400000000)
+
+typedef union {
+	struct { unsigned char r, g, b, a; } rgba;
+	unsigned int v;
+} qoi_rgba_t;
+
+static const unsigned char qoi_padding[8] = {0,0,0,0,0,0,0,1};
+
+static void qoi_write_32(unsigned char *bytes, int *p, unsigned int v) {
+	bytes[(*p)++] = (0xff000000 & v) >> 24;
+	bytes[(*p)++] = (0x00ff0000 & v) >> 16;
+	bytes[(*p)++] = (0x0000ff00 & v) >> 8;
+	bytes[(*p)++] = (0x000000ff & v);
+}
+
+static unsigned int qoi_read_32(const unsigned char *bytes, int *p) {
+	unsigned int a = bytes[(*p)++];
+	unsigned int b = bytes[(*p)++];
+	unsigned int c = bytes[(*p)++];
+	unsigned int d = bytes[(*p)++];
+	return a << 24 | b << 16 | c << 8 | d;
+}
+
+void *qoi_encode(const void *data, const qoi_desc *desc, int *out_len) {
+	int i, max_size, p, run;
+	int px_len, px_end, px_pos, channels;
+	unsigned char *bytes;
+	const unsigned char *pixels;
+	qoi_rgba_t index[64];
+	qoi_rgba_t px, px_prev;
+
+	if (
+		data == NULL || out_len == NULL || desc == NULL ||
+		desc->width == 0 || desc->height == 0 ||
+		desc->channels < 3 || desc->channels > 4 ||
+		desc->colorspace > 1 ||
+		desc->height >= QOI_PIXELS_MAX / desc->width
+	) {
+		return NULL;
+	}
+
+	max_size =
+		desc->width * desc->height * (desc->channels + 1) +
+		QOI_HEADER_SIZE + sizeof(qoi_padding);
+
+	p = 0;
+	bytes = (unsigned char *) QOI_MALLOC(max_size);
+	if (!bytes) {
+		return NULL;
+	}
+
+	qoi_write_32(bytes, &p, QOI_MAGIC);
+	qoi_write_32(bytes, &p, desc->width);
+	qoi_write_32(bytes, &p, desc->height);
+	bytes[p++] = desc->channels;
+	bytes[p++] = desc->colorspace;
+
+
+	pixels = (const unsigned char *)data;
+
+	QOI_ZEROARR(index);
+
+	run = 0;
+	px_prev.rgba.r = 0;
+	px_prev.rgba.g = 0;
+	px_prev.rgba.b = 0;
+	px_prev.rgba.a = 255;
+	px = px_prev;
+
+	px_len = desc->width * desc->height * desc->channels;
+	px_end = px_len - desc->channels;
+	channels = desc->channels;
+
+	for (px_pos = 0; px_pos < px_len; px_pos += channels) {
+		if (channels == 4) {
+			px = *(qoi_rgba_t *)(pixels + px_pos);
+		}
+		else {
+			px.rgba.r = pixels[px_pos + 0];
+			px.rgba.g = pixels[px_pos + 1];
+			px.rgba.b = pixels[px_pos + 2];
+		}
+
+		if (px.v == px_prev.v) {
+			run++;
+			if (run == 62 || px_pos == px_end) {
+				bytes[p++] = QOI_OP_RUN | (run - 1);
+				run = 0;
+			}
+		}
+		else {
+			int index_pos;
+
+			if (run > 0) {
+				bytes[p++] = QOI_OP_RUN | (run - 1);
+				run = 0;
+			}
+
+			index_pos = QOI_COLOR_HASH(px) % 64;
+
+			if (index[index_pos].v == px.v) {
+				bytes[p++] = QOI_OP_INDEX | index_pos;
+			}
+			else {
+				index[index_pos] = px;
+
+				if (px.rgba.a == px_prev.rgba.a) {
+					signed char vr = px.rgba.r - px_prev.rgba.r;
+					signed char vg = px.rgba.g - px_prev.rgba.g;
+					signed char vb = px.rgba.b - px_prev.rgba.b;
+
+					signed char vg_r = vr - vg;
+					signed char vg_b = vb - vg;
+
+					if (
+						vr > -3 && vr < 2 &&
+						vg > -3 && vg < 2 &&
+						vb > -3 && vb < 2
+					) {
+						bytes[p++] = QOI_OP_DIFF | (vr + 2) << 4 | (vg + 2) << 2 | (vb + 2);
+					}
+					else if (
+						vg_r >  -9 && vg_r <  8 &&
+						vg   > -33 && vg   < 32 &&
+						vg_b >  -9 && vg_b <  8
+					) {
+						bytes[p++] = QOI_OP_LUMA     | (vg   + 32);
+						bytes[p++] = (vg_r + 8) << 4 | (vg_b +  8);
+					}
+					else {
+						bytes[p++] = QOI_OP_RGB;
+						bytes[p++] = px.rgba.r;
+						bytes[p++] = px.rgba.g;
+						bytes[p++] = px.rgba.b;
+					}
+				}
+				else {
+					bytes[p++] = QOI_OP_RGBA;
+					bytes[p++] = px.rgba.r;
+					bytes[p++] = px.rgba.g;
+					bytes[p++] = px.rgba.b;
+					bytes[p++] = px.rgba.a;
+				}
+			}
+		}
+		px_prev = px;
+	}
+
+	for (i = 0; i < (int)sizeof(qoi_padding); i++) {
+		bytes[p++] = qoi_padding[i];
+	}
+
+	*out_len = p;
+	return bytes;
+}
+
+void *qoi_decode(const void *data, int size, qoi_desc *desc, int channels) {
+	const unsigned char *bytes;
+	unsigned int header_magic;
+	unsigned char *pixels;
+	qoi_rgba_t index[64];
+	qoi_rgba_t px;
+	int px_len, chunks_len, px_pos;
+	int p = 0, run = 0;
+
+	if (
+		data == NULL || desc == NULL ||
+		(channels != 0 && channels != 3 && channels != 4) ||
+		size < QOI_HEADER_SIZE + (int)sizeof(qoi_padding)
+	) {
+		return NULL;
+	}
+
+	bytes = (const unsigned char *)data;
+
+	header_magic = qoi_read_32(bytes, &p);
+	desc->width = qoi_read_32(bytes, &p);
+	desc->height = qoi_read_32(bytes, &p);
+	desc->channels = bytes[p++];
+	desc->colorspace = bytes[p++];
+
+	if (
+		desc->width == 0 || desc->height == 0 ||
+		desc->channels < 3 || desc->channels > 4 ||
+		desc->colorspace > 1 ||
+		header_magic != QOI_MAGIC ||
+		desc->height >= QOI_PIXELS_MAX / desc->width
+	) {
+		return NULL;
+	}
+
+	if (channels == 0) {
+		channels = desc->channels;
+	}
+
+	px_len = desc->width * desc->height * channels;
+	pixels = (unsigned char *) QOI_MALLOC(px_len);
+	if (!pixels) {
+		return NULL;
+	}
+
+	QOI_ZEROARR(index);
+	px.rgba.r = 0;
+	px.rgba.g = 0;
+	px.rgba.b = 0;
+	px.rgba.a = 255;
+
+	chunks_len = size - (int)sizeof(qoi_padding);
+	for (px_pos = 0; px_pos < px_len; px_pos += channels) {
+		if (run > 0) {
+			run--;
+		}
+		else if (p < chunks_len) {
+			int b1 = bytes[p++];
+
+			if (b1 == QOI_OP_RGB) {
+				px.rgba.r = bytes[p++];
+				px.rgba.g = bytes[p++];
+				px.rgba.b = bytes[p++];
+			}
+			else if (b1 == QOI_OP_RGBA) {
+				px.rgba.r = bytes[p++];
+				px.rgba.g = bytes[p++];
+				px.rgba.b = bytes[p++];
+				px.rgba.a = bytes[p++];
+			}
+			else if ((b1 & QOI_MASK_2) == QOI_OP_INDEX) {
+				px = index[b1];
+			}
+			else if ((b1 & QOI_MASK_2) == QOI_OP_DIFF) {
+				px.rgba.r += ((b1 >> 4) & 0x03) - 2;
+				px.rgba.g += ((b1 >> 2) & 0x03) - 2;
+				px.rgba.b += ( b1       & 0x03) - 2;
+			}
+			else if ((b1 & QOI_MASK_2) == QOI_OP_LUMA) {
+				int b2 = bytes[p++];
+				int vg = (b1 & 0x3f) - 32;
+				px.rgba.r += vg - 8 + ((b2 >> 4) & 0x0f);
+				px.rgba.g += vg;
+				px.rgba.b += vg - 8 +  (b2       & 0x0f);
+			}
+			else if ((b1 & QOI_MASK_2) == QOI_OP_RUN) {
+				run = (b1 & 0x3f);
+			}
+
+			index[QOI_COLOR_HASH(px) % 64] = px;
+		}
+
+		if (channels == 4) {
+			*(qoi_rgba_t*)(pixels + px_pos) = px;
+		}
+		else {
+			pixels[px_pos + 0] = px.rgba.r;
+			pixels[px_pos + 1] = px.rgba.g;
+			pixels[px_pos + 2] = px.rgba.b;
+		}
+	}
+
+	return pixels;
+}
+
+#ifndef QOI_NO_STDIO
+#include <stdio.h>
+
+int qoi_write(const char *filename, const void *data, const qoi_desc *desc) {
+	FILE *f = fopen(filename, "wb");
+	int size;
+	void *encoded;
+
+	if (!f) {
+		return 0;
+	}
+
+	encoded = qoi_encode(data, desc, &size);
+	if (!encoded) {
+		fclose(f);
+		return 0;
+	}
+
+	fwrite(encoded, 1, size, f);
+	fclose(f);
+
+	QOI_FREE(encoded);
+	return size;
+}
+
+void *qoi_read(const char *filename, qoi_desc *desc, int channels) {
+	FILE *f = fopen(filename, "rb");
+	int size, bytes_read;
+	void *pixels, *data;
+
+	if (!f) {
+		return NULL;
+	}
+
+	fseek(f, 0, SEEK_END);
+	size = ftell(f);
+	if (size <= 0) {
+		fclose(f);
+		return NULL;
+	}
+	fseek(f, 0, SEEK_SET);
+
+	data = QOI_MALLOC(size);
+	if (!data) {
+		fclose(f);
+		return NULL;
+	}
+
+	bytes_read = fread(data, 1, size, f);
+	fclose(f);
+
+	pixels = qoi_decode(data, bytes_read, desc, channels);
+	QOI_FREE(data);
+	return pixels;
+}
+
+#endif /* QOI_NO_STDIO */
+#endif /* QOI_IMPLEMENTATION */
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

