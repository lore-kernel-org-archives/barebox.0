Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006iR-Tx
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:18 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-8L
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:34 +0100
Message-Id: <20191129151505.23946-9-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/39] gui: picopng: declare locally used functions as static
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 lib/gui/picopng.c | 60 +++++++++++++++++++++++------------------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/lib/gui/picopng.c b/lib/gui/picopng.c
index ad44efa689be..80f03beb68a9 100644
--- a/lib/gui/picopng.c
+++ b/lib/gui/picopng.c
@@ -32,7 +32,7 @@ typedef struct png_alloc_node {
 png_alloc_node_t *png_alloc_head = NULL;
 png_alloc_node_t *png_alloc_tail = NULL;
 
-png_alloc_node_t *png_alloc_find_node(void *addr)
+static png_alloc_node_t *png_alloc_find_node(void *addr)
 {
 	png_alloc_node_t *node;
 	for (node = png_alloc_head; node; node = node->next)
@@ -41,7 +41,7 @@ png_alloc_node_t *png_alloc_find_node(void *addr)
 	return node;
 }
 
-void png_alloc_add_node(void *addr, size_t size)
+static void png_alloc_add_node(void *addr, size_t size)
 {
 	png_alloc_node_t *node;
 	if (png_alloc_find_node(addr))
@@ -58,7 +58,7 @@ void png_alloc_add_node(void *addr, size_t size)
 		png_alloc_head = node;
 }
 
-void png_alloc_remove_node(png_alloc_node_t *node)
+static void png_alloc_remove_node(png_alloc_node_t *node)
 {
 	if (node->prev)
 		node->prev->next = node->next;
@@ -72,14 +72,14 @@ void png_alloc_remove_node(png_alloc_node_t *node)
 	free(node);
 }
 
-void *png_alloc_malloc(size_t size)
+static void *png_alloc_malloc(size_t size)
 {
 	void *addr = malloc(size);
 	png_alloc_add_node(addr, size);
 	return addr;
 }
 
-void *png_alloc_realloc(void *addr, size_t size)
+static void *png_alloc_realloc(void *addr, size_t size)
 {
 	void *new_addr;
 	if (!addr)
@@ -94,7 +94,7 @@ void *png_alloc_realloc(void *addr, size_t size)
 	return new_addr;
 }
 
-void png_alloc_free(void *addr)
+static void png_alloc_free(void *addr)
 {
 	png_alloc_node_t *node = png_alloc_find_node(addr);
 	if (!node)
@@ -114,7 +114,7 @@ void png_alloc_free_all()
 
 /*************************************************************************************************/
 
-__maybe_unused void vector32_cleanup(vector32_t *p)
+__maybe_unused static void vector32_cleanup(vector32_t *p)
 {
 	p->size = p->allocsize = 0;
 	if (p->data)
@@ -122,7 +122,7 @@ __maybe_unused void vector32_cleanup(vector32_t *p)
 	p->data = NULL;
 }
 
-uint32_t vector32_resize(vector32_t *p, size_t size)
+static uint32_t vector32_resize(vector32_t *p, size_t size)
 {	// returns 1 if success, 0 if failure ==> nothing done
 	if (size * sizeof (uint32_t) > p->allocsize) {
 		size_t newsize = size * sizeof (uint32_t) * 2;
@@ -138,7 +138,7 @@ uint32_t vector32_resize(vector32_t *p, size_t size)
 	return 1;
 }
 
-uint32_t vector32_resizev(vector32_t *p, size_t size, uint32_t value)
+static uint32_t vector32_resizev(vector32_t *p, size_t size, uint32_t value)
 {	// resize and give all new elements the value
 	size_t oldsize = p->size, i;
 	if (!vector32_resize(p, size))
@@ -148,13 +148,13 @@ uint32_t vector32_resizev(vector32_t *p, size_t size, uint32_t value)
 	return 1;
 }
 
-void vector32_init(vector32_t *p)
+static void vector32_init(vector32_t *p)
 {
 	p->data = NULL;
 	p->size = p->allocsize = 0;
 }
 
-vector32_t *vector32_new(size_t size, uint32_t value)
+__maybe_unused static vector32_t *vector32_new(size_t size, uint32_t value)
 {
 	vector32_t *p = png_alloc_malloc(sizeof (vector32_t));
 	vector32_init(p);
@@ -165,7 +165,7 @@ vector32_t *vector32_new(size_t size, uint32_t value)
 
 /*************************************************************************************************/
 
-__maybe_unused void vector8_cleanup(vector8_t *p)
+__maybe_unused static void vector8_cleanup(vector8_t *p)
 {
 	p->size = p->allocsize = 0;
 	if (p->data)
@@ -173,7 +173,7 @@ __maybe_unused void vector8_cleanup(vector8_t *p)
 	p->data = NULL;
 }
 
-uint32_t vector8_resize(vector8_t *p, size_t size)
+static uint32_t vector8_resize(vector8_t *p, size_t size)
 {	// returns 1 if success, 0 if failure ==> nothing done
 	// xxx: the use of sizeof uint32_t here seems like a bug (this descends from the lodepng vector
 	// compatibility functions which do the same). without this there is corruption in certain cases,
@@ -192,7 +192,7 @@ uint32_t vector8_resize(vector8_t *p, size_t size)
 	return 1;
 }
 
-uint32_t vector8_resizev(vector8_t *p, size_t size, uint8_t value)
+static uint32_t vector8_resizev(vector8_t *p, size_t size, uint8_t value)
 {	// resize and give all new elements the value
 	size_t oldsize = p->size, i;
 	if (!vector8_resize(p, size))
@@ -202,13 +202,13 @@ uint32_t vector8_resizev(vector8_t *p, size_t size, uint8_t value)
 	return 1;
 }
 
-void vector8_init(vector8_t *p)
+static void vector8_init(vector8_t *p)
 {
 	p->data = NULL;
 	p->size = p->allocsize = 0;
 }
 
-vector8_t *vector8_new(size_t size, uint8_t value)
+static vector8_t *vector8_new(size_t size, uint8_t value)
 {
 	vector8_t *p = png_alloc_malloc(sizeof (vector8_t));
 	vector8_init(p);
@@ -217,7 +217,7 @@ vector8_t *vector8_new(size_t size, uint8_t value)
 	return p;
 }
 
-vector8_t *vector8_copy(vector8_t *p)
+static vector8_t *vector8_copy(vector8_t *p)
 {
 	vector8_t *q = vector8_new(p->size, 0);
 	uint32_t n;
@@ -227,7 +227,7 @@ vector8_t *vector8_copy(vector8_t *p)
 }
 
 /*************************************************************************************************/
-int Zlib_decompress(vector8_t *out, const vector8_t *in) // returns error value
+static int Zlib_decompress(vector8_t *out, const vector8_t *in) // returns error value
 {
 	return picopng_zlib_decompress(out->data, out->size, in->data, in->size);
 }
@@ -244,14 +244,14 @@ int Zlib_decompress(vector8_t *out, const vector8_t *in) // returns error value
 
 int PNG_error;
 
-uint32_t PNG_readBitFromReversedStream(size_t *bitp, const uint8_t *bits)
+static uint32_t PNG_readBitFromReversedStream(size_t *bitp, const uint8_t *bits)
 {
 	uint32_t result = (bits[*bitp >> 3] >> (7 - (*bitp & 0x7))) & 1;
 	(*bitp)++;
 	return result;
 }
 
-uint32_t PNG_readBitsFromReversedStream(size_t *bitp, const uint8_t *bits, uint32_t nbits)
+static uint32_t PNG_readBitsFromReversedStream(size_t *bitp, const uint8_t *bits, uint32_t nbits)
 {
 	uint32_t i, result = 0;
 	for (i = nbits - 1; i < nbits; i--)
@@ -259,18 +259,18 @@ uint32_t PNG_readBitsFromReversedStream(size_t *bitp, const uint8_t *bits, uint3
 	return result;
 }
 
-void PNG_setBitOfReversedStream(size_t *bitp, uint8_t *bits, uint32_t bit)
+static void PNG_setBitOfReversedStream(size_t *bitp, uint8_t *bits, uint32_t bit)
 {
 	bits[*bitp >> 3] |= (bit << (7 - (*bitp & 0x7)));
 	(*bitp)++;
 }
 
-uint32_t PNG_read32bitInt(const uint8_t *buffer)
+static uint32_t PNG_read32bitInt(const uint8_t *buffer)
 {
 	return (buffer[0] << 24) | (buffer[1] << 16) | (buffer[2] << 8) | buffer[3];
 }
 
-int PNG_checkColorValidity(uint32_t colorType, uint32_t bd) // return type is a LodePNG error code
+static int PNG_checkColorValidity(uint32_t colorType, uint32_t bd) // return type is a LodePNG error code
 {
 	if ((colorType == 2 || colorType == 4 || colorType == 6)) {
 		if (!(bd == 8 || bd == 16))
@@ -291,7 +291,7 @@ int PNG_checkColorValidity(uint32_t colorType, uint32_t bd) // return type is a
 		return 31; // nonexistent color type
 }
 
-uint32_t PNG_getBpp(const PNG_info_t *info)
+static uint32_t PNG_getBpp(const PNG_info_t *info)
 {
 	uint32_t bitDepth, colorType;
 	bitDepth = info->bitDepth;
@@ -304,7 +304,7 @@ uint32_t PNG_getBpp(const PNG_info_t *info)
 		return bitDepth;
 }
 
-void PNG_readPngHeader(PNG_info_t *info, const uint8_t *in, size_t inlength)
+static void PNG_readPngHeader(PNG_info_t *info, const uint8_t *in, size_t inlength)
 {	// read the information from the header and store it in the Info
 	if (inlength < 29) {
 		PNG_error = 27; // error: the data length is smaller than the length of the header
@@ -340,7 +340,7 @@ void PNG_readPngHeader(PNG_info_t *info, const uint8_t *in, size_t inlength)
 	PNG_error = PNG_checkColorValidity(info->colorType, info->bitDepth);
 }
 
-int PNG_paethPredictor(int a, int b, int c) // Paeth predicter, used by PNG filter type 4
+static int PNG_paethPredictor(int a, int b, int c) // Paeth predicter, used by PNG filter type 4
 {
 	int p, pa, pb, pc;
 	p = a + b - c;
@@ -350,7 +350,7 @@ int PNG_paethPredictor(int a, int b, int c) // Paeth predicter, used by PNG filt
 	return (pa <= pb && pa <= pc) ? a : (pb <= pc ? b : c);
 }
 
-void PNG_unFilterScanline(uint8_t *recon, const uint8_t *scanline, const uint8_t *precon,
+static void PNG_unFilterScanline(uint8_t *recon, const uint8_t *scanline, const uint8_t *precon,
 		size_t bytewidth, uint32_t filterType, size_t length)
 {
 	size_t i;
@@ -406,7 +406,7 @@ void PNG_unFilterScanline(uint8_t *recon, const uint8_t *scanline, const uint8_t
 	}
 }
 
-void PNG_adam7Pass(uint8_t *out, uint8_t *linen, uint8_t *lineo, const uint8_t *in, uint32_t w,
+static void PNG_adam7Pass(uint8_t *out, uint8_t *linen, uint8_t *lineo, const uint8_t *in, uint32_t w,
 		size_t passleft, size_t passtop, size_t spacex, size_t spacey, size_t passw, size_t passh,
 		uint32_t bpp)
 {
@@ -446,7 +446,7 @@ void PNG_adam7Pass(uint8_t *out, uint8_t *linen, uint8_t *lineo, const uint8_t *
 	}
 }
 
-int PNG_convert(const PNG_info_t *info, vector8_t *out, const uint8_t *in)
+static int PNG_convert(const PNG_info_t *info, vector8_t *out, const uint8_t *in)
 {	// converts from any color type to 32-bit. return value = LodePNG error code
 	size_t i, c;
 	uint32_t bitDepth, colorType;
@@ -530,7 +530,7 @@ int PNG_convert(const PNG_info_t *info, vector8_t *out, const uint8_t *in)
 	return 0;
 }
 
-PNG_info_t *PNG_info_new(void)
+static PNG_info_t *PNG_info_new(void)
 {
 	PNG_info_t *info = png_alloc_malloc(sizeof (PNG_info_t));
 	uint32_t i;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
