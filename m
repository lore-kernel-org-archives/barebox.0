Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hQ-Bp
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:29 +0100
Message-Id: <20181109095246.15068-4-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/20] gui: lodepng: Avoid missing prototypes warning
To: Barebox List <barebox@lists.infradead.org>

- move prototypes to header file
- remove some unused functions
- make locally used functions static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/gui/lodepng.c | 42 +-----------------------------------------
 lib/gui/lodepng.h | 28 ++++++++++++++++++++++++++++
 2 files changed, 29 insertions(+), 41 deletions(-)

diff --git a/lib/gui/lodepng.c b/lib/gui/lodepng.c
index ba21cd235f..9cc59d7097 100644
--- a/lib/gui/lodepng.c
+++ b/lib/gui/lodepng.c
@@ -74,34 +74,6 @@ static void myfree(void* ptr)
   free(ptr);
 }
 
-/*
-Declaration of the custom functions used if LODEPNG_COMPILE_ZLIB isn't defined
-or LODEPNG_CUSTOM_ZLIB_DECODER or LODEPNG_CUSTOM_ZLIB_ENCODER are enabled.
-
-In that case, you need to define these yourself (which you can do in one of your
-own source files) so that LodePNG can link to it.
-
-By default, this is not needed. If LODEPNG_COMPILE_ZLIB isn't defined, then only
-the two zlib related ones are needed.
-
-If needed, the functions must act as follows:
-*out must be NULL and *outsize must be 0 initially, and after the function is done,
-*out must point to the decompressed data, *outsize must be the size of it, and must
-be the size of the useful data in bytes, not the alloc size.
-*/
-unsigned lodepng_custom_zlib_decompress(unsigned char** out, size_t* outsize,
-                                        const unsigned char* in, size_t insize,
-                                        const LodePNGDecompressSettings* settings);
-unsigned lodepng_custom_zlib_compress(unsigned char** out, size_t* outsize,
-                                      const unsigned char* in, size_t insize,
-                                      const LodePNGCompressSettings* settings);
-unsigned lodepng_custom_inflate(unsigned char** out, size_t* outsize,
-                                const unsigned char* in, size_t insize,
-                                const LodePNGDecompressSettings* settings);
-unsigned lodepng_custom_deflate(unsigned char** out, size_t* outsize,
-                                const unsigned char* in, size_t insize,
-                                const LodePNGCompressSettings* settings);
-
 /* ////////////////////////////////////////////////////////////////////////// */
 /* ////////////////////////////////////////////////////////////////////////// */
 /* // Tools for C, and common code for PNG and Zlib.                       // */
@@ -348,7 +320,7 @@ static void string_set(char** out, const char* in)
 
 /* ////////////////////////////////////////////////////////////////////////// */
 
-unsigned lodepng_read32bitInt(const unsigned char* buffer)
+static unsigned lodepng_read32bitInt(const unsigned char* buffer)
 {
   return (buffer[0] << 24) | (buffer[1] << 16) | (buffer[2] << 8) | buffer[3];
 }
@@ -2668,11 +2640,6 @@ size_t lodepng_get_raw_size(unsigned w, unsigned h, const LodePNGColorMode* colo
   return (w * h * lodepng_get_bpp(color) + 7) / 8;
 }
 
-size_t lodepng_get_raw_size_lct(unsigned w, unsigned h, LodePNGColorType colortype, unsigned bitdepth)
-{
-  return (w * h * lodepng_get_bpp_lct(colortype, bitdepth) + 7) / 8;
-}
-
 #ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
 
 static void LodePNGUnknownChunks_init(LodePNGInfo* info)
@@ -2906,13 +2873,6 @@ unsigned lodepng_info_copy(LodePNGInfo* dest, const LodePNGInfo* source)
   return 0;
 }
 
-void lodepng_info_swap(LodePNGInfo* a, LodePNGInfo* b)
-{
-  LodePNGInfo temp = *a;
-  *a = *b;
-  *b = temp;
-}
-
 /* ////////////////////////////////////////////////////////////////////////// */
 
 /*index: bitgroup index, bits: bitgroup size(1, 2 or 4, in: bitgroup value, out: octet array to add bits to*/
diff --git a/lib/gui/lodepng.h b/lib/gui/lodepng.h
index 50d5303055..7f636f0a73 100644
--- a/lib/gui/lodepng.h
+++ b/lib/gui/lodepng.h
@@ -855,6 +855,34 @@ unsigned compress(std::vector<unsigned char>& out, const std::vector<unsigned ch
 } //namespace lodepng
 #endif /*LODEPNG_COMPILE_CPP*/
 
+/*
+Declaration of the custom functions used if LODEPNG_COMPILE_ZLIB isn't defined
+or LODEPNG_CUSTOM_ZLIB_DECODER or LODEPNG_CUSTOM_ZLIB_ENCODER are enabled.
+
+In that case, you need to define these yourself (which you can do in one of your
+own source files) so that LodePNG can link to it.
+
+By default, this is not needed. If LODEPNG_COMPILE_ZLIB isn't defined, then only
+the two zlib related ones are needed.
+
+If needed, the functions must act as follows:
+*out must be NULL and *outsize must be 0 initially, and after the function is done,
+*out must point to the decompressed data, *outsize must be the size of it, and must
+be the size of the useful data in bytes, not the alloc size.
+*/
+unsigned lodepng_custom_zlib_decompress(unsigned char** out, size_t* outsize,
+                                        const unsigned char* in, size_t insize,
+                                        const LodePNGDecompressSettings* settings);
+unsigned lodepng_custom_zlib_compress(unsigned char** out, size_t* outsize,
+                                      const unsigned char* in, size_t insize,
+                                      const LodePNGCompressSettings* settings);
+unsigned lodepng_custom_inflate(unsigned char** out, size_t* outsize,
+                                const unsigned char* in, size_t insize,
+                                const LodePNGDecompressSettings* settings);
+unsigned lodepng_custom_deflate(unsigned char** out, size_t* outsize,
+                                const unsigned char* in, size_t insize,
+                                const LodePNGCompressSettings* settings);
+
 /*
 TODO:
 [.] test if there are no memory leaks or security exploits - done a lot but needs to be checked often
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
