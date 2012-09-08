Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TAPPO-0001Hq-Py
 for barebox@lists.infradead.org; Sat, 08 Sep 2012 18:06:08 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1F04CFF8B75
 for <barebox@lists.infradead.org>; Sat,  8 Sep 2012 20:13:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Subject: [PATCH 10/11] add PNG support
Date: Sat,  8 Sep 2012 20:05:41 +0200
Message-Id: <1347127542-11981-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120908180310.GH20330@game.jcrosoft.org>
 <1347127542-11981-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
To: barebox@lists.infradead.org

use LodePNG version 20120729 from http://lodev.org/lodepng/

The original coding style is keeped to simplify update.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 -
 lib/Kconfig      |   25 +-
 lib/Makefile     |    2 +
 lib/lodepng.c    | 5928 ++++++++++++++++++++++++++++++++++++++++++++++++++++++
 lib/lodepng.h    | 1640 +++++++++++++++
 lib/png.c        |   89 +
 lib/png.h        |   21 +
 lib/png_lode.c   |   90 +
 8 files changed, 7793 insertions(+), 3 deletions(-)
 create mode 100644 lib/lodepng.c
 create mode 100644 lib/lodepng.h
 create mode 100644 lib/png.c
 create mode 100644 lib/png.h
 create mode 100644 lib/png_lode.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 97993c1..10c4a03 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -539,7 +539,6 @@ config CMD_SPLASH
 	bool
 	depends on VIDEO
 	select IMAGE_RENDERER
-	select BMP
 	prompt "splash"
 	help
 	  show bmp files on framebuffer devices
diff --git a/lib/Kconfig b/lib/Kconfig
index 417c81e..2405d59 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -43,8 +43,29 @@ config IMAGE_RENDERER
 	depends on VIDEO
 	select FILETYPE
 
+if IMAGE_RENDERER
+
 config BMP
-	bool
-	depends on IMAGE_RENDERER
+	bool "bmp"
+
+config PNG
+	bool "png"
+	select ZLIB
+
+if PNG
+
+choice
+	prompt "PNG Lib"
+
+config LODEPNG
+	bool "lodePNG"
+	help
+	  Mostly PNG support
+
+endchoice
+
+endif
+
+endif
 
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index 96b7c56..d752343 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -37,3 +37,5 @@ obj-$(CONFIG_QSORT)	+= qsort.o
 obj-$(CONFIG_BMP)	+= bmp.o
 obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o graphic_utils.o
 obj-$(CONFIG_IMAGE_RENDERER)	+= image_renderer.o
+obj-$(CONFIG_PNG)	+= png.o
+obj-$(CONFIG_LODEPNG)	+= png_lode.o lodepng.o
diff --git a/lib/lodepng.c b/lib/lodepng.c
new file mode 100644
index 0000000..ba21cd2
--- /dev/null
+++ b/lib/lodepng.c
@@ -0,0 +1,5928 @@
+/*
+LodePNG version 20120729
+
+Copyright (c) 2005-2012 Lode Vandevenne
+
+This software is provided 'as-is', without any express or implied
+warranty. In no event will the authors be held liable for any damages
+arising from the use of this software.
+
+Permission is granted to anyone to use this software for any purpose,
+including commercial applications, and to alter it and redistribute it
+freely, subject to the following restrictions:
+
+    1. The origin of this software must not be misrepresented; you must not
+    claim that you wrote the original software. If you use this software
+    in a product, an acknowledgment in the product documentation would be
+    appreciated but is not required.
+
+    2. Altered source versions must be plainly marked as such, and must not be
+    misrepresented as being the original software.
+
+    3. This notice may not be removed or altered from any source
+    distribution.
+*/
+
+/*
+The manual and changelog are in the header file "lodepng.h"
+Rename this file to lodepng.cpp to use it for C++, or to lodepng.c to use it for C.
+*/
+
+#include "lodepng.h"
+
+#include <stdio.h>
+#include <stdlib.h>
+
+#ifdef __BAREBOX__
+#include <common.h>
+#include <malloc.h>
+#include <fs.h>
+#include <fcntl.h>
+#endif
+
+#ifdef LODEPNG_COMPILE_CPP
+#include <fstream>
+#endif /*LODEPNG_COMPILE_CPP*/
+
+#define VERSION_STRING "20120729"
+
+/*
+This source file is built up in the following large parts. The code sections
+with the "LODEPNG_COMPILE_" #defines divide this up further in an intermixed way.
+-Tools for C and common code for PNG and Zlib
+-C Code for Zlib (huffman, deflate, ...)
+-C Code for PNG (file format chunks, adam7, PNG filters, color conversions, ...)
+-The C++ wrapper around all of the above
+*/
+
+/*The malloc, realloc and free functions defined here with "my" in front of the
+name, so that you can easily change them to others related to your platform in
+this one location if needed. Everything else in the code calls these.*/
+
+static void* mymalloc(size_t size)
+{
+  return malloc(size);
+}
+
+static void* myrealloc(void* ptr, size_t new_size)
+{
+  return realloc(ptr, new_size);
+}
+
+static void myfree(void* ptr)
+{
+  free(ptr);
+}
+
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
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* // Tools for C, and common code for PNG and Zlib.                       // */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*
+Often in case of an error a value is assigned to a variable and then it breaks
+out of a loop (to go to the cleanup phase of a function). This macro does that.
+It makes the error handling code shorter and more readable.
+
+Example: if(!uivector_resizev(&frequencies_ll, 286, 0)) ERROR_BREAK(83);
+*/
+#define CERROR_BREAK(errorvar, code)\
+{\
+  errorvar = code;\
+  break;\
+}
+
+/*version of CERROR_BREAK that assumes the common case where the error variable is named "error"*/
+#define ERROR_BREAK(code) CERROR_BREAK(error, code)
+
+/*Set error var to the error code, and return it.*/
+#define CERROR_RETURN_ERROR(errorvar, code)\
+{\
+  errorvar = code;\
+  return code;\
+}
+
+/*Try the code, if it returns error, also return the error.*/
+#define CERROR_TRY_RETURN(call)\
+{\
+  unsigned error = call;\
+  if(error) return error;\
+}
+
+/*
+About uivector, ucvector and string:
+-All of them wrap dynamic arrays or text strings in a similar way.
+-LodePNG was originally written in C++. The vectors replace the std::vectors that were used in the C++ version.
+-The string tools are made to avoid problems with compilers that declare things like strncat as deprecated.
+-They're not used in the interface, only internally in this file as static functions.
+-As with many other structs in this file, the init and cleanup functions serve as ctor and dtor.
+*/
+
+#ifdef LODEPNG_COMPILE_ZLIB
+/*dynamic vector of unsigned ints*/
+typedef struct uivector
+{
+  unsigned* data;
+  size_t size; /*size in number of unsigned longs*/
+  size_t allocsize; /*allocated size in bytes*/
+} uivector;
+
+static void uivector_cleanup(void* p)
+{
+  ((uivector*)p)->size = ((uivector*)p)->allocsize = 0;
+  myfree(((uivector*)p)->data);
+  ((uivector*)p)->data = NULL;
+}
+
+/*returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned uivector_resize(uivector* p, size_t size)
+{
+  if(size * sizeof(unsigned) > p->allocsize)
+  {
+    size_t newsize = size * sizeof(unsigned) * 2;
+    void* data = myrealloc(p->data, newsize);
+    if(data)
+    {
+      p->allocsize = newsize;
+      p->data = (unsigned*)data;
+      p->size = size;
+    }
+    else return 0;
+  }
+  else p->size = size;
+  return 1;
+}
+
+/*resize and give all new elements the value*/
+static unsigned uivector_resizev(uivector* p, size_t size, unsigned value)
+{
+  size_t oldsize = p->size, i;
+  if(!uivector_resize(p, size)) return 0;
+  for(i = oldsize; i < size; i++) p->data[i] = value;
+  return 1;
+}
+
+static void uivector_init(uivector* p)
+{
+  p->data = NULL;
+  p->size = p->allocsize = 0;
+}
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned uivector_push_back(uivector* p, unsigned c)
+{
+  if(!uivector_resize(p, p->size + 1)) return 0;
+  p->data[p->size - 1] = c;
+  return 1;
+}
+
+/*copy q to p, returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned uivector_copy(uivector* p, const uivector* q)
+{
+  size_t i;
+  if(!uivector_resize(p, q->size)) return 0;
+  for(i = 0; i < q->size; i++) p->data[i] = q->data[i];
+  return 1;
+}
+
+static void uivector_swap(uivector* p, uivector* q)
+{
+  size_t tmp;
+  unsigned* tmpp;
+  tmp = p->size; p->size = q->size; q->size = tmp;
+  tmp = p->allocsize; p->allocsize = q->allocsize; q->allocsize = tmp;
+  tmpp = p->data; p->data = q->data; q->data = tmpp;
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+#endif /*LODEPNG_COMPILE_ZLIB*/
+
+/* /////////////////////////////////////////////////////////////////////////// */
+
+/*dynamic vector of unsigned chars*/
+typedef struct ucvector
+{
+  unsigned char* data;
+  size_t size; /*used size*/
+  size_t allocsize; /*allocated size*/
+} ucvector;
+
+static void ucvector_cleanup(void* p)
+{
+  ((ucvector*)p)->size = ((ucvector*)p)->allocsize = 0;
+  myfree(((ucvector*)p)->data);
+  ((ucvector*)p)->data = NULL;
+}
+
+/*returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned ucvector_resize(ucvector* p, size_t size)
+{
+  if(size * sizeof(unsigned char) > p->allocsize)
+  {
+    size_t newsize = size * sizeof(unsigned char) * 2;
+    void* data = myrealloc(p->data, newsize);
+    if(data)
+    {
+      p->allocsize = newsize;
+      p->data = (unsigned char*)data;
+      p->size = size;
+    }
+    else return 0; /*error: not enough memory*/
+  }
+  else p->size = size;
+  return 1;
+}
+
+#ifdef LODEPNG_COMPILE_DECODER
+#ifdef LODEPNG_COMPILE_PNG
+/*resize and give all new elements the value*/
+static unsigned ucvector_resizev(ucvector* p, size_t size, unsigned char value)
+{
+  size_t oldsize = p->size, i;
+  if(!ucvector_resize(p, size)) return 0;
+  for(i = oldsize; i < size; i++) p->data[i] = value;
+  return 1;
+}
+#endif /*LODEPNG_COMPILE_PNG*/
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+static void ucvector_init(ucvector* p)
+{
+  p->data = NULL;
+  p->size = p->allocsize = 0;
+}
+
+#ifdef LODEPNG_COMPILE_ZLIB
+/*you can both convert from vector to buffer&size and vica versa. If you use
+init_buffer to take over a buffer and size, it is not needed to use cleanup*/
+static void ucvector_init_buffer(ucvector* p, unsigned char* buffer, size_t size)
+{
+  p->data = buffer;
+  p->allocsize = p->size = size;
+}
+#endif /*LODEPNG_COMPILE_ZLIB*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned ucvector_push_back(ucvector* p, unsigned char c)
+{
+  if(!ucvector_resize(p, p->size + 1)) return 0;
+  p->data[p->size - 1] = c;
+  return 1;
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_PNG
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+/*returns 1 if success, 0 if failure ==> nothing done*/
+static unsigned string_resize(char** out, size_t size)
+{
+  char* data = (char*)myrealloc(*out, size + 1);
+  if(data)
+  {
+    data[size] = 0; /*null termination char*/
+    *out = data;
+  }
+  return data != 0;
+}
+
+/*init a {char*, size_t} pair for use as string*/
+static void string_init(char** out)
+{
+  *out = NULL;
+  string_resize(out, 0);
+}
+
+/*free the above pair again*/
+static void string_cleanup(char** out)
+{
+  myfree(*out);
+  *out = NULL;
+}
+
+static void string_set(char** out, const char* in)
+{
+  size_t insize = strlen(in), i = 0;
+  if(string_resize(out, insize))
+  {
+    for(i = 0; i < insize; i++)
+    {
+      (*out)[i] = in[i];
+    }
+  }
+}
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+#endif /*LODEPNG_COMPILE_PNG*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+unsigned lodepng_read32bitInt(const unsigned char* buffer)
+{
+  return (buffer[0] << 24) | (buffer[1] << 16) | (buffer[2] << 8) | buffer[3];
+}
+
+/*buffer must have at least 4 allocated bytes available*/
+static void lodepng_set32bitInt(unsigned char* buffer, unsigned value)
+{
+  buffer[0] = (unsigned char)((value >> 24) & 0xff);
+  buffer[1] = (unsigned char)((value >> 16) & 0xff);
+  buffer[2] = (unsigned char)((value >>  8) & 0xff);
+  buffer[3] = (unsigned char)((value      ) & 0xff);
+}
+
+#ifdef LODEPNG_COMPILE_ENCODER
+static void lodepng_add32bitInt(ucvector* buffer, unsigned value)
+{
+  ucvector_resize(buffer, buffer->size + 4); /*todo: give error if resize failed*/
+  lodepng_set32bitInt(&buffer->data[buffer->size - 4], value);
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / File IO                                                                / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_DISK
+
+unsigned lodepng_load_file(unsigned char** out, size_t* outsize, const char* filename)
+{
+  FILE* file;
+  long size;
+
+  /*provide some proper output values if error will happen*/
+  *out = 0;
+  *outsize = 0;
+
+  file = fopen(filename, "rb");
+  if(!file) return 78;
+
+  /*get filesize:*/
+  fseek(file , 0 , SEEK_END);
+  size = ftell(file);
+  rewind(file);
+
+  /*read contents of the file into the vector*/
+  *outsize = 0;
+  *out = (unsigned char*)mymalloc((size_t)size);
+  if(size && (*out)) (*outsize) = fread(*out, 1, (size_t)size, file);
+
+  fclose(file);
+  if(!(*out) && size) return 83; /*the above malloc failed*/
+  return 0;
+}
+
+/*write given buffer to the file, overwriting the file, it doesn't append to it.*/
+unsigned lodepng_save_file(const unsigned char* buffer, size_t buffersize, const char* filename)
+{
+  FILE* file;
+  file = fopen(filename, "wb" );
+  if(!file) return 79;
+  fwrite((char*)buffer , 1 , buffersize, file);
+  fclose(file);
+  return 0;
+}
+
+#endif /*LODEPNG_COMPILE_DISK*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* // End of common code and tools. Begin of Zlib related code.            // */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_ZLIB
+#ifdef LODEPNG_COMPILE_ENCODER
+/*TODO: this ignores potential out of memory errors*/
+static void addBitToStream(size_t* bitpointer, ucvector* bitstream, unsigned char bit)
+{
+  /*add a new byte at the end*/
+  if((*bitpointer) % 8 == 0) ucvector_push_back(bitstream, (unsigned char)0);
+  /*earlier bit of huffman code is in a lesser significant bit of an earlier byte*/
+  (bitstream->data[bitstream->size - 1]) |= (bit << ((*bitpointer) & 0x7));
+  (*bitpointer)++;
+}
+
+static void addBitsToStream(size_t* bitpointer, ucvector* bitstream, unsigned value, size_t nbits)
+{
+  size_t i;
+  for(i = 0; i < nbits; i++) addBitToStream(bitpointer, bitstream, (unsigned char)((value >> i) & 1));
+}
+
+static void addBitsToStreamReversed(size_t* bitpointer, ucvector* bitstream, unsigned value, size_t nbits)
+{
+  size_t i;
+  for(i = 0; i < nbits; i++) addBitToStream(bitpointer, bitstream, (unsigned char)((value >> (nbits - 1 - i)) & 1));
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+#define READBIT(bitpointer, bitstream) ((bitstream[bitpointer >> 3] >> (bitpointer & 0x7)) & (unsigned char)1)
+
+static unsigned char readBitFromStream(size_t* bitpointer, const unsigned char* bitstream)
+{
+  unsigned char result = (unsigned char)(READBIT(*bitpointer, bitstream));
+  (*bitpointer)++;
+  return result;
+}
+
+static unsigned readBitsFromStream(size_t* bitpointer, const unsigned char* bitstream, size_t nbits)
+{
+  unsigned result = 0, i;
+  for(i = 0; i < nbits; i++)
+  {
+    result += ((unsigned)READBIT(*bitpointer, bitstream)) << i;
+    (*bitpointer)++;
+  }
+  return result;
+}
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Deflate - Huffman                                                      / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#define FIRST_LENGTH_CODE_INDEX 257
+#define LAST_LENGTH_CODE_INDEX 285
+/*256 literals, the end code, some length codes, and 2 unused codes*/
+#define NUM_DEFLATE_CODE_SYMBOLS 288
+/*the distance codes have their own symbols, 30 used, 2 unused*/
+#define NUM_DISTANCE_SYMBOLS 32
+/*the code length codes. 0-15: code lengths, 16: copy previous 3-6 times, 17: 3-10 zeros, 18: 11-138 zeros*/
+#define NUM_CODE_LENGTH_CODES 19
+
+/*the base lengths represented by codes 257-285*/
+static const unsigned LENGTHBASE[29]
+  = {3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31, 35, 43, 51, 59,
+     67, 83, 99, 115, 131, 163, 195, 227, 258};
+
+/*the extra bits used by codes 257-285 (added to base length)*/
+static const unsigned LENGTHEXTRA[29]
+  = {0, 0, 0, 0, 0, 0, 0,  0,  1,  1,  1,  1,  2,  2,  2,  2,  3,  3,  3,  3,
+      4,  4,  4,   4,   5,   5,   5,   5,   0};
+
+/*the base backwards distances (the bits of distance codes appear after length codes and use their own huffman tree)*/
+static const unsigned DISTANCEBASE[30]
+  = {1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193, 257, 385, 513,
+     769, 1025, 1537, 2049, 3073, 4097, 6145, 8193, 12289, 16385, 24577};
+
+/*the extra bits of backwards distances (added to base)*/
+static const unsigned DISTANCEEXTRA[30]
+  = {0, 0, 0, 0, 1, 1, 2,  2,  3,  3,  4,  4,  5,  5,   6,   6,   7,   7,   8,
+       8,    9,    9,   10,   10,   11,   11,   12,    12,    13,    13};
+
+/*the order in which "code length alphabet code lengths" are stored, out of this
+the huffman tree of the dynamic huffman tree lengths is generated*/
+static const unsigned CLCL_ORDER[NUM_CODE_LENGTH_CODES]
+  = {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*
+Huffman tree struct, containing multiple representations of the tree
+*/
+typedef struct HuffmanTree
+{
+  unsigned* tree2d;
+  unsigned* tree1d;
+  unsigned* lengths; /*the lengths of the codes of the 1d-tree*/
+  unsigned maxbitlen; /*maximum number of bits a single code can get*/
+  unsigned numcodes; /*number of symbols in the alphabet = number of codes*/
+} HuffmanTree;
+
+/*function used for debug purposes to draw the tree in ascii art with C++*/
+/*#include <iostream>
+static void HuffmanTree_draw(HuffmanTree* tree)
+{
+  std::cout << "tree. length: " << tree->numcodes << " maxbitlen: " << tree->maxbitlen << std::endl;
+  for(size_t i = 0; i < tree->tree1d.size; i++)
+  {
+    if(tree->lengths.data[i])
+      std::cout << i << " " << tree->tree1d.data[i] << " " << tree->lengths.data[i] << std::endl;
+  }
+  std::cout << std::endl;
+}*/
+
+static void HuffmanTree_init(HuffmanTree* tree)
+{
+  tree->tree2d = 0;
+  tree->tree1d = 0;
+  tree->lengths = 0;
+}
+
+static void HuffmanTree_cleanup(HuffmanTree* tree)
+{
+  myfree(tree->tree2d);
+  myfree(tree->tree1d);
+  myfree(tree->lengths);
+}
+
+/*the tree representation used by the decoder. return value is error*/
+static unsigned HuffmanTree_make2DTree(HuffmanTree* tree)
+{
+  unsigned nodefilled = 0; /*up to which node it is filled*/
+  unsigned treepos = 0; /*position in the tree (1 of the numcodes columns)*/
+  unsigned n, i;
+
+  tree->tree2d = (unsigned*)mymalloc(tree->numcodes * 2 * sizeof(unsigned));
+  if(!tree->tree2d) return 83; /*alloc fail*/
+
+  /*
+  convert tree1d[] to tree2d[][]. In the 2D array, a value of 32767 means
+  uninited, a value >= numcodes is an address to another bit, a value < numcodes
+  is a code. The 2 rows are the 2 possible bit values (0 or 1), there are as
+  many columns as codes - 1.
+  A good huffmann tree has N * 2 - 1 nodes, of which N - 1 are internal nodes.
+  Here, the internal nodes are stored (what their 0 and 1 option point to).
+  There is only memory for such good tree currently, if there are more nodes
+  (due to too long length codes), error 55 will happen
+  */
+  for(n = 0; n < tree->numcodes * 2; n++)
+  {
+    tree->tree2d[n] = 32767; /*32767 here means the tree2d isn't filled there yet*/
+  }
+
+  for(n = 0; n < tree->numcodes; n++) /*the codes*/
+  {
+    for(i = 0; i < tree->lengths[n]; i++) /*the bits for this code*/
+    {
+      unsigned char bit = (unsigned char)((tree->tree1d[n] >> (tree->lengths[n] - i - 1)) & 1);
+      if(treepos > tree->numcodes - 2) return 55; /*oversubscribed, see comment in lodepng_error_text*/
+      if(tree->tree2d[2 * treepos + bit] == 32767) /*not yet filled in*/
+      {
+        if(i + 1 == tree->lengths[n]) /*last bit*/
+        {
+          tree->tree2d[2 * treepos + bit] = n; /*put the current code in it*/
+          treepos = 0;
+        }
+        else
+        {
+          /*put address of the next step in here, first that address has to be found of course
+          (it's just nodefilled + 1)...*/
+          nodefilled++;
+          /*addresses encoded with numcodes added to it*/
+          tree->tree2d[2 * treepos + bit] = nodefilled + tree->numcodes;
+          treepos = nodefilled;
+        }
+      }
+      else treepos = tree->tree2d[2 * treepos + bit] - tree->numcodes;
+    }
+  }
+
+  for(n = 0;  n < tree->numcodes * 2; n++)
+  {
+    if(tree->tree2d[n] == 32767) tree->tree2d[n] = 0; /*remove possible remaining 32767's*/
+  }
+
+  return 0;
+}
+
+/*
+Second step for the ...makeFromLengths and ...makeFromFrequencies functions.
+numcodes, lengths and maxbitlen must already be filled in correctly. return
+value is error.
+*/
+static unsigned HuffmanTree_makeFromLengths2(HuffmanTree* tree)
+{
+  uivector blcount;
+  uivector nextcode;
+  unsigned bits, n, error = 0;
+
+  uivector_init(&blcount);
+  uivector_init(&nextcode);
+
+  tree->tree1d = (unsigned*)mymalloc(tree->numcodes * sizeof(unsigned));
+  if(!tree->tree1d) error = 83; /*alloc fail*/
+
+  if(!uivector_resizev(&blcount, tree->maxbitlen + 1, 0)
+  || !uivector_resizev(&nextcode, tree->maxbitlen + 1, 0))
+    error = 83; /*alloc fail*/
+
+  if(!error)
+  {
+    /*step 1: count number of instances of each code length*/
+    for(bits = 0; bits < tree->numcodes; bits++) blcount.data[tree->lengths[bits]]++;
+    /*step 2: generate the nextcode values*/
+    for(bits = 1; bits <= tree->maxbitlen; bits++)
+    {
+      nextcode.data[bits] = (nextcode.data[bits - 1] + blcount.data[bits - 1]) << 1;
+    }
+    /*step 3: generate all the codes*/
+    for(n = 0; n < tree->numcodes; n++)
+    {
+      if(tree->lengths[n] != 0) tree->tree1d[n] = nextcode.data[tree->lengths[n]]++;
+    }
+  }
+
+  uivector_cleanup(&blcount);
+  uivector_cleanup(&nextcode);
+
+  if(!error) return HuffmanTree_make2DTree(tree);
+  else return error;
+}
+
+/*
+given the code lengths (as stored in the PNG file), generate the tree as defined
+by Deflate. maxbitlen is the maximum bits that a code in the tree can have.
+return value is error.
+*/
+static unsigned HuffmanTree_makeFromLengths(HuffmanTree* tree, const unsigned* bitlen,
+                                            size_t numcodes, unsigned maxbitlen)
+{
+  unsigned i;
+  tree->lengths = (unsigned*)mymalloc(numcodes * sizeof(unsigned));
+  if(!tree->lengths) return 83; /*alloc fail*/
+  for(i = 0; i < numcodes; i++) tree->lengths[i] = bitlen[i];
+  tree->numcodes = (unsigned)numcodes; /*number of symbols*/
+  tree->maxbitlen = maxbitlen;
+  return HuffmanTree_makeFromLengths2(tree);
+}
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+/*
+A coin, this is the terminology used for the package-merge algorithm and the
+coin collector's problem. This is used to generate the huffman tree.
+A coin can be multiple coins (when they're merged)
+*/
+typedef struct Coin
+{
+  uivector symbols;
+  float weight; /*the sum of all weights in this coin*/
+} Coin;
+
+static void coin_init(Coin* c)
+{
+  uivector_init(&c->symbols);
+}
+
+/*argument c is void* so that this dtor can be given as function pointer to the vector resize function*/
+static void coin_cleanup(void* c)
+{
+  uivector_cleanup(&((Coin*)c)->symbols);
+}
+
+static void coin_copy(Coin* c1, const Coin* c2)
+{
+  c1->weight = c2->weight;
+  uivector_copy(&c1->symbols, &c2->symbols);
+}
+
+static void add_coins(Coin* c1, const Coin* c2)
+{
+  size_t i;
+  for(i = 0; i < c2->symbols.size; i++) uivector_push_back(&c1->symbols, c2->symbols.data[i]);
+  c1->weight += c2->weight;
+}
+
+static void init_coins(Coin* coins, size_t num)
+{
+  size_t i;
+  for(i = 0; i < num; i++) coin_init(&coins[i]);
+}
+
+static void cleanup_coins(Coin* coins, size_t num)
+{
+  size_t i;
+  for(i = 0; i < num; i++) coin_cleanup(&coins[i]);
+}
+
+/*
+This uses a simple combsort to sort the data. This function is not critical for
+overall encoding speed and the data amount isn't that large.
+*/
+static void sort_coins(Coin* data, size_t amount)
+{
+  size_t gap = amount;
+  unsigned char swapped = 0;
+  while((gap > 1) || swapped)
+  {
+    size_t i;
+    gap = (gap * 10) / 13; /*shrink factor 1.3*/
+    if(gap == 9 || gap == 10) gap = 11; /*combsort11*/
+    if(gap < 1) gap = 1;
+    swapped = 0;
+    for(i = 0; i < amount - gap; i++)
+    {
+      size_t j = i + gap;
+      if(data[j].weight < data[i].weight)
+      {
+        float temp = data[j].weight; data[j].weight = data[i].weight; data[i].weight = temp;
+        uivector_swap(&data[i].symbols, &data[j].symbols);
+        swapped = 1;
+      }
+    }
+  }
+}
+
+static unsigned append_symbol_coins(Coin* coins, const unsigned* frequencies, unsigned numcodes, size_t sum)
+{
+  unsigned i;
+  unsigned j = 0; /*index of present symbols*/
+  for(i = 0; i < numcodes; i++)
+  {
+    if(frequencies[i] != 0) /*only include symbols that are present*/
+    {
+      coins[j].weight = frequencies[i] / (float)sum;
+      uivector_push_back(&coins[j].symbols, i);
+      j++;
+    }
+  }
+  return 0;
+}
+
+unsigned lodepng_huffman_code_lengths(unsigned* lengths, const unsigned* frequencies,
+                                      size_t numcodes, unsigned maxbitlen)
+{
+  unsigned i, j;
+  size_t sum = 0, numpresent = 0;
+  unsigned error = 0;
+  Coin* coins; /*the coins of the currently calculated row*/
+  Coin* prev_row; /*the previous row of coins*/
+  unsigned numcoins;
+  unsigned coinmem;
+
+  if(numcodes == 0) return 80; /*error: a tree of 0 symbols is not supposed to be made*/
+
+  for(i = 0; i < numcodes; i++)
+  {
+    if(frequencies[i] > 0)
+    {
+      numpresent++;
+      sum += frequencies[i];
+    }
+  }
+
+  for(i = 0; i < numcodes; i++) lengths[i] = 0;
+
+  /*there are no symbols at all, in that case add one symbol of value 0 to the tree (see RFC 1951 section 3.2.7) */
+  if(numpresent == 0)
+  {
+    lengths[0] = 1;
+  }
+  /*the package merge algorithm gives wrong results if there's only one symbol
+  (theoretically 0 bits would then suffice, but we need a proper symbol for zlib)*/
+  else if(numpresent == 1)
+  {
+    for(i = 0; i < numcodes; i++) if(frequencies[i]) lengths[i] = 1;
+  }
+  else
+  {
+    /*Package-Merge algorithm represented by coin collector's problem
+    For every symbol, maxbitlen coins will be created*/
+
+    coinmem = numpresent * 2; /*max amount of coins needed with the current algo*/
+    coins = (Coin*)mymalloc(sizeof(Coin) * coinmem);
+    prev_row = (Coin*)mymalloc(sizeof(Coin) * coinmem);
+    if(!coins || !prev_row) return 83; /*alloc fail*/
+    init_coins(coins, coinmem);
+    init_coins(prev_row, coinmem);
+
+    /*first row, lowest denominator*/
+    error = append_symbol_coins(coins, frequencies, numcodes, sum);
+    numcoins = numpresent;
+    sort_coins(coins, numcoins);
+    if(!error)
+    {
+      unsigned numprev = 0;
+      for(j = 1; j <= maxbitlen && !error; j++) /*each of the remaining rows*/
+      {
+        unsigned tempnum;
+        Coin* tempcoins;
+        /*swap prev_row and coins, and their amounts*/
+        tempcoins = prev_row; prev_row = coins; coins = tempcoins;
+        tempnum = numprev; numprev = numcoins; numcoins = tempnum;
+
+        cleanup_coins(coins, numcoins);
+        init_coins(coins, numcoins);
+
+        numcoins = 0;
+
+        /*fill in the merged coins of the previous row*/
+        for(i = 0; i + 1 < numprev; i += 2)
+        {
+          /*merge prev_row[i] and prev_row[i + 1] into new coin*/
+          Coin* coin = &coins[numcoins++];
+          coin_copy(coin, &prev_row[i]);
+          add_coins(coin, &prev_row[i + 1]);
+        }
+        /*fill in all the original symbols again*/
+        if(j < maxbitlen)
+        {
+          error = append_symbol_coins(coins + numcoins, frequencies, numcodes, sum);
+          numcoins += numpresent;
+        }
+        sort_coins(coins, numcoins);
+      }
+    }
+
+    if(!error)
+    {
+      /*calculate the lenghts of each symbol, as the amount of times a coin of each symbol is used*/
+      for(i = 0; i < numpresent - 1; i++)
+      {
+        Coin* coin = &coins[i];
+        for(j = 0; j < coin->symbols.size; j++) lengths[coin->symbols.data[j]]++;
+      }
+    }
+
+    cleanup_coins(coins, coinmem);
+    myfree(coins);
+    cleanup_coins(prev_row, coinmem);
+    myfree(prev_row);
+  }
+
+  return error;
+}
+
+/*Create the Huffman tree given the symbol frequencies*/
+static unsigned HuffmanTree_makeFromFrequencies(HuffmanTree* tree, const unsigned* frequencies,
+                                                size_t numcodes, unsigned maxbitlen)
+{
+  unsigned error = 0;
+  tree->maxbitlen = maxbitlen;
+  tree->numcodes = (unsigned)numcodes; /*number of symbols*/
+  tree->lengths = (unsigned*)myrealloc(tree->lengths, numcodes * sizeof(unsigned));
+  if(!tree->lengths) return 83; /*alloc fail*/
+  /*initialize all lengths to 0*/
+  memset(tree->lengths, 0, numcodes * sizeof(unsigned));
+
+  error = lodepng_huffman_code_lengths(tree->lengths, frequencies, numcodes, maxbitlen);
+  if(!error) error = HuffmanTree_makeFromLengths2(tree);
+  return error;
+}
+
+static unsigned HuffmanTree_getCode(const HuffmanTree* tree, unsigned index)
+{
+  return tree->tree1d[index];
+}
+
+static unsigned HuffmanTree_getLength(const HuffmanTree* tree, unsigned index)
+{
+  return tree->lengths[index];
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+/*get the literal and length code tree of a deflated block with fixed tree, as per the deflate specification*/
+static unsigned generateFixedLitLenTree(HuffmanTree* tree)
+{
+  unsigned i, error = 0;
+  unsigned* bitlen = (unsigned*)mymalloc(NUM_DEFLATE_CODE_SYMBOLS * sizeof(unsigned));
+  if(!bitlen) return 83; /*alloc fail*/
+
+  /*288 possible codes: 0-255=literals, 256=endcode, 257-285=lengthcodes, 286-287=unused*/
+  for(i =   0; i <= 143; i++) bitlen[i] = 8;
+  for(i = 144; i <= 255; i++) bitlen[i] = 9;
+  for(i = 256; i <= 279; i++) bitlen[i] = 7;
+  for(i = 280; i <= 287; i++) bitlen[i] = 8;
+
+  error = HuffmanTree_makeFromLengths(tree, bitlen, NUM_DEFLATE_CODE_SYMBOLS, 15);
+
+  myfree(bitlen);
+  return error;
+}
+
+/*get the distance code tree of a deflated block with fixed tree, as specified in the deflate specification*/
+static unsigned generateFixedDistanceTree(HuffmanTree* tree)
+{
+  unsigned i, error = 0;
+  unsigned* bitlen = (unsigned*)mymalloc(NUM_DISTANCE_SYMBOLS * sizeof(unsigned));
+  if(!bitlen) return 83; /*alloc fail*/
+
+  /*there are 32 distance codes, but 30-31 are unused*/
+  for(i = 0; i < NUM_DISTANCE_SYMBOLS; i++) bitlen[i] = 5;
+  error = HuffmanTree_makeFromLengths(tree, bitlen, NUM_DISTANCE_SYMBOLS, 15);
+
+  myfree(bitlen);
+  return error;
+}
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+/*
+returns the code, or (unsigned)(-1) if error happened
+inbitlength is the length of the complete buffer, in bits (so its byte length times 8)
+*/
+static unsigned huffmanDecodeSymbol(const unsigned char* in, size_t* bp,
+                                    const HuffmanTree* codetree, size_t inbitlength)
+{
+  unsigned treepos = 0, ct;
+  for(;;)
+  {
+    if(*bp >= inbitlength) return (unsigned)(-1); /*error: end of input memory reached without endcode*/
+    /*
+    decode the symbol from the tree. The "readBitFromStream" code is inlined in
+    the expression below because this is the biggest bottleneck while decoding
+    */
+    ct = codetree->tree2d[(treepos << 1) + READBIT(*bp, in)];
+    (*bp)++;
+    if(ct < codetree->numcodes) return ct; /*the symbol is decoded, return it*/
+    else treepos = ct - codetree->numcodes; /*symbol not yet decoded, instead move tree position*/
+
+    if(treepos >= codetree->numcodes) return (unsigned)(-1); /*error: it appeared outside the codetree*/
+  }
+}
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Inflator (Decompressor)                                                / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*get the tree of a deflated block with fixed tree, as specified in the deflate specification*/
+static void getTreeInflateFixed(HuffmanTree* tree_ll, HuffmanTree* tree_d)
+{
+  /*TODO: check for out of memory errors*/
+  generateFixedLitLenTree(tree_ll);
+  generateFixedDistanceTree(tree_d);
+}
+
+/*get the tree of a deflated block with dynamic tree, the tree itself is also Huffman compressed with a known tree*/
+static unsigned getTreeInflateDynamic(HuffmanTree* tree_ll, HuffmanTree* tree_d,
+                                      const unsigned char* in, size_t* bp, size_t inlength)
+{
+  /*make sure that length values that aren't filled in will be 0, or a wrong tree will be generated*/
+  unsigned error = 0;
+  unsigned n, HLIT, HDIST, HCLEN, i;
+  size_t inbitlength = inlength * 8;
+
+  /*see comments in deflateDynamic for explanation of the context and these variables, it is analogous*/
+  unsigned* bitlen_ll = 0; /*lit,len code lengths*/
+  unsigned* bitlen_d = 0; /*dist code lengths*/
+  /*code length code lengths ("clcl"), the bit lengths of the huffman tree used to compress bitlen_ll and bitlen_d*/
+  unsigned* bitlen_cl = 0;
+  HuffmanTree tree_cl; /*the code tree for code length codes (the huffman tree for compressed huffman trees)*/
+
+  if((*bp) >> 3 >= inlength - 2) return 49; /*error: the bit pointer is or will go past the memory*/
+
+  /*number of literal/length codes + 257. Unlike the spec, the value 257 is added to it here already*/
+  HLIT =  readBitsFromStream(bp, in, 5) + 257;
+  /*number of distance codes. Unlike the spec, the value 1 is added to it here already*/
+  HDIST = readBitsFromStream(bp, in, 5) + 1;
+  /*number of code length codes. Unlike the spec, the value 4 is added to it here already*/
+  HCLEN = readBitsFromStream(bp, in, 4) + 4;
+
+  HuffmanTree_init(&tree_cl);
+
+  while(!error)
+  {
+    /*read the code length codes out of 3 * (amount of code length codes) bits*/
+
+    bitlen_cl = (unsigned*)mymalloc(NUM_CODE_LENGTH_CODES * sizeof(unsigned));
+    if(!bitlen_cl) ERROR_BREAK(83 /*alloc fail*/);
+
+    for(i = 0; i < NUM_CODE_LENGTH_CODES; i++)
+    {
+      if(i < HCLEN) bitlen_cl[CLCL_ORDER[i]] = readBitsFromStream(bp, in, 3);
+      else bitlen_cl[CLCL_ORDER[i]] = 0; /*if not, it must stay 0*/
+    }
+
+    error = HuffmanTree_makeFromLengths(&tree_cl, bitlen_cl, NUM_CODE_LENGTH_CODES, 7);
+    if(error) break;
+
+    /*now we can use this tree to read the lengths for the tree that this function will return*/
+    bitlen_ll = (unsigned*)mymalloc(NUM_DEFLATE_CODE_SYMBOLS * sizeof(unsigned));
+    bitlen_d = (unsigned*)mymalloc(NUM_DISTANCE_SYMBOLS * sizeof(unsigned));
+    if(!bitlen_ll || !bitlen_d) ERROR_BREAK(83 /*alloc fail*/);
+    for(i = 0; i < NUM_DEFLATE_CODE_SYMBOLS; i++) bitlen_ll[i] = 0;
+    for(i = 0; i < NUM_DISTANCE_SYMBOLS; i++) bitlen_d[i] = 0;
+
+    /*i is the current symbol we're reading in the part that contains the code lengths of lit/len and dist codes*/
+    i = 0;
+    while(i < HLIT + HDIST)
+    {
+      unsigned code = huffmanDecodeSymbol(in, bp, &tree_cl, inbitlength);
+      if(code <= 15) /*a length code*/
+      {
+        if(i < HLIT) bitlen_ll[i] = code;
+        else bitlen_d[i - HLIT] = code;
+        i++;
+      }
+      else if(code == 16) /*repeat previous*/
+      {
+        unsigned replength = 3; /*read in the 2 bits that indicate repeat length (3-6)*/
+        unsigned value; /*set value to the previous code*/
+
+        if(*bp >= inbitlength) ERROR_BREAK(50); /*error, bit pointer jumps past memory*/
+        if (i == 0) ERROR_BREAK(54); /*can't repeat previous if i is 0*/
+
+        replength += readBitsFromStream(bp, in, 2);
+
+        if(i < HLIT + 1) value = bitlen_ll[i - 1];
+        else value = bitlen_d[i - HLIT - 1];
+        /*repeat this value in the next lengths*/
+        for(n = 0; n < replength; n++)
+        {
+          if(i >= HLIT + HDIST) ERROR_BREAK(13); /*error: i is larger than the amount of codes*/
+          if(i < HLIT) bitlen_ll[i] = value;
+          else bitlen_d[i - HLIT] = value;
+          i++;
+        }
+      }
+      else if(code == 17) /*repeat "0" 3-10 times*/
+      {
+        unsigned replength = 3; /*read in the bits that indicate repeat length*/
+        if(*bp >= inbitlength) ERROR_BREAK(50); /*error, bit pointer jumps past memory*/
+
+        replength += readBitsFromStream(bp, in, 3);
+
+        /*repeat this value in the next lengths*/
+        for(n = 0; n < replength; n++)
+        {
+          if(i >= HLIT + HDIST) ERROR_BREAK(14); /*error: i is larger than the amount of codes*/
+
+          if(i < HLIT) bitlen_ll[i] = 0;
+          else bitlen_d[i - HLIT] = 0;
+          i++;
+        }
+      }
+      else if(code == 18) /*repeat "0" 11-138 times*/
+      {
+        unsigned replength = 11; /*read in the bits that indicate repeat length*/
+        if(*bp >= inbitlength) ERROR_BREAK(50); /*error, bit pointer jumps past memory*/
+
+        replength += readBitsFromStream(bp, in, 7);
+
+        /*repeat this value in the next lengths*/
+        for(n = 0; n < replength; n++)
+        {
+          if(i >= HLIT + HDIST) ERROR_BREAK(15); /*error: i is larger than the amount of codes*/
+
+          if(i < HLIT) bitlen_ll[i] = 0;
+          else bitlen_d[i - HLIT] = 0;
+          i++;
+        }
+      }
+      else /*if(code == (unsigned)(-1))*/ /*huffmanDecodeSymbol returns (unsigned)(-1) in case of error*/
+      {
+        if(code == (unsigned)(-1))
+        {
+          /*return error code 10 or 11 depending on the situation that happened in huffmanDecodeSymbol
+          (10=no endcode, 11=wrong jump outside of tree)*/
+          error = (*bp) > inbitlength ? 10 : 11;
+        }
+        else error = 16; /*unexisting code, this can never happen*/
+        break;
+      }
+    }
+    if(error) break;
+
+    if(bitlen_ll[256] == 0) ERROR_BREAK(64); /*the length of the end code 256 must be larger than 0*/
+
+    /*now we've finally got HLIT and HDIST, so generate the code trees, and the function is done*/
+    error = HuffmanTree_makeFromLengths(tree_ll, bitlen_ll, NUM_DEFLATE_CODE_SYMBOLS, 15);
+    if(error) break;
+    error = HuffmanTree_makeFromLengths(tree_d, bitlen_d, NUM_DISTANCE_SYMBOLS, 15);
+
+    break; /*end of error-while*/
+  }
+
+  myfree(bitlen_cl);
+  myfree(bitlen_ll);
+  myfree(bitlen_d);
+  HuffmanTree_cleanup(&tree_cl);
+
+  return error;
+}
+
+/*inflate a block with dynamic of fixed Huffman tree*/
+static unsigned inflateHuffmanBlock(ucvector* out, const unsigned char* in, size_t* bp,
+                                    size_t* pos, size_t inlength, unsigned btype)
+{
+  unsigned error = 0;
+  HuffmanTree tree_ll; /*the huffman tree for literal and length codes*/
+  HuffmanTree tree_d; /*the huffman tree for distance codes*/
+  size_t inbitlength = inlength * 8;
+
+  HuffmanTree_init(&tree_ll);
+  HuffmanTree_init(&tree_d);
+
+  if(btype == 1) getTreeInflateFixed(&tree_ll, &tree_d);
+  else if(btype == 2)
+  {
+    error = getTreeInflateDynamic(&tree_ll, &tree_d, in, bp, inlength);
+  }
+
+  while(!error) /*decode all symbols until end reached, breaks at end code*/
+  {
+    /*code_ll is literal, length or end code*/
+    unsigned code_ll = huffmanDecodeSymbol(in, bp, &tree_ll, inbitlength);
+    if(code_ll <= 255) /*literal symbol*/
+    {
+      if((*pos) >= out->size)
+      {
+        /*reserve more room at once*/
+        if(!ucvector_resize(out, ((*pos) + 1) * 2)) ERROR_BREAK(83 /*alloc fail*/);
+      }
+      out->data[(*pos)] = (unsigned char)(code_ll);
+      (*pos)++;
+    }
+    else if(code_ll >= FIRST_LENGTH_CODE_INDEX && code_ll <= LAST_LENGTH_CODE_INDEX) /*length code*/
+    {
+      unsigned code_d, distance;
+      unsigned numextrabits_l, numextrabits_d; /*extra bits for length and distance*/
+      size_t start, forward, backward, length;
+
+      /*part 1: get length base*/
+      length = LENGTHBASE[code_ll - FIRST_LENGTH_CODE_INDEX];
+
+      /*part 2: get extra bits and add the value of that to length*/
+      numextrabits_l = LENGTHEXTRA[code_ll - FIRST_LENGTH_CODE_INDEX];
+      if(*bp >= inbitlength) ERROR_BREAK(51); /*error, bit pointer will jump past memory*/
+      length += readBitsFromStream(bp, in, numextrabits_l);
+
+      /*part 3: get distance code*/
+      code_d = huffmanDecodeSymbol(in, bp, &tree_d, inbitlength);
+      if(code_d > 29)
+      {
+        if(code_ll == (unsigned)(-1)) /*huffmanDecodeSymbol returns (unsigned)(-1) in case of error*/
+        {
+          /*return error code 10 or 11 depending on the situation that happened in huffmanDecodeSymbol
+          (10=no endcode, 11=wrong jump outside of tree)*/
+          error = (*bp) > inlength * 8 ? 10 : 11;
+        }
+        else error = 18; /*error: invalid distance code (30-31 are never used)*/
+        break;
+      }
+      distance = DISTANCEBASE[code_d];
+
+      /*part 4: get extra bits from distance*/
+      numextrabits_d = DISTANCEEXTRA[code_d];
+      if(*bp >= inbitlength) ERROR_BREAK(51); /*error, bit pointer will jump past memory*/
+
+      distance += readBitsFromStream(bp, in, numextrabits_d);
+
+      /*part 5: fill in all the out[n] values based on the length and dist*/
+      start = (*pos);
+      if(distance > start) ERROR_BREAK(52); /*too long backward distance*/
+      backward = start - distance;
+      if((*pos) + length >= out->size)
+      {
+        /*reserve more room at once*/
+        if(!ucvector_resize(out, ((*pos) + length) * 2)) ERROR_BREAK(83 /*alloc fail*/);
+      }
+
+      for(forward = 0; forward < length; forward++)
+      {
+        out->data[(*pos)] = out->data[backward];
+        (*pos)++;
+        backward++;
+        if(backward >= start) backward = start - distance;
+      }
+    }
+    else if(code_ll == 256)
+    {
+      break; /*end code, break the loop*/
+    }
+    else /*if(code == (unsigned)(-1))*/ /*huffmanDecodeSymbol returns (unsigned)(-1) in case of error*/
+    {
+      /*return error code 10 or 11 depending on the situation that happened in huffmanDecodeSymbol
+      (10=no endcode, 11=wrong jump outside of tree)*/
+      error = (*bp) > inlength * 8 ? 10 : 11;
+      break;
+    }
+  }
+
+  HuffmanTree_cleanup(&tree_ll);
+  HuffmanTree_cleanup(&tree_d);
+
+  return error;
+}
+
+static unsigned inflateNoCompression(ucvector* out, const unsigned char* in, size_t* bp, size_t* pos, size_t inlength)
+{
+  /*go to first boundary of byte*/
+  size_t p;
+  unsigned LEN, NLEN, n, error = 0;
+  while(((*bp) & 0x7) != 0) (*bp)++;
+  p = (*bp) / 8; /*byte position*/
+
+  /*read LEN (2 bytes) and NLEN (2 bytes)*/
+  if(p >= inlength - 4) return 52; /*error, bit pointer will jump past memory*/
+  LEN = in[p] + 256 * in[p + 1]; p += 2;
+  NLEN = in[p] + 256 * in[p + 1]; p += 2;
+
+  /*check if 16-bit NLEN is really the one's complement of LEN*/
+  if(LEN + NLEN != 65535) return 21; /*error: NLEN is not one's complement of LEN*/
+
+  if((*pos) + LEN >= out->size)
+  {
+    if(!ucvector_resize(out, (*pos) + LEN)) return 83; /*alloc fail*/
+  }
+
+  /*read the literal data: LEN bytes are now stored in the out buffer*/
+  if(p + LEN > inlength) return 23; /*error: reading outside of in buffer*/
+  for(n = 0; n < LEN; n++) out->data[(*pos)++] = in[p++];
+
+  (*bp) = p * 8;
+
+  return error;
+}
+
+static unsigned lodepng_inflatev(ucvector* out,
+                                 const unsigned char* in, size_t insize,
+                                 const LodePNGDecompressSettings* settings)
+{
+  /*bit pointer in the "in" data, current byte is bp >> 3, current bit is bp & 0x7 (from lsb to msb of the byte)*/
+  size_t bp = 0;
+  unsigned BFINAL = 0;
+  size_t pos = 0; /*byte position in the out buffer*/
+
+  unsigned error = 0;
+
+  (void)settings;
+
+  while(!BFINAL)
+  {
+    unsigned BTYPE;
+    if(bp + 2 >= insize * 8) return 52; /*error, bit pointer will jump past memory*/
+    BFINAL = readBitFromStream(&bp, in);
+    BTYPE = 1 * readBitFromStream(&bp, in);
+    BTYPE += 2 * readBitFromStream(&bp, in);
+
+    if(BTYPE == 3) return 20; /*error: invalid BTYPE*/
+    else if(BTYPE == 0) error = inflateNoCompression(out, in, &bp, &pos, insize); /*no compression*/
+    else error = inflateHuffmanBlock(out, in, &bp, &pos, insize, BTYPE); /*compression, BTYPE 01 or 10*/
+
+    if(error) return error;
+  }
+
+  /*Only now we know the true size of out, resize it to that*/
+  if(!ucvector_resize(out, pos)) error = 83; /*alloc fail*/
+
+  return error;
+}
+
+unsigned lodepng_inflate(unsigned char** out, size_t* outsize,
+                         const unsigned char* in, size_t insize,
+                         const LodePNGDecompressSettings* settings)
+{
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 2
+  if(settings->custom_decoder)
+  {
+    return lodepng_custom_inflate(out, outsize, in, insize, settings);
+  }
+  else
+  {
+#endif /*LODEPNG_CUSTOM_ZLIB_DECODER == 2*/
+    unsigned error;
+    ucvector v;
+    ucvector_init_buffer(&v, *out, *outsize);
+    error = lodepng_inflatev(&v, in, insize, settings);
+    *out = v.data;
+    *outsize = v.size;
+    return error;
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 2
+  }
+#endif /*LODEPNG_CUSTOM_ZLIB_DECODER == 2*/
+}
+
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Deflator (Compressor)                                                  / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+static const size_t MAX_SUPPORTED_DEFLATE_LENGTH = 258;
+
+/*bitlen is the size in bits of the code*/
+static void addHuffmanSymbol(size_t* bp, ucvector* compressed, unsigned code, unsigned bitlen)
+{
+  addBitsToStreamReversed(bp, compressed, code, bitlen);
+}
+
+/*search the index in the array, that has the largest value smaller than or equal to the given value,
+given array must be sorted (if no value is smaller, it returns the size of the given array)*/
+static size_t searchCodeIndex(const unsigned* array, size_t array_size, size_t value)
+{
+  /*linear search implementation*/
+  /*for(size_t i = 1; i < array_size; i++) if(array[i] > value) return i - 1;
+  return array_size - 1;*/
+
+  /*binary search implementation (not that much faster) (precondition: array_size > 0)*/
+  size_t left  = 1;
+  size_t right = array_size - 1;
+  while(left <= right)
+  {
+    size_t mid = (left + right) / 2;
+    if(array[mid] <= value) left = mid + 1; /*the value to find is more to the right*/
+    else if(array[mid - 1] > value) right = mid - 1; /*the value to find is more to the left*/
+    else return mid - 1;
+  }
+  return array_size - 1;
+}
+
+static void addLengthDistance(uivector* values, size_t length, size_t distance)
+{
+  /*values in encoded vector are those used by deflate:
+  0-255: literal bytes
+  256: end
+  257-285: length/distance pair (length code, followed by extra length bits, distance code, extra distance bits)
+  286-287: invalid*/
+
+  unsigned length_code = (unsigned)searchCodeIndex(LENGTHBASE, 29, length);
+  unsigned extra_length = (unsigned)(length - LENGTHBASE[length_code]);
+  unsigned dist_code = (unsigned)searchCodeIndex(DISTANCEBASE, 30, distance);
+  unsigned extra_distance = (unsigned)(distance - DISTANCEBASE[dist_code]);
+
+  uivector_push_back(values, length_code + FIRST_LENGTH_CODE_INDEX);
+  uivector_push_back(values, extra_length);
+  uivector_push_back(values, dist_code);
+  uivector_push_back(values, extra_distance);
+}
+
+static const unsigned HASH_NUM_VALUES = 65536;
+static const unsigned HASH_NUM_CHARACTERS = 3;
+static const unsigned HASH_SHIFT = 2;
+/*
+The HASH_NUM_CHARACTERS value is used to make encoding faster by using longer
+sequences to generate a hash value from the stream bytes. Setting it to 3
+gives exactly the same compression as the brute force method, since deflate's
+run length encoding starts with lengths of 3. Setting it to higher values,
+like 6, can make the encoding faster (not always though!), but will cause the
+encoding to miss any length between 3 and this value, so that the compression
+may be worse (but this can vary too depending on the image, sometimes it is
+even a bit better instead).
+The HASH_NUM_VALUES is the amount of unique possible hash values that
+combinations of bytes can give, the higher it is the more memory is needed, but
+if it's too low the advantage of hashing is gone.
+*/
+
+typedef struct Hash
+{
+  int* head; /*hash value to head circular pos*/
+  int* val; /*circular pos to hash value*/
+  /*circular pos to prev circular pos*/
+  unsigned short* chain;
+  unsigned short* zeros;
+} Hash;
+
+static unsigned hash_init(Hash* hash, unsigned windowsize)
+{
+  unsigned i;
+  hash->head = (int*)mymalloc(sizeof(int) * HASH_NUM_VALUES);
+  hash->val = (int*)mymalloc(sizeof(int) * windowsize);
+  hash->chain = (unsigned short*)mymalloc(sizeof(unsigned short) * windowsize);
+  hash->zeros = (unsigned short*)mymalloc(sizeof(unsigned short) * windowsize);
+
+  if(!hash->head || !hash->val || !hash->chain || !hash->zeros) return 83; /*alloc fail*/
+
+  /*initialize hash table*/
+  for(i = 0; i < HASH_NUM_VALUES; i++) hash->head[i] = -1;
+  for(i = 0; i < windowsize; i++) hash->val[i] = -1;
+  for(i = 0; i < windowsize; i++) hash->chain[i] = i; /*same value as index indicates uninitialized*/
+
+  return 0;
+}
+
+static void hash_cleanup(Hash* hash)
+{
+  myfree(hash->head);
+  myfree(hash->val);
+  myfree(hash->chain);
+  myfree(hash->zeros);
+}
+
+static unsigned getHash(const unsigned char* data, size_t size, size_t pos)
+{
+  unsigned result = 0;
+  size_t amount, i;
+  if(pos >= size) return 0;
+  amount = HASH_NUM_CHARACTERS;
+  if(pos + amount >= size) amount = size - pos;
+  for(i = 0; i < amount; i++) result ^= (data[pos + i] << (i * HASH_SHIFT));
+  return result % HASH_NUM_VALUES;
+}
+
+static unsigned countZeros(const unsigned char* data, size_t size, size_t pos)
+{
+  const unsigned char* start = data + pos;
+  const unsigned char* end = start + MAX_SUPPORTED_DEFLATE_LENGTH;
+  if(end > data + size) end = data + size;
+  data = start;
+  while (data != end && *data == 0) data++;
+  return data - start;
+}
+
+static void updateHashChain(Hash* hash,
+                            size_t pos, int hashval, unsigned windowsize)
+{
+  unsigned wpos = pos % windowsize;
+  hash->val[wpos] = hashval;
+  if(hash->head[hashval] != -1)
+  {
+    hash->chain[wpos] = hash->head[hashval];
+  }
+  hash->head[hashval] = wpos;
+}
+
+/*Enable to use lazy instead of greedy matching. It looks one byte further
+to see if that one gives a longer distance. This gives slightly better compression, at the cost
+of a speed loss.*/
+#define LAZY_MATCHING
+
+/*
+LZ77-encode the data. Return value is error code. The input are raw bytes, the output
+is in the form of unsigned integers with codes representing for example literal bytes, or
+length/distance pairs.
+It uses a hash table technique to let it encode faster. When doing LZ77 encoding, a
+sliding window (of windowsize) is used, and all past bytes in that window can be used as
+the "dictionary". A brute force search through all possible distances would be slow, and
+this hash technique is one out of several ways to speed this up.
+*/
+static unsigned encodeLZ77(uivector* out, Hash* hash,
+                           const unsigned char* in, size_t inpos, size_t insize, unsigned windowsize)
+{
+  unsigned short numzeros = 0;
+  int usezeros = windowsize >= 8192; /*for small window size, the 'max chain length' optimization does a better job*/
+  unsigned pos, i, error = 0;
+
+  if(!error)
+  {
+    unsigned offset; /*the offset represents the distance in LZ77 terminology*/
+    unsigned length;
+#ifdef LAZY_MATCHING
+    unsigned lazy = 0;
+    unsigned lazylength = 0, lazyoffset = 0;
+#endif /*LAZY_MATCHING*/
+    unsigned hashval;
+    unsigned current_offset, current_length;
+    const unsigned char *lastptr, *foreptr, *backptr;
+    unsigned short hashpos, prevpos;
+
+    for(pos = inpos; pos < insize; pos++)
+    {
+      size_t wpos = pos % windowsize; /*position for in 'circular' hash buffers*/
+
+      hashval = getHash(in, insize, pos);
+      updateHashChain(hash, pos, hashval, windowsize);
+
+      if(usezeros && hashval == 0)
+      {
+        numzeros = countZeros(in, insize, pos);
+        hash->zeros[wpos] = numzeros;
+      }
+
+      /*the length and offset found for the current position*/
+      length = 0;
+      offset = 0;
+
+      prevpos = hash->head[hashval];
+      hashpos = hash->chain[prevpos];
+
+      lastptr = &in[insize < pos + MAX_SUPPORTED_DEFLATE_LENGTH ? insize : pos + MAX_SUPPORTED_DEFLATE_LENGTH];
+
+      /*search for the longest string*/
+      if(hash->val[wpos] == (int)hashval)
+      {
+        /*for large window lengths, assume the user wants no compression loss. Otherwise, max hash chain length speedup.*/
+        unsigned maxchainlength = windowsize >= 8192 ? windowsize : windowsize / 8;
+        for(;;)
+        {
+          /*stop when went completely around the circular buffer*/
+          if(prevpos < wpos && hashpos > prevpos && hashpos <= wpos) break;
+          if(prevpos > wpos && (hashpos <= wpos || hashpos > prevpos)) break;
+          if(maxchainlength-- == 0) break;
+
+          current_offset = hashpos <= wpos ? wpos - hashpos : wpos - hashpos + windowsize;
+          if(current_offset > 0)
+          {
+            /*test the next characters*/
+            foreptr = &in[pos];
+            backptr = &in[pos - current_offset];
+
+            /*common case in PNGs is lots of zeros. Quickly skip over them as a speedup*/
+            if(usezeros && hashval == 0 && hash->val[hashpos] == 0 /*hashval[hashpos] may be out of date*/)
+            {
+              unsigned short skip = hash->zeros[hashpos];
+              if(skip > numzeros) skip = numzeros;
+              backptr += skip;
+              foreptr += skip;
+            }
+
+            /* multiple checks at once per array bounds check */
+            while(foreptr != lastptr && *backptr == *foreptr) /*maximum supported length by deflate is max length*/
+            {
+              ++backptr;
+              ++foreptr;
+            }
+            current_length = (unsigned)(foreptr - &in[pos]);
+
+            if(current_length > length)
+            {
+              length = current_length; /*the longest length*/
+              offset = current_offset; /*the offset that is related to this longest length*/
+              /*jump out once a length of max length is found (speed gain)*/
+              if(current_length == MAX_SUPPORTED_DEFLATE_LENGTH) break;
+            }
+          }
+
+          if(hashpos == hash->chain[hashpos]) break;
+
+          prevpos = hashpos;
+          hashpos = hash->chain[hashpos];
+        }
+      }
+
+#ifdef LAZY_MATCHING
+      if(!lazy && length >= 3 && length < MAX_SUPPORTED_DEFLATE_LENGTH)
+      {
+        lazy = 1;
+        lazylength = length;
+        lazyoffset = offset;
+        continue;
+      }
+      if(lazy)
+      {
+        lazy = 0;
+        if(pos == 0) ERROR_BREAK(81);
+        if(length > lazylength + 1)
+        {
+          /*push the previous character as literal*/
+          if(!uivector_push_back(out, in[pos - 1])) ERROR_BREAK(83 /*alloc fail*/);
+        }
+        else
+        {
+          length = lazylength;
+          offset = lazyoffset;
+          hash->head[hashval] = -1; /*the same hashchain update will be done, this ensures no wrong alteration*/
+          pos--;
+        }
+      }
+#endif /*LAZY_MATCHING*/
+
+      if(length >= 3 && offset > windowsize) ERROR_BREAK(86 /*too big (or overflown negative) offset*/);
+
+
+      /**encode it as length/distance pair or literal value**/
+      if(length < 3) /*only lengths of 3 or higher are supported as length/distance pair*/
+      {
+        if(!uivector_push_back(out, in[pos])) ERROR_BREAK(83 /*alloc fail*/);
+      }
+      else
+      {
+        if(length == 3 && offset > 2048)
+        {
+          /*compensate for the fact that longer offsets have more extra bits, a
+          length of only 3 may be not worth it then*/
+          if(!uivector_push_back(out, in[pos + 0])) ERROR_BREAK(83 /*alloc fail*/);
+          if(!uivector_push_back(out, in[pos + 1])) ERROR_BREAK(83 /*alloc fail*/);
+          if(!uivector_push_back(out, in[pos + 2])) ERROR_BREAK(83 /*alloc fail*/);
+        }
+        else
+        {
+          addLengthDistance(out, length, offset);
+        }
+        for(i = 1; i < length; i++)
+        {
+          pos++;
+          hashval = getHash(in, insize, pos);
+          updateHashChain(hash, pos, hashval, windowsize);
+          if(usezeros && hashval == 0)
+          {
+            hash->zeros[pos % windowsize] = countZeros(in, insize, pos);
+          }
+        }
+      }
+
+    } /*end of the loop through each character of input*/
+  } /*end of "if(!error)"*/
+
+  return error;
+}
+
+/* /////////////////////////////////////////////////////////////////////////// */
+
+static unsigned deflateNoCompression(ucvector* out, const unsigned char* data, size_t datasize)
+{
+  /*non compressed deflate block data: 1 bit BFINAL,2 bits BTYPE,(5 bits): it jumps to start of next byte,
+  2 bytes LEN, 2 bytes NLEN, LEN bytes literal DATA*/
+
+  size_t i, j, numdeflateblocks = (datasize + 65534) / 65535;
+  unsigned datapos = 0;
+  for(i = 0; i < numdeflateblocks; i++)
+  {
+    unsigned BFINAL, BTYPE, LEN, NLEN;
+    unsigned char firstbyte;
+
+    BFINAL = (i == numdeflateblocks - 1);
+    BTYPE = 0;
+
+    firstbyte = (unsigned char)(BFINAL + ((BTYPE & 1) << 1) + ((BTYPE & 2) << 1));
+    ucvector_push_back(out, firstbyte);
+
+    LEN = 65535;
+    if(datasize - datapos < 65535) LEN = (unsigned)datasize - datapos;
+    NLEN = 65535 - LEN;
+
+    ucvector_push_back(out, (unsigned char)(LEN % 256));
+    ucvector_push_back(out, (unsigned char)(LEN / 256));
+    ucvector_push_back(out, (unsigned char)(NLEN % 256));
+    ucvector_push_back(out, (unsigned char)(NLEN / 256));
+
+    /*Decompressed data*/
+    for(j = 0; j < 65535 && datapos < datasize; j++)
+    {
+      ucvector_push_back(out, data[datapos++]);
+    }
+  }
+
+  return 0;
+}
+
+/*
+write the lz77-encoded data, which has lit, len and dist codes, to compressed stream using huffman trees.
+tree_ll: the tree for lit and len codes.
+tree_d: the tree for distance codes.
+*/
+static void writeLZ77data(size_t* bp, ucvector* out, const uivector* lz77_encoded,
+                          const HuffmanTree* tree_ll, const HuffmanTree* tree_d)
+{
+  size_t i = 0;
+  for(i = 0; i < lz77_encoded->size; i++)
+  {
+    unsigned val = lz77_encoded->data[i];
+    addHuffmanSymbol(bp, out, HuffmanTree_getCode(tree_ll, val), HuffmanTree_getLength(tree_ll, val));
+    if(val > 256) /*for a length code, 3 more things have to be added*/
+    {
+      unsigned length_index = val - FIRST_LENGTH_CODE_INDEX;
+      unsigned n_length_extra_bits = LENGTHEXTRA[length_index];
+      unsigned length_extra_bits = lz77_encoded->data[++i];
+
+      unsigned distance_code = lz77_encoded->data[++i];
+
+      unsigned distance_index = distance_code;
+      unsigned n_distance_extra_bits = DISTANCEEXTRA[distance_index];
+      unsigned distance_extra_bits = lz77_encoded->data[++i];
+
+      addBitsToStream(bp, out, length_extra_bits, n_length_extra_bits);
+      addHuffmanSymbol(bp, out, HuffmanTree_getCode(tree_d, distance_code),
+                       HuffmanTree_getLength(tree_d, distance_code));
+      addBitsToStream(bp, out, distance_extra_bits, n_distance_extra_bits);
+    }
+  }
+}
+
+/*Deflate for a block of type "dynamic", that is, with freely, optimally, created huffman trees*/
+static unsigned deflateDynamic(ucvector* out, size_t* bp, Hash* hash,
+                               const unsigned char* data, size_t datapos, size_t dataend,
+                               const LodePNGCompressSettings* settings, int final)
+{
+  unsigned error = 0;
+
+  /*
+  A block is compressed as follows: The PNG data is lz77 encoded, resulting in
+  literal bytes and length/distance pairs. This is then huffman compressed with
+  two huffman trees. One huffman tree is used for the lit and len values ("ll"),
+  another huffman tree is used for the dist values ("d"). These two trees are
+  stored using their code lengths, and to compress even more these code lengths
+  are also run-length encoded and huffman compressed. This gives a huffman tree
+  of code lengths "cl". The code lenghts used to describe this third tree are
+  the code length code lengths ("clcl").
+  */
+
+  /*The lz77 encoded data, represented with integers since there will also be length and distance codes in it*/
+  uivector lz77_encoded;
+  HuffmanTree tree_ll; /*tree for lit,len values*/
+  HuffmanTree tree_d; /*tree for distance codes*/
+  HuffmanTree tree_cl; /*tree for encoding the code lengths representing tree_ll and tree_d*/
+  uivector frequencies_ll; /*frequency of lit,len codes*/
+  uivector frequencies_d; /*frequency of dist codes*/
+  uivector frequencies_cl; /*frequency of code length codes*/
+  uivector bitlen_lld; /*lit,len,dist code lenghts (int bits), literally (without repeat codes).*/
+  uivector bitlen_lld_e; /*bitlen_lld encoded with repeat codes (this is a rudemtary run length compression)*/
+  /*bitlen_cl is the code length code lengths ("clcl"). The bit lengths of codes to represent tree_cl
+  (these are written as is in the file, it would be crazy to compress these using yet another huffman
+  tree that needs to be represented by yet another set of code lengths)*/
+  uivector bitlen_cl;
+  size_t datasize = dataend - datapos;
+
+  /*
+  Due to the huffman compression of huffman tree representations ("two levels"), there are some anologies:
+  bitlen_lld is to tree_cl what data is to tree_ll and tree_d.
+  bitlen_lld_e is to bitlen_lld what lz77_encoded is to data.
+  bitlen_cl is to bitlen_lld_e what bitlen_lld is to lz77_encoded.
+  */
+
+  unsigned BFINAL = final;
+  size_t numcodes_ll, numcodes_d, i;
+  unsigned HLIT, HDIST, HCLEN;
+
+  uivector_init(&lz77_encoded);
+  HuffmanTree_init(&tree_ll);
+  HuffmanTree_init(&tree_d);
+  HuffmanTree_init(&tree_cl);
+  uivector_init(&frequencies_ll);
+  uivector_init(&frequencies_d);
+  uivector_init(&frequencies_cl);
+  uivector_init(&bitlen_lld);
+  uivector_init(&bitlen_lld_e);
+  uivector_init(&bitlen_cl);
+
+  /*This while loop is never loops due to a break at the end, it is here to
+  allow breaking out of it to the cleanup phase on error conditions.*/
+  while(!error)
+  {
+    if(settings->use_lz77)
+    {
+      error = encodeLZ77(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize); /*LZ77 encoded*/
+      if(error) break;
+    }
+    else
+    {
+      if(!uivector_resize(&lz77_encoded, datasize)) ERROR_BREAK(83 /*alloc fail*/);
+      for(i = datapos; i < dataend; i++) lz77_encoded.data[i] = data[i]; /*no LZ77, but still will be Huffman compressed*/
+    }
+
+    if(!uivector_resizev(&frequencies_ll, 286, 0)) ERROR_BREAK(83 /*alloc fail*/);
+    if(!uivector_resizev(&frequencies_d, 30, 0)) ERROR_BREAK(83 /*alloc fail*/);
+
+    /*Count the frequencies of lit, len and dist codes*/
+    for(i = 0; i < lz77_encoded.size; i++)
+    {
+      unsigned symbol = lz77_encoded.data[i];
+      frequencies_ll.data[symbol]++;
+      if(symbol > 256)
+      {
+        unsigned dist = lz77_encoded.data[i + 2];
+        frequencies_d.data[dist]++;
+        i += 3;
+      }
+    }
+    frequencies_ll.data[256] = 1; /*there will be exactly 1 end code, at the end of the block*/
+
+    /*Make both huffman trees, one for the lit and len codes, one for the dist codes*/
+    error = HuffmanTree_makeFromFrequencies(&tree_ll, frequencies_ll.data, frequencies_ll.size, 15);
+    if(error) break;
+    error = HuffmanTree_makeFromFrequencies(&tree_d, frequencies_d.data, frequencies_d.size, 15);
+    if(error) break;
+
+    numcodes_ll = tree_ll.numcodes; if(numcodes_ll > 286) numcodes_ll = 286;
+    numcodes_d = tree_d.numcodes; if(numcodes_d > 30) numcodes_d = 30;
+    /*store the code lengths of both generated trees in bitlen_lld*/
+    for(i = 0; i < numcodes_ll; i++) uivector_push_back(&bitlen_lld, HuffmanTree_getLength(&tree_ll, (unsigned)i));
+    for(i = 0; i < numcodes_d; i++) uivector_push_back(&bitlen_lld, HuffmanTree_getLength(&tree_d, (unsigned)i));
+
+    /*run-length compress bitlen_ldd into bitlen_lld_e by using repeat codes 16 (copy length 3-6 times),
+    17 (3-10 zeroes), 18 (11-138 zeroes)*/
+    for(i = 0; i < (unsigned)bitlen_lld.size; i++)
+    {
+      unsigned j = 0; /*amount of repititions*/
+      while(i + j + 1 < (unsigned)bitlen_lld.size && bitlen_lld.data[i + j + 1] == bitlen_lld.data[i]) j++;
+
+      if(bitlen_lld.data[i] == 0 && j >= 2) /*repeat code for zeroes*/
+      {
+        j++; /*include the first zero*/
+        if(j <= 10) /*repeat code 17 supports max 10 zeroes*/
+        {
+          uivector_push_back(&bitlen_lld_e, 17);
+          uivector_push_back(&bitlen_lld_e, j - 3);
+        }
+        else /*repeat code 18 supports max 138 zeroes*/
+        {
+          if(j > 138) j = 138;
+          uivector_push_back(&bitlen_lld_e, 18);
+          uivector_push_back(&bitlen_lld_e, j - 11);
+        }
+        i += (j - 1);
+      }
+      else if(j >= 3) /*repeat code for value other than zero*/
+      {
+        size_t k;
+        unsigned num = j / 6, rest = j % 6;
+        uivector_push_back(&bitlen_lld_e, bitlen_lld.data[i]);
+        for(k = 0; k < num; k++)
+        {
+          uivector_push_back(&bitlen_lld_e, 16);
+          uivector_push_back(&bitlen_lld_e, 6 - 3);
+        }
+        if(rest >= 3)
+        {
+          uivector_push_back(&bitlen_lld_e, 16);
+          uivector_push_back(&bitlen_lld_e, rest - 3);
+        }
+        else j -= rest;
+        i += j;
+      }
+      else /*too short to benefit from repeat code*/
+      {
+        uivector_push_back(&bitlen_lld_e, bitlen_lld.data[i]);
+      }
+    }
+
+    /*generate tree_cl, the huffmantree of huffmantrees*/
+
+    if(!uivector_resizev(&frequencies_cl, NUM_CODE_LENGTH_CODES, 0)) ERROR_BREAK(83 /*alloc fail*/);
+    for(i = 0; i < bitlen_lld_e.size; i++)
+    {
+      frequencies_cl.data[bitlen_lld_e.data[i]]++;
+      /*after a repeat code come the bits that specify the number of repetitions,
+      those don't need to be in the frequencies_cl calculation*/
+      if(bitlen_lld_e.data[i] >= 16) i++;
+    }
+
+    error = HuffmanTree_makeFromFrequencies(&tree_cl, frequencies_cl.data, frequencies_cl.size, 7);
+    if(error) break;
+
+    if(!uivector_resize(&bitlen_cl, NUM_CODE_LENGTH_CODES)) ERROR_BREAK(83 /*alloc fail*/);
+    for(i = 0; i < NUM_CODE_LENGTH_CODES; i++)
+    {
+      /*lenghts of code length tree is in the order as specified by deflate*/
+      bitlen_cl.data[i] = HuffmanTree_getLength(&tree_cl, CLCL_ORDER[i]);
+    }
+    while(bitlen_cl.data[bitlen_cl.size - 1] == 0 && bitlen_cl.size > 4)
+    {
+      /*remove zeros at the end, but minimum size must be 4*/
+      if(!uivector_resize(&bitlen_cl, bitlen_cl.size - 1)) ERROR_BREAK(83 /*alloc fail*/);
+    }
+    if(error) break;
+
+    /*
+    Write everything into the output
+
+    After the BFINAL and BTYPE, the dynamic block consists out of the following:
+    - 5 bits HLIT, 5 bits HDIST, 4 bits HCLEN
+    - (HCLEN+4)*3 bits code lengths of code length alphabet
+    - HLIT + 257 code lenghts of lit/length alphabet (encoded using the code length
+      alphabet, + possible repetition codes 16, 17, 18)
+    - HDIST + 1 code lengths of distance alphabet (encoded using the code length
+      alphabet, + possible repetition codes 16, 17, 18)
+    - compressed data
+    - 256 (end code)
+    */
+
+    /*Write block type*/
+    addBitToStream(bp, out, BFINAL);
+    addBitToStream(bp, out, 0); /*first bit of BTYPE "dynamic"*/
+    addBitToStream(bp, out, 1); /*second bit of BTYPE "dynamic"*/
+
+    /*write the HLIT, HDIST and HCLEN values*/
+    HLIT = (unsigned)(numcodes_ll - 257);
+    HDIST = (unsigned)(numcodes_d - 1);
+    HCLEN = (unsigned)bitlen_cl.size - 4;
+    addBitsToStream(bp, out, HLIT, 5);
+    addBitsToStream(bp, out, HDIST, 5);
+    addBitsToStream(bp, out, HCLEN, 4);
+
+    /*write the code lenghts of the code length alphabet*/
+    for(i = 0; i < HCLEN + 4; i++) addBitsToStream(bp, out, bitlen_cl.data[i], 3);
+
+    /*write the lenghts of the lit/len AND the dist alphabet*/
+    for(i = 0; i < bitlen_lld_e.size; i++)
+    {
+      addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_cl, bitlen_lld_e.data[i]),
+                       HuffmanTree_getLength(&tree_cl, bitlen_lld_e.data[i]));
+      /*extra bits of repeat codes*/
+      if(bitlen_lld_e.data[i] == 16) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 2);
+      else if(bitlen_lld_e.data[i] == 17) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 3);
+      else if(bitlen_lld_e.data[i] == 18) addBitsToStream(bp, out, bitlen_lld_e.data[++i], 7);
+    }
+
+    /*write the compressed data symbols*/
+    writeLZ77data(bp, out, &lz77_encoded, &tree_ll, &tree_d);
+    /*error: the length of the end code 256 must be larger than 0*/
+    if(HuffmanTree_getLength(&tree_ll, 256) == 0) ERROR_BREAK(64);
+
+    /*write the end code*/
+    addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, 256), HuffmanTree_getLength(&tree_ll, 256));
+
+    break; /*end of error-while*/
+  }
+
+  /*cleanup*/
+  uivector_cleanup(&lz77_encoded);
+  HuffmanTree_cleanup(&tree_ll);
+  HuffmanTree_cleanup(&tree_d);
+  HuffmanTree_cleanup(&tree_cl);
+  uivector_cleanup(&frequencies_ll);
+  uivector_cleanup(&frequencies_d);
+  uivector_cleanup(&frequencies_cl);
+  uivector_cleanup(&bitlen_lld_e);
+  uivector_cleanup(&bitlen_lld);
+  uivector_cleanup(&bitlen_cl);
+
+  return error;
+}
+
+static unsigned deflateFixed(ucvector* out, size_t* bp, Hash* hash,
+                             const unsigned char* data,
+                             size_t datapos, size_t dataend,
+                             const LodePNGCompressSettings* settings, int final)
+{
+  HuffmanTree tree_ll; /*tree for literal values and length codes*/
+  HuffmanTree tree_d; /*tree for distance codes*/
+
+  unsigned BFINAL = final;
+  unsigned error = 0;
+  size_t i;
+
+  HuffmanTree_init(&tree_ll);
+  HuffmanTree_init(&tree_d);
+
+  generateFixedLitLenTree(&tree_ll);
+  generateFixedDistanceTree(&tree_d);
+
+  addBitToStream(bp, out, BFINAL);
+  addBitToStream(bp, out, 1); /*first bit of BTYPE*/
+  addBitToStream(bp, out, 0); /*second bit of BTYPE*/
+
+  if(settings->use_lz77) /*LZ77 encoded*/
+  {
+    uivector lz77_encoded;
+    uivector_init(&lz77_encoded);
+    error = encodeLZ77(&lz77_encoded, hash, data, datapos, dataend, settings->windowsize);
+    if(!error) writeLZ77data(bp, out, &lz77_encoded, &tree_ll, &tree_d);
+    uivector_cleanup(&lz77_encoded);
+  }
+  else /*no LZ77, but still will be Huffman compressed*/
+  {
+    for(i = datapos; i < dataend; i++)
+    {
+      addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, data[i]), HuffmanTree_getLength(&tree_ll, data[i]));
+    }
+  }
+  /*add END code*/
+  if(!error) addHuffmanSymbol(bp, out, HuffmanTree_getCode(&tree_ll, 256), HuffmanTree_getLength(&tree_ll, 256));
+
+  /*cleanup*/
+  HuffmanTree_cleanup(&tree_ll);
+  HuffmanTree_cleanup(&tree_d);
+
+  return error;
+}
+
+static unsigned lodepng_deflatev(ucvector* out, const unsigned char* in, size_t insize,
+                                 const LodePNGCompressSettings* settings)
+{
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 2
+  if(settings->custom_encoder)
+  {
+    unsigned char** out2 = &out->data;
+    size_t* outsize = &out->size;
+
+    unsigned error = lodepng_custom_deflate(out2, outsize, in, insize, settings);
+
+    if(!error) ucvector_init_buffer(out, *out2, *outsize);
+    return error;
+  }
+  else
+  {
+#endif /*LODEPNG_CUSTOM_ZLIB_ENCODER == 2*/
+    unsigned error = 0;
+    size_t i, blocksize, numdeflateblocks;
+    size_t bp = 0; /*the bit pointer*/
+    Hash hash;
+
+    if(settings->btype > 2) return 61;
+
+    if(settings->btype == 0) return deflateNoCompression(out, in, insize);
+
+    if(settings->btype == 1) blocksize = insize;
+    else /*if(settings->btype == 2)*/
+    {
+      blocksize = insize / 8 + 8;
+      if(blocksize < 65535) blocksize = 65535;
+    }
+
+    numdeflateblocks = (insize + blocksize - 1) / blocksize;
+    if(numdeflateblocks == 0) numdeflateblocks = 1;
+
+    error = hash_init(&hash, settings->windowsize);
+    if(error) return error;
+
+    for(i = 0; i < numdeflateblocks && !error; i++)
+    {
+      int final = i == numdeflateblocks - 1;
+      size_t start = i * blocksize;
+      size_t end = start + blocksize;
+      if(end > insize) end = insize;
+
+      if(settings->btype == 1) error = deflateFixed(out, &bp, &hash, in, start, end, settings, final);
+      else if(settings->btype == 2) error = deflateDynamic(out, &bp, &hash, in, start, end, settings, final);
+    }
+
+    hash_cleanup(&hash);
+
+    return error;
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 2
+  }
+#endif /*LODEPNG_CUSTOM_ZLIB_ENCODER == 2*/
+}
+
+unsigned lodepng_deflate(unsigned char** out, size_t* outsize,
+                         const unsigned char* in, size_t insize,
+                         const LodePNGCompressSettings* settings)
+{
+  unsigned error;
+  ucvector v;
+  ucvector_init_buffer(&v, *out, *outsize);
+  error = lodepng_deflatev(&v, in, insize, settings);
+  *out = v.data;
+  *outsize = v.size;
+  return error;
+}
+
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Adler32                                                                  */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+static unsigned update_adler32(unsigned adler, const unsigned char* data, unsigned len)
+{
+   unsigned s1 = adler & 0xffff;
+   unsigned s2 = (adler >> 16) & 0xffff;
+
+  while(len > 0)
+  {
+    /*at least 5550 sums can be done before the sums overflow, saving a lot of module divisions*/
+    unsigned amount = len > 5550 ? 5550 : len;
+    len -= amount;
+    while(amount > 0)
+    {
+      s1 = (s1 + *data++);
+      s2 = (s2 + s1);
+      amount--;
+    }
+    s1 %= 65521;
+    s2 %= 65521;
+  }
+
+  return (s2 << 16) | s1;
+}
+
+/*Return the adler32 of the bytes data[0..len-1]*/
+static unsigned adler32(const unsigned char* data, unsigned len)
+{
+  return update_adler32(1L, data, len);
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Zlib                                                                   / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+unsigned lodepng_zlib_decompress(unsigned char** out, size_t* outsize, const unsigned char* in,
+                                 size_t insize, const LodePNGDecompressSettings* settings)
+{
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 1
+  if(settings->custom_decoder)
+  {
+    return lodepng_custom_zlib_decompress(out, outsize, in, insize, settings);
+  }
+  else
+  {
+#endif /*LODEPNG_CUSTOM_ZLIB_DECODER == 1*/
+    unsigned error = 0;
+    unsigned CM, CINFO, FDICT;
+
+    if(insize < 2) return 53; /*error, size of zlib data too small*/
+    /*read information from zlib header*/
+    if((in[0] * 256 + in[1]) % 31 != 0)
+    {
+      /*error: 256 * in[0] + in[1] must be a multiple of 31, the FCHECK value is supposed to be made that way*/
+      return 24;
+    }
+
+    CM = in[0] & 15;
+    CINFO = (in[0] >> 4) & 15;
+    /*FCHECK = in[1] & 31;*/ /*FCHECK is already tested above*/
+    FDICT = (in[1] >> 5) & 1;
+    /*FLEVEL = (in[1] >> 6) & 3;*/ /*FLEVEL is not used here*/
+
+    if(CM != 8 || CINFO > 7)
+    {
+      /*error: only compression method 8: inflate with sliding window of 32k is supported by the PNG spec*/
+      return 25;
+    }
+    if(FDICT != 0)
+    {
+      /*error: the specification of PNG says about the zlib stream:
+        "The additional flags shall not specify a preset dictionary."*/
+      return 26;
+    }
+
+    error = lodepng_inflate(out, outsize, in + 2, insize - 2, settings);
+    if(error) return error;
+
+    if(!settings->ignore_adler32)
+    {
+      unsigned ADLER32 = lodepng_read32bitInt(&in[insize - 4]);
+      unsigned checksum = adler32(*out, (unsigned)(*outsize));
+      if(checksum != ADLER32) return 58; /*error, adler checksum not correct, data must be corrupted*/
+    }
+
+    return 0; /*no error*/
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 1
+  }
+#endif /*LODEPNG_CUSTOM_ZLIB_DECODER == 1*/
+}
+
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+unsigned lodepng_zlib_compress(unsigned char** out, size_t* outsize, const unsigned char* in,
+                               size_t insize, const LodePNGCompressSettings* settings)
+{
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 1
+  if(settings->custom_encoder)
+  {
+    return lodepng_custom_zlib_compress(out, outsize, in, insize, settings);
+  }
+  else
+  {
+#endif /*LODEPNG_CUSTOM_ZLIB_ENCODER == 1*/
+    /*initially, *out must be NULL and outsize 0, if you just give some random *out
+    that's pointing to a non allocated buffer, this'll crash*/
+    ucvector deflatedata, outv;
+    size_t i;
+    unsigned error;
+
+    unsigned ADLER32;
+    /*zlib data: 1 byte CMF (CM+CINFO), 1 byte FLG, deflate data, 4 byte ADLER32 checksum of the Decompressed data*/
+    unsigned CMF = 120; /*0b01111000: CM 8, CINFO 7. With CINFO 7, any window size up to 32768 can be used.*/
+    unsigned FLEVEL = 0;
+    unsigned FDICT = 0;
+    unsigned CMFFLG = 256 * CMF + FDICT * 32 + FLEVEL * 64;
+    unsigned FCHECK = 31 - CMFFLG % 31;
+    CMFFLG += FCHECK;
+
+    /*ucvector-controlled version of the output buffer, for dynamic array*/
+    ucvector_init_buffer(&outv, *out, *outsize);
+
+    ucvector_push_back(&outv, (unsigned char)(CMFFLG / 256));
+    ucvector_push_back(&outv, (unsigned char)(CMFFLG % 256));
+
+    ucvector_init(&deflatedata);
+    error = lodepng_deflatev(&deflatedata, in, insize, settings);
+
+    if(!error)
+    {
+      ADLER32 = adler32(in, (unsigned)insize);
+      for(i = 0; i < deflatedata.size; i++) ucvector_push_back(&outv, deflatedata.data[i]);
+      ucvector_cleanup(&deflatedata);
+      lodepng_add32bitInt(&outv, ADLER32);
+    }
+
+    *out = outv.data;
+    *outsize = outv.size;
+
+    return error;
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 1
+  }
+#endif /*LODEPNG_CUSTOM_ZLIB_ENCODER == 1*/
+}
+
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+#else /*no LODEPNG_COMPILE_ZLIB*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+static unsigned lodepng_zlib_decompress(unsigned char** out, size_t* outsize, const unsigned char* in,
+                                        size_t insize, const LodePNGDecompressSettings* settings)
+{
+  return lodepng_custom_zlib_decompress(out, outsize, in, insize, settings);
+}
+#endif /*LODEPNG_COMPILE_DECODER*/
+#ifdef LODEPNG_COMPILE_ENCODER
+static unsigned lodepng_zlib_compress(unsigned char** out, size_t* outsize, const unsigned char* in,
+                                      size_t insize, const LodePNGCompressSettings* settings)
+{
+  return lodepng_custom_zlib_compress(out, outsize, in, insize, settings);
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+#endif /*LODEPNG_COMPILE_ZLIB*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+/*this is a good tradeoff between speed and compression ratio*/
+#define DEFAULT_WINDOWSIZE 2048
+
+void lodepng_compress_settings_init(LodePNGCompressSettings* settings)
+{
+  /*compress with dynamic huffman tree (not in the mathematical sense, just not the predefined one)*/
+  settings->btype = 2;
+  settings->use_lz77 = 1;
+  settings->windowsize = DEFAULT_WINDOWSIZE;
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 0
+  settings->custom_encoder = 0;
+#else
+  settings->custom_encoder = 1;
+#endif
+}
+
+#if LODEPNG_CUSTOM_ZLIB_ENCODER == 0
+const LodePNGCompressSettings lodepng_default_compress_settings = {2, 1, DEFAULT_WINDOWSIZE, 0};
+#else
+const LodePNGCompressSettings lodepng_default_compress_settings = {2, 1, DEFAULT_WINDOWSIZE, 1};
+#endif
+
+
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+void lodepng_decompress_settings_init(LodePNGDecompressSettings* settings)
+{
+  settings->ignore_adler32 = 0;
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 0
+  settings->custom_decoder = 0;
+#else
+  settings->custom_decoder = 1;
+#endif
+}
+
+#if LODEPNG_CUSTOM_ZLIB_DECODER == 0
+const LodePNGDecompressSettings lodepng_default_decompress_settings = {0, 0};
+#else
+const LodePNGDecompressSettings lodepng_default_decompress_settings = {0, 1};
+#endif
+
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* // End of Zlib related code. Begin of PNG related code.                 // */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+#ifdef LODEPNG_COMPILE_PNG
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / CRC32                                                                  / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+static unsigned Crc32_crc_table_computed = 0;
+static unsigned Crc32_crc_table[256];
+
+/*Make the table for a fast CRC.*/
+static void Crc32_make_crc_table(void)
+{
+  unsigned c, k, n;
+  for(n = 0; n < 256; n++)
+  {
+    c = n;
+    for(k = 0; k < 8; k++)
+    {
+      if(c & 1) c = 0xedb88320L ^ (c >> 1);
+      else c = c >> 1;
+    }
+    Crc32_crc_table[n] = c;
+  }
+  Crc32_crc_table_computed = 1;
+}
+
+/*Update a running CRC with the bytes buf[0..len-1]--the CRC should be
+initialized to all 1's, and the transmitted value is the 1's complement of the
+final running CRC (see the crc() routine below).*/
+static unsigned Crc32_update_crc(const unsigned char* buf, unsigned crc, size_t len)
+{
+  unsigned c = crc;
+  size_t n;
+
+  if(!Crc32_crc_table_computed) Crc32_make_crc_table();
+  for(n = 0; n < len; n++)
+  {
+    c = Crc32_crc_table[(c ^ buf[n]) & 0xff] ^ (c >> 8);
+  }
+  return c;
+}
+
+/*Return the CRC of the bytes buf[0..len-1].*/
+unsigned lodepng_crc32(const unsigned char* buf, size_t len)
+{
+  return Crc32_update_crc(buf, 0xffffffffL, len) ^ 0xffffffffL;
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Reading and writing single bits and bytes from/to stream for LodePNG   / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+static unsigned char readBitFromReversedStream(size_t* bitpointer, const unsigned char* bitstream)
+{
+  unsigned char result = (unsigned char)((bitstream[(*bitpointer) >> 3] >> (7 - ((*bitpointer) & 0x7))) & 1);
+  (*bitpointer)++;
+  return result;
+}
+
+static unsigned readBitsFromReversedStream(size_t* bitpointer, const unsigned char* bitstream, size_t nbits)
+{
+  unsigned result = 0;
+  size_t i;
+  for(i = nbits - 1; i < nbits; i--)
+  {
+    result += (unsigned)readBitFromReversedStream(bitpointer, bitstream) << i;
+  }
+  return result;
+}
+
+#ifdef LODEPNG_COMPILE_DECODER
+static void setBitOfReversedStream0(size_t* bitpointer, unsigned char* bitstream, unsigned char bit)
+{
+  /*the current bit in bitstream must be 0 for this to work*/
+  if(bit)
+  {
+    /*earlier bit of huffman code is in a lesser significant bit of an earlier byte*/
+    bitstream[(*bitpointer) >> 3] |= (bit << (7 - ((*bitpointer) & 0x7)));
+  }
+  (*bitpointer)++;
+}
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+static void setBitOfReversedStream(size_t* bitpointer, unsigned char* bitstream, unsigned char bit)
+{
+  /*the current bit in bitstream may be 0 or 1 for this to work*/
+  if(bit == 0) bitstream[(*bitpointer) >> 3] &=  (unsigned char)(~(1 << (7 - ((*bitpointer) & 0x7))));
+  else         bitstream[(*bitpointer) >> 3] |=  (1 << (7 - ((*bitpointer) & 0x7)));
+  (*bitpointer)++;
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / PNG chunks                                                             / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+unsigned lodepng_chunk_length(const unsigned char* chunk)
+{
+  return lodepng_read32bitInt(&chunk[0]);
+}
+
+void lodepng_chunk_type(char type[5], const unsigned char* chunk)
+{
+  unsigned i;
+  for(i = 0; i < 4; i++) type[i] = chunk[4 + i];
+  type[4] = 0; /*null termination char*/
+}
+
+unsigned char lodepng_chunk_type_equals(const unsigned char* chunk, const char* type)
+{
+  if(strlen(type) != 4) return 0;
+  return (chunk[4] == type[0] && chunk[5] == type[1] && chunk[6] == type[2] && chunk[7] == type[3]);
+}
+
+unsigned char lodepng_chunk_ancillary(const unsigned char* chunk)
+{
+  return((chunk[4] & 32) != 0);
+}
+
+unsigned char lodepng_chunk_private(const unsigned char* chunk)
+{
+  return((chunk[6] & 32) != 0);
+}
+
+unsigned char lodepng_chunk_safetocopy(const unsigned char* chunk)
+{
+  return((chunk[7] & 32) != 0);
+}
+
+unsigned char* lodepng_chunk_data(unsigned char* chunk)
+{
+  return &chunk[8];
+}
+
+const unsigned char* lodepng_chunk_data_const(const unsigned char* chunk)
+{
+  return &chunk[8];
+}
+
+unsigned lodepng_chunk_check_crc(const unsigned char* chunk)
+{
+  unsigned length = lodepng_chunk_length(chunk);
+  unsigned CRC = lodepng_read32bitInt(&chunk[length + 8]);
+  /*the CRC is taken of the data and the 4 chunk type letters, not the length*/
+  unsigned checksum = lodepng_crc32(&chunk[4], length + 4);
+  if(CRC != checksum) return 1;
+  else return 0;
+}
+
+void lodepng_chunk_generate_crc(unsigned char* chunk)
+{
+  unsigned length = lodepng_chunk_length(chunk);
+  unsigned CRC = lodepng_crc32(&chunk[4], length + 4);
+  lodepng_set32bitInt(chunk + 8 + length, CRC);
+}
+
+unsigned char* lodepng_chunk_next(unsigned char* chunk)
+{
+  unsigned total_chunk_length = lodepng_chunk_length(chunk) + 12;
+  return &chunk[total_chunk_length];
+}
+
+const unsigned char* lodepng_chunk_next_const(const unsigned char* chunk)
+{
+  unsigned total_chunk_length = lodepng_chunk_length(chunk) + 12;
+  return &chunk[total_chunk_length];
+}
+
+unsigned lodepng_chunk_append(unsigned char** out, size_t* outlength, const unsigned char* chunk)
+{
+  unsigned i;
+  unsigned total_chunk_length = lodepng_chunk_length(chunk) + 12;
+  unsigned char *chunk_start, *new_buffer;
+  size_t new_length = (*outlength) + total_chunk_length;
+  if(new_length < total_chunk_length || new_length < (*outlength)) return 77; /*integer overflow happened*/
+
+  new_buffer = (unsigned char*)myrealloc(*out, new_length);
+  if(!new_buffer) return 83; /*alloc fail*/
+  (*out) = new_buffer;
+  (*outlength) = new_length;
+  chunk_start = &(*out)[new_length - total_chunk_length];
+
+  for(i = 0; i < total_chunk_length; i++) chunk_start[i] = chunk[i];
+
+  return 0;
+}
+
+unsigned lodepng_chunk_create(unsigned char** out, size_t* outlength, unsigned length,
+                              const char* type, const unsigned char* data)
+{
+  unsigned i;
+  unsigned char *chunk, *new_buffer;
+  size_t new_length = (*outlength) + length + 12;
+  if(new_length < length + 12 || new_length < (*outlength)) return 77; /*integer overflow happened*/
+  new_buffer = (unsigned char*)myrealloc(*out, new_length);
+  if(!new_buffer) return 83; /*alloc fail*/
+  (*out) = new_buffer;
+  (*outlength) = new_length;
+  chunk = &(*out)[(*outlength) - length - 12];
+
+  /*1: length*/
+  lodepng_set32bitInt(chunk, (unsigned)length);
+
+  /*2: chunk name (4 letters)*/
+  chunk[4] = type[0];
+  chunk[5] = type[1];
+  chunk[6] = type[2];
+  chunk[7] = type[3];
+
+  /*3: the data*/
+  for(i = 0; i < length; i++) chunk[8 + i] = data[i];
+
+  /*4: CRC (of the chunkname characters and the data)*/
+  lodepng_chunk_generate_crc(chunk);
+
+  return 0;
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / Color types and such                                                   / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*return type is a LodePNG error code*/
+static unsigned checkColorValidity(LodePNGColorType colortype, unsigned bd) /*bd = bitdepth*/
+{
+  switch(colortype)
+  {
+    case 0: if(!(bd == 1 || bd == 2 || bd == 4 || bd == 8 || bd == 16)) return 37; break; /*grey*/
+    case 2: if(!(                                 bd == 8 || bd == 16)) return 37; break; /*RGB*/
+    case 3: if(!(bd == 1 || bd == 2 || bd == 4 || bd == 8            )) return 37; break; /*palette*/
+    case 4: if(!(                                 bd == 8 || bd == 16)) return 37; break; /*grey + alpha*/
+    case 6: if(!(                                 bd == 8 || bd == 16)) return 37; break; /*RGBA*/
+    default: return 31;
+  }
+  return 0; /*allowed color type / bits combination*/
+}
+
+static unsigned getNumColorChannels(LodePNGColorType colortype)
+{
+  switch(colortype)
+  {
+    case 0: return 1; /*grey*/
+    case 2: return 3; /*RGB*/
+    case 3: return 1; /*palette*/
+    case 4: return 2; /*grey + alpha*/
+    case 6: return 4; /*RGBA*/
+  }
+  return 0; /*unexisting color type*/
+}
+
+static unsigned lodepng_get_bpp_lct(LodePNGColorType colortype, unsigned bitdepth)
+{
+  /*bits per pixel is amount of channels * bits per channel*/
+  return getNumColorChannels(colortype) * bitdepth;
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+void lodepng_color_mode_init(LodePNGColorMode* info)
+{
+  info->key_defined = 0;
+  info->key_r = info->key_g = info->key_b = 0;
+  info->colortype = LCT_RGBA;
+  info->bitdepth = 8;
+  info->palette = 0;
+  info->palettesize = 0;
+}
+
+void lodepng_color_mode_cleanup(LodePNGColorMode* info)
+{
+  lodepng_palette_clear(info);
+}
+
+unsigned lodepng_color_mode_copy(LodePNGColorMode* dest, const LodePNGColorMode* source)
+{
+  size_t i;
+  lodepng_color_mode_cleanup(dest);
+  *dest = *source;
+  if(source->palette)
+  {
+    dest->palette = (unsigned char*)mymalloc(source->palettesize * 4);
+    if(!dest->palette && source->palettesize) return 83; /*alloc fail*/
+    for(i = 0; i < source->palettesize * 4; i++) dest->palette[i] = source->palette[i];
+  }
+  return 0;
+}
+
+static int lodepng_color_mode_equal(const LodePNGColorMode* a, const LodePNGColorMode* b)
+{
+  size_t i;
+  if(a->colortype != b->colortype) return 0;
+  if(a->bitdepth != b->bitdepth) return 0;
+  if(a->key_defined != b->key_defined) return 0;
+  if(a->key_defined)
+  {
+    if(a->key_r != b->key_r) return 0;
+    if(a->key_g != b->key_g) return 0;
+    if(a->key_b != b->key_b) return 0;
+  }
+  if(a->palettesize != b->palettesize) return 0;
+  for(i = 0; i < a->palettesize * 4; i++)
+  {
+    if(a->palette[i] != b->palette[i]) return 0;
+  }
+  return 1;
+}
+
+void lodepng_palette_clear(LodePNGColorMode* info)
+{
+  if(info->palette) myfree(info->palette);
+  info->palettesize = 0;
+}
+
+unsigned lodepng_palette_add(LodePNGColorMode* info,
+                             unsigned char r, unsigned char g, unsigned char b, unsigned char a)
+{
+  unsigned char* data;
+  /*the same resize technique as C++ std::vectors is used, and here it's made so that for a palette with
+  the max of 256 colors, it'll have the exact alloc size*/
+  if(!(info->palettesize & (info->palettesize - 1))) /*if palettesize is 0 or a power of two*/
+  {
+    /*allocated data must be at least 4* palettesize (for 4 color bytes)*/
+    size_t alloc_size = info->palettesize == 0 ? 4 : info->palettesize * 4 * 2;
+    data = (unsigned char*)myrealloc(info->palette, alloc_size);
+    if(!data) return 83; /*alloc fail*/
+    else info->palette = data;
+  }
+  info->palette[4 * info->palettesize + 0] = r;
+  info->palette[4 * info->palettesize + 1] = g;
+  info->palette[4 * info->palettesize + 2] = b;
+  info->palette[4 * info->palettesize + 3] = a;
+  info->palettesize++;
+  return 0;
+}
+
+unsigned lodepng_get_bpp(const LodePNGColorMode* info)
+{
+  /*calculate bits per pixel out of colortype and bitdepth*/
+  return lodepng_get_bpp_lct(info->colortype, info->bitdepth);
+}
+
+unsigned lodepng_get_channels(const LodePNGColorMode* info)
+{
+  return getNumColorChannels(info->colortype);
+}
+
+unsigned lodepng_is_greyscale_type(const LodePNGColorMode* info)
+{
+  return info->colortype == LCT_GREY || info->colortype == LCT_GREY_ALPHA;
+}
+
+unsigned lodepng_is_alpha_type(const LodePNGColorMode* info)
+{
+  return (info->colortype & 4) != 0; /*4 or 6*/
+}
+
+unsigned lodepng_is_palette_type(const LodePNGColorMode* info)
+{
+  return info->colortype == LCT_PALETTE;
+}
+
+unsigned lodepng_has_palette_alpha(const LodePNGColorMode* info)
+{
+  size_t i;
+  for(i = 0; i < info->palettesize; i++)
+  {
+    if(info->palette[i * 4 + 3] < 255) return 1;
+  }
+  return 0;
+}
+
+unsigned lodepng_can_have_alpha(const LodePNGColorMode* info)
+{
+  return info->key_defined
+      || lodepng_is_alpha_type(info)
+      || lodepng_has_palette_alpha(info);
+}
+
+size_t lodepng_get_raw_size(unsigned w, unsigned h, const LodePNGColorMode* color)
+{
+  return (w * h * lodepng_get_bpp(color) + 7) / 8;
+}
+
+size_t lodepng_get_raw_size_lct(unsigned w, unsigned h, LodePNGColorType colortype, unsigned bitdepth)
+{
+  return (w * h * lodepng_get_bpp_lct(colortype, bitdepth) + 7) / 8;
+}
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+
+static void LodePNGUnknownChunks_init(LodePNGInfo* info)
+{
+  unsigned i;
+  for(i = 0; i < 3; i++) info->unknown_chunks_data[i] = 0;
+  for(i = 0; i < 3; i++) info->unknown_chunks_size[i] = 0;
+}
+
+static void LodePNGUnknownChunks_cleanup(LodePNGInfo* info)
+{
+  unsigned i;
+  for(i = 0; i < 3; i++) myfree(info->unknown_chunks_data[i]);
+}
+
+static unsigned LodePNGUnknownChunks_copy(LodePNGInfo* dest, const LodePNGInfo* src)
+{
+  unsigned i;
+
+  LodePNGUnknownChunks_cleanup(dest);
+
+  for(i = 0; i < 3; i++)
+  {
+    size_t j;
+    dest->unknown_chunks_size[i] = src->unknown_chunks_size[i];
+    dest->unknown_chunks_data[i] = (unsigned char*)mymalloc(src->unknown_chunks_size[i]);
+    if(!dest->unknown_chunks_data[i] && dest->unknown_chunks_size[i]) return 83; /*alloc fail*/
+    for(j = 0; j < src->unknown_chunks_size[i]; j++)
+    {
+      dest->unknown_chunks_data[i][j] = src->unknown_chunks_data[i][j];
+    }
+  }
+
+  return 0;
+}
+
+/******************************************************************************/
+
+static void LodePNGText_init(LodePNGInfo* info)
+{
+  info->text_num = 0;
+  info->text_keys = NULL;
+  info->text_strings = NULL;
+}
+
+static void LodePNGText_cleanup(LodePNGInfo* info)
+{
+  size_t i;
+  for(i = 0; i < info->text_num; i++)
+  {
+    string_cleanup(&info->text_keys[i]);
+    string_cleanup(&info->text_strings[i]);
+  }
+  myfree(info->text_keys);
+  myfree(info->text_strings);
+}
+
+static unsigned LodePNGText_copy(LodePNGInfo* dest, const LodePNGInfo* source)
+{
+  size_t i = 0;
+  dest->text_keys = 0;
+  dest->text_strings = 0;
+  dest->text_num = 0;
+  for(i = 0; i < source->text_num; i++)
+  {
+    CERROR_TRY_RETURN(lodepng_add_text(dest, source->text_keys[i], source->text_strings[i]));
+  }
+  return 0;
+}
+
+void lodepng_clear_text(LodePNGInfo* info)
+{
+  LodePNGText_cleanup(info);
+}
+
+unsigned lodepng_add_text(LodePNGInfo* info, const char* key, const char* str)
+{
+  char** new_keys = (char**)(myrealloc(info->text_keys, sizeof(char*) * (info->text_num + 1)));
+  char** new_strings = (char**)(myrealloc(info->text_strings, sizeof(char*) * (info->text_num + 1)));
+  if(!new_keys || !new_strings)
+  {
+    myfree(new_keys);
+    myfree(new_strings);
+    return 83; /*alloc fail*/
+  }
+
+  info->text_num++;
+  info->text_keys = new_keys;
+  info->text_strings = new_strings;
+
+  string_init(&info->text_keys[info->text_num - 1]);
+  string_set(&info->text_keys[info->text_num - 1], key);
+
+  string_init(&info->text_strings[info->text_num - 1]);
+  string_set(&info->text_strings[info->text_num - 1], str);
+
+  return 0;
+}
+
+/******************************************************************************/
+
+static void LodePNGIText_init(LodePNGInfo* info)
+{
+  info->itext_num = 0;
+  info->itext_keys = NULL;
+  info->itext_langtags = NULL;
+  info->itext_transkeys = NULL;
+  info->itext_strings = NULL;
+}
+
+static void LodePNGIText_cleanup(LodePNGInfo* info)
+{
+  size_t i;
+  for(i = 0; i < info->itext_num; i++)
+  {
+    string_cleanup(&info->itext_keys[i]);
+    string_cleanup(&info->itext_langtags[i]);
+    string_cleanup(&info->itext_transkeys[i]);
+    string_cleanup(&info->itext_strings[i]);
+  }
+  myfree(info->itext_keys);
+  myfree(info->itext_langtags);
+  myfree(info->itext_transkeys);
+  myfree(info->itext_strings);
+}
+
+static unsigned LodePNGIText_copy(LodePNGInfo* dest, const LodePNGInfo* source)
+{
+  size_t i = 0;
+  dest->itext_keys = 0;
+  dest->itext_langtags = 0;
+  dest->itext_transkeys = 0;
+  dest->itext_strings = 0;
+  dest->itext_num = 0;
+  for(i = 0; i < source->itext_num; i++)
+  {
+    CERROR_TRY_RETURN(lodepng_add_itext(dest, source->itext_keys[i], source->itext_langtags[i],
+                                        source->itext_transkeys[i], source->itext_strings[i]));
+  }
+  return 0;
+}
+
+void lodepng_clear_itext(LodePNGInfo* info)
+{
+  LodePNGIText_cleanup(info);
+}
+
+unsigned lodepng_add_itext(LodePNGInfo* info, const char* key, const char* langtag,
+                           const char* transkey, const char* str)
+{
+  char** new_keys = (char**)(myrealloc(info->itext_keys, sizeof(char*) * (info->itext_num + 1)));
+  char** new_langtags = (char**)(myrealloc(info->itext_langtags, sizeof(char*) * (info->itext_num + 1)));
+  char** new_transkeys = (char**)(myrealloc(info->itext_transkeys, sizeof(char*) * (info->itext_num + 1)));
+  char** new_strings = (char**)(myrealloc(info->itext_strings, sizeof(char*) * (info->itext_num + 1)));
+  if(!new_keys || !new_langtags || !new_transkeys || !new_strings)
+  {
+    myfree(new_keys);
+    myfree(new_langtags);
+    myfree(new_transkeys);
+    myfree(new_strings);
+    return 83; /*alloc fail*/
+  }
+
+  info->itext_num++;
+  info->itext_keys = new_keys;
+  info->itext_langtags = new_langtags;
+  info->itext_transkeys = new_transkeys;
+  info->itext_strings = new_strings;
+
+  string_init(&info->itext_keys[info->itext_num - 1]);
+  string_set(&info->itext_keys[info->itext_num - 1], key);
+
+  string_init(&info->itext_langtags[info->itext_num - 1]);
+  string_set(&info->itext_langtags[info->itext_num - 1], langtag);
+
+  string_init(&info->itext_transkeys[info->itext_num - 1]);
+  string_set(&info->itext_transkeys[info->itext_num - 1], transkey);
+
+  string_init(&info->itext_strings[info->itext_num - 1]);
+  string_set(&info->itext_strings[info->itext_num - 1], str);
+
+  return 0;
+}
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+void lodepng_info_init(LodePNGInfo* info)
+{
+  lodepng_color_mode_init(&info->color);
+  info->interlace_method = 0;
+  info->compression_method = 0;
+  info->filter_method = 0;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  info->background_defined = 0;
+  info->background_r = info->background_g = info->background_b = 0;
+
+  LodePNGText_init(info);
+  LodePNGIText_init(info);
+
+  info->time_defined = 0;
+  info->phys_defined = 0;
+
+  LodePNGUnknownChunks_init(info);
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+}
+
+void lodepng_info_cleanup(LodePNGInfo* info)
+{
+  lodepng_color_mode_cleanup(&info->color);
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  LodePNGText_cleanup(info);
+  LodePNGIText_cleanup(info);
+
+  LodePNGUnknownChunks_cleanup(info);
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+}
+
+unsigned lodepng_info_copy(LodePNGInfo* dest, const LodePNGInfo* source)
+{
+  lodepng_info_cleanup(dest);
+  *dest = *source;
+  lodepng_color_mode_init(&dest->color);
+  CERROR_TRY_RETURN(lodepng_color_mode_copy(&dest->color, &source->color));
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  CERROR_TRY_RETURN(LodePNGText_copy(dest, source));
+  CERROR_TRY_RETURN(LodePNGIText_copy(dest, source));
+
+  LodePNGUnknownChunks_init(dest);
+  CERROR_TRY_RETURN(LodePNGUnknownChunks_copy(dest, source));
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+  return 0;
+}
+
+void lodepng_info_swap(LodePNGInfo* a, LodePNGInfo* b)
+{
+  LodePNGInfo temp = *a;
+  *a = *b;
+  *b = temp;
+}
+
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*index: bitgroup index, bits: bitgroup size(1, 2 or 4, in: bitgroup value, out: octet array to add bits to*/
+static void addColorBits(unsigned char* out, size_t index, unsigned bits, unsigned in)
+{
+  /*p = the partial index in the byte, e.g. with 4 palettebits it is 0 for first half or 1 for second half*/
+  unsigned p = index % (8 / bits);
+  in &= (1 << bits) - 1; /*filter out any other bits of the input value*/
+  in = in << (bits * (8 / bits - p - 1));
+  if(p == 0) out[index * bits / 8] = in;
+  else out[index * bits / 8] |= in;
+}
+
+typedef struct ColorTree ColorTree;
+
+/*
+One node of a color tree
+This is the data structure used to count the number of unique colors and to get a palette
+index for a color. It's a bit like an octree for RGB bits, except that a node has 256
+children and there is one level of the tree per color channel. This may use more memory
+than an octree, but this is only used to count up to 256 so it's good enough.
+*/
+struct ColorTree
+{
+  ColorTree* next; /*null, or array of 256 pointers to ColorTree of next level*/
+  int index; /*the payload. Only has a meaningful value if this is in the 4th level*/
+};
+
+static void color_tree_make_next(ColorTree* tree);
+
+/*next: whether to create the next array or not*/
+static void color_tree_init(ColorTree* tree, int next)
+{
+  if(next) color_tree_make_next(tree);
+  else tree->next = 0;
+  tree->index = -1;
+}
+
+static void color_tree_make_next(ColorTree* tree)
+{
+  int i;
+  tree->next = (ColorTree*)mymalloc(256 * sizeof(ColorTree));
+  for(i = 0; i < 256; i++) color_tree_init(&tree->next[i], 0);
+}
+
+static void color_tree_cleanup(ColorTree* tree)
+{
+  if(tree->next)
+  {
+    int i;
+    for(i = 0; i < 256; i++) color_tree_cleanup(&tree->next[i]);
+    myfree(tree->next);
+  }
+}
+
+/*returns -1 if color not present, its index otherwise*/
+static int color_tree_get(ColorTree* tree, unsigned char r, unsigned char g, unsigned char b, unsigned char a)
+{
+  tree = &tree->next[r];
+  if(tree->next == 0) return -1;
+  tree = &tree->next[g];
+  if(tree->next == 0) return -1;
+  tree = &tree->next[b];
+  if(tree->next == 0) return -1;
+  tree = &tree->next[a];
+
+  return tree->index;
+}
+
+#ifdef LODEPNG_COMPILE_ENCODER
+static int color_tree_has(ColorTree* tree, unsigned char r, unsigned char g, unsigned char b, unsigned char a)
+{
+  return color_tree_get(tree, r, g, b, a) >= 0;
+}
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+/*color is not allowed to already exist. Index should be >= 0 (it's signed to be compatible with using -1 for "doesn't exist")*/
+static void color_tree_add(ColorTree* tree, unsigned char r, unsigned char g, unsigned char b, unsigned char a, int index)
+{
+  tree = &tree->next[r];
+  if(tree->next == 0) color_tree_make_next(tree);
+  tree = &tree->next[g];
+  if(tree->next == 0) color_tree_make_next(tree);
+  tree = &tree->next[b];
+  if(tree->next == 0) color_tree_make_next(tree);
+  tree = &tree->next[a];
+
+  tree->index = index;
+}
+
+/*put a pixel, given its RGBA color, into image of any color type*/
+static unsigned rgba8ToPixel(unsigned char* out, size_t i,
+                             const LodePNGColorMode* mode, ColorTree* tree /*for palette*/,
+                             unsigned char r, unsigned char g, unsigned char b, unsigned char a)
+{
+  if(mode->colortype == LCT_GREY)
+  {
+    unsigned char grey = r; /*((unsigned short)r + g + b) / 3*/;
+    if(mode->bitdepth == 8) out[i] = grey;
+    else if(mode->bitdepth == 16) out[i * 2 + 0] = out[i * 2 + 1] = grey;
+    else
+    {
+      /*take the most significant bits of grey*/
+      grey = (grey >> (8 - mode->bitdepth)) & ((1 << mode->bitdepth) - 1);
+      addColorBits(out, i, mode->bitdepth, grey);
+    }
+  }
+  else if(mode->colortype == LCT_RGB)
+  {
+    if(mode->bitdepth == 8)
+    {
+      out[i * 3 + 0] = r;
+      out[i * 3 + 1] = g;
+      out[i * 3 + 2] = b;
+    }
+    else
+    {
+      out[i * 6 + 0] = out[i * 6 + 1] = r;
+      out[i * 6 + 2] = out[i * 6 + 3] = g;
+      out[i * 6 + 4] = out[i * 6 + 5] = b;
+    }
+  }
+  else if(mode->colortype == LCT_PALETTE)
+  {
+    int index = color_tree_get(tree, r, g, b, a);
+    if(index < 0) return 82; /*color not in palette*/
+    if(mode->bitdepth == 8) out[i] = index;
+    else addColorBits(out, i, mode->bitdepth, index);
+  }
+  else if(mode->colortype == LCT_GREY_ALPHA)
+  {
+    unsigned char grey = r; /*((unsigned short)r + g + b) / 3*/;
+    if(mode->bitdepth == 8)
+    {
+      out[i * 2 + 0] = grey;
+      out[i * 2 + 1] = a;
+    }
+    else if(mode->bitdepth == 16)
+    {
+      out[i * 4 + 0] = out[i * 4 + 1] = grey;
+      out[i * 4 + 2] = out[i * 4 + 3] = a;
+    }
+  }
+  else if(mode->colortype == LCT_RGBA)
+  {
+    if(mode->bitdepth == 8)
+    {
+      out[i * 4 + 0] = r;
+      out[i * 4 + 1] = g;
+      out[i * 4 + 2] = b;
+      out[i * 4 + 3] = a;
+    }
+    else
+    {
+      out[i * 8 + 0] = out[i * 8 + 1] = r;
+      out[i * 8 + 2] = out[i * 8 + 3] = g;
+      out[i * 8 + 4] = out[i * 8 + 5] = b;
+      out[i * 8 + 6] = out[i * 8 + 7] = a;
+    }
+  }
+
+  return 0; /*no error*/
+}
+
+/*put a pixel, given its RGBA16 color, into image of any color 16-bitdepth type*/
+static unsigned rgba16ToPixel(unsigned char* out, size_t i,
+                              const LodePNGColorMode* mode,
+                              unsigned short r, unsigned short g, unsigned short b, unsigned short a)
+{
+  if(mode->bitdepth != 16) return 85; /*must be 16 for this function*/
+  if(mode->colortype == LCT_GREY)
+  {
+    unsigned short grey = r; /*((unsigned)r + g + b) / 3*/;
+    out[i * 2 + 0] = (grey >> 8) & 255;
+    out[i * 2 + 1] = grey & 255;
+  }
+  else if(mode->colortype == LCT_RGB)
+  {
+    out[i * 6 + 0] = (r >> 8) & 255;
+    out[i * 6 + 1] = r & 255;
+    out[i * 6 + 2] = (g >> 8) & 255;
+    out[i * 6 + 3] = g & 255;
+    out[i * 6 + 4] = (b >> 8) & 255;
+    out[i * 6 + 5] = b & 255;
+  }
+  else if(mode->colortype == LCT_GREY_ALPHA)
+  {
+    unsigned short grey = r; /*((unsigned)r + g + b) / 3*/;
+    out[i * 4 + 0] = (grey >> 8) & 255;
+    out[i * 4 + 1] = grey & 255;
+    out[i * 4 + 2] = (a >> 8) & 255;
+    out[i * 4 + 3] = a & 255;
+  }
+  else if(mode->colortype == LCT_RGBA)
+  {
+    out[i * 8 + 0] = (r >> 8) & 255;
+    out[i * 8 + 1] = r & 255;
+    out[i * 8 + 2] = (g >> 8) & 255;
+    out[i * 8 + 3] = g & 255;
+    out[i * 8 + 4] = (b >> 8) & 255;
+    out[i * 8 + 5] = b & 255;
+    out[i * 8 + 6] = (a >> 8) & 255;
+    out[i * 8 + 7] = a & 255;
+  }
+
+  return 0; /*no error*/
+}
+
+/*Get RGBA8 color of pixel with index i (y * width + x) from the raw image with given color type.*/
+static unsigned getPixelColorRGBA8(unsigned char* r, unsigned char* g, unsigned char* b, unsigned char* a,
+                                   const unsigned char* in, size_t i, const LodePNGColorMode* mode)
+{
+  if(mode->colortype == LCT_GREY)
+  {
+    if(mode->bitdepth == 8)
+    {
+      *r = *g = *b = in[i];
+      if(mode->key_defined && *r == mode->key_r) *a = 0;
+      else *a = 255;
+    }
+    else if(mode->bitdepth == 16)
+    {
+      *r = *g = *b = in[i * 2 + 0];
+      if(mode->key_defined && 256U * in[i * 2 + 0] + in[i * 2 + 1] == mode->key_r) *a = 0;
+      else *a = 255;
+    }
+    else
+    {
+      unsigned highest = ((1U << mode->bitdepth) - 1U); /*highest possible value for this bit depth*/
+      size_t j = i * mode->bitdepth;
+      unsigned value = readBitsFromReversedStream(&j, in, mode->bitdepth);
+      *r = *g = *b = (value * 255) / highest;
+      if(mode->key_defined && value == mode->key_r) *a = 0;
+      else *a = 255;
+    }
+  }
+  else if(mode->colortype == LCT_RGB)
+  {
+    if(mode->bitdepth == 8)
+    {
+      *r = in[i * 3 + 0]; *g = in[i * 3 + 1]; *b = in[i * 3 + 2];
+      if(mode->key_defined && *r == mode->key_r && *g == mode->key_g && *b == mode->key_b) *a = 0;
+      else *a = 255;
+    }
+    else
+    {
+      *r = in[i * 6 + 0];
+      *g = in[i * 6 + 2];
+      *b = in[i * 6 + 4];
+      if(mode->key_defined && 256U * in[i * 6 + 0] + in[i * 6 + 1] == mode->key_r
+         && 256U * in[i * 6 + 2] + in[i * 6 + 3] == mode->key_g
+         && 256U * in[i * 6 + 4] + in[i * 6 + 5] == mode->key_b) *a = 0;
+      else *a = 255;
+    }
+  }
+  else if(mode->colortype == LCT_PALETTE)
+  {
+    unsigned index;
+    if(mode->bitdepth == 8) index = in[i];
+    else
+    {
+      size_t j = i * mode->bitdepth;
+      index = readBitsFromReversedStream(&j, in, mode->bitdepth);
+    }
+    if(index >= mode->palettesize) return 47; /*index out of palette*/
+    *r = mode->palette[index * 4 + 0];
+    *g = mode->palette[index * 4 + 1];
+    *b = mode->palette[index * 4 + 2];
+    *a = mode->palette[index * 4 + 3];
+  }
+  else if(mode->colortype == LCT_GREY_ALPHA)
+  {
+    if(mode->bitdepth == 8)
+    {
+      *r = *g = *b = in[i * 2 + 0];
+      *a = in[i * 2 + 1];
+    }
+    else
+    {
+      *r = *g = *b = in[i * 4 + 0];
+      *a = in[i * 4 + 2];
+    }
+  }
+  else if(mode->colortype == LCT_RGBA)
+  {
+    if(mode->bitdepth == 8)
+    {
+      *r = in[i * 4 + 0]; *g = in[i * 4 + 1]; *b = in[i * 4 + 2]; *a = in[i * 4 + 3];
+    }
+    else
+    {
+      *r = in[i * 8 + 0]; *g = in[i * 8 + 2]; *b = in[i * 8 + 4]; *a = in[i * 8 + 6];
+    }
+  }
+
+  return 0; /*no error*/
+}
+
+/*Get RGBA16 color of pixel with index i (y * width + x) from the raw image with
+given color type, but the given color type must be 16-bit itself.*/
+static unsigned getPixelColorRGBA16(unsigned short* r, unsigned short* g, unsigned short* b, unsigned short* a,
+                                    const unsigned char* in, size_t i, const LodePNGColorMode* mode)
+{
+  if(mode->bitdepth != 16) return 85; /*error: this function only supports 16-bit input*/
+
+  if(mode->colortype == LCT_GREY)
+  {
+    *r = *g = *b = 256 * in[i * 2 + 0] + in[i * 2 + 1];
+    if(mode->key_defined && 256U * in[i * 2 + 0] + in[i * 2 + 1] == mode->key_r) *a = 0;
+    else *a = 65535;
+  }
+  else if(mode->colortype == LCT_RGB)
+  {
+    *r = 256 * in[i * 6 + 0] + in[i * 6 + 1];
+    *g = 256 * in[i * 6 + 2] + in[i * 6 + 3];
+    *b = 256 * in[i * 6 + 4] + in[i * 6 + 5];
+    if(mode->key_defined && 256U * in[i * 6 + 0] + in[i * 6 + 1] == mode->key_r
+       && 256U * in[i * 6 + 2] + in[i * 6 + 3] == mode->key_g
+       && 256U * in[i * 6 + 4] + in[i * 6 + 5] == mode->key_b) *a = 0;
+    else *a = 65535;
+  }
+  else if(mode->colortype == LCT_GREY_ALPHA)
+  {
+    *r = *g = *b = 256 * in[i * 4 + 0] + in[i * 4 + 1];
+    *a = 256 * in[i * 4 + 2] + in[i * 4 + 3];
+  }
+  else if(mode->colortype == LCT_RGBA)
+  {
+    *r = 256 * in[i * 8 + 0] + in[i * 8 + 1];
+    *g = 256 * in[i * 8 + 2] + in[i * 8 + 3];
+    *b = 256 * in[i * 8 + 4] + in[i * 8 + 5];
+    *a = 256 * in[i * 8 + 6] + in[i * 8 + 7];
+  }
+  else return 85; /*error: this function only supports 16-bit input*/
+
+  return 0; /*no error*/
+}
+
+/*
+converts from any color type to 24-bit or 32-bit (later maybe more supported). return value = LodePNG error code
+the out buffer must have (w * h * bpp + 7) / 8 bytes, where bpp is the bits per pixel of the output color type
+(lodepng_get_bpp) for < 8 bpp images, there may _not_ be padding bits at the end of scanlines.
+*/
+unsigned lodepng_convert(unsigned char* out, const unsigned char* in,
+                         LodePNGColorMode* mode_out, LodePNGColorMode* mode_in,
+                         unsigned w, unsigned h)
+{
+  unsigned error = 0;
+  size_t i;
+  ColorTree tree;
+
+  if(lodepng_color_mode_equal(mode_out, mode_in))
+  {
+    size_t numbytes = lodepng_get_raw_size(w, h, mode_in);
+    for(i = 0; i < numbytes; i++) out[i] = in[i];
+    return error;
+  }
+
+  if(mode_out->colortype == LCT_PALETTE)
+  {
+    size_t palsize = 1 << mode_out->bitdepth;
+    if(mode_out->palettesize < palsize) palsize = mode_out->palettesize;
+    color_tree_init(&tree, 1);
+    for(i = 0; i < palsize; i++)
+    {
+      unsigned char* p = &mode_out->palette[i * 4];
+      color_tree_add(&tree, p[0], p[1], p[2], p[3], i);
+    }
+  }
+
+  if(mode_in->bitdepth == 16 && mode_out->bitdepth == 16)
+  {
+    size_t numpixels = w * h;
+    for(i = 0; i < numpixels; i++)
+    {
+      unsigned short r = 0, g = 0, b = 0, a = 0;
+      error = getPixelColorRGBA16(&r, &g, &b, &a, in, i, mode_in);
+      if(error) return error;
+      error = rgba16ToPixel(out, i, mode_out, r, g, b, a);
+      if(error) return error;
+    }
+  }
+  else
+  {
+    size_t numpixels = w * h;
+    for(i = 0; i < numpixels; i++)
+    {
+      unsigned char r = 0, g = 0, b = 0, a = 0;
+      error = getPixelColorRGBA8(&r, &g, &b, &a, in, i, mode_in);
+      if(error) return error;
+      error = rgba8ToPixel(out, i, mode_out, &tree, r, g, b, a);
+      if(error) return error;
+    }
+  }
+
+  if(mode_out->colortype == LCT_PALETTE)
+  {
+    color_tree_cleanup(&tree);
+  }
+
+  return error;
+}
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+typedef struct ColorProfile
+{
+  unsigned char sixteenbit; /*needs more than 8 bits per channel*/
+  unsigned char sixteenbit_done;
+
+
+  unsigned char colored; /*not greyscale*/
+  unsigned char colored_done;
+
+  unsigned char key; /*a color key is required, or more*/
+  unsigned short key_r; /*these values are always in 16-bit bitdepth in the profile*/
+  unsigned short key_g;
+  unsigned short key_b;
+  unsigned char alpha; /*alpha channel, or alpha palette, required*/
+  unsigned char alpha_done;
+
+  unsigned numcolors;
+  ColorTree tree; /*for listing the counted colors, up to 256*/
+  unsigned char* palette; /*size 1024. Remember up to the first 256 RGBA colors*/
+  unsigned maxnumcolors; /*if more than that amount counted*/
+  unsigned char numcolors_done;
+
+  unsigned greybits; /*amount of bits required for greyscale (1, 2, 4, 8). Does not take 16 bit into account.*/
+  unsigned char greybits_done;
+
+} ColorProfile;
+
+static void color_profile_init(ColorProfile* profile, LodePNGColorMode* mode)
+{
+  profile->sixteenbit = 0;
+  profile->sixteenbit_done = mode->bitdepth == 16 ? 0 : 1;
+
+  profile->colored = 0;
+  profile->colored_done = lodepng_is_greyscale_type(mode) ? 1 : 0;
+
+  profile->key = 0;
+  profile->alpha = 0;
+  profile->alpha_done = lodepng_can_have_alpha(mode) ? 0 : 1;
+
+  profile->numcolors = 0;
+  color_tree_init(&profile->tree, 1);
+  profile->palette = (unsigned char*)mymalloc(1024);
+  profile->maxnumcolors = 257;
+  if(lodepng_get_bpp(mode) <= 8)
+  {
+    int bpp = lodepng_get_bpp(mode);
+    profile->maxnumcolors = bpp == 1 ? 2 : (bpp == 2 ? 4 : (bpp == 4 ? 16 : 256));
+  }
+  profile->numcolors_done = 0;
+
+  profile->greybits = 1;
+  profile->greybits_done = lodepng_get_bpp(mode) == 1 ? 1 : 0;
+}
+
+static void color_profile_cleanup(ColorProfile* profile)
+{
+  color_tree_cleanup(&profile->tree);
+  myfree(profile->palette);
+}
+
+/*function used for debug purposes with C++*/
+/*void printColorProfile(ColorProfile* p)
+{
+  std::cout << "sixteenbit: " << (int)p->sixteenbit << std::endl;
+  std::cout << "sixteenbit_done: " << (int)p->sixteenbit_done << std::endl;
+  std::cout << "colored: " << (int)p->colored << std::endl;
+  std::cout << "colored_done: " << (int)p->colored_done << std::endl;
+  std::cout << "key: " << (int)p->key << std::endl;
+  std::cout << "key_r: " << (int)p->key_r << std::endl;
+  std::cout << "key_g: " << (int)p->key_g << std::endl;
+  std::cout << "key_b: " << (int)p->key_b << std::endl;
+  std::cout << "alpha: " << (int)p->alpha << std::endl;
+  std::cout << "alpha_done: " << (int)p->alpha_done << std::endl;
+  std::cout << "numcolors: " << (int)p->numcolors << std::endl;
+  std::cout << "maxnumcolors: " << (int)p->maxnumcolors << std::endl;
+  std::cout << "numcolors_done: " << (int)p->numcolors_done << std::endl;
+  std::cout << "greybits: " << (int)p->greybits << std::endl;
+  std::cout << "greybits_done: " << (int)p->greybits_done << std::endl;
+}*/
+
+/*Returns how many bits needed to represent given value (max 8 bit)*/
+unsigned getValueRequiredBits(unsigned char value)
+{
+  if(value == 0 || value == 255) return 1;
+  /*The scaling of 2-bit and 4-bit values uses multiples of 85 and 17*/
+  if(value % 17 == 0) return value % 85 == 0 ? 2 : 4;
+  return 8;
+}
+
+/*profile must already have been inited with mode.
+It's ok to set some parameters of profile to done already.*/
+static unsigned get_color_profile(ColorProfile* profile,
+                                  const unsigned char* in, size_t numpixels,
+                                  LodePNGColorMode* mode)
+{
+  unsigned error = 0;
+  size_t i;
+
+  if(mode->bitdepth == 16)
+  {
+    for(i = 0; i < numpixels; i++)
+    {
+      unsigned short r, g, b, a;
+      error = getPixelColorRGBA16(&r, &g, &b, &a, in, i, mode);
+      if(error) break;
+
+      /*a color is considered good for 8-bit if the first byte and the second byte are equal,
+        (so if it's divisible through 257), NOT necessarily if the second byte is 0*/
+      if(!profile->sixteenbit_done
+          && (((r & 255) != ((r >> 8) & 255))
+           || ((g & 255) != ((g >> 8) & 255))
+           || ((b & 255) != ((b >> 8) & 255))))
+      {
+        profile->sixteenbit = 1;
+        profile->sixteenbit_done = 1;
+        profile->greybits_done = 1; /*greybits is not applicable anymore at 16-bit*/
+        profile->numcolors_done = 1; /*counting colors no longer useful, palette doesn't support 16-bit*/
+      }
+
+      if(!profile->colored_done && (r != g || r != b))
+      {
+        profile->colored = 1;
+        profile->colored_done = 1;
+        profile->greybits_done = 1; /*greybits is not applicable anymore*/
+      }
+
+      if(!profile->alpha_done && a != 255)
+      {
+        if(a == 0 && !(profile->key && (r != profile->key_r || g != profile->key_g || b != profile->key_b)))
+        {
+          if(!profile->key)
+          {
+            profile->key = 1;
+            profile->key_r = r;
+            profile->key_g = g;
+            profile->key_b = b;
+          }
+        }
+        else
+        {
+          profile->alpha = 1;
+          profile->alpha_done = 1;
+          profile->greybits_done = 1; /*greybits is not applicable anymore*/
+        }
+      }
+
+      if(!profile->greybits_done)
+      {
+        /*assuming 8-bit r, this test does not care about 16-bit*/
+        unsigned bits = getValueRequiredBits(r);
+        if(bits > profile->greybits) profile->greybits = bits;
+        if(profile->greybits >= 8) profile->greybits_done = 1;
+      }
+
+      if(!profile->numcolors_done)
+      {
+        /*assuming 8-bit rgba, this test does not care about 16-bit*/
+        if(!color_tree_has(&profile->tree, r, g, b, a))
+        {
+          color_tree_add(&profile->tree, r, g, b, a, profile->numcolors);
+          if(profile->numcolors < 256)
+          {
+            unsigned char* p = profile->palette;
+            unsigned i = profile->numcolors;
+            p[i * 4 + 0] = r;
+            p[i * 4 + 1] = g;
+            p[i * 4 + 2] = b;
+            p[i * 4 + 3] = a;
+          }
+          profile->numcolors++;
+          if(profile->numcolors >= profile->maxnumcolors) profile->numcolors_done = 1;
+        }
+      }
+
+      if(profile->alpha_done && profile->numcolors_done
+      && profile->colored_done && profile->sixteenbit_done && profile->greybits_done)
+      {
+        break;
+      }
+    };
+  }
+  else
+  {
+    for(i = 0; i < numpixels; i++)
+    {
+      unsigned char r, g, b, a;
+      error = getPixelColorRGBA8(&r, &g, &b, &a, in, i, mode);
+      if(error) break;
+
+      if(!profile->colored_done && (r != g || r != b))
+      {
+        profile->colored = 1;
+        profile->colored_done = 1;
+        profile->greybits_done = 1; /*greybits is not applicable anymore*/
+      }
+
+      if(!profile->alpha_done && a != 255)
+      {
+        if(a == 0 && !(profile->key && (r != profile->key_r || g != profile->key_g || b != profile->key_b)))
+        {
+          if(!profile->key)
+          {
+            profile->key = 1;
+            profile->key_r = r;
+            profile->key_g = g;
+            profile->key_b = b;
+          }
+        }
+        else
+        {
+          profile->alpha = 1;
+          profile->alpha_done = 1;
+          profile->greybits_done = 1; /*greybits is not applicable anymore*/
+        }
+      }
+
+      if(!profile->greybits_done)
+      {
+        unsigned bits = getValueRequiredBits(r);
+        if(bits > profile->greybits) profile->greybits = bits;
+        if(profile->greybits >= 8) profile->greybits_done = 1;
+      }
+
+      if(!profile->numcolors_done)
+      {
+        if(!color_tree_has(&profile->tree, r, g, b, a))
+        {
+
+          color_tree_add(&profile->tree, r, g, b, a, profile->numcolors);
+          if(profile->numcolors < 256)
+          {
+            unsigned char* p = profile->palette;
+            unsigned i = profile->numcolors;
+            p[i * 4 + 0] = r;
+            p[i * 4 + 1] = g;
+            p[i * 4 + 2] = b;
+            p[i * 4 + 3] = a;
+          }
+          profile->numcolors++;
+          if(profile->numcolors >= profile->maxnumcolors) profile->numcolors_done = 1;
+        }
+      }
+
+      if(profile->alpha_done && profile->numcolors_done && profile->colored_done && profile->greybits_done)
+      {
+        break;
+      }
+    };
+  }
+
+  /*make the profile's key always 16-bit for consistency*/
+  if(mode->bitdepth < 16)
+  {
+    /*repeat each byte twice*/
+    profile->key_r *= 257;
+    profile->key_g *= 257;
+    profile->key_b *= 257;
+  }
+
+  return error;
+}
+
+/*updates values of mode with a potentially smaller color model. mode_out should
+contain the user chosen color model, but will be overwritten with the new chosen one.*/
+static unsigned doAutoChooseColor(LodePNGColorMode* mode_out,
+                                  const unsigned char* image, unsigned w, unsigned h, LodePNGColorMode* mode_in,
+                                  LodePNGAutoConvert auto_convert)
+{
+  ColorProfile profile;
+  unsigned error = 0;
+
+  if(auto_convert == LAC_ALPHA)
+  {
+    if(mode_out->colortype != LCT_RGBA && mode_out->colortype != LCT_GREY_ALPHA) return 0;
+  }
+
+  color_profile_init(&profile, mode_in);
+  if(auto_convert == LAC_ALPHA)
+  {
+    profile.colored_done = 1;
+    profile.greybits_done = 1;
+    profile.numcolors_done = 1;
+    profile.sixteenbit_done = 1;
+  }
+  error = get_color_profile(&profile, image, w * h, mode_in);
+
+  if(!error && auto_convert == LAC_ALPHA)
+  {
+    if(!profile.alpha)
+    {
+      mode_out->colortype = (mode_out->colortype == LCT_RGBA ? LCT_RGB : LCT_GREY);
+    }
+  }
+  else if(!error && auto_convert != LAC_ALPHA)
+  {
+    mode_out->key_defined = 0;
+
+    if(profile.sixteenbit)
+    {
+      mode_out->bitdepth = 16;
+      if(profile.alpha)
+      {
+        mode_out->colortype = profile.colored ? LCT_RGBA : LCT_GREY_ALPHA;
+      }
+      else
+      {
+        mode_out->colortype = profile.colored ? LCT_RGB : LCT_GREY;
+        if(profile.key)
+        {
+          mode_out->key_defined = 1;
+          mode_out->key_r = profile.key_r;
+          mode_out->key_g = profile.key_g;
+          mode_out->key_b = profile.key_b;
+        }
+      }
+    }
+    else /*less than 16 bits per channel*/
+    {
+      /*don't add palette overhead if image hasn't got a lot of pixels*/
+      unsigned n = profile.numcolors;
+      int palette_ok = n <= 256 && (n * 2 < w * h);
+      unsigned palettebits = n <= 2 ? 1 : (n <= 4 ? 2 : (n <= 16 ? 4 : 8));
+      int grey_ok = !profile.colored && !profile.alpha; /*grey without alpha, with potentially low bits*/
+      if(palette_ok || grey_ok)
+      {
+        if(!palette_ok || (grey_ok && profile.greybits <= palettebits))
+        {
+          mode_out->colortype = LCT_GREY;
+          mode_out->bitdepth = profile.greybits;
+          if(profile.key)
+          {
+            unsigned keyval = profile.key_r;
+            keyval &= (profile.greybits - 1); /*same subgroup of bits repeated, so taking right bits is fine*/
+            mode_out->key_defined = 1;
+            mode_out->key_r = keyval;
+            mode_out->key_g = keyval;
+            mode_out->key_b = keyval;
+          }
+        }
+        else
+        {
+          /*fill in the palette*/
+          unsigned i;
+          unsigned char* p = profile.palette;
+          for(i = 0; i < profile.numcolors; i++)
+          {
+            error = lodepng_palette_add(mode_out, p[i * 4 + 0], p[i * 4 + 1], p[i * 4 + 2], p[i * 4 + 3]);
+            if(error) break;
+          }
+
+          mode_out->colortype = LCT_PALETTE;
+          mode_out->bitdepth = palettebits;
+        }
+      }
+      else /*8-bit per channel*/
+      {
+        mode_out->bitdepth = 8;
+        if(profile.alpha)
+        {
+          mode_out->colortype = profile.colored ? LCT_RGBA : LCT_GREY_ALPHA;
+        }
+        else
+        {
+          mode_out->colortype = profile.colored ? LCT_RGB : LCT_GREY /*LCT_GREY normally won't occur, already done earlier*/;
+          if(profile.key)
+          {
+            mode_out->key_defined = 1;
+            mode_out->key_r = profile.key_r % 256;
+            mode_out->key_g = profile.key_g % 256;
+            mode_out->key_b = profile.key_b % 256;
+          }
+        }
+      }
+    }
+  }
+
+  color_profile_cleanup(&profile);
+
+  if(mode_out->colortype == LCT_PALETTE && mode_in->palettesize == mode_out->palettesize)
+  {
+    /*In this case keep the palette order of the input, so that the user can choose an optimal one*/
+    size_t i;
+    for(i = 0; i < mode_in->palettesize * 4; i++)
+    {
+      mode_out->palette[i] = mode_in->palette[i];
+    }
+  }
+
+  if(auto_convert == LAC_AUTO_NO_NIBBLES && mode_out->bitdepth < 8)
+  {
+    /*palette can keep its small amount of colors, as long as no indices use it*/
+    mode_out->bitdepth = 8;
+  }
+
+  return error;
+}
+
+#endif /* #ifdef LODEPNG_COMPILE_ENCODER */
+
+/*
+Paeth predicter, used by PNG filter type 4
+The parameters are of type short, but should come from unsigned chars, the shorts
+are only needed to make the paeth calculation correct.
+*/
+static unsigned char paethPredictor(short a, short b, short c)
+{
+  short pa = abs(b - c);
+  short pb = abs(a - c);
+  short pc = abs(a + b - c - c);
+
+  if(pc < pa && pc < pb) return (unsigned char)c;
+  else if(pb < pa) return (unsigned char)b;
+  else return (unsigned char)a;
+}
+
+/*shared values used by multiple Adam7 related functions*/
+
+static const unsigned ADAM7_IX[7] = { 0, 4, 0, 2, 0, 1, 0 }; /*x start values*/
+static const unsigned ADAM7_IY[7] = { 0, 0, 4, 0, 2, 0, 1 }; /*y start values*/
+static const unsigned ADAM7_DX[7] = { 8, 8, 4, 4, 2, 2, 1 }; /*x delta values*/
+static const unsigned ADAM7_DY[7] = { 8, 8, 8, 4, 4, 2, 2 }; /*y delta values*/
+
+static void Adam7_getpassvalues(unsigned passw[7], unsigned passh[7], size_t filter_passstart[8],
+                                size_t padded_passstart[8], size_t passstart[8], unsigned w, unsigned h, unsigned bpp)
+{
+  /*the passstart values have 8 values: the 8th one indicates the byte after the end of the 7th (= last) pass*/
+  unsigned i;
+
+  /*calculate width and height in pixels of each pass*/
+  for(i = 0; i < 7; i++)
+  {
+    passw[i] = (w + ADAM7_DX[i] - ADAM7_IX[i] - 1) / ADAM7_DX[i];
+    passh[i] = (h + ADAM7_DY[i] - ADAM7_IY[i] - 1) / ADAM7_DY[i];
+    if(passw[i] == 0) passh[i] = 0;
+    if(passh[i] == 0) passw[i] = 0;
+  }
+
+  filter_passstart[0] = padded_passstart[0] = passstart[0] = 0;
+  for(i = 0; i < 7; i++)
+  {
+    /*if passw[i] is 0, it's 0 bytes, not 1 (no filtertype-byte)*/
+    filter_passstart[i + 1] = filter_passstart[i]
+                            + ((passw[i] && passh[i]) ? passh[i] * (1 + (passw[i] * bpp + 7) / 8) : 0);
+    /*bits padded if needed to fill full byte at end of each scanline*/
+    padded_passstart[i + 1] = padded_passstart[i] + passh[i] * ((passw[i] * bpp + 7) / 8);
+    /*only padded at end of reduced image*/
+    passstart[i + 1] = passstart[i] + (passh[i] * passw[i] * bpp + 7) / 8;
+  }
+}
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / PNG Decoder                                                            / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*read the information from the header and store it in the LodePNGInfo. return value is error*/
+unsigned lodepng_inspect(unsigned* w, unsigned* h, LodePNGState* state,
+                         const unsigned char* in, size_t insize)
+{
+  LodePNGInfo* info = &state->info_png;
+  if(insize == 0 || in == 0)
+  {
+    CERROR_RETURN_ERROR(state->error, 48); /*error: the given data is empty*/
+  }
+  if(insize < 29)
+  {
+    CERROR_RETURN_ERROR(state->error, 27); /*error: the data length is smaller than the length of a PNG header*/
+  }
+
+  /*when decoding a new PNG image, make sure all parameters created after previous decoding are reset*/
+  lodepng_info_cleanup(info);
+  lodepng_info_init(info);
+
+  if(in[0] != 137 || in[1] != 80 || in[2] != 78 || in[3] != 71
+     || in[4] != 13 || in[5] != 10 || in[6] != 26 || in[7] != 10)
+  {
+    CERROR_RETURN_ERROR(state->error, 28); /*error: the first 8 bytes are not the correct PNG signature*/
+  }
+  if(in[12] != 'I' || in[13] != 'H' || in[14] != 'D' || in[15] != 'R')
+  {
+    CERROR_RETURN_ERROR(state->error, 29); /*error: it doesn't start with a IHDR chunk!*/
+  }
+
+  /*read the values given in the header*/
+  *w = lodepng_read32bitInt(&in[16]);
+  *h = lodepng_read32bitInt(&in[20]);
+  info->color.bitdepth = in[24];
+  info->color.colortype = (LodePNGColorType)in[25];
+  info->compression_method = in[26];
+  info->filter_method = in[27];
+  info->interlace_method = in[28];
+
+  if(!state->decoder.ignore_crc)
+  {
+    unsigned CRC = lodepng_read32bitInt(&in[29]);
+    unsigned checksum = lodepng_crc32(&in[12], 17);
+    if(CRC != checksum)
+    {
+      CERROR_RETURN_ERROR(state->error, 57); /*invalid CRC*/
+    }
+  }
+
+  /*error: only compression method 0 is allowed in the specification*/
+  if(info->compression_method != 0) CERROR_RETURN_ERROR(state->error, 32);
+  /*error: only filter method 0 is allowed in the specification*/
+  if(info->filter_method != 0) CERROR_RETURN_ERROR(state->error, 33);
+  /*error: only interlace methods 0 and 1 exist in the specification*/
+  if(info->interlace_method > 1) CERROR_RETURN_ERROR(state->error, 34);
+
+  state->error = checkColorValidity(info->color.colortype, info->color.bitdepth);
+  return state->error;
+}
+
+static unsigned unfilterScanline(unsigned char* recon, const unsigned char* scanline, const unsigned char* precon,
+                                 size_t bytewidth, unsigned char filterType, size_t length)
+{
+  /*
+  For PNG filter method 0
+  unfilter a PNG image scanline by scanline. when the pixels are smaller than 1 byte,
+  the filter works byte per byte (bytewidth = 1)
+  precon is the previous unfiltered scanline, recon the result, scanline the current one
+  the incoming scanlines do NOT include the filtertype byte, that one is given in the parameter filterType instead
+  recon and scanline MAY be the same memory address! precon must be disjoint.
+  */
+
+  size_t i;
+  switch(filterType)
+  {
+    case 0:
+      for(i = 0; i < length; i++) recon[i] = scanline[i];
+      break;
+    case 1:
+      for(i = 0; i < bytewidth; i++) recon[i] = scanline[i];
+      for(i = bytewidth; i < length; i++) recon[i] = scanline[i] + recon[i - bytewidth];
+      break;
+    case 2:
+      if(precon)
+      {
+        for(i = 0; i < length; i++) recon[i] = scanline[i] + precon[i];
+      }
+      else
+      {
+        for(i = 0; i < length; i++) recon[i] = scanline[i];
+      }
+      break;
+    case 3:
+      if(precon)
+      {
+        for(i = 0; i < bytewidth; i++) recon[i] = scanline[i] + precon[i] / 2;
+        for(i = bytewidth; i < length; i++) recon[i] = scanline[i] + ((recon[i - bytewidth] + precon[i]) / 2);
+      }
+      else
+      {
+        for(i = 0; i < bytewidth; i++) recon[i] = scanline[i];
+        for(i = bytewidth; i < length; i++) recon[i] = scanline[i] + recon[i - bytewidth] / 2;
+      }
+      break;
+    case 4:
+      if(precon)
+      {
+        for(i = 0; i < bytewidth; i++)
+        {
+          recon[i] = (scanline[i] + precon[i]); /*paethPredictor(0, precon[i], 0) is always precon[i]*/
+        }
+        for(i = bytewidth; i < length; i++)
+        {
+          recon[i] = (scanline[i] + paethPredictor(recon[i - bytewidth], precon[i], precon[i - bytewidth]));
+        }
+      }
+      else
+      {
+        for(i = 0; i < bytewidth; i++)
+        {
+          recon[i] = scanline[i];
+        }
+        for(i = bytewidth; i < length; i++)
+        {
+          /*paethPredictor(recon[i - bytewidth], 0, 0) is always recon[i - bytewidth]*/
+          recon[i] = (scanline[i] + recon[i - bytewidth]);
+        }
+      }
+      break;
+    default: return 36; /*error: unexisting filter type given*/
+  }
+  return 0;
+}
+
+static unsigned unfilter(unsigned char* out, const unsigned char* in, unsigned w, unsigned h, unsigned bpp)
+{
+  /*
+  For PNG filter method 0
+  this function unfilters a single image (e.g. without interlacing this is called once, with Adam7 seven times)
+  out must have enough bytes allocated already, in must have the scanlines + 1 filtertype byte per scanline
+  w and h are image dimensions or dimensions of reduced image, bpp is bits per pixel
+  in and out are allowed to be the same memory address (but aren't the same size since in has the extra filter bytes)
+  */
+
+  unsigned y;
+  unsigned char* prevline = 0;
+
+  /*bytewidth is used for filtering, is 1 when bpp < 8, number of bytes per pixel otherwise*/
+  size_t bytewidth = (bpp + 7) / 8;
+  size_t linebytes = (w * bpp + 7) / 8;
+
+  for(y = 0; y < h; y++)
+  {
+    size_t outindex = linebytes * y;
+    size_t inindex = (1 + linebytes) * y; /*the extra filterbyte added to each row*/
+    unsigned char filterType = in[inindex];
+
+    CERROR_TRY_RETURN(unfilterScanline(&out[outindex], &in[inindex + 1], prevline, bytewidth, filterType, linebytes));
+
+    prevline = &out[outindex];
+  }
+
+  return 0;
+}
+
+static void Adam7_deinterlace(unsigned char* out, const unsigned char* in, unsigned w, unsigned h, unsigned bpp)
+{
+  /*Note: this function works on image buffers WITHOUT padding bits at end of scanlines
+  with non-multiple-of-8 bit amounts, only between reduced images is padding
+  out must be big enough AND must be 0 everywhere if bpp < 8 in the current implementation
+  (because that's likely a little bit faster)*/
+  unsigned passw[7], passh[7];
+  size_t filter_passstart[8], padded_passstart[8], passstart[8];
+  unsigned i;
+
+  Adam7_getpassvalues(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);
+
+  if(bpp >= 8)
+  {
+    for(i = 0; i < 7; i++)
+    {
+      unsigned x, y, b;
+      size_t bytewidth = bpp / 8;
+      for(y = 0; y < passh[i]; y++)
+      for(x = 0; x < passw[i]; x++)
+      {
+        size_t pixelinstart = passstart[i] + (y * passw[i] + x) * bytewidth;
+        size_t pixeloutstart = ((ADAM7_IY[i] + y * ADAM7_DY[i]) * w + ADAM7_IX[i] + x * ADAM7_DX[i]) * bytewidth;
+        for(b = 0; b < bytewidth; b++)
+        {
+          out[pixeloutstart + b] = in[pixelinstart + b];
+        }
+      }
+    }
+  }
+  else /*bpp < 8: Adam7 with pixels < 8 bit is a bit trickier: with bit pointers*/
+  {
+    for(i = 0; i < 7; i++)
+    {
+      unsigned x, y, b;
+      unsigned ilinebits = bpp * passw[i];
+      unsigned olinebits = bpp * w;
+      size_t obp, ibp; /*bit pointers (for out and in buffer)*/
+      for(y = 0; y < passh[i]; y++)
+      for(x = 0; x < passw[i]; x++)
+      {
+        ibp = (8 * passstart[i]) + (y * ilinebits + x * bpp);
+        obp = (ADAM7_IY[i] + y * ADAM7_DY[i]) * olinebits + (ADAM7_IX[i] + x * ADAM7_DX[i]) * bpp;
+        for(b = 0; b < bpp; b++)
+        {
+          unsigned char bit = readBitFromReversedStream(&ibp, in);
+          /*note that this function assumes the out buffer is completely 0, use setBitOfReversedStream otherwise*/
+          setBitOfReversedStream0(&obp, out, bit);
+        }
+      }
+    }
+  }
+}
+
+static void removePaddingBits(unsigned char* out, const unsigned char* in,
+                              size_t olinebits, size_t ilinebits, unsigned h)
+{
+  /*
+  After filtering there are still padding bits if scanlines have non multiple of 8 bit amounts. They need
+  to be removed (except at last scanline of (Adam7-reduced) image) before working with pure image buffers
+  for the Adam7 code, the color convert code and the output to the user.
+  in and out are allowed to be the same buffer, in may also be higher but still overlapping; in must
+  have >= ilinebits*h bits, out must have >= olinebits*h bits, olinebits must be <= ilinebits
+  also used to move bits after earlier such operations happened, e.g. in a sequence of reduced images from Adam7
+  only useful if (ilinebits - olinebits) is a value in the range 1..7
+  */
+  unsigned y;
+  size_t diff = ilinebits - olinebits;
+  size_t ibp = 0, obp = 0; /*input and output bit pointers*/
+  for(y = 0; y < h; y++)
+  {
+    size_t x;
+    for(x = 0; x < olinebits; x++)
+    {
+      unsigned char bit = readBitFromReversedStream(&ibp, in);
+      setBitOfReversedStream(&obp, out, bit);
+    }
+    ibp += diff;
+  }
+}
+
+/*out must be buffer big enough to contain full image, and in must contain the full decompressed data from
+the IDAT chunks (with filter index bytes and possible padding bits)
+return value is error*/
+static unsigned postProcessScanlines(unsigned char* out, unsigned char* in,
+                                     unsigned w, unsigned h, const LodePNGInfo* info_png)
+{
+  /*
+  This function converts the filtered-padded-interlaced data into pure 2D image buffer with the PNG's colortype.
+  Steps:
+  *) if no Adam7: 1) unfilter 2) remove padding bits (= posible extra bits per scanline if bpp < 8)
+  *) if adam7: 1) 7x unfilter 2) 7x remove padding bits 3) Adam7_deinterlace
+  NOTE: the in buffer will be overwritten with intermediate data!
+  */
+  unsigned bpp = lodepng_get_bpp(&info_png->color);
+  if(bpp == 0) return 31; /*error: invalid colortype*/
+
+  if(info_png->interlace_method == 0)
+  {
+    if(bpp < 8 && w * bpp != ((w * bpp + 7) / 8) * 8)
+    {
+      CERROR_TRY_RETURN(unfilter(in, in, w, h, bpp));
+      removePaddingBits(out, in, w * bpp, ((w * bpp + 7) / 8) * 8, h);
+    }
+    /*we can immediatly filter into the out buffer, no other steps needed*/
+    else CERROR_TRY_RETURN(unfilter(out, in, w, h, bpp));
+  }
+  else /*interlace_method is 1 (Adam7)*/
+  {
+    unsigned passw[7], passh[7]; size_t filter_passstart[8], padded_passstart[8], passstart[8];
+    unsigned i;
+
+    Adam7_getpassvalues(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);
+
+    for(i = 0; i < 7; i++)
+    {
+      CERROR_TRY_RETURN(unfilter(&in[padded_passstart[i]], &in[filter_passstart[i]], passw[i], passh[i], bpp));
+      /*TODO: possible efficiency improvement: if in this reduced image the bits fit nicely in 1 scanline,
+      move bytes instead of bits or move not at all*/
+      if(bpp < 8)
+      {
+        /*remove padding bits in scanlines; after this there still may be padding
+        bits between the different reduced images: each reduced image still starts nicely at a byte*/
+        removePaddingBits(&in[passstart[i]], &in[padded_passstart[i]], passw[i] * bpp,
+                          ((passw[i] * bpp + 7) / 8) * 8, passh[i]);
+      }
+    }
+
+    Adam7_deinterlace(out, in, w, h, bpp);
+  }
+
+  return 0;
+}
+
+/*read a PNG, the result will be in the same color type as the PNG (hence "generic")*/
+static void decodeGeneric(unsigned char** out, unsigned* w, unsigned* h,
+                          LodePNGState* state,
+                          const unsigned char* in, size_t insize)
+{
+  unsigned char IEND = 0;
+  const unsigned char* chunk;
+  size_t i;
+  ucvector idat; /*the data from idat chunks*/
+
+  /*for unknown chunk order*/
+  unsigned unknown = 0;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  unsigned critical_pos = 1; /*1 = after IHDR, 2 = after PLTE, 3 = after IDAT*/
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+  /*provide some proper output values if error will happen*/
+  *out = 0;
+
+  state->error = lodepng_inspect(w, h, state, in, insize); /*reads header and resets other parameters in state->info_png*/
+  if(state->error) return;
+
+  ucvector_init(&idat);
+  chunk = &in[33]; /*first byte of the first chunk after the header*/
+
+  /*loop through the chunks, ignoring unknown chunks and stopping at IEND chunk.
+  IDAT data is put at the start of the in buffer*/
+  while(!IEND && !state->error)
+  {
+    unsigned chunkLength;
+    const unsigned char* data; /*the data in the chunk*/
+
+    /*error: size of the in buffer too small to contain next chunk*/
+    if((size_t)((chunk - in) + 12) > insize || chunk < in) CERROR_BREAK(state->error, 30);
+
+    /*length of the data of the chunk, excluding the length bytes, chunk type and CRC bytes*/
+    chunkLength = lodepng_chunk_length(chunk);
+    /*error: chunk length larger than the max PNG chunk size*/
+    if(chunkLength > 2147483647) CERROR_BREAK(state->error, 63);
+
+    if((size_t)((chunk - in) + chunkLength + 12) > insize || (chunk + chunkLength + 12) < in)
+    {
+      CERROR_BREAK(state->error, 64); /*error: size of the in buffer too small to contain next chunk*/
+    }
+
+    data = lodepng_chunk_data_const(chunk);
+
+    /*IDAT chunk, containing compressed image data*/
+    if(lodepng_chunk_type_equals(chunk, "IDAT"))
+    {
+      size_t oldsize = idat.size;
+      if(!ucvector_resize(&idat, oldsize + chunkLength)) CERROR_BREAK(state->error, 83 /*alloc fail*/);
+      for(i = 0; i < chunkLength; i++) idat.data[oldsize + i] = data[i];
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+      critical_pos = 3;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    }
+    /*IEND chunk*/
+    else if(lodepng_chunk_type_equals(chunk, "IEND"))
+    {
+      IEND = 1;
+    }
+    /*palette chunk (PLTE)*/
+    else if(lodepng_chunk_type_equals(chunk, "PLTE"))
+    {
+      unsigned pos = 0;
+      if(state->info_png.color.palette) myfree(state->info_png.color.palette);
+      state->info_png.color.palettesize = chunkLength / 3;
+      state->info_png.color.palette = (unsigned char*)mymalloc(4 * state->info_png.color.palettesize);
+      if(!state->info_png.color.palette && state->info_png.color.palettesize)
+      {
+        state->info_png.color.palettesize = 0;
+        CERROR_BREAK(state->error, 83); /*alloc fail*/
+      }
+      if(state->info_png.color.palettesize > 256) CERROR_BREAK(state->error, 38); /*error: palette too big*/
+
+      for(i = 0; i < state->info_png.color.palettesize; i++)
+      {
+        state->info_png.color.palette[4 * i + 0] = data[pos++]; /*R*/
+        state->info_png.color.palette[4 * i + 1] = data[pos++]; /*G*/
+        state->info_png.color.palette[4 * i + 2] = data[pos++]; /*B*/
+        state->info_png.color.palette[4 * i + 3] = 255; /*alpha*/
+      }
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+      critical_pos = 2;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    }
+    /*palette transparency chunk (tRNS)*/
+    else if(lodepng_chunk_type_equals(chunk, "tRNS"))
+    {
+      if(state->info_png.color.colortype == LCT_PALETTE)
+      {
+        /*error: more alpha values given than there are palette entries*/
+        if(chunkLength > state->info_png.color.palettesize) CERROR_BREAK(state->error, 38);
+
+        for(i = 0; i < chunkLength; i++) state->info_png.color.palette[4 * i + 3] = data[i];
+      }
+      else if(state->info_png.color.colortype == LCT_GREY)
+      {
+        /*error: this chunk must be 2 bytes for greyscale image*/
+        if(chunkLength != 2) CERROR_BREAK(state->error, 30);
+
+        state->info_png.color.key_defined = 1;
+        state->info_png.color.key_r = state->info_png.color.key_g
+                                     = state->info_png.color.key_b = 256 * data[0] + data[1];
+      }
+      else if(state->info_png.color.colortype == LCT_RGB)
+      {
+        /*error: this chunk must be 6 bytes for RGB image*/
+        if(chunkLength != 6) CERROR_BREAK(state->error, 41);
+
+        state->info_png.color.key_defined = 1;
+        state->info_png.color.key_r = 256 * data[0] + data[1];
+        state->info_png.color.key_g = 256 * data[2] + data[3];
+        state->info_png.color.key_b = 256 * data[4] + data[5];
+      }
+      else CERROR_BREAK(state->error, 42); /*error: tRNS chunk not allowed for other color models*/
+    }
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+    /*background color chunk (bKGD)*/
+    else if(lodepng_chunk_type_equals(chunk, "bKGD"))
+    {
+      if(state->info_png.color.colortype == LCT_PALETTE)
+      {
+        /*error: this chunk must be 1 byte for indexed color image*/
+        if(chunkLength != 1) CERROR_BREAK(state->error, 43);
+
+        state->info_png.background_defined = 1;
+        state->info_png.background_r = state->info_png.background_g = state->info_png.background_b = data[0];
+      }
+      else if(state->info_png.color.colortype == LCT_GREY || state->info_png.color.colortype == LCT_GREY_ALPHA)
+      {
+        /*error: this chunk must be 2 bytes for greyscale image*/
+        if(chunkLength != 2) CERROR_BREAK(state->error, 44);
+
+        state->info_png.background_defined = 1;
+        state->info_png.background_r = state->info_png.background_g = state->info_png.background_b
+                                     = 256 * data[0] + data[1];
+      }
+      else if(state->info_png.color.colortype == LCT_RGB || state->info_png.color.colortype == LCT_RGBA)
+      {
+        /*error: this chunk must be 6 bytes for greyscale image*/
+        if(chunkLength != 6) CERROR_BREAK(state->error, 45);
+
+        state->info_png.background_defined = 1;
+        state->info_png.background_r = 256 * data[0] + data[1];
+        state->info_png.background_g = 256 * data[2] + data[3];
+        state->info_png.background_b = 256 * data[4] + data[5];
+      }
+    }
+    /*text chunk (tEXt)*/
+    else if(lodepng_chunk_type_equals(chunk, "tEXt"))
+    {
+      if(state->decoder.read_text_chunks)
+      {
+        char *key = 0, *str = 0;
+
+        while(!state->error) /*not really a while loop, only used to break on error*/
+        {
+          unsigned length, string2_begin;
+
+          length = 0;
+          while(length < chunkLength && data[length] != 0) length++;
+          /*error, end reached, no null terminator?*/
+          if(length + 1 >= chunkLength) CERROR_BREAK(state->error, 75);
+
+          key = (char*)mymalloc(length + 1);
+          if(!key) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          key[length] = 0;
+          for(i = 0; i < length; i++) key[i] = data[i];
+
+          string2_begin = length + 1;
+          /*error, end reached, no null terminator?*/
+          if(string2_begin > chunkLength) CERROR_BREAK(state->error, 75);
+
+          length = chunkLength - string2_begin;
+          str = (char*)mymalloc(length + 1);
+          if(!str) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          str[length] = 0;
+          for(i = 0; i < length; i++) str[i] = data[string2_begin + i];
+
+          state->error = lodepng_add_text(&state->info_png, key, str);
+
+          break;
+        }
+
+        myfree(key);
+        myfree(str);
+      }
+    }
+    /*compressed text chunk (zTXt)*/
+    else if(lodepng_chunk_type_equals(chunk, "zTXt"))
+    {
+      if(state->decoder.read_text_chunks)
+      {
+        unsigned length, string2_begin;
+        char *key = 0;
+        ucvector decoded;
+
+        ucvector_init(&decoded);
+
+        while(!state->error) /*not really a while loop, only used to break on error*/
+        {
+          for(length = 0; length < chunkLength && data[length] != 0; length++) ;
+          if(length + 2 >= chunkLength) CERROR_BREAK(state->error, 75); /*no null termination, corrupt?*/
+
+          key = (char*)mymalloc(length + 1);
+          if(!key) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          key[length] = 0;
+          for(i = 0; i < length; i++) key[i] = data[i];
+
+          if(data[length + 1] != 0) CERROR_BREAK(state->error, 72); /*the 0 byte indicating compression must be 0*/
+
+          string2_begin = length + 2;
+          if(string2_begin > chunkLength) CERROR_BREAK(state->error, 75); /*no null termination, corrupt?*/
+
+          length = chunkLength - string2_begin;
+          state->error = lodepng_zlib_decompress(&decoded.data, &decoded.size,
+                                                   (unsigned char*)(&data[string2_begin]),
+                                                   length, &state->decoder.zlibsettings);
+          if(state->error) break;
+          ucvector_push_back(&decoded, 0);
+
+          state->error = lodepng_add_text(&state->info_png, key, (char*)decoded.data);
+
+          break;
+        }
+
+        myfree(key);
+        ucvector_cleanup(&decoded);
+        if(state->error) break;
+      }
+    }
+    /*international text chunk (iTXt)*/
+    else if(lodepng_chunk_type_equals(chunk, "iTXt"))
+    {
+      if(state->decoder.read_text_chunks)
+      {
+        unsigned length, begin, compressed;
+        char *key = 0, *langtag = 0, *transkey = 0;
+        ucvector decoded;
+        ucvector_init(&decoded);
+
+        while(!state->error) /*not really a while loop, only used to break on error*/
+        {
+          /*Quick check if the chunk length isn't too small. Even without check
+          it'd still fail with other error checks below if it's too short. This just gives a different error code.*/
+          if(chunkLength < 5) CERROR_BREAK(state->error, 30); /*iTXt chunk too short*/
+
+          /*read the key*/
+          for(length = 0; length < chunkLength && data[length] != 0; length++) ;
+          if(length + 2 >= chunkLength) CERROR_BREAK(state->error, 75); /*no null termination char found*/
+
+          key = (char*)mymalloc(length + 1);
+          if(!key) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          key[length] = 0;
+          for(i = 0; i < length; i++) key[i] = data[i];
+
+          /*read the compression method*/
+          compressed = data[length + 1];
+          if(data[length + 2] != 0) CERROR_BREAK(state->error, 72); /*the 0 byte indicating compression must be 0*/
+
+          /*read the langtag*/
+          begin = length + 3;
+          length = 0;
+          for(i = begin; i < chunkLength && data[i] != 0; i++) length++;
+          if(begin + length + 1 >= chunkLength) CERROR_BREAK(state->error, 75); /*no null termination char found*/
+
+          langtag = (char*)mymalloc(length + 1);
+          if(!langtag) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          langtag[length] = 0;
+          for(i = 0; i < length; i++) langtag[i] = data[begin + i];
+
+          /*read the transkey*/
+          begin += length + 1;
+          length = 0;
+          for(i = begin; i < chunkLength && data[i] != 0; i++) length++;
+          if(begin + length + 1 >= chunkLength) CERROR_BREAK(state->error, 75); /*no null termination, corrupt?*/
+
+          transkey = (char*)mymalloc(length + 1);
+          if(!transkey) CERROR_BREAK(state->error, 83); /*alloc fail*/
+
+          transkey[length] = 0;
+          for(i = 0; i < length; i++) transkey[i] = data[begin + i];
+
+          /*read the actual text*/
+          begin += length + 1;
+          if(begin > chunkLength) CERROR_BREAK(state->error, 75); /*no null termination, corrupt?*/
+
+          length = chunkLength - begin;
+
+          if(compressed)
+          {
+            state->error = lodepng_zlib_decompress(&decoded.data, &decoded.size,
+                                                   (unsigned char*)(&data[begin]),
+                                                   length, &state->decoder.zlibsettings);
+            if(state->error) break;
+            if(decoded.allocsize < decoded.size) decoded.allocsize = decoded.size;
+            ucvector_push_back(&decoded, 0);
+          }
+          else
+          {
+            if(!ucvector_resize(&decoded, length + 1)) CERROR_BREAK(state->error, 83 /*alloc fail*/);
+
+            decoded.data[length] = 0;
+            for(i = 0; i < length; i++) decoded.data[i] = data[begin + i];
+          }
+
+          state->error = lodepng_add_itext(&state->info_png, key, langtag, transkey, (char*)decoded.data);
+
+          break;
+        }
+
+        myfree(key);
+        myfree(langtag);
+        myfree(transkey);
+        ucvector_cleanup(&decoded);
+        if(state->error) break;
+      }
+    }
+    else if(lodepng_chunk_type_equals(chunk, "tIME"))
+    {
+      if(chunkLength != 7) CERROR_BREAK(state->error, 73); /*invalid tIME chunk size*/
+
+      state->info_png.time_defined = 1;
+      state->info_png.time.year = 256 * data[0] + data[+ 1];
+      state->info_png.time.month = data[2];
+      state->info_png.time.day = data[3];
+      state->info_png.time.hour = data[4];
+      state->info_png.time.minute = data[5];
+      state->info_png.time.second = data[6];
+    }
+    else if(lodepng_chunk_type_equals(chunk, "pHYs"))
+    {
+      if(chunkLength != 9) CERROR_BREAK(state->error, 74); /*invalid pHYs chunk size*/
+
+      state->info_png.phys_defined = 1;
+      state->info_png.phys_x = 16777216 * data[0] + 65536 * data[1] + 256 * data[2] + data[3];
+      state->info_png.phys_y = 16777216 * data[4] + 65536 * data[5] + 256 * data[6] + data[7];
+      state->info_png.phys_unit = data[8];
+    }
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    else /*it's not an implemented chunk type, so ignore it: skip over the data*/
+    {
+      /*error: unknown critical chunk (5th bit of first byte of chunk type is 0)*/
+      if(!lodepng_chunk_ancillary(chunk)) CERROR_BREAK(state->error, 69);
+
+      unknown = 1;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+      if(state->decoder.remember_unknown_chunks)
+      {
+        state->error = lodepng_chunk_append(&state->info_png.unknown_chunks_data[critical_pos - 1],
+                                            &state->info_png.unknown_chunks_size[critical_pos - 1], chunk);
+        if(state->error) break;
+      }
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    }
+
+    if(!state->decoder.ignore_crc && !unknown) /*check CRC if wanted, only on known chunk types*/
+    {
+      if(lodepng_chunk_check_crc(chunk)) CERROR_BREAK(state->error, 57); /*invalid CRC*/
+    }
+
+    if(!IEND) chunk = lodepng_chunk_next_const(chunk);
+  }
+
+  if(!state->error)
+  {
+    ucvector scanlines;
+    ucvector_init(&scanlines);
+
+    /*maximum final image length is already reserved in the vector's length - this is not really necessary*/
+    if(!ucvector_resize(&scanlines, lodepng_get_raw_size(*w, *h, &state->info_png.color) + *h))
+    {
+      state->error = 83; /*alloc fail*/
+    }
+    if(!state->error)
+    {
+      /*decompress with the Zlib decompressor*/
+      state->error = lodepng_zlib_decompress(&scanlines.data, &scanlines.size, idat.data,
+                                             idat.size, &state->decoder.zlibsettings);
+    }
+
+    if(!state->error)
+    {
+      ucvector outv;
+      ucvector_init(&outv);
+      if(!ucvector_resizev(&outv,
+          lodepng_get_raw_size(*w, *h, &state->info_png.color), 0)) state->error = 83; /*alloc fail*/
+      if(!state->error) state->error = postProcessScanlines(outv.data, scanlines.data, *w, *h, &state->info_png);
+      *out = outv.data;
+    }
+    ucvector_cleanup(&scanlines);
+  }
+
+  ucvector_cleanup(&idat);
+}
+
+unsigned lodepng_decode(unsigned char** out, unsigned* w, unsigned* h,
+                        LodePNGState* state,
+                        const unsigned char* in, size_t insize)
+{
+  *out = 0;
+  decodeGeneric(out, w, h, state, in, insize);
+  if(state->error) return state->error;
+  if(!state->decoder.color_convert || lodepng_color_mode_equal(&state->info_raw, &state->info_png.color))
+  {
+    /*same color type, no copying or converting of data needed*/
+    /*store the info_png color settings on the info_raw so that the info_raw still reflects what colortype
+    the raw image has to the end user*/
+    if(!state->decoder.color_convert)
+    {
+      state->error = lodepng_color_mode_copy(&state->info_raw, &state->info_png.color);
+      if(state->error) return state->error;
+    }
+  }
+  else
+  {
+    /*color conversion needed; sort of copy of the data*/
+    unsigned char* data = *out;
+    size_t outsize;
+
+    /*TODO: check if this works according to the statement in the documentation: "The converter can convert
+    from greyscale input color type, to 8-bit greyscale or greyscale with alpha"*/
+    if(!(state->info_raw.colortype == LCT_RGB || state->info_raw.colortype == LCT_RGBA)
+       && !(state->info_raw.bitdepth == 8))
+    {
+      return 56; /*unsupported color mode conversion*/
+    }
+
+    outsize = lodepng_get_raw_size(*w, *h, &state->info_raw);
+    *out = (unsigned char*)mymalloc(outsize);
+    if(!(*out))
+    {
+      state->error = 83; /*alloc fail*/
+    }
+    else state->error = lodepng_convert(*out, data, &state->info_raw, &state->info_png.color, *w, *h);
+    myfree(data);
+  }
+  return state->error;
+}
+
+unsigned lodepng_decode_memory(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in,
+                               size_t insize, LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned error;
+  LodePNGState state;
+  lodepng_state_init(&state);
+  state.info_raw.colortype = colortype;
+  state.info_raw.bitdepth = bitdepth;
+  error = lodepng_decode(out, w, h, &state, in, insize);
+  lodepng_state_cleanup(&state);
+  return error;
+}
+
+unsigned lodepng_decode32(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in, size_t insize)
+{
+  return lodepng_decode_memory(out, w, h, in, insize, LCT_RGBA, 8);
+}
+
+unsigned lodepng_decode24(unsigned char** out, unsigned* w, unsigned* h, const unsigned char* in, size_t insize)
+{
+  return lodepng_decode_memory(out, w, h, in, insize, LCT_RGB, 8);
+}
+
+#ifdef LODEPNG_COMPILE_DISK
+unsigned lodepng_decode_file(unsigned char** out, unsigned* w, unsigned* h, const char* filename,
+                             LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned char* buffer;
+  size_t buffersize;
+  unsigned error;
+  error = lodepng_load_file(&buffer, &buffersize, filename);
+  if(!error) error = lodepng_decode_memory(out, w, h, buffer, buffersize, colortype, bitdepth);
+  myfree(buffer);
+  return error;
+}
+
+unsigned lodepng_decode32_file(unsigned char** out, unsigned* w, unsigned* h, const char* filename)
+{
+  return lodepng_decode_file(out, w, h, filename, LCT_RGBA, 8);
+}
+
+unsigned lodepng_decode24_file(unsigned char** out, unsigned* w, unsigned* h, const char* filename)
+{
+  return lodepng_decode_file(out, w, h, filename, LCT_RGB, 8);
+}
+#endif /*LODEPNG_COMPILE_DISK*/
+
+void lodepng_decoder_settings_init(LodePNGDecoderSettings* settings)
+{
+  settings->color_convert = 1;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  settings->read_text_chunks = 1;
+  settings->remember_unknown_chunks = 0;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+  settings->ignore_crc = 0;
+  lodepng_decompress_settings_init(&settings->zlibsettings);
+}
+
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#if defined(LODEPNG_COMPILE_DECODER) || defined(LODEPNG_COMPILE_ENCODER)
+
+void lodepng_state_init(LodePNGState* state)
+{
+#ifdef LODEPNG_COMPILE_DECODER
+  lodepng_decoder_settings_init(&state->decoder);
+#endif /*LODEPNG_COMPILE_DECODER*/
+#ifdef LODEPNG_COMPILE_ENCODER
+  lodepng_encoder_settings_init(&state->encoder);
+#endif /*LODEPNG_COMPILE_ENCODER*/
+  lodepng_color_mode_init(&state->info_raw);
+  lodepng_info_init(&state->info_png);
+  state->error = 1;
+}
+
+void lodepng_state_cleanup(LodePNGState* state)
+{
+  lodepng_color_mode_cleanup(&state->info_raw);
+  lodepng_info_cleanup(&state->info_png);
+}
+
+void lodepng_state_copy(LodePNGState* dest, const LodePNGState* source)
+{
+  lodepng_state_cleanup(dest);
+  *dest = *source;
+  lodepng_color_mode_init(&dest->info_raw);
+  lodepng_info_init(&dest->info_png);
+  dest->error = lodepng_color_mode_copy(&dest->info_raw, &source->info_raw); if(dest->error) return;
+  dest->error = lodepng_info_copy(&dest->info_png, &source->info_png); if(dest->error) return;
+}
+
+#endif /* defined(LODEPNG_COMPILE_DECODER) || defined(LODEPNG_COMPILE_ENCODER) */
+
+#ifdef LODEPNG_COMPILE_ENCODER
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* / PNG Encoder                                                            / */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+/*chunkName must be string of 4 characters*/
+static unsigned addChunk(ucvector* out, const char* chunkName, const unsigned char* data, size_t length)
+{
+  CERROR_TRY_RETURN(lodepng_chunk_create(&out->data, &out->size, (unsigned)length, chunkName, data));
+  out->allocsize = out->size; /*fix the allocsize again*/
+  return 0;
+}
+
+static void writeSignature(ucvector* out)
+{
+  /*8 bytes PNG signature, aka the magic bytes*/
+  ucvector_push_back(out, 137);
+  ucvector_push_back(out, 80);
+  ucvector_push_back(out, 78);
+  ucvector_push_back(out, 71);
+  ucvector_push_back(out, 13);
+  ucvector_push_back(out, 10);
+  ucvector_push_back(out, 26);
+  ucvector_push_back(out, 10);
+}
+
+static unsigned addChunk_IHDR(ucvector* out, unsigned w, unsigned h,
+                              LodePNGColorType colortype, unsigned bitdepth, unsigned interlace_method)
+{
+  unsigned error = 0;
+  ucvector header;
+  ucvector_init(&header);
+
+  lodepng_add32bitInt(&header, w); /*width*/
+  lodepng_add32bitInt(&header, h); /*height*/
+  ucvector_push_back(&header, (unsigned char)bitdepth); /*bit depth*/
+  ucvector_push_back(&header, (unsigned char)colortype); /*color type*/
+  ucvector_push_back(&header, 0); /*compression method*/
+  ucvector_push_back(&header, 0); /*filter method*/
+  ucvector_push_back(&header, interlace_method); /*interlace method*/
+
+  error = addChunk(out, "IHDR", header.data, header.size);
+  ucvector_cleanup(&header);
+
+  return error;
+}
+
+static unsigned addChunk_PLTE(ucvector* out, const LodePNGColorMode* info)
+{
+  unsigned error = 0;
+  size_t i;
+  ucvector PLTE;
+  ucvector_init(&PLTE);
+  for(i = 0; i < info->palettesize * 4; i++)
+  {
+    /*add all channels except alpha channel*/
+    if(i % 4 != 3) ucvector_push_back(&PLTE, info->palette[i]);
+  }
+  error = addChunk(out, "PLTE", PLTE.data, PLTE.size);
+  ucvector_cleanup(&PLTE);
+
+  return error;
+}
+
+static unsigned addChunk_tRNS(ucvector* out, const LodePNGColorMode* info)
+{
+  unsigned error = 0;
+  size_t i;
+  ucvector tRNS;
+  ucvector_init(&tRNS);
+  if(info->colortype == LCT_PALETTE)
+  {
+    size_t amount = info->palettesize;
+    /*the tail of palette values that all have 255 as alpha, does not have to be encoded*/
+    for(i = info->palettesize; i > 0; i--)
+    {
+      if(info->palette[4 * (i - 1) + 3] == 255) amount--;
+      else break;
+    }
+    /*add only alpha channel*/
+    for(i = 0; i < amount; i++) ucvector_push_back(&tRNS, info->palette[4 * i + 3]);
+  }
+  else if(info->colortype == LCT_GREY)
+  {
+    if(info->key_defined)
+    {
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_r / 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_r % 256));
+    }
+  }
+  else if(info->colortype == LCT_RGB)
+  {
+    if(info->key_defined)
+    {
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_r / 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_r % 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_g / 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_g % 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_b / 256));
+      ucvector_push_back(&tRNS, (unsigned char)(info->key_b % 256));
+    }
+  }
+
+  error = addChunk(out, "tRNS", tRNS.data, tRNS.size);
+  ucvector_cleanup(&tRNS);
+
+  return error;
+}
+
+static unsigned addChunk_IDAT(ucvector* out, const unsigned char* data, size_t datasize,
+                              LodePNGCompressSettings* zlibsettings)
+{
+  ucvector zlibdata;
+  unsigned error = 0;
+
+  /*compress with the Zlib compressor*/
+  ucvector_init(&zlibdata);
+  error = lodepng_zlib_compress(&zlibdata.data, &zlibdata.size, data, datasize, zlibsettings);
+  if(!error) error = addChunk(out, "IDAT", zlibdata.data, zlibdata.size);
+  ucvector_cleanup(&zlibdata);
+
+  return error;
+}
+
+static unsigned addChunk_IEND(ucvector* out)
+{
+  unsigned error = 0;
+  error = addChunk(out, "IEND", 0, 0);
+  return error;
+}
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+
+static unsigned addChunk_tEXt(ucvector* out, const char* keyword, const char* textstring)
+{
+  unsigned error = 0;
+  size_t i;
+  ucvector text;
+  ucvector_init(&text);
+  for(i = 0; keyword[i] != 0; i++) ucvector_push_back(&text, (unsigned char)keyword[i]);
+  ucvector_push_back(&text, 0);
+  for(i = 0; textstring[i] != 0; i++) ucvector_push_back(&text, (unsigned char)textstring[i]);
+  error = addChunk(out, "tEXt", text.data, text.size);
+  ucvector_cleanup(&text);
+
+  return error;
+}
+
+static unsigned addChunk_zTXt(ucvector* out, const char* keyword, const char* textstring,
+                              LodePNGCompressSettings* zlibsettings)
+{
+  unsigned error = 0;
+  ucvector data, compressed;
+  size_t i, textsize = strlen(textstring);
+
+  ucvector_init(&data);
+  ucvector_init(&compressed);
+  for(i = 0; keyword[i] != 0; i++) ucvector_push_back(&data, (unsigned char)keyword[i]);
+  ucvector_push_back(&data, 0); /*0 termination char*/
+  ucvector_push_back(&data, 0); /*compression method: 0*/
+
+  error = lodepng_zlib_compress(&compressed.data, &compressed.size,
+                                (unsigned char*)textstring, textsize, zlibsettings);
+  if(!error)
+  {
+    for(i = 0; i < compressed.size; i++) ucvector_push_back(&data, compressed.data[i]);
+    error = addChunk(out, "zTXt", data.data, data.size);
+  }
+
+  ucvector_cleanup(&compressed);
+  ucvector_cleanup(&data);
+  return error;
+}
+
+static unsigned addChunk_iTXt(ucvector* out, unsigned compressed, const char* keyword, const char* langtag,
+                              const char* transkey, const char* textstring, LodePNGCompressSettings* zlibsettings)
+{
+  unsigned error = 0;
+  ucvector data;
+  size_t i, textsize = strlen(textstring);
+
+  ucvector_init(&data);
+
+  for(i = 0; keyword[i] != 0; i++) ucvector_push_back(&data, (unsigned char)keyword[i]);
+  ucvector_push_back(&data, 0); /*null termination char*/
+  ucvector_push_back(&data, compressed ? 1 : 0); /*compression flag*/
+  ucvector_push_back(&data, 0); /*compression method*/
+  for(i = 0; langtag[i] != 0; i++) ucvector_push_back(&data, (unsigned char)langtag[i]);
+  ucvector_push_back(&data, 0); /*null termination char*/
+  for(i = 0; transkey[i] != 0; i++) ucvector_push_back(&data, (unsigned char)transkey[i]);
+  ucvector_push_back(&data, 0); /*null termination char*/
+
+  if(compressed)
+  {
+    ucvector compressed_data;
+    ucvector_init(&compressed_data);
+    error = lodepng_zlib_compress(&compressed_data.data, &compressed_data.size,
+                                  (unsigned char*)textstring, textsize, zlibsettings);
+    if(!error)
+    {
+      for(i = 0; i < compressed_data.size; i++) ucvector_push_back(&data, compressed_data.data[i]);
+    }
+    ucvector_cleanup(&compressed_data);
+  }
+  else /*not compressed*/
+  {
+    for(i = 0; textstring[i] != 0; i++) ucvector_push_back(&data, (unsigned char)textstring[i]);
+  }
+
+  if(!error) error = addChunk(out, "iTXt", data.data, data.size);
+  ucvector_cleanup(&data);
+  return error;
+}
+
+static unsigned addChunk_bKGD(ucvector* out, const LodePNGInfo* info)
+{
+  unsigned error = 0;
+  ucvector bKGD;
+  ucvector_init(&bKGD);
+  if(info->color.colortype == LCT_GREY || info->color.colortype == LCT_GREY_ALPHA)
+  {
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_r / 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_r % 256));
+  }
+  else if(info->color.colortype == LCT_RGB || info->color.colortype == LCT_RGBA)
+  {
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_r / 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_r % 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_g / 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_g % 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_b / 256));
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_b % 256));
+  }
+  else if(info->color.colortype == LCT_PALETTE)
+  {
+    ucvector_push_back(&bKGD, (unsigned char)(info->background_r % 256)); /*palette index*/
+  }
+
+  error = addChunk(out, "bKGD", bKGD.data, bKGD.size);
+  ucvector_cleanup(&bKGD);
+
+  return error;
+}
+
+static unsigned addChunk_tIME(ucvector* out, const LodePNGTime* time)
+{
+  unsigned error = 0;
+  unsigned char* data = (unsigned char*)mymalloc(7);
+  if(!data) return 83; /*alloc fail*/
+  data[0] = (unsigned char)(time->year / 256);
+  data[1] = (unsigned char)(time->year % 256);
+  data[2] = time->month;
+  data[3] = time->day;
+  data[4] = time->hour;
+  data[5] = time->minute;
+  data[6] = time->second;
+  error = addChunk(out, "tIME", data, 7);
+  myfree(data);
+  return error;
+}
+
+static unsigned addChunk_pHYs(ucvector* out, const LodePNGInfo* info)
+{
+  unsigned error = 0;
+  ucvector data;
+  ucvector_init(&data);
+
+  lodepng_add32bitInt(&data, info->phys_x);
+  lodepng_add32bitInt(&data, info->phys_y);
+  ucvector_push_back(&data, info->phys_unit);
+
+  error = addChunk(out, "pHYs", data.data, data.size);
+  ucvector_cleanup(&data);
+
+  return error;
+}
+
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+static void filterScanline(unsigned char* out, const unsigned char* scanline, const unsigned char* prevline,
+                           size_t length, size_t bytewidth, unsigned char filterType)
+{
+  size_t i;
+  switch(filterType)
+  {
+    case 0: /*None*/
+      for(i = 0; i < length; i++) out[i] = scanline[i];
+      break;
+    case 1: /*Sub*/
+      if(prevline)
+      {
+        for(i = 0; i < bytewidth; i++) out[i] = scanline[i];
+        for(i = bytewidth; i < length; i++) out[i] = scanline[i] - scanline[i - bytewidth];
+      }
+      else
+      {
+        for(i = 0; i < bytewidth; i++) out[i] = scanline[i];
+        for(i = bytewidth; i < length; i++) out[i] = scanline[i] - scanline[i - bytewidth];
+      }
+      break;
+    case 2: /*Up*/
+      if(prevline)
+      {
+        for(i = 0; i < length; i++) out[i] = scanline[i] - prevline[i];
+      }
+      else
+      {
+        for(i = 0; i < length; i++) out[i] = scanline[i];
+      }
+      break;
+    case 3: /*Average*/
+      if(prevline)
+      {
+        for(i = 0; i < bytewidth; i++) out[i] = scanline[i] - prevline[i] / 2;
+        for(i = bytewidth; i < length; i++) out[i] = scanline[i] - ((scanline[i - bytewidth] + prevline[i]) / 2);
+      }
+      else
+      {
+        for(i = 0; i < bytewidth; i++) out[i] = scanline[i];
+        for(i = bytewidth; i < length; i++) out[i] = scanline[i] - scanline[i - bytewidth] / 2;
+      }
+      break;
+    case 4: /*Paeth*/
+      if(prevline)
+      {
+        /*paethPredictor(0, prevline[i], 0) is always prevline[i]*/
+        for(i = 0; i < bytewidth; i++) out[i] = (scanline[i] - prevline[i]);
+        for(i = bytewidth; i < length; i++)
+        {
+          out[i] = (scanline[i] - paethPredictor(scanline[i - bytewidth], prevline[i], prevline[i - bytewidth]));
+        }
+      }
+      else
+      {
+        for(i = 0; i < bytewidth; i++) out[i] = scanline[i];
+        /*paethPredictor(scanline[i - bytewidth], 0, 0) is always scanline[i - bytewidth]*/
+        for(i = bytewidth; i < length; i++) out[i] = (scanline[i] - scanline[i - bytewidth]);
+      }
+      break;
+    default: return; /*unexisting filter type given*/
+  }
+}
+
+static unsigned filter(unsigned char* out, const unsigned char* in, unsigned w, unsigned h,
+                       const LodePNGColorMode* info, const LodePNGEncoderSettings* settings)
+{
+  /*
+  For PNG filter method 0
+  out must be a buffer with as size: h + (w * h * bpp + 7) / 8, because there are
+  the scanlines with 1 extra byte per scanline
+  */
+
+  unsigned bpp = lodepng_get_bpp(info);
+  /*the width of a scanline in bytes, not including the filter type*/
+  size_t linebytes = (w * bpp + 7) / 8;
+  /*bytewidth is used for filtering, is 1 when bpp < 8, number of bytes per pixel otherwise*/
+  size_t bytewidth = (bpp + 7) / 8;
+  const unsigned char* prevline = 0;
+  unsigned x, y;
+  unsigned error = 0;
+  /*
+  There is a heuristic called the minimum sum of absolute differences heuristic, suggested by the PNG standard:
+   *  If the image type is Palette, or the bit depth is smaller than 8, then do not filter the image (i.e.
+      use fixed filtering, with the filter None).
+   * (The other case) If the image type is Grayscale or RGB (with or without Alpha), and the bit depth is
+     not smaller than 8, then use adaptive filtering heuristic as follows: independently for each row, apply
+     all five filters and select the filter that produces the smallest sum of absolute values per row.
+   This heuristic is used if filter strategy is LFS_HEURISTIC. Parts of it are used for filter strategies
+   LFS_MINSUM and LFS_ZERO.
+  */
+  int heuristic_zero = info->colortype == LCT_PALETTE || info->bitdepth < 8;
+
+  if(bpp == 0) return 31; /*error: invalid color type*/
+
+  if((!heuristic_zero && settings->filter_strategy == LFS_HEURISTIC)||
+      settings->filter_strategy == LFS_MINSUM)
+  {
+    /*adaptive filtering*/
+    size_t sum[5];
+    ucvector attempt[5]; /*five filtering attempts, one for each filter type*/
+    size_t smallest = 0;
+    unsigned type, bestType = 0;
+
+    for(type = 0; type < 5; type++) ucvector_init(&attempt[type]);
+
+    for(type = 0; type < 5; type++)
+    {
+      if(!ucvector_resize(&attempt[type], linebytes)) ERROR_BREAK(83 /*alloc fail*/);
+    }
+
+    if(!error)
+    {
+      for(y = 0; y < h; y++)
+      {
+        /*try the 5 filter types*/
+        for(type = 0; type < 5; type++)
+        {
+          filterScanline(attempt[type].data, &in[y * linebytes], prevline, linebytes, bytewidth, type);
+
+          /*calculate the sum of the result*/
+          sum[type] = 0;
+          /*note that not all pixels are checked to speed this up while still having probably the best choice*/
+          for(x = 0; x < attempt[type].size; x+=3)
+          {
+            /*For differences, each byte should be treated as signed, values above 127 are negative
+            (converted to signed char). Filtertype 0 isn't a difference though, so use unsigned there.
+            This means filtertype 0 is almost never chosen, but that is justified.*/
+            if(type == 0) sum[type] += (unsigned char)(attempt[type].data[x]);
+            else
+            {
+              signed char s = (signed char)(attempt[type].data[x]);
+              sum[type] += s < 0 ? -s : s;
+            }
+          }
+
+          /*check if this is smallest sum (or if type == 0 it's the first case so always store the values)*/
+          if(type == 0 || sum[type] < smallest)
+          {
+            bestType = type;
+            smallest = sum[type];
+          }
+        }
+
+        prevline = &in[y * linebytes];
+
+        /*now fill the out values*/
+        out[y * (linebytes + 1)] = bestType; /*the first byte of a scanline will be the filter type*/
+        for(x = 0; x < linebytes; x++) out[y * (linebytes + 1) + 1 + x] = attempt[bestType].data[x];
+      }
+    }
+
+    for(type = 0; type < 5; type++) ucvector_cleanup(&attempt[type]);
+  }
+  else if((heuristic_zero && settings->filter_strategy == LFS_HEURISTIC)||
+      settings->filter_strategy == LFS_ZERO)
+  {
+    for(y = 0; y < h; y++)
+    {
+      size_t outindex = (1 + linebytes) * y; /*the extra filterbyte added to each row*/
+      size_t inindex = linebytes * y;
+      const unsigned TYPE = 0;
+      out[outindex] = TYPE; /*filter type byte*/
+      filterScanline(&out[outindex + 1], &in[inindex], prevline, linebytes, bytewidth, TYPE);
+      prevline = &in[inindex];
+    }
+  }
+  else if(settings->filter_strategy == LFS_PREDEFINED)
+  {
+    for(y = 0; y < h; y++)
+    {
+      size_t outindex = (1 + linebytes) * y; /*the extra filterbyte added to each row*/
+      size_t inindex = linebytes * y;
+      unsigned type = settings->predefined_filters[y];
+      out[outindex] = type; /*filter type byte*/
+      filterScanline(&out[outindex + 1], &in[inindex], prevline, linebytes, bytewidth, type);
+      prevline = &in[inindex];
+    }
+  }
+  else /*LFS_BRUTE_FORCE*/
+  {
+    /*brute force filter chooser.
+    deflate the scanline after every filter attempt to see which one deflates best.
+    This is very slow and gives only slightly smaller, sometimes even larger, result*/
+    size_t size[5];
+    ucvector attempt[5]; /*five filtering attempts, one for each filter type*/
+    size_t smallest = 0;
+    unsigned type = 0, bestType = 0;
+    unsigned char* dummy;
+    LodePNGCompressSettings zlibsettings = settings->zlibsettings;
+    /*use fixed tree on the attempts so that the tree is not adapted to the filtertype on purpose,
+    to simulate the true case where the tree is the same for the whole image. Sometimes it gives
+    better result with dynamic tree anyway. Using the fixed tree sometimes gives worse, but in rare
+    cases better compression. It does make this a bit less slow, so it's worth doing this.*/
+    zlibsettings.btype = 1;
+    /*a custom encoder likely doesn't read the btype setting and is optimized for complete PNG
+    images only, so disable it*/
+    zlibsettings.custom_encoder = 0;
+    for(type = 0; type < 5; type++)
+    {
+      ucvector_init(&attempt[type]);
+      ucvector_resize(&attempt[type], linebytes); /*todo: give error if resize failed*/
+    }
+    for(y = 0; y < h; y++) /*try the 5 filter types*/
+    {
+      for(type = 0; type < 5; type++)
+      {
+        unsigned testsize = attempt[type].size;
+        /*if(testsize > 8) testsize /= 8;*/ /*it already works good enough by testing a part of the row*/
+
+        filterScanline(attempt[type].data, &in[y * linebytes], prevline, linebytes, bytewidth, type);
+        size[type] = 0;
+        dummy = 0;
+        lodepng_zlib_compress(&dummy, &size[type], attempt[type].data, testsize, &zlibsettings);
+        myfree(dummy);
+        /*check if this is smallest size (or if type == 0 it's the first case so always store the values)*/
+        if(type == 0 || size[type] < smallest)
+        {
+          bestType = type;
+          smallest = size[type];
+        }
+      }
+      prevline = &in[y * linebytes];
+      out[y * (linebytes + 1)] = bestType; /*the first byte of a scanline will be the filter type*/
+      for(x = 0; x < linebytes; x++) out[y * (linebytes + 1) + 1 + x] = attempt[bestType].data[x];
+    }
+    for(type = 0; type < 5; type++) ucvector_cleanup(&attempt[type]);
+  }
+
+  return error;
+}
+
+static void addPaddingBits(unsigned char* out, const unsigned char* in,
+                           size_t olinebits, size_t ilinebits, unsigned h)
+{
+  /*The opposite of the removePaddingBits function
+  olinebits must be >= ilinebits*/
+  unsigned y;
+  size_t diff = olinebits - ilinebits;
+  size_t obp = 0, ibp = 0; /*bit pointers*/
+  for(y = 0; y < h; y++)
+  {
+    size_t x;
+    for(x = 0; x < ilinebits; x++)
+    {
+      unsigned char bit = readBitFromReversedStream(&ibp, in);
+      setBitOfReversedStream(&obp, out, bit);
+    }
+    /*obp += diff; --> no, fill in some value in the padding bits too, to avoid
+    "Use of uninitialised value of size ###" warning from valgrind*/
+    for(x = 0; x < diff; x++) setBitOfReversedStream(&obp, out, 0);
+  }
+}
+
+static void Adam7_interlace(unsigned char* out, const unsigned char* in, unsigned w, unsigned h, unsigned bpp)
+{
+  /*Note: this function works on image buffers WITHOUT padding bits at end of scanlines with non-multiple-of-8
+  bit amounts, only between reduced images is padding*/
+  unsigned passw[7], passh[7];
+  size_t filter_passstart[8], padded_passstart[8], passstart[8];
+  unsigned i;
+
+  Adam7_getpassvalues(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);
+
+  if(bpp >= 8)
+  {
+    for(i = 0; i < 7; i++)
+    {
+      unsigned x, y, b;
+      size_t bytewidth = bpp / 8;
+      for(y = 0; y < passh[i]; y++)
+      for(x = 0; x < passw[i]; x++)
+      {
+        size_t pixelinstart = ((ADAM7_IY[i] + y * ADAM7_DY[i]) * w + ADAM7_IX[i] + x * ADAM7_DX[i]) * bytewidth;
+        size_t pixeloutstart = passstart[i] + (y * passw[i] + x) * bytewidth;
+        for(b = 0; b < bytewidth; b++)
+        {
+          out[pixeloutstart + b] = in[pixelinstart + b];
+        }
+      }
+    }
+  }
+  else /*bpp < 8: Adam7 with pixels < 8 bit is a bit trickier: with bit pointers*/
+  {
+    for(i = 0; i < 7; i++)
+    {
+      unsigned x, y, b;
+      unsigned ilinebits = bpp * passw[i];
+      unsigned olinebits = bpp * w;
+      size_t obp, ibp; /*bit pointers (for out and in buffer)*/
+      for(y = 0; y < passh[i]; y++)
+      for(x = 0; x < passw[i]; x++)
+      {
+        ibp = (ADAM7_IY[i] + y * ADAM7_DY[i]) * olinebits + (ADAM7_IX[i] + x * ADAM7_DX[i]) * bpp;
+        obp = (8 * passstart[i]) + (y * ilinebits + x * bpp);
+        for(b = 0; b < bpp; b++)
+        {
+          unsigned char bit = readBitFromReversedStream(&ibp, in);
+          setBitOfReversedStream(&obp, out, bit);
+        }
+      }
+    }
+  }
+}
+
+/*out must be buffer big enough to contain uncompressed IDAT chunk data, and in must contain the full image.
+return value is error**/
+static unsigned preProcessScanlines(unsigned char** out, size_t* outsize, const unsigned char* in,
+                                    unsigned w, unsigned h,
+                                    const LodePNGInfo* info_png, const LodePNGEncoderSettings* settings)
+{
+  /*
+  This function converts the pure 2D image with the PNG's colortype, into filtered-padded-interlaced data. Steps:
+  *) if no Adam7: 1) add padding bits (= posible extra bits per scanline if bpp < 8) 2) filter
+  *) if adam7: 1) Adam7_interlace 2) 7x add padding bits 3) 7x filter
+  */
+  unsigned bpp = lodepng_get_bpp(&info_png->color);
+  unsigned error = 0;
+
+  if(info_png->interlace_method == 0)
+  {
+    *outsize = h + (h * ((w * bpp + 7) / 8)); /*image size plus an extra byte per scanline + possible padding bits*/
+    *out = (unsigned char*)mymalloc(*outsize);
+    if(!(*out) && (*outsize)) error = 83; /*alloc fail*/
+
+    if(!error)
+    {
+      /*non multiple of 8 bits per scanline, padding bits needed per scanline*/
+      if(bpp < 8 && w * bpp != ((w * bpp + 7) / 8) * 8)
+      {
+        ucvector padded;
+        ucvector_init(&padded);
+        if(!ucvector_resize(&padded, h * ((w * bpp + 7) / 8))) error = 83; /*alloc fail*/
+        if(!error)
+        {
+          addPaddingBits(padded.data, in, ((w * bpp + 7) / 8) * 8, w * bpp, h);
+          error = filter(*out, padded.data, w, h, &info_png->color, settings);
+        }
+        ucvector_cleanup(&padded);
+      }
+      else
+      {
+        /*we can immediatly filter into the out buffer, no other steps needed*/
+        error = filter(*out, in, w, h, &info_png->color, settings);
+      }
+    }
+  }
+  else /*interlace_method is 1 (Adam7)*/
+  {
+    unsigned char* adam7 = (unsigned char*)mymalloc((h * w * bpp + 7) / 8);
+    if(!adam7 && ((h * w * bpp + 7) / 8)) error = 83; /*alloc fail*/
+
+    while(!error) /*not a real while loop, used to break out to cleanup to avoid a goto*/
+    {
+      unsigned passw[7], passh[7];
+      size_t filter_passstart[8], padded_passstart[8], passstart[8];
+      unsigned i;
+
+      Adam7_getpassvalues(passw, passh, filter_passstart, padded_passstart, passstart, w, h, bpp);
+
+      *outsize = filter_passstart[7]; /*image size plus an extra byte per scanline + possible padding bits*/
+      *out = (unsigned char*)mymalloc(*outsize);
+      if(!(*out) && (*outsize)) ERROR_BREAK(83 /*alloc fail*/);
+
+      Adam7_interlace(adam7, in, w, h, bpp);
+
+      for(i = 0; i < 7; i++)
+      {
+        if(bpp < 8)
+        {
+          ucvector padded;
+          ucvector_init(&padded);
+          if(!ucvector_resize(&padded, h * ((w * bpp + 7) / 8))) error = 83; /*alloc fail*/
+          if(!error)
+          {
+            addPaddingBits(&padded.data[padded_passstart[i]], &adam7[passstart[i]],
+                           ((passw[i] * bpp + 7) / 8) * 8, passw[i] * bpp, passh[i]);
+            error = filter(&(*out)[filter_passstart[i]], &padded.data[padded_passstart[i]],
+                           passw[i], passh[i], &info_png->color, settings);
+          }
+
+          ucvector_cleanup(&padded);
+        }
+        else
+        {
+          error = filter(&(*out)[filter_passstart[i]], &adam7[padded_passstart[i]],
+                         passw[i], passh[i], &info_png->color, settings);
+        }
+      }
+
+      break;
+    }
+
+    myfree(adam7);
+  }
+
+  return error;
+}
+
+/*
+palette must have 4 * palettesize bytes allocated, and given in format RGBARGBARGBARGBA...
+returns 0 if the palette is opaque,
+returns 1 if the palette has a single color with alpha 0 ==> color key
+returns 2 if the palette is semi-translucent.
+*/
+static unsigned getPaletteTranslucency(const unsigned char* palette, size_t palettesize)
+{
+  size_t i, key = 0;
+  unsigned r, g, b; /*the value of the color with alpha 0, so long as color keying is possible*/
+  for(i = 0; i < palettesize; i++)
+  {
+    if(!key && palette[4 * i + 3] == 0)
+    {
+      r = palette[4 * i + 0]; g = palette[4 * i + 1]; b = palette[4 * i + 2];
+      key = 1;
+      i = (size_t)(-1); /*restart from beginning, to detect earlier opaque colors with key's value*/
+    }
+    else if(palette[4 * i + 3] != 255) return 2;
+    /*when key, no opaque RGB may have key's RGB*/
+    else if(key && r == palette[i * 4 + 0] && g == palette[i * 4 + 1] && b == palette[i * 4 + 2]) return 2;
+  }
+  return key;
+}
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+static unsigned addUnknownChunks(ucvector* out, unsigned char* data, size_t datasize)
+{
+  unsigned char* inchunk = data;
+  while((size_t)(inchunk - data) < datasize)
+  {
+    CERROR_TRY_RETURN(lodepng_chunk_append(&out->data, &out->size, inchunk));
+    out->allocsize = out->size; /*fix the allocsize again*/
+    inchunk = lodepng_chunk_next(inchunk);
+  }
+  return 0;
+}
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+unsigned lodepng_encode(unsigned char** out, size_t* outsize,
+                        const unsigned char* image, unsigned w, unsigned h,
+                        LodePNGState* state)
+{
+  LodePNGInfo info;
+  ucvector outv;
+  unsigned char* data = 0; /*uncompressed version of the IDAT chunk data*/
+  size_t datasize = 0;
+
+  /*provide some proper output values if error will happen*/
+  *out = 0;
+  *outsize = 0;
+  state->error = 0;
+
+  lodepng_info_init(&info);
+  lodepng_info_copy(&info, &state->info_png);
+
+  if((info.color.colortype == LCT_PALETTE || state->encoder.force_palette)
+      && (info.color.palettesize == 0 || info.color.palettesize > 256))
+  {
+    state->error = 68; /*invalid palette size, it is only allowed to be 1-256*/
+    return state->error;
+  }
+
+  if(state->encoder.auto_convert != LAC_NO)
+  {
+    state->error = doAutoChooseColor(&info.color, image, w, h, &state->info_raw,
+                                     state->encoder.auto_convert);
+  }
+  if(state->error) return state->error;
+
+  if(state->encoder.zlibsettings.windowsize > 32768)
+  {
+    CERROR_RETURN_ERROR(state->error, 60); /*error: windowsize larger than allowed*/
+  }
+  if(state->encoder.zlibsettings.btype > 2)
+  {
+    CERROR_RETURN_ERROR(state->error, 61); /*error: unexisting btype*/
+  }
+  if(state->info_png.interlace_method > 1)
+  {
+    CERROR_RETURN_ERROR(state->error, 71); /*error: unexisting interlace mode*/
+  }
+  /*error: unexisting color type given*/
+  if((state->error = checkColorValidity(info.color.colortype, info.color.bitdepth))) return state->error;
+  /*error: unexisting color type given*/
+  if((state->error = checkColorValidity(state->info_raw.colortype, state->info_raw.bitdepth))) return state->error;
+
+  if(!lodepng_color_mode_equal(&state->info_raw, &info.color))
+  {
+    unsigned char* converted;
+    size_t size = (w * h * lodepng_get_bpp(&info.color) + 7) / 8;
+
+    converted = (unsigned char*)mymalloc(size);
+    if(!converted && size) state->error = 83; /*alloc fail*/
+    if(!state->error)
+    {
+      state->error = lodepng_convert(converted, image, &info.color, &state->info_raw, w, h);
+    }
+    if(!state->error) preProcessScanlines(&data, &datasize, converted, w, h, &info, &state->encoder);
+    myfree(converted);
+  }
+  else preProcessScanlines(&data, &datasize, image, w, h, &info, &state->encoder);
+
+  ucvector_init(&outv);
+  while(!state->error) /*while only executed once, to break on error*/
+  {
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+    size_t i;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    /*write signature and chunks*/
+    writeSignature(&outv);
+    /*IHDR*/
+    addChunk_IHDR(&outv, w, h, info.color.colortype, info.color.bitdepth, info.interlace_method);
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+    /*unknown chunks between IHDR and PLTE*/
+    if(info.unknown_chunks_data[0])
+    {
+      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[0], info.unknown_chunks_size[0]);
+      if(state->error) break;
+    }
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    /*PLTE*/
+    if(info.color.colortype == LCT_PALETTE)
+    {
+      addChunk_PLTE(&outv, &info.color);
+    }
+    if(state->encoder.force_palette && (info.color.colortype == LCT_RGB || info.color.colortype == LCT_RGBA))
+    {
+      addChunk_PLTE(&outv, &info.color);
+    }
+    /*tRNS*/
+    if(info.color.colortype == LCT_PALETTE && getPaletteTranslucency(info.color.palette, info.color.palettesize) != 0)
+    {
+      addChunk_tRNS(&outv, &info.color);
+    }
+    if((info.color.colortype == LCT_GREY || info.color.colortype == LCT_RGB) && info.color.key_defined)
+    {
+      addChunk_tRNS(&outv, &info.color);
+    }
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+    /*bKGD (must come between PLTE and the IDAt chunks*/
+    if(info.background_defined) addChunk_bKGD(&outv, &info);
+    /*pHYs (must come before the IDAT chunks)*/
+    if(info.phys_defined) addChunk_pHYs(&outv, &info);
+
+    /*unknown chunks between PLTE and IDAT*/
+    if(info.unknown_chunks_data[1])
+    {
+      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[1], info.unknown_chunks_size[1]);
+      if(state->error) break;
+    }
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    /*IDAT (multiple IDAT chunks must be consecutive)*/
+    state->error = addChunk_IDAT(&outv, data, datasize, &state->encoder.zlibsettings);
+    if(state->error) break;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+    /*tIME*/
+    if(info.time_defined) addChunk_tIME(&outv, &info.time);
+    /*tEXt and/or zTXt*/
+    for(i = 0; i < info.text_num; i++)
+    {
+      if(strlen(info.text_keys[i]) > 79)
+      {
+        state->error = 66; /*text chunk too large*/
+        break;
+      }
+      if(strlen(info.text_keys[i]) < 1)
+      {
+        state->error = 67; /*text chunk too small*/
+        break;
+      }
+      if(state->encoder.text_compression)
+        addChunk_zTXt(&outv, info.text_keys[i], info.text_strings[i], &state->encoder.zlibsettings);
+      else
+        addChunk_tEXt(&outv, info.text_keys[i], info.text_strings[i]);
+    }
+    /*LodePNG version id in text chunk*/
+    if(state->encoder.add_id)
+    {
+      unsigned alread_added_id_text = 0;
+      for(i = 0; i < info.text_num; i++)
+      {
+        if(!strcmp(info.text_keys[i], "LodePNG"))
+        {
+          alread_added_id_text = 1;
+          break;
+        }
+      }
+      if(alread_added_id_text == 0)
+        addChunk_tEXt(&outv, "LodePNG", VERSION_STRING); /*it's shorter as tEXt than as zTXt chunk*/
+    }
+    /*iTXt*/
+    for(i = 0; i < info.itext_num; i++)
+    {
+      if(strlen(info.itext_keys[i]) > 79)
+      {
+        state->error = 66; /*text chunk too large*/
+        break;
+      }
+      if(strlen(info.itext_keys[i]) < 1)
+      {
+        state->error = 67; /*text chunk too small*/
+        break;
+      }
+      addChunk_iTXt(&outv, state->encoder.text_compression,
+                    info.itext_keys[i], info.itext_langtags[i], info.itext_transkeys[i], info.itext_strings[i],
+                    &state->encoder.zlibsettings);
+    }
+
+    /*unknown chunks between IDAT and IEND*/
+    if(info.unknown_chunks_data[2])
+    {
+      state->error = addUnknownChunks(&outv, info.unknown_chunks_data[2], info.unknown_chunks_size[2]);
+      if(state->error) break;
+    }
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+    /*IEND*/
+    addChunk_IEND(&outv);
+
+    break; /*this isn't really a while loop; no error happened so break out now!*/
+  }
+
+  lodepng_info_cleanup(&info);
+  myfree(data);
+  /*instead of cleaning the vector up, give it to the output*/
+  *out = outv.data;
+  *outsize = outv.size;
+
+  return state->error;
+}
+
+unsigned lodepng_encode_memory(unsigned char** out, size_t* outsize, const unsigned char* image,
+                               unsigned w, unsigned h, LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned error;
+  LodePNGState state;
+  lodepng_state_init(&state);
+  state.info_raw.colortype = colortype;
+  state.info_raw.bitdepth = bitdepth;
+  state.info_png.color.colortype = colortype;
+  state.info_png.color.bitdepth = bitdepth;
+  lodepng_encode(out, outsize, image, w, h, &state);
+  error = state.error;
+  lodepng_state_cleanup(&state);
+  return error;
+}
+
+unsigned lodepng_encode32(unsigned char** out, size_t* outsize, const unsigned char* image, unsigned w, unsigned h)
+{
+  return lodepng_encode_memory(out, outsize, image, w, h, LCT_RGBA, 8);
+}
+
+unsigned lodepng_encode24(unsigned char** out, size_t* outsize, const unsigned char* image, unsigned w, unsigned h)
+{
+  return lodepng_encode_memory(out, outsize, image, w, h, LCT_RGB, 8);
+}
+
+#ifdef LODEPNG_COMPILE_DISK
+unsigned lodepng_encode_file(const char* filename, const unsigned char* image, unsigned w, unsigned h,
+                             LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned char* buffer;
+  size_t buffersize;
+  unsigned error = lodepng_encode_memory(&buffer, &buffersize, image, w, h, colortype, bitdepth);
+  if(!error) error = lodepng_save_file(buffer, buffersize, filename);
+  myfree(buffer);
+  return error;
+}
+
+unsigned lodepng_encode32_file(const char* filename, const unsigned char* image, unsigned w, unsigned h)
+{
+  return lodepng_encode_file(filename, image, w, h, LCT_RGBA, 8);
+}
+
+unsigned lodepng_encode24_file(const char* filename, const unsigned char* image, unsigned w, unsigned h)
+{
+  return lodepng_encode_file(filename, image, w, h, LCT_RGB, 8);
+}
+#endif /*LODEPNG_COMPILE_DISK*/
+
+void lodepng_encoder_settings_init(LodePNGEncoderSettings* settings)
+{
+  lodepng_compress_settings_init(&settings->zlibsettings);
+  settings->filter_strategy = LFS_HEURISTIC;
+  settings->auto_convert = LAC_AUTO;
+  settings->force_palette = 0;
+  settings->predefined_filters = 0;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  settings->add_id = 0;
+  settings->text_compression = 1;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+}
+
+#endif /*LODEPNG_COMPILE_ENCODER*/
+#endif /*LODEPNG_COMPILE_PNG*/
+
+#ifdef LODEPNG_COMPILE_ERROR_TEXT
+/*
+This returns the description of a numerical error code in English. This is also
+the documentation of all the error codes.
+*/
+const char* lodepng_error_text(unsigned code)
+{
+  switch(code)
+  {
+    case 0: return "no error, everything went ok";
+    case 1: return "nothing done yet"; /*the Encoder/Decoder has done nothing yet, error checking makes no sense yet*/
+    case 10: return "end of input memory reached without huffman end code"; /*while huffman decoding*/
+    case 11: return "error in code tree made it jump outside of huffman tree"; /*while huffman decoding*/
+    case 13: return "problem while processing dynamic deflate block";
+    case 14: return "problem while processing dynamic deflate block";
+    case 15: return "problem while processing dynamic deflate block";
+    case 16: return "unexisting code while processing dynamic deflate block";
+    case 17: return "end of out buffer memory reached while inflating";
+    case 18: return "invalid distance code while inflating";
+    case 19: return "end of out buffer memory reached while inflating";
+    case 20: return "invalid deflate block BTYPE encountered while decoding";
+    case 21: return "NLEN is not ones complement of LEN in a deflate block";
+
+     /*end of out buffer memory reached while inflating:
+     This can happen if the inflated deflate data is longer than the amount of bytes required to fill up
+     all the pixels of the image, given the color depth and image dimensions. Something that doesn't
+     happen in a normal, well encoded, PNG image.*/
+    case 22: return "end of out buffer memory reached while inflating";
+
+    case 23: return "end of in buffer memory reached while inflating";
+    case 24: return "invalid FCHECK in zlib header";
+    case 25: return "invalid compression method in zlib header";
+    case 26: return "FDICT encountered in zlib header while it's not used for PNG";
+    case 27: return "PNG file is smaller than a PNG header";
+    /*Checks the magic file header, the first 8 bytes of the PNG file*/
+    case 28: return "incorrect PNG signature, it's no PNG or corrupted";
+    case 29: return "first chunk is not the header chunk";
+    case 30: return "chunk length too large, chunk broken off at end of file";
+    case 31: return "illegal PNG color type or bpp";
+    case 32: return "illegal PNG compression method";
+    case 33: return "illegal PNG filter method";
+    case 34: return "illegal PNG interlace method";
+    case 35: return "chunk length of a chunk is too large or the chunk too small";
+    case 36: return "illegal PNG filter type encountered";
+    case 37: return "illegal bit depth for this color type given";
+    case 38: return "the palette is too big"; /*more than 256 colors*/
+    case 39: return "more palette alpha values given in tRNS chunk than there are colors in the palette";
+    case 40: return "tRNS chunk has wrong size for greyscale image";
+    case 41: return "tRNS chunk has wrong size for RGB image";
+    case 42: return "tRNS chunk appeared while it was not allowed for this color type";
+    case 43: return "bKGD chunk has wrong size for palette image";
+    case 44: return "bKGD chunk has wrong size for greyscale image";
+    case 45: return "bKGD chunk has wrong size for RGB image";
+    /*Is the palette too small?*/
+    case 46: return "a value in indexed image is larger than the palette size (bitdepth = 8)";
+    /*Is the palette too small?*/
+    case 47: return "a value in indexed image is larger than the palette size (bitdepth < 8)";
+    /*the input data is empty, maybe a PNG file doesn't exist or is in the wrong path*/
+    case 48: return "empty input or file doesn't exist";
+    case 49: return "jumped past memory while generating dynamic huffman tree";
+    case 50: return "jumped past memory while generating dynamic huffman tree";
+    case 51: return "jumped past memory while inflating huffman block";
+    case 52: return "jumped past memory while inflating";
+    case 53: return "size of zlib data too small";
+    case 54: return "repeat symbol in tree while there was no value symbol yet";
+
+    /*jumped past tree while generating huffman tree, this could be when the
+    tree will have more leaves than symbols after generating it out of the
+    given lenghts. They call this an oversubscribed dynamic bit lengths tree in zlib.*/
+    case 55: return "jumped past tree while generating huffman tree";
+
+    case 56: return "given output image colortype or bitdepth not supported for color conversion";
+    case 57: return "invalid CRC encountered (checking CRC can be disabled)";
+    case 58: return "invalid ADLER32 encountered (checking ADLER32 can be disabled)";
+    case 59: return "requested color conversion not supported";
+    case 60: return "invalid window size given in the settings of the encoder (must be 0-32768)";
+    case 61: return "invalid BTYPE given in the settings of the encoder (only 0, 1 and 2 are allowed)";
+    /*LodePNG leaves the choice of RGB to greyscale conversion formula to the user.*/
+    case 62: return "conversion from color to greyscale not supported";
+    case 63: return "length of a chunk too long, max allowed for PNG is 2147483647 bytes per chunk"; /*(2^31-1)*/
+    /*this would result in the inability of a deflated block to ever contain an end code. It must be at least 1.*/
+    case 64: return "the length of the END symbol 256 in the Huffman tree is 0";
+    case 66: return "the length of a text chunk keyword given to the encoder is longer than the maximum of 79 bytes";
+    case 67: return "the length of a text chunk keyword given to the encoder is smaller than the minimum of 1 byte";
+    case 68: return "tried to encode a PLTE chunk with a palette that has less than 1 or more than 256 colors";
+    case 69: return "unknown chunk type with 'critical' flag encountered by the decoder";
+    case 71: return "unexisting interlace mode given to encoder (must be 0 or 1)";
+    case 72: return "while decoding, unexisting compression method encountering in zTXt or iTXt chunk (it must be 0)";
+    case 73: return "invalid tIME chunk size";
+    case 74: return "invalid pHYs chunk size";
+    /*length could be wrong, or data chopped off*/
+    case 75: return "no null termination char found while decoding text chunk";
+    case 76: return "iTXt chunk too short to contain required bytes";
+    case 77: return "integer overflow in buffer size";
+    case 78: return "failed to open file for reading"; /*file doesn't exist or couldn't be opened for reading*/
+    case 79: return "failed to open file for writing";
+    case 80: return "tried creating a tree of 0 symbols";
+    case 81: return "lazy matching at pos 0 is impossible";
+    case 82: return "color conversion to palette requested while a color isn't in palette";
+    case 83: return "memory allocation failed";
+    case 84: return "given image too small to contain all pixels to be encoded";
+    case 85: return "internal color conversion bug";
+    case 86: return "impossible offset in lz77 encoding (internal bug)";
+  }
+  return "unknown error code";
+}
+#endif /*LODEPNG_COMPILE_ERROR_TEXT*/
+
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* // C++ Wrapper                                                          // */
+/* ////////////////////////////////////////////////////////////////////////// */
+/* ////////////////////////////////////////////////////////////////////////// */
+
+
+#ifdef LODEPNG_COMPILE_CPP
+namespace lodepng
+{
+
+#ifdef LODEPNG_COMPILE_DISK
+void load_file(std::vector<unsigned char>& buffer, const std::string& filename)
+{
+  std::ifstream file(filename.c_str(), std::ios::in|std::ios::binary|std::ios::ate);
+
+  /*get filesize*/
+  std::streamsize size = 0;
+  if(file.seekg(0, std::ios::end).good()) size = file.tellg();
+  if(file.seekg(0, std::ios::beg).good()) size -= file.tellg();
+
+  /*read contents of the file into the vector*/
+  buffer.resize(size_t(size));
+  if(size > 0) file.read((char*)(&buffer[0]), size);
+}
+
+/*write given buffer to the file, overwriting the file, it doesn't append to it.*/
+void save_file(const std::vector<unsigned char>& buffer, const std::string& filename)
+{
+  std::ofstream file(filename.c_str(), std::ios::out|std::ios::binary);
+  file.write(buffer.empty() ? 0 : (char*)&buffer[0], std::streamsize(buffer.size()));
+}
+#endif //LODEPNG_COMPILE_DISK
+
+#ifdef LODEPNG_COMPILE_ZLIB
+#ifdef LODEPNG_COMPILE_DECODER
+unsigned decompress(std::vector<unsigned char>& out, const unsigned char* in, size_t insize,
+                    const LodePNGDecompressSettings& settings)
+{
+  unsigned char* buffer = 0;
+  size_t buffersize = 0;
+  unsigned error = lodepng_zlib_decompress(&buffer, &buffersize, in, insize, &settings);
+  if(buffer)
+  {
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned decompress(std::vector<unsigned char>& out, const std::vector<unsigned char>& in,
+                    const LodePNGDecompressSettings& settings)
+{
+  return decompress(out, in.empty() ? 0 : &in[0], in.size(), settings);
+}
+#endif //LODEPNG_COMPILE_DECODER
+
+#ifdef LODEPNG_COMPILE_ENCODER
+unsigned compress(std::vector<unsigned char>& out, const unsigned char* in, size_t insize,
+                  const LodePNGCompressSettings& settings)
+{
+  unsigned char* buffer = 0;
+  size_t buffersize = 0;
+  unsigned error = lodepng_zlib_compress(&buffer, &buffersize, in, insize, &settings);
+  if(buffer)
+  {
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned compress(std::vector<unsigned char>& out, const std::vector<unsigned char>& in,
+                  const LodePNGCompressSettings& settings)
+{
+  return compress(out, in.empty() ? 0 : &in[0], in.size(), settings);
+}
+#endif //LODEPNG_COMPILE_ENCODER
+#endif //LODEPNG_COMPILE_ZLIB
+
+
+#ifdef LODEPNG_COMPILE_PNG
+
+State::State()
+{
+  lodepng_state_init(this);
+}
+
+State::State(const State& other)
+{
+  lodepng_state_init(this);
+  lodepng_state_copy(this, &other);
+}
+
+State::~State()
+{
+  lodepng_state_cleanup(this);
+}
+
+State& State::operator=(const State& other)
+{
+  lodepng_state_copy(this, &other);
+  return *this;
+}
+
+#ifdef LODEPNG_COMPILE_DECODER
+
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h, const unsigned char* in,
+                size_t insize, LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned char* buffer;
+  unsigned error = lodepng_decode_memory(&buffer, &w, &h, in, insize, colortype, bitdepth);
+  if(buffer && !error)
+  {
+    State state;
+    state.info_raw.colortype = colortype;
+    state.info_raw.bitdepth = bitdepth;
+    size_t buffersize = lodepng_get_raw_size(w, h, &state.info_raw);
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                const std::vector<unsigned char>& in, LodePNGColorType colortype, unsigned bitdepth)
+{
+  return decode(out, w, h, in.empty() ? 0 : &in[0], (unsigned)in.size(), colortype, bitdepth);
+}
+
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                State& state,
+                const unsigned char* in, size_t insize)
+{
+  unsigned char* buffer;
+  unsigned error = lodepng_decode(&buffer, &w, &h, &state, in, insize);
+  if(buffer && !error)
+  {
+    size_t buffersize = lodepng_get_raw_size(w, h, &state.info_raw);
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                State& state,
+                const std::vector<unsigned char>& in)
+{
+  return decode(out, w, h, state, in.empty() ? 0 : &in[0], in.size());
+}
+
+#ifdef LODEPNG_COMPILE_DISK
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h, const std::string& filename,
+                LodePNGColorType colortype, unsigned bitdepth)
+{
+  std::vector<unsigned char> buffer;
+  load_file(buffer, filename);
+  return decode(out, w, h, buffer, colortype, bitdepth);
+}
+#endif //LODEPNG_COMPILE_DECODER
+#endif //LODEPNG_COMPILE_DISK
+
+#ifdef LODEPNG_COMPILE_ENCODER
+unsigned encode(std::vector<unsigned char>& out, const unsigned char* in, unsigned w, unsigned h,
+                LodePNGColorType colortype, unsigned bitdepth)
+{
+  unsigned char* buffer;
+  size_t buffersize;
+  unsigned error = lodepng_encode_memory(&buffer, &buffersize, in, w, h, colortype, bitdepth);
+  if(buffer)
+  {
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned encode(std::vector<unsigned char>& out,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                LodePNGColorType colortype, unsigned bitdepth)
+{
+  if(lodepng_get_raw_size_lct(w, h, colortype, bitdepth) > in.size()) return 84;
+  return encode(out, in.empty() ? 0 : &in[0], w, h, colortype, bitdepth);
+}
+
+unsigned encode(std::vector<unsigned char>& out,
+                const unsigned char* in, unsigned w, unsigned h,
+                State& state)
+{
+  unsigned char* buffer;
+  size_t buffersize;
+  unsigned error = lodepng_encode(&buffer, &buffersize, in, w, h, &state);
+  if(buffer)
+  {
+    out.insert(out.end(), &buffer[0], &buffer[buffersize]);
+    myfree(buffer);
+  }
+  return error;
+}
+
+unsigned encode(std::vector<unsigned char>& out,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                State& state)
+{
+  if(lodepng_get_raw_size(w, h, &state.info_raw) > in.size()) return 84;
+  return encode(out, in.empty() ? 0 : &in[0], w, h, state);
+}
+
+#ifdef LODEPNG_COMPILE_DISK
+unsigned encode(const std::string& filename,
+                const unsigned char* in, unsigned w, unsigned h,
+                LodePNGColorType colortype, unsigned bitdepth)
+{
+  std::vector<unsigned char> buffer;
+  unsigned error = encode(buffer, in, w, h, colortype, bitdepth);
+  if(!error) save_file(buffer, filename);
+  return error;
+}
+
+unsigned encode(const std::string& filename,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                LodePNGColorType colortype, unsigned bitdepth)
+{
+  if(lodepng_get_raw_size_lct(w, h, colortype, bitdepth) > in.size()) return 84;
+  return encode(filename, in.empty() ? 0 : &in[0], w, h, colortype, bitdepth);
+}
+#endif //LODEPNG_COMPILE_DISK
+#endif //LODEPNG_COMPILE_ENCODER
+#endif //LODEPNG_COMPILE_PNG
+} //namespace lodepng
+#endif /*LODEPNG_COMPILE_CPP*/
diff --git a/lib/lodepng.h b/lib/lodepng.h
new file mode 100644
index 0000000..50d5303
--- /dev/null
+++ b/lib/lodepng.h
@@ -0,0 +1,1640 @@
+/*
+LodePNG version 20120729
+
+Copyright (c) 2005-2012 Lode Vandevenne
+
+This software is provided 'as-is', without any express or implied
+warranty. In no event will the authors be held liable for any damages
+arising from the use of this software.
+
+Permission is granted to anyone to use this software for any purpose,
+including commercial applications, and to alter it and redistribute it
+freely, subject to the following restrictions:
+
+    1. The origin of this software must not be misrepresented; you must not
+    claim that you wrote the original software. If you use this software
+    in a product, an acknowledgment in the product documentation would be
+    appreciated but is not required.
+
+    2. Altered source versions must be plainly marked as such, and must not be
+    misrepresented as being the original software.
+
+    3. This notice may not be removed or altered from any source
+    distribution.
+*/
+
+#ifndef LODEPNG_H
+#define LODEPNG_H
+
+#define LODEPNG_NO_COMPILE_ENCODER
+#define LODEPNG_NO_COMPILE_ANCILLARY_CHUNKS
+#define LODEPNG_NO_COMPILE_CPP
+#define LODEPNG_NO_COMPILE_DISK
+#define LODEPNG_NO_COMPILE_ZLIB
+#define LODEPNG_NO_COMPILE_CPP
+
+#include <string.h> /*for size_t*/
+
+#ifdef __cplusplus
+#include <vector>
+#include <string>
+#endif /*__cplusplus*/
+
+/*
+The following #defines are used to create code sections. They can be disabled
+to disable code sections, which can give faster compile time and smaller binary.
+The "NO_COMPILE" defines are designed to be used to pass as defines to the
+compiler command to disable them without modifying this header, e.g.
+-DLODEPNG_NO_COMPILE_ZLIB for gcc.
+*/
+/*deflate&zlib. If disabled, you need to define two zlib functions, see documtation of LODEPNG_CUSTOM_ZLIB_... below*/
+#ifndef LODEPNG_NO_COMPILE_ZLIB
+#define LODEPNG_COMPILE_ZLIB
+#endif
+/*png encoder and png decoder*/
+#ifndef LODEPNG_NO_COMPILE_PNG
+#define LODEPNG_COMPILE_PNG
+#endif
+/*deflate&zlib decoder and png decoder*/
+#ifndef LODEPNG_NO_COMPILE_DECODER
+#define LODEPNG_COMPILE_DECODER
+#endif
+/*deflate&zlib encoder and png encoder*/
+#ifndef LODEPNG_NO_COMPILE_ENCODER
+#define LODEPNG_COMPILE_ENCODER
+#endif
+/*the optional built in harddisk file loading and saving functions*/
+#ifndef LODEPNG_NO_COMPILE_DISK
+#define LODEPNG_COMPILE_DISK
+#endif
+/*support for chunks other than IHDR, IDAT, PLTE, tRNS, IEND: ancillary and unknown chunks*/
+#ifndef LODEPNG_NO_COMPILE_ANCILLARY_CHUNKS
+#define LODEPNG_COMPILE_ANCILLARY_CHUNKS
+#endif
+/*ability to convert error numerical codes to English text string*/
+#ifndef LODEPNG_NO_COMPILE_ERROR_TEXT
+#define LODEPNG_COMPILE_ERROR_TEXT
+#endif
+/*compile the C++ version (you can disable the C++ wrapper here even when compiling for C++)*/
+#ifdef __cplusplus
+#ifndef LODEPNG_NO_COMPILE_CPP
+#define LODEPNG_COMPILE_CPP
+#endif
+#endif
+
+/*
+custom zlib decoder (if LODEPNG_COMPILE_ZLIB is disabled, this is ignored, always treated as "1"):
+0: not custom, use LodePNG's zlib decoder
+1: allow using custom zlib decoder with a setting
+--> you must then provide following function in your source files that LodePNG will link to:
+  unsigned lodepng_custom_inflate(unsigned char**, size_t*, const unsigned char*, size_t,
+                                  const LodePNGDecompressSettings*)
+2: allow using custom deflate decoder with a setting
+--> you must then provide following function in your source files that LodePNG will link to:
+  unsigned lodepng_custom_zlib_decompress(unsigned char**, size_t*, const unsigned char*, size_t,
+                                          const LodePNGDecompressSettings*)
+*/
+#ifndef LODEPNG_OVERRIDE_CUSTOM_ZLIB_DECODER
+#define LODEPNG_CUSTOM_ZLIB_DECODER 0
+#else
+#define LODEPNG_CUSTOM_ZLIB_DECODER LODEPNG_OVERRIDE_CUSTOM_ZLIB_DECODER
+#endif
+
+/*
+custom zlib encoder (if LODEPNG_COMPILE_ZLIB is disabled, this is ignored, always treated as "1"):
+0: not custom, use LodePNG's zlib encoder
+1: allow using custom zlib encoder with a setting
+--> you must then provide following function in your source files that LodePNG will link to:
+  unsigned lodepng_custom_deflate(unsigned char**, size_t*, const unsigned char*, size_t,
+                                  const LodePNGCompressSettings*)
+2: allow using custom deflate encoder with a setting
+--> you must then provide following function in your source files that LodePNG will link to:
+  unsigned lodepng_custom_zlib_compress(unsigned char**, size_t*, const unsigned char*, size_t,
+                                        const LodePNGCompressSettings*)
+*/
+#ifndef LODEPNG_OVERRIDE_CUSTOM_ZLIB_ENCODER
+#define LODEPNG_CUSTOM_ZLIB_ENCODER 0
+#else
+#define LODEPNG_CUSTOM_ZLIB_ENCODER LODEPNG_OVERRIDE_CUSTOM_ZLIB_ENCODER
+#endif
+
+#ifdef LODEPNG_COMPILE_PNG
+/*The PNG color types (also used for raw).*/
+typedef enum LodePNGColorType
+{
+  LCT_GREY = 0, /*greyscale: 1,2,4,8,16 bit*/
+  LCT_RGB = 2, /*RGB: 8,16 bit*/
+  LCT_PALETTE = 3, /*palette: 1,2,4,8 bit*/
+  LCT_GREY_ALPHA = 4, /*greyscale with alpha: 8,16 bit*/
+  LCT_RGBA = 6 /*RGB with alpha: 8,16 bit*/
+} LodePNGColorType;
+
+#ifdef LODEPNG_COMPILE_DECODER
+/*
+Converts PNG data in memory to raw pixel data.
+out: Output parameter. Pointer to buffer that will contain the raw pixel data.
+     After decoding, its size is w * h * (bytes per pixel) bytes larger than
+     initially. Bytes per pixel depends on colortype and bitdepth.
+     Must be freed after usage with free(*out).
+w: Output parameter. Pointer to width of pixel data.
+h: Output parameter. Pointer to height of pixel data.
+in: Memory buffer with the PNG file.
+insize: size of the in buffer.
+colortype: the desired color type for the raw output image. See explanation on PNG color types.
+bitdepth: the desired bit depth for the raw output image. See explanation on PNG color types.
+Return value: LodePNG error code (0 means no error).
+*/
+unsigned lodepng_decode_memory(unsigned char** out, unsigned* w, unsigned* h,
+                               const unsigned char* in, size_t insize,
+                               LodePNGColorType colortype, unsigned bitdepth);
+
+/*Same as lodepng_decode_memory, but always decodes to 32-bit RGBA raw image*/
+unsigned lodepng_decode32(unsigned char** out, unsigned* w, unsigned* h,
+                          const unsigned char* in, size_t insize);
+
+/*Same as lodepng_decode_memory, but always decodes to 24-bit RGB raw image*/
+unsigned lodepng_decode24(unsigned char** out, unsigned* w, unsigned* h,
+                          const unsigned char* in, size_t insize);
+
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Load PNG from disk, from file with given name.
+Same as the other decode functions, but instead takes a filename as input.
+*/
+unsigned lodepng_decode_file(unsigned char** out, unsigned* w, unsigned* h,
+                             const char* filename,
+                             LodePNGColorType colortype, unsigned bitdepth);
+
+/*Same as lodepng_decode_file, but always decodes to 32-bit RGBA raw image.*/
+unsigned lodepng_decode32_file(unsigned char** out, unsigned* w, unsigned* h,
+                               const char* filename);
+
+/*Same as lodepng_decode_file, but always decodes to 24-bit RGB raw image.*/
+unsigned lodepng_decode24_file(unsigned char** out, unsigned* w, unsigned* h,
+                               const char* filename);
+#endif /*LODEPNG_COMPILE_DISK*/
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*
+Converts raw pixel data into a PNG image in memory. The colortype and bitdepth
+  of the output PNG image cannot be chosen, they are automatically determined
+  by the colortype, bitdepth and content of the input pixel data.
+out: Output parameter. Pointer to buffer that will contain the raw pixel data.
+     Must be freed after usage with free(*out).
+outsize: Output parameter. Pointer to the size in bytes of the out buffer.
+image: The raw pixel data to encode. The size of this buffer should be
+       w * h * (bytes per pixel), bytes per pixel depends on colortype and bitdepth.
+w: width of the raw pixel data in pixels.
+h: height of the raw pixel data in pixels.
+colortype: the color type of the raw input image. See explanation on PNG color types.
+bitdepth: the bit depth of the raw input image. See explanation on PNG color types.
+Return value: LodePNG error code (0 means no error).
+*/
+unsigned lodepng_encode_memory(unsigned char** out, size_t* outsize,
+                               const unsigned char* image, unsigned w, unsigned h,
+                               LodePNGColorType colortype, unsigned bitdepth);
+
+/*Same as lodepng_encode_memory, but always encodes from 32-bit RGBA raw image.*/
+unsigned lodepng_encode32(unsigned char** out, size_t* outsize,
+                          const unsigned char* image, unsigned w, unsigned h);
+
+/*Same as lodepng_encode_memory, but always encodes from 24-bit RGB raw image.*/
+unsigned lodepng_encode24(unsigned char** out, size_t* outsize,
+                          const unsigned char* image, unsigned w, unsigned h);
+
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Converts raw pixel data into a PNG file on disk.
+Same as the other encode functions, but instead takes a filename as output.
+NOTE: This overwrites existing files without warning!
+*/
+unsigned lodepng_encode_file(const char* filename,
+                             const unsigned char* image, unsigned w, unsigned h,
+                             LodePNGColorType colortype, unsigned bitdepth);
+
+/*Same as lodepng_encode_file, but always encodes from 32-bit RGBA raw image.*/
+unsigned lodepng_encode32_file(const char* filename,
+                               const unsigned char* image, unsigned w, unsigned h);
+
+/*Same as lodepng_encode_file, but always encodes from 24-bit RGB raw image.*/
+unsigned lodepng_encode24_file(const char* filename,
+                               const unsigned char* image, unsigned w, unsigned h);
+#endif /*LODEPNG_COMPILE_DISK*/
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+
+#ifdef LODEPNG_COMPILE_CPP
+namespace lodepng
+{
+#ifdef LODEPNG_COMPILE_DECODER
+/*Same as lodepng_decode_memory, but decodes to an std::vector.*/
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                const unsigned char* in, size_t insize,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                const std::vector<unsigned char>& in,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Converts PNG file from disk to raw pixel data in memory.
+Same as the other decode functions, but instead takes a filename as input.
+*/
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                const std::string& filename,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+#endif //LODEPNG_COMPILE_DISK
+#endif //LODEPNG_COMPILE_DECODER
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*Same as lodepng_encode_memory, but encodes to an std::vector.*/
+unsigned encode(std::vector<unsigned char>& out,
+                const unsigned char* in, unsigned w, unsigned h,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+unsigned encode(std::vector<unsigned char>& out,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Converts 32-bit RGBA raw pixel data into a PNG file on disk.
+Same as the other encode functions, but instead takes a filename as output.
+NOTE: This overwrites existing files without warning!
+*/
+unsigned encode(const std::string& filename,
+                const unsigned char* in, unsigned w, unsigned h,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+unsigned encode(const std::string& filename,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                LodePNGColorType colortype = LCT_RGBA, unsigned bitdepth = 8);
+#endif //LODEPNG_COMPILE_DISK
+#endif //LODEPNG_COMPILE_ENCODER
+} //namespace lodepng
+#endif /*LODEPNG_COMPILE_CPP*/
+#endif /*LODEPNG_COMPILE_PNG*/
+
+#ifdef LODEPNG_COMPILE_ERROR_TEXT
+/*Returns an English description of the numerical error code.*/
+const char* lodepng_error_text(unsigned code);
+#endif /*LODEPNG_COMPILE_ERROR_TEXT*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+/*Settings for zlib decompression*/
+typedef struct LodePNGDecompressSettings
+{
+  unsigned ignore_adler32; /*if 1, continue and don't give an error message if the Adler32 checksum is corrupted*/
+  unsigned custom_decoder; /*use custom decoder if LODEPNG_CUSTOM_ZLIB_DECODER and LODEPNG_COMPILE_ZLIB are enabled*/
+} LodePNGDecompressSettings;
+
+extern const LodePNGDecompressSettings lodepng_default_decompress_settings;
+void lodepng_decompress_settings_init(LodePNGDecompressSettings* settings);
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+/*
+Settings for zlib compression. Tweaking these settings tweaks the balance
+between speed and compression ratio.
+*/
+typedef struct LodePNGCompressSettings /*deflate = compress*/
+{
+  /*LZ77 related settings*/
+  unsigned btype; /*the block type for LZ (0, 1, 2 or 3, see zlib standard). Should be 2 for proper compression.*/
+  unsigned use_lz77; /*whether or not to use LZ77. Should be 1 for proper compression.*/
+  unsigned windowsize; /*the maximum is 32768, higher gives more compression but is slower. Typical value: 2048.*/
+  unsigned custom_encoder; /*use custom encoder if LODEPNG_CUSTOM_ZLIB_DECODER and LODEPNG_COMPILE_ZLIB are enabled*/
+} LodePNGCompressSettings;
+
+#ifdef LODEPNG_COMPILE_ENCODER
+extern const LodePNGCompressSettings lodepng_default_compress_settings;
+void lodepng_compress_settings_init(LodePNGCompressSettings* settings);
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+#ifdef LODEPNG_COMPILE_PNG
+/*
+Color mode of an image. Contains all information required to decode the pixel
+bits to RGBA colors. This information is the same as used in the PNG file
+format, and is used both for PNG and raw image data in LodePNG.
+*/
+typedef struct LodePNGColorMode
+{
+  /*header (IHDR)*/
+  LodePNGColorType colortype; /*color type, see PNG standard or documentation further in this header file*/
+  unsigned bitdepth;  /*bits per sample, see PNG standard or documentation further in this header file*/
+
+  /*
+  palette (PLTE and tRNS)
+
+  Dynamically allocated with the colors of the palette, including alpha.
+  When encoding a PNG, to store your colors in the palette of the LodePNGColorMode, first use
+  lodepng_palette_clear, then for each color use lodepng_palette_add.
+  If you encode an image without alpha with palette, don't forget to put value 255 in each A byte of the palette.
+
+  When decoding, by default you can ignore this palette, since LodePNG already
+  fills the palette colors in the pixels of the raw RGBA output.
+
+  The palette is only supported for color type 3.
+  */
+  unsigned char* palette; /*palette in RGBARGBA... order*/
+  size_t palettesize; /*palette size in number of colors (amount of bytes is 4 * palettesize)*/
+
+  /*
+  transparent color key (tRNS)
+
+  This color uses the same bit depth as the bitdepth value in this struct, which can be 1-bit to 16-bit.
+  For greyscale PNGs, r, g and b will all 3 be set to the same.
+
+  When decoding, by default you can ignore this information, since LodePNG sets
+  pixels with this key to transparent already in the raw RGBA output.
+
+  The color key is only supported for color types 0 and 2.
+  */
+  unsigned key_defined; /*is a transparent color key given? 0 = false, 1 = true*/
+  unsigned key_r;       /*red/greyscale component of color key*/
+  unsigned key_g;       /*green component of color key*/
+  unsigned key_b;       /*blue component of color key*/
+} LodePNGColorMode;
+
+/*init, cleanup and copy functions to use with this struct*/
+void lodepng_color_mode_init(LodePNGColorMode* info);
+void lodepng_color_mode_cleanup(LodePNGColorMode* info);
+/*return value is error code (0 means no error)*/
+unsigned lodepng_color_mode_copy(LodePNGColorMode* dest, const LodePNGColorMode* source);
+
+void lodepng_palette_clear(LodePNGColorMode* info);
+/*add 1 color to the palette*/
+unsigned lodepng_palette_add(LodePNGColorMode* info,
+                             unsigned char r, unsigned char g, unsigned char b, unsigned char a);
+
+/*get the total amount of bits per pixel, based on colortype and bitdepth in the struct*/
+unsigned lodepng_get_bpp(const LodePNGColorMode* info);
+/*get the amount of color channels used, based on colortype in the struct.
+If a palette is used, it counts as 1 channel.*/
+unsigned lodepng_get_channels(const LodePNGColorMode* info);
+/*is it a greyscale type? (only colortype 0 or 4)*/
+unsigned lodepng_is_greyscale_type(const LodePNGColorMode* info);
+/*has it got an alpha channel? (only colortype 2 or 6)*/
+unsigned lodepng_is_alpha_type(const LodePNGColorMode* info);
+/*has it got a palette? (only colortype 3)*/
+unsigned lodepng_is_palette_type(const LodePNGColorMode* info);
+/*only returns true if there is a palette and there is a value in the palette with alpha < 255.
+Loops through the palette to check this.*/
+unsigned lodepng_has_palette_alpha(const LodePNGColorMode* info);
+/*
+Check if the given color info indicates the possibility of having non-opaque pixels in the PNG image.
+Returns true if the image can have translucent or invisible pixels (it still be opaque if it doesn't use such pixels).
+Returns false if the image can only have opaque pixels.
+In detail, it returns true only if it's a color type with alpha, or has a palette with non-opaque values,
+or if "key_defined" is true.
+*/
+unsigned lodepng_can_have_alpha(const LodePNGColorMode* info);
+/*Returns the byte size of a raw image buffer with given width, height and color mode*/
+size_t lodepng_get_raw_size(unsigned w, unsigned h, const LodePNGColorMode* color);
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+/*The information of a Time chunk in PNG.*/
+typedef struct LodePNGTime
+{
+  unsigned year;    /*2 bytes used (0-65535)*/
+  unsigned month;   /*1-12*/
+  unsigned day;     /*1-31*/
+  unsigned hour;    /*0-23*/
+  unsigned minute;  /*0-59*/
+  unsigned second;  /*0-60 (to allow for leap seconds)*/
+} LodePNGTime;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+/*Information about the PNG image, except pixels, width and height.*/
+typedef struct LodePNGInfo
+{
+  /*header (IHDR), palette (PLTE) and transparency (tRNS) chunks*/
+  unsigned compression_method;/*compression method of the original file. Always 0.*/
+  unsigned filter_method;     /*filter method of the original file*/
+  unsigned interlace_method;  /*interlace method of the original file*/
+  LodePNGColorMode color;     /*color type and bits, palette and transparency of the PNG file*/
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  /*
+  suggested background color chunk (bKGD)
+  This color uses the same color mode as the PNG (except alpha channel), which can be 1-bit to 16-bit.
+
+  For greyscale PNGs, r, g and b will all 3 be set to the same. When encoding
+  the encoder writes the red one. For palette PNGs: When decoding, the RGB value
+  will be stored, not a palette index. But when encoding, specify the index of
+  the palette in background_r, the other two are then ignored.
+
+  The decoder does not use this background color to edit the color of pixels.
+  */
+  unsigned background_defined; /*is a suggested background color given?*/
+  unsigned background_r;       /*red component of suggested background color*/
+  unsigned background_g;       /*green component of suggested background color*/
+  unsigned background_b;       /*blue component of suggested background color*/
+
+  /*
+  non-international text chunks (tEXt and zTXt)
+
+  The char** arrays each contain num strings. The actual messages are in
+  text_strings, while text_keys are keywords that give a short description what
+  the actual text represents, e.g. Title, Author, Description, or anything else.
+
+  A keyword is minimum 1 character and maximum 79 characters long. It's
+  discouraged to use a single line length longer than 79 characters for texts.
+
+  Don't allocate these text buffers yourself. Use the init/cleanup functions
+  correctly and use lodepng_add_text and lodepng_clear_text.
+  */
+  size_t text_num; /*the amount of texts in these char** buffers (there may be more texts in itext)*/
+  char** text_keys; /*the keyword of a text chunk (e.g. "Comment")*/
+  char** text_strings; /*the actual text*/
+
+  /*
+  international text chunks (iTXt)
+  Similar to the non-international text chunks, but with additional strings
+  "langtags" and "transkeys".
+  */
+  size_t itext_num; /*the amount of international texts in this PNG*/
+  char** itext_keys; /*the English keyword of the text chunk (e.g. "Comment")*/
+  char** itext_langtags; /*language tag for this text's language, ISO/IEC 646 string, e.g. ISO 639 language tag*/
+  char** itext_transkeys; /*keyword translated to the international language - UTF-8 string*/
+  char** itext_strings; /*the actual international text - UTF-8 string*/
+
+  /*time chunk (tIME)*/
+  unsigned time_defined; /*set to 1 to make the encoder generate a tIME chunk*/
+  LodePNGTime time;
+
+  /*phys chunk (pHYs)*/
+  unsigned phys_defined; /*if 0, there is no pHYs chunk and the values below are undefined, if 1 else there is one*/
+  unsigned phys_x; /*pixels per unit in x direction*/
+  unsigned phys_y; /*pixels per unit in y direction*/
+  unsigned phys_unit; /*may be 0 (unknown unit) or 1 (metre)*/
+
+  /*
+  unknown chunks
+  There are 3 buffers, one for each position in the PNG where unknown chunks can appear
+  each buffer contains all unknown chunks for that position consecutively
+  The 3 buffers are the unknown chunks between certain critical chunks:
+  0: IHDR-PLTE, 1: PLTE-IDAT, 2: IDAT-IEND
+  Do not allocate or traverse this data yourself. Use the chunk traversing functions declared
+  later, such as lodepng_chunk_next and lodepng_chunk_append, to read/write this struct.
+  */
+  unsigned char* unknown_chunks_data[3];
+  size_t unknown_chunks_size[3]; /*size in bytes of the unknown chunks, given for protection*/
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+} LodePNGInfo;
+
+/*init, cleanup and copy functions to use with this struct*/
+void lodepng_info_init(LodePNGInfo* info);
+void lodepng_info_cleanup(LodePNGInfo* info);
+/*return value is error code (0 means no error)*/
+unsigned lodepng_info_copy(LodePNGInfo* dest, const LodePNGInfo* source);
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+void lodepng_clear_text(LodePNGInfo* info); /*use this to clear the texts again after you filled them in*/
+unsigned lodepng_add_text(LodePNGInfo* info, const char* key, const char* str); /*push back both texts at once*/
+
+void lodepng_clear_itext(LodePNGInfo* info); /*use this to clear the itexts again after you filled them in*/
+unsigned lodepng_add_itext(LodePNGInfo* info, const char* key, const char* langtag,
+                           const char* transkey, const char* str); /*push back the 4 texts of 1 chunk at once*/
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+
+/*
+Converts raw buffer from one color type to another color type, based on
+LodePNGColorMode structs to describe the input and output color type.
+See the reference manual at the end of this header file to see which color conversions are supported.
+return value = LodePNG error code (0 if all went ok, an error if the conversion isn't supported)
+The out buffer must have size (w * h * bpp + 7) / 8, where bpp is the bits per pixel
+of the output color type (lodepng_get_bpp)
+*/
+unsigned lodepng_convert(unsigned char* out, const unsigned char* in,
+                         LodePNGColorMode* mode_out, LodePNGColorMode* mode_in,
+                         unsigned w, unsigned h);
+
+
+#ifdef LODEPNG_COMPILE_DECODER
+/*
+Settings for the decoder. This contains settings for the PNG and the Zlib
+decoder, but not the Info settings from the Info structs.
+*/
+typedef struct LodePNGDecoderSettings
+{
+  LodePNGDecompressSettings zlibsettings; /*in here is the setting to ignore Adler32 checksums*/
+
+  unsigned ignore_crc; /*ignore CRC checksums*/
+  unsigned color_convert; /*whether to convert the PNG to the color type you want. Default: yes*/
+
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  unsigned read_text_chunks; /*if false but remember_unknown_chunks is true, they're stored in the unknown chunks*/
+  /*store all bytes from unknown chunks in the LodePNGInfo (off by default, useful for a png editor)*/
+  unsigned remember_unknown_chunks;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+} LodePNGDecoderSettings;
+
+void lodepng_decoder_settings_init(LodePNGDecoderSettings* settings);
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*automatically use color type with less bits per pixel if losslessly possible. Default: AUTO*/
+typedef enum LodePNGFilterStrategy
+{
+  LFS_HEURISTIC, /*official PNG heuristic*/
+  LFS_ZERO, /*every filter at zero*/
+  LFS_MINSUM, /*like the official PNG heuristic, but use minimal sum always, including palette and low bitdepth images*/
+  /*
+  Brute-force-search PNG filters by compressing each filter for each scanline.
+  This gives better compression, at the cost of being super slow. Experimental!
+  If you enable this, also set zlibsettings.windowsize to 32768 and choose an
+  optimal color mode for the PNG image for best compression. Default: 0 (false).
+  */
+  LFS_BRUTE_FORCE,
+  LFS_PREDEFINED /*use predefined_filters buffer: you specify the filter type for each scanline*/
+} LodePNGFilterStrategy;
+
+/*automatically use color type with less bits per pixel if losslessly possible. Default: LAC_AUTO*/
+typedef enum LodePNGAutoConvert
+{
+  LAC_NO, /*use color type user requested*/
+  LAC_ALPHA, /*use color type user requested, but if only opaque pixels and RGBA or grey+alpha, use RGB or grey*/
+  LAC_AUTO, /*use PNG color type that can losslessly represent the uncompressed image the smallest possible*/
+  /*
+  like AUTO, but do not choose 1, 2 or 4 bit per pixel types.
+  sometimes a PNG image compresses worse if less than 8 bits per pixels.
+  */
+  LAC_AUTO_NO_NIBBLES
+} LodePNGAutoConvert;
+
+
+/*Settings for the encoder.*/
+typedef struct LodePNGEncoderSettings
+{
+  LodePNGCompressSettings zlibsettings; /*settings for the zlib encoder, such as window size, ...*/
+
+  LodePNGAutoConvert auto_convert; /*how to automatically choose output PNG color type, if at all*/
+
+  LodePNGFilterStrategy filter_strategy;
+
+  /*used if filter_strategy is LFS_PREDEFINED. In that case, this must point to a buffer with
+    the same length as the amount of scanlines in the image, and each value must <= 5. You
+    have to cleanup this buffer, LodePNG will never free it.*/
+  unsigned char* predefined_filters;
+
+  /*force creating a PLTE chunk if colortype is 2 or 6 (= a suggested palette).
+  If colortype is 3, PLTE is _always_ created.*/
+  unsigned force_palette;
+#ifdef LODEPNG_COMPILE_ANCILLARY_CHUNKS
+  /*add LodePNG identifier and version as a text chunk, for debugging*/
+  unsigned add_id;
+  /*encode text chunks as zTXt chunks instead of tEXt chunks, and use compression in iTXt chunks*/
+  unsigned text_compression;
+#endif /*LODEPNG_COMPILE_ANCILLARY_CHUNKS*/
+} LodePNGEncoderSettings;
+
+void lodepng_encoder_settings_init(LodePNGEncoderSettings* settings);
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+
+#if defined(LODEPNG_COMPILE_DECODER) || defined(LODEPNG_COMPILE_ENCODER)
+/*The settings, state and information for extended encoding and decoding.*/
+typedef struct LodePNGState
+{
+#ifdef LODEPNG_COMPILE_DECODER
+  LodePNGDecoderSettings decoder; /*the decoding settings*/
+#endif /*LODEPNG_COMPILE_DECODER*/
+#ifdef LODEPNG_COMPILE_ENCODER
+  LodePNGEncoderSettings encoder; /*the encoding settings*/
+#endif /*LODEPNG_COMPILE_ENCODER*/
+  LodePNGColorMode info_raw; /*specifies the format in which you would like to get the raw pixel buffer*/
+  LodePNGInfo info_png; /*info of the PNG image obtained after decoding*/
+  unsigned error;
+#ifdef LODEPNG_COMPILE_CPP
+  //For the lodepng::State subclass.
+  virtual ~LodePNGState(){}
+#endif
+} LodePNGState;
+
+/*init, cleanup and copy functions to use with this struct*/
+void lodepng_state_init(LodePNGState* state);
+void lodepng_state_cleanup(LodePNGState* state);
+void lodepng_state_copy(LodePNGState* dest, const LodePNGState* source);
+#endif /* defined(LODEPNG_COMPILE_DECODER) || defined(LODEPNG_COMPILE_ENCODER) */
+
+#ifdef LODEPNG_COMPILE_DECODER
+/*
+Same as lodepng_decode_memory, but uses a LodePNGState to allow custom settings and
+getting much more information about the PNG image and color mode.
+*/
+unsigned lodepng_decode(unsigned char** out, unsigned* w, unsigned* h,
+                        LodePNGState* state,
+                        const unsigned char* in, size_t insize);
+
+/*
+Read the PNG header, but not the actual data. This returns only the information
+that is in the header chunk of the PNG, such as width, height and color type. The
+information is placed in the info_png field of the LodePNGState.
+*/
+unsigned lodepng_inspect(unsigned* w, unsigned* h,
+                         LodePNGState* state,
+                         const unsigned char* in, size_t insize);
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*This function allocates the out buffer with standard malloc and stores the size in *outsize.*/
+unsigned lodepng_encode(unsigned char** out, size_t* outsize,
+                        const unsigned char* image, unsigned w, unsigned h,
+                        LodePNGState* state);
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+/*
+The lodepng_chunk functions are normally not needed, except to traverse the
+unknown chunks stored in the LodePNGInfo struct, or add new ones to it.
+It also allows traversing the chunks of an encoded PNG file yourself.
+
+PNG standard chunk naming conventions:
+First byte: uppercase = critical, lowercase = ancillary
+Second byte: uppercase = public, lowercase = private
+Third byte: must be uppercase
+Fourth byte: uppercase = unsafe to copy, lowercase = safe to copy
+*/
+
+/*get the length of the data of the chunk. Total chunk length has 12 bytes more.*/
+unsigned lodepng_chunk_length(const unsigned char* chunk);
+
+/*puts the 4-byte type in null terminated string*/
+void lodepng_chunk_type(char type[5], const unsigned char* chunk);
+
+/*check if the type is the given type*/
+unsigned char lodepng_chunk_type_equals(const unsigned char* chunk, const char* type);
+
+/*0: it's one of the critical chunk types, 1: it's an ancillary chunk (see PNG standard)*/
+unsigned char lodepng_chunk_ancillary(const unsigned char* chunk);
+
+/*0: public, 1: private (see PNG standard)*/
+unsigned char lodepng_chunk_private(const unsigned char* chunk);
+
+/*0: the chunk is unsafe to copy, 1: the chunk is safe to copy (see PNG standard)*/
+unsigned char lodepng_chunk_safetocopy(const unsigned char* chunk);
+
+/*get pointer to the data of the chunk, where the input points to the header of the chunk*/
+unsigned char* lodepng_chunk_data(unsigned char* chunk);
+const unsigned char* lodepng_chunk_data_const(const unsigned char* chunk);
+
+/*returns 0 if the crc is correct, 1 if it's incorrect (0 for OK as usual!)*/
+unsigned lodepng_chunk_check_crc(const unsigned char* chunk);
+
+/*generates the correct CRC from the data and puts it in the last 4 bytes of the chunk*/
+void lodepng_chunk_generate_crc(unsigned char* chunk);
+
+/*iterate to next chunks. don't use on IEND chunk, as there is no next chunk then*/
+unsigned char* lodepng_chunk_next(unsigned char* chunk);
+const unsigned char* lodepng_chunk_next_const(const unsigned char* chunk);
+
+/*
+Appends chunk to the data in out. The given chunk should already have its chunk header.
+The out variable and outlength are updated to reflect the new reallocated buffer.
+Returns error code (0 if it went ok)
+*/
+unsigned lodepng_chunk_append(unsigned char** out, size_t* outlength, const unsigned char* chunk);
+
+/*
+Appends new chunk to out. The chunk to append is given by giving its length, type
+and data separately. The type is a 4-letter string.
+The out variable and outlength are updated to reflect the new reallocated buffer.
+Returne error code (0 if it went ok)
+*/
+unsigned lodepng_chunk_create(unsigned char** out, size_t* outlength, unsigned length,
+                              const char* type, const unsigned char* data);
+
+
+/*Calculate CRC32 of buffer*/
+unsigned lodepng_crc32(const unsigned char* buf, size_t len);
+#endif /*LODEPNG_COMPILE_PNG*/
+
+
+#ifdef LODEPNG_COMPILE_ZLIB
+/*
+This zlib part can be used independently to zlib compress and decompress a
+buffer. It cannot be used to create gzip files however, and it only supports the
+part of zlib that is required for PNG, it does not support dictionaries.
+*/
+
+#ifdef LODEPNG_COMPILE_DECODER
+/*Inflate a buffer. Inflate is the decompression step of deflate. Out buffer must be freed after use.*/
+unsigned lodepng_inflate(unsigned char** out, size_t* outsize,
+                         const unsigned char* in, size_t insize,
+                         const LodePNGDecompressSettings* settings);
+
+/*
+Decompresses Zlib data. Reallocates the out buffer and appends the data. The
+data must be according to the zlib specification.
+Either, *out must be NULL and *outsize must be 0, or, *out must be a valid
+buffer and *outsize its size in bytes. out must be freed by user after usage.
+*/
+unsigned lodepng_zlib_decompress(unsigned char** out, size_t* outsize,
+                                 const unsigned char* in, size_t insize,
+                                 const LodePNGDecompressSettings* settings);
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+/*
+Compresses data with Zlib. Reallocates the out buffer and appends the data.
+Zlib adds a small header and trailer around the deflate data.
+The data is output in the format of the zlib specification.
+Either, *out must be NULL and *outsize must be 0, or, *out must be a valid
+buffer and *outsize its size in bytes. out must be freed by user after usage.
+*/
+unsigned lodepng_zlib_compress(unsigned char** out, size_t* outsize,
+                               const unsigned char* in, size_t insize,
+                               const LodePNGCompressSettings* settings);
+
+/*
+Find length-limited Huffman code for given frequencies. This function is in the
+public interface only for tests, it's used internally by lodepng_deflate.
+*/
+unsigned lodepng_huffman_code_lengths(unsigned* lengths, const unsigned* frequencies,
+                                      size_t numcodes, unsigned maxbitlen);
+
+/*Compress a buffer with deflate. See RFC 1951. Out buffer must be freed after use.*/
+unsigned lodepng_deflate(unsigned char** out, size_t* outsize,
+                         const unsigned char* in, size_t insize,
+                         const LodePNGCompressSettings* settings);
+
+#endif /*LODEPNG_COMPILE_ENCODER*/
+#endif /*LODEPNG_COMPILE_ZLIB*/
+
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Load a file from disk into buffer. The function allocates the out buffer, and
+after usage you should free it.
+out: output parameter, contains pointer to loaded buffer.
+outsize: output parameter, size of the allocated out buffer
+filename: the path to the file to load
+return value: error code (0 means ok)
+*/
+unsigned lodepng_load_file(unsigned char** out, size_t* outsize, const char* filename);
+
+/*
+Save a file from buffer to disk. Warning, if it exists, this function overwrites
+the file without warning!
+buffer: the buffer to write
+buffersize: size of the buffer to write
+filename: the path to the file to save to
+return value: error code (0 means ok)
+*/
+unsigned lodepng_save_file(const unsigned char* buffer, size_t buffersize, const char* filename);
+#endif /*LODEPNG_COMPILE_DISK*/
+
+#ifdef LODEPNG_COMPILE_CPP
+//The LodePNG C++ wrapper uses std::vectors instead of manually allocated memory buffers.
+namespace lodepng
+{
+#ifdef LODEPNG_COMPILE_PNG
+class State : public LodePNGState
+{
+  public:
+    State();
+    State(const State& other);
+    virtual ~State();
+    State& operator=(const State& other);
+};
+
+#ifdef LODEPNG_COMPILE_DECODER
+//Same as other lodepng::decode, but using a State for more settings and information.
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                State& state,
+                const unsigned char* in, size_t insize);
+unsigned decode(std::vector<unsigned char>& out, unsigned& w, unsigned& h,
+                State& state,
+                const std::vector<unsigned char>& in);
+#endif /*LODEPNG_COMPILE_DECODER*/
+
+#ifdef LODEPNG_COMPILE_ENCODER
+//Same as other lodepng::encode, but using a State for more settings and information.
+unsigned encode(std::vector<unsigned char>& out,
+                const unsigned char* in, unsigned w, unsigned h,
+                State& state);
+unsigned encode(std::vector<unsigned char>& out,
+                const std::vector<unsigned char>& in, unsigned w, unsigned h,
+                State& state);
+#endif /*LODEPNG_COMPILE_ENCODER*/
+
+
+#ifdef LODEPNG_COMPILE_DISK
+/*
+Load a file from disk into an std::vector. If the vector is empty, then either
+the file doesn't exist or is an empty file.
+*/
+void load_file(std::vector<unsigned char>& buffer, const std::string& filename);
+
+/*
+Save the binary data in an std::vector to a file on disk. The file is overwritten
+without warning.
+*/
+void save_file(const std::vector<unsigned char>& buffer, const std::string& filename);
+#endif //LODEPNG_COMPILE_DISK
+#endif //LODEPNG_COMPILE_PNG
+
+#ifdef LODEPNG_COMPILE_ZLIB
+#ifdef LODEPNG_COMPILE_DECODER
+//Zlib-decompress an unsigned char buffer
+unsigned decompress(std::vector<unsigned char>& out, const unsigned char* in, size_t insize,
+                    const LodePNGDecompressSettings& settings = lodepng_default_decompress_settings);
+
+//Zlib-decompress an std::vector
+unsigned decompress(std::vector<unsigned char>& out, const std::vector<unsigned char>& in,
+                    const LodePNGDecompressSettings& settings = lodepng_default_decompress_settings);
+#endif //LODEPNG_COMPILE_DECODER
+
+#ifdef LODEPNG_COMPILE_ENCODER
+//Zlib-compress an unsigned char buffer
+unsigned compress(std::vector<unsigned char>& out, const unsigned char* in, size_t insize,
+                  const LodePNGCompressSettings& settings = lodepng_default_compress_settings);
+
+//Zlib-compress an std::vector
+unsigned compress(std::vector<unsigned char>& out, const std::vector<unsigned char>& in,
+                  const LodePNGCompressSettings& settings = lodepng_default_compress_settings);
+#endif //LODEPNG_COMPILE_ENCODER
+#endif //LODEPNG_COMPILE_ZLIB
+} //namespace lodepng
+#endif /*LODEPNG_COMPILE_CPP*/
+
+/*
+TODO:
+[.] test if there are no memory leaks or security exploits - done a lot but needs to be checked often
+[.] check compatibility with vareous compilers  - done but needs to be redone for every newer version
+[X] converting color to 16-bit per channel types
+[ ] read all public PNG chunk types (but never let the color profile and gamma ones touch RGB values)
+[ ] make sure encoder generates no chunks with size > (2^31)-1
+[ ] partial decoding (stream processing)
+[X] let the "isFullyOpaque" function check color keys and transparent palettes too
+[X] better name for the variables "codes", "codesD", "codelengthcodes", "clcl" and "lldl"
+[ ] don't stop decoding on errors like 69, 57, 58 (make warnings)
+[ ] make option to choose if the raw image with non multiple of 8 bits per scanline should have padding bits or not
+[ ] let the C++ wrapper catch exceptions coming from the standard library and return LodePNG error codes
+*/
+
+#endif /*LODEPNG_H inclusion guard*/
+
+/*
+LodePNG Documentation
+---------------------
+
+0. table of contents
+--------------------
+
+  1. about
+   1.1. supported features
+   1.2. features not supported
+  2. C and C++ version
+  3. security
+  4. decoding
+  5. encoding
+  6. color conversions
+    6.1. PNG color types
+    6.2. color conversions
+    6.3. padding bits
+  7. error values
+  8. chunks and PNG editing
+  9. compiler support
+  10. examples
+   10.1. decoder C++ example
+   10.2. decoder C example
+  11. changes
+  12. contact information
+
+
+1. about
+--------
+
+PNG is a file format to store raster images losslessly with good compression,
+supporting different color types and alpha channel.
+
+LodePNG is a PNG codec according to the Portable Network Graphics (PNG)
+Specification (Second Edition) - W3C Recommendation 10 November 2003.
+
+The specifications used are:
+
+*) Portable Network Graphics (PNG) Specification (Second Edition):
+     http://www.w3.org/TR/2003/REC-PNG-20031110
+*) RFC 1950 ZLIB Compressed Data Format version 3.3:
+     http://www.gzip.org/zlib/rfc-zlib.html
+*) RFC 1951 DEFLATE Compressed Data Format Specification ver 1.3:
+     http://www.gzip.org/zlib/rfc-deflate.html
+
+The most recent version of LodePNG can currently be found at
+http://lodev.org/lodepng/
+
+LodePNG works both in C (ISO C90) and C++, with a C++ wrapper that adds
+extra functionality.
+
+LodePNG exists out of two files:
+-lodepng.h: the header file for both C and C++
+-lodepng.c(pp): give it the name lodepng.c or lodepng.cpp (or .cc) depending on your usage
+
+If you want to start using LodePNG right away without reading this doc, get the
+examples from the LodePNG website to see how to use it in code, or check the
+smaller examples in chapter 13 here.
+
+LodePNG is simple but only supports the basic requirements. To achieve
+simplicity, the following design choices were made: There are no dependencies
+on any external library. There are functions to decode and encode a PNG with
+a single function call, and extended versions of these functions taking a
+LodePNGState struct allowing to specify or get more information. By default
+the colors of the raw image are always RGB or RGBA, no matter what color type
+the PNG file uses. To read and write files, there are simple functions to
+convert the files to/from buffers in memory.
+
+This all makes LodePNG suitable for loading textures in games, demos and small
+programs, ... It's less suitable for full fledged image editors, loading PNGs
+over network (it requires all the image data to be available before decoding can
+begin), life-critical systems, ...
+
+1.1. supported features
+-----------------------
+
+The following features are supported by the decoder:
+
+*) decoding of PNGs with any color type, bit depth and interlace mode, to a 24- or 32-bit color raw image,
+   or the same color type as the PNG
+*) encoding of PNGs, from any raw image to 24- or 32-bit color, or the same color type as the raw image
+*) Adam7 interlace and deinterlace for any color type
+*) loading the image from harddisk or decoding it from a buffer from other sources than harddisk
+*) support for alpha channels, including RGBA color model, translucent palettes and color keying
+*) zlib decompression (inflate)
+*) zlib compression (deflate)
+*) CRC32 and ADLER32 checksums
+*) handling of unknown chunks, allowing making a PNG editor that stores custom and unknown chunks.
+*) the following chunks are supported (generated/interpreted) by both encoder and decoder:
+    IHDR: header information
+    PLTE: color palette
+    IDAT: pixel data
+    IEND: the final chunk
+    tRNS: transparency for palettized images
+    tEXt: textual information
+    zTXt: compressed textual information
+    iTXt: international textual information
+    bKGD: suggested background color
+    pHYs: physical dimensions
+    tIME: modification time
+
+1.2. features not supported
+---------------------------
+
+The following features are _not_ supported:
+
+*) some features needed to make a conformant PNG-Editor might be still missing.
+*) partial loading/stream processing. All data must be available and is processed in one call.
+*) The following public chunks are not supported but treated as unknown chunks by LodePNG
+    cHRM, gAMA, iCCP, sRGB, sBIT, hIST, sPLT
+   Some of these are not supported on purpose: LodePNG wants to provide the RGB values
+   stored in the pixels, not values modified by system dependent gamma or color models.
+
+
+2. C and C++ version
+--------------------
+
+The C version uses buffers allocated with alloc that you need to free()
+yourself. You need to use init and cleanup functions for each struct whenever
+using a struct from the C version to avoid exploits and memory leaks.
+
+The C++ version has extra functions with std::vectors in the interface and the
+lodepng::State class which is a LodePNGState with constructor and destructor.
+
+These files work without modification for both C and C++ compilers because all
+the additional C++ code is in "#ifdef __cplusplus" blocks that make C-compilers
+ignore it, and the C code is made to compile both with strict ISO C90 and C++.
+
+To use the C++ version, you need to rename the source file to lodepng.cpp
+(instead of lodepng.c), and compile it with a C++ compiler.
+
+To use the C version, you need to rename the source file to lodepng.c (instead
+of lodepng.cpp), and compile it with a C compiler.
+
+
+3. Security
+-----------
+
+Even if carefully designed, it's always possible that LodePNG contains possible
+exploits. If you discover one, please let me know, and it will be fixed.
+
+When using LodePNG, care has to be taken with the C version of LodePNG, as well
+as the C-style structs when working with C++. The following conventions are used
+for all C-style structs:
+
+-if a struct has a corresponding init function, always call the init function when making a new one
+-if a struct has a corresponding cleanup function, call it before the struct disappears to avoid memory leaks
+-if a struct has a corresponding copy function, use the copy function instead of "=".
+ The destination must also be inited already.
+
+
+4. Decoding
+-----------
+
+Decoding converts a PNG compressed image to a raw pixel buffer.
+
+Most documentation on using the decoder is at its declarations in the header
+above. For C, simple decoding can be done with functions such as
+lodepng_decode32, and more advanced decoding can be done with the struct
+LodePNGState and lodepng_decode. For C++, all decoding can be done with the
+various lodepng::decode functions, and lodepng::State can be used for advanced
+features.
+
+When using the LodePNGState, it uses the following fields for decoding:
+*) LodePNGInfo info_png: it stores extra information about the PNG (the input) in here
+*) LodePNGColorMode info_raw: here you can say what color mode of the raw image (the output) you want to get
+*) LodePNGDecoderSettings decoder: you can specify a few extra settings for the decoder to use
+
+LodePNGInfo info_png
+--------------------
+
+After decoding, this contains extra information of the PNG image, except the actual
+pixels, width and height because these are already gotten directly from the decoder
+functions.
+
+It contains for example the original color type of the PNG image, text comments,
+suggested background color, etc... More details about the LodePNGInfo struct are
+at its declaration documentation.
+
+LodePNGColorMode info_raw
+-------------------------
+
+When decoding, here you can specify which color type you want
+the resulting raw image to be. If this is different from the colortype of the
+PNG, then the decoder will automatically convert the result. This conversion
+always works, except if you want it to convert a color PNG to greyscale or to
+a palette with missing colors.
+
+By default, 32-bit color is used for the result.
+
+LodePNGDecoderSettings decoder
+------------------------------
+
+The settings can be used to ignore the errors created by invalid CRC and Adler32
+chunks, and to disable the decoding of tEXt chunks.
+
+There's also a setting color_convert, true by default. If false, no conversion
+is done, the resulting data will be as it was in the PNG (after decompression)
+and you'll have to puzzle the colors of the pixels together yourself using the
+color type information in the LodePNGInfo.
+
+
+5. Encoding
+-----------
+
+Encoding converts a raw pixel buffer to a PNG compressed image.
+
+Most documentation on using the encoder is at its declarations in the header
+above. For C, simple encoding can be done with functions such as
+lodepng_encode32, and more advanced decoding can be done with the struct
+LodePNGState and lodepng_encode. For C++, all encoding can be done with the
+various lodepng::encode functions, and lodepng::State can be used for advanced
+features.
+
+Like the decoder, the encoder can also give errors. However it gives less errors
+since the encoder input is trusted, the decoder input (a PNG image that could
+be forged by anyone) is not trusted.
+
+When using the LodePNGState, it uses the following fields for encoding:
+*) LodePNGInfo info_png: here you specify how you want the PNG (the output) to be.
+*) LodePNGColorMode info_raw: here you say what color type of the raw image (the input) has
+*) LodePNGEncoderSettings encoder: you can specify a few settings for the encoder to use
+
+LodePNGInfo info_png
+--------------------
+
+When encoding, you use this the opposite way as when decoding: for encoding,
+you fill in the values you want the PNG to have before encoding. By default it's
+not needed to specify a color type for the PNG since it's automatically chosen,
+but it's possible to choose it yourself given the right settings.
+
+The encoder will not always exactly match the LodePNGInfo struct you give,
+it tries as close as possible. Some things are ignored by the encoder. The
+encoder uses, for example, the following settings from it when applicable:
+colortype and bitdepth, text chunks, time chunk, the color key, the palette, the
+background color, the interlace method, unknown chunks, ...
+
+When encoding to a PNG with colortype 3, the encoder will generate a PLTE chunk.
+If the palette contains any colors for which the alpha channel is not 255 (so
+there are translucent colors in the palette), it'll add a tRNS chunk.
+
+LodePNGColorMode info_raw
+-------------------------
+
+You specify the color type of the raw image that you give to the input here,
+including a possible transparent color key and palette you happen to be using in
+your raw image data.
+
+By default, 32-bit color is assumed, meaning your input has to be in RGBA
+format with 4 bytes (unsigned chars) per pixel.
+
+LodePNGEncoderSettings encoder
+------------------------------
+
+The following settings are supported (some are in sub-structs):
+*) auto_convert: when this option is enabled, the encoder will
+automatically choose the smallest possible color mode (including color key) that
+can encode the colors of all pixels without information loss.
+*) btype: the block type for LZ77. 0 = uncompressed, 1 = fixed huffman tree,
+   2 = dynamic huffman tree (best compression). Should be 2 for proper
+   compression.
+*) use_lz77: whether or not to use LZ77 for compressed block types. Should be
+   true for proper compression.
+*) windowsize: the window size used by the LZ77 encoder (1 - 32768). Has value
+   2048 by default, but can be set to 32768 for better, but slow, compression.
+*) force_palette: if colortype is 2 or 6, you can make the encoder write a PLTE
+   chunk if force_palette is true. This can used as suggested palette to convert
+   to by viewers that don't support more than 256 colors (if those still exist)
+*) add_id: add text chunk "Encoder: LodePNG <version>" to the image.
+*) text_compression: default 1. If 1, it'll store texts as zTXt instead of tEXt chunks.
+  zTXt chunks use zlib compression on the text. This gives a smaller result on
+  large texts but a larger result on small texts (such as a single program name).
+  It's all tEXt or all zTXt though, there's no separate setting per text yet.
+
+
+6. color conversions
+--------------------
+
+An important thing to note about LodePNG, is that the color type of the PNG, and
+the color type of the raw image, are completely independent. By default, when
+you decode a PNG, you get the result as a raw image in the color type you want,
+no matter whether the PNG was encoded with a palette, greyscale or RGBA color.
+And if you encode an image, by default LodePNG will automatically choose the PNG
+color type that gives good compression based on the values of colors and amount
+of colors in the image. It can be configured to let you control it instead as
+well, though.
+
+To be able to do this, LodePNG does conversions from one color mode to another.
+It can convert from almost any color type to any other color type, except the
+following conversions: RGB to greyscale is not supported, and converting to a
+palette when the palette doesn't have a required color is not supported. This is
+not supported on purpose: this is information loss which requires a color
+reduction algorithm that is beyong the scope of a PNG encoder (yes, RGB to grey
+is easy, but there are multiple ways if you want to give some channels more
+weight).
+
+By default, when decoding, you get the raw image in 32-bit RGBA or 24-bit RGB
+color, no matter what color type the PNG has. And by default when encoding,
+LodePNG automatically picks the best color model for the output PNG, and expects
+the input image to be 32-bit RGBA or 24-bit RGB. So, unless you want to control
+the color format of the images yourself, you can skip this chapter.
+
+6.1. PNG color types
+--------------------
+
+A PNG image can have many color types, ranging from 1-bit color to 64-bit color,
+as well as palettized color modes. After the zlib decompression and unfiltering
+in the PNG image is done, the raw pixel data will have that color type and thus
+a certain amount of bits per pixel. If you want the output raw image after
+decoding to have another color type, a conversion is done by LodePNG.
+
+The PNG specification gives the following color types:
+
+0: greyscale, bit depths 1, 2, 4, 8, 16
+2: RGB, bit depths 8 and 16
+3: palette, bit depths 1, 2, 4 and 8
+4: greyscale with alpha, bit depths 8 and 16
+6: RGBA, bit depths 8 and 16
+
+Bit depth is the amount of bits per pixel per color channel. So the total amount
+of bits per pixel is: amount of channels * bitdepth.
+
+6.2. color conversions
+----------------------
+
+As explained in the sections about the encoder and decoder, you can specify
+color types and bit depths in info_png and info_raw to change the default
+behaviour.
+
+If, when decoding, you want the raw image to be something else than the default,
+you need to set the color type and bit depth you want in the LodePNGColorMode,
+or the parameters of the simple function of LodePNG you're using.
+
+If, when encoding, you use another color type than the default in the input
+image, you need to specify its color type and bit depth in the LodePNGColorMode
+of the raw image, or use the parameters of the simplefunction of LodePNG you're
+using.
+
+If, when encoding, you don't want LodePNG to choose the output PNG color type
+but control it yourself, you need to set auto_convert in the encoder settings
+to LAC_NONE, and specify the color type you want in the LodePNGInfo of the
+encoder.
+
+If you do any of the above, LodePNG may need to do a color conversion, which
+follows the rules below, and may sometimes not be allowed.
+
+To avoid some confusion:
+-the decoder converts from PNG to raw image
+-the encoder converts from raw image to PNG
+-the colortype and bitdepth in LodePNGColorMode info_raw, are those of the raw image
+-the colortype and bitdepth in the color field of LodePNGInfo info_png, are those of the PNG
+-when encoding, the color type in LodePNGInfo is ignored if auto_convert
+ is enabled, it is automatically generated instead
+-when decoding, the color type in LodePNGInfo is set by the decoder to that of the original
+ PNG image, but it can be ignored since the raw image has the color type you requested instead
+-if the color type of the LodePNGColorMode and PNG image aren't the same, a conversion
+ between the color types is done if the color types are supported. If it is not
+ supported, an error is returned. If the types are the same, no conversion is done.
+-even though some conversions aren't supported, LodePNG supports loading PNGs from any
+ colortype and saving PNGs to any colortype, sometimes it just requires preparing
+ the raw image correctly before encoding.
+-both encoder and decoder use the same color converter.
+
+Non supported color conversions:
+-color to greyscale: no error is thrown, but the result will look ugly because
+only the red channel is taken
+-anything, to palette when that palette does not have that color in it: in this
+case an error is thrown
+
+Supported color conversions:
+-anything to 8-bit RGB, 8-bit RGBA, 16-bit RGB, 16-bit RGBA
+-any grey or grey+alpha, to grey or grey+alpha
+-anything to a palette, as long as the palette has the requested colors in it
+-removing alpha channel
+-higher to smaller bitdepth, and vice versa
+
+If you want no color conversion to be done:
+-In the encoder, you can make it save a PNG with any color type by giving the
+raw color mode and LodePNGInfo the same color mode, and setting auto_convert to
+LAC_NO.
+-In the decoder, you can make it store the pixel data in the same color type
+as the PNG has, by setting the color_convert setting to false. Settings in
+info_raw are then ignored.
+
+The function lodepng_convert does the color conversion. It is available in the
+interface but normally isn't needed since the encoder and decoder already call
+it.
+
+6.3. padding bits
+-----------------
+
+In the PNG file format, if a less than 8-bit per pixel color type is used and the scanlines
+have a bit amount that isn't a multiple of 8, then padding bits are used so that each
+scanline starts at a fresh byte. But that is NOT true for the LodePNG raw input and output.
+The raw input image you give to the encoder, and the raw output image you get from the decoder
+will NOT have these padding bits, e.g. in the case of a 1-bit image with a width
+of 7 pixels, the first pixel of the second scanline will the the 8th bit of the first byte,
+not the first bit of a new byte.
+
+
+7. error values
+---------------
+
+All functions in LodePNG that return an error code, return 0 if everything went
+OK, or a non-zero code if there was an error.
+
+The meaning of the LodePNG error values can be retrieved with the function
+lodepng_error_text: given the numerical error code, it returns a description
+of the error in English as a string.
+
+Check the implementation of lodepng_error_text to see the meaning of each code.
+
+
+8. chunks and PNG editing
+-------------------------
+
+If you want to add extra chunks to a PNG you encode, or use LodePNG for a PNG
+editor that should follow the rules about handling of unknown chunks, or if your
+program is able to read other types of chunks than the ones handled by LodePNG,
+then that's possible with the chunk functions of LodePNG.
+
+A PNG chunk has the following layout:
+
+4 bytes length
+4 bytes type name
+length bytes data
+4 bytes CRC
+
+8.1. iterating through chunks
+-----------------------------
+
+If you have a buffer containing the PNG image data, then the first chunk (the
+IHDR chunk) starts at byte number 8 of that buffer. The first 8 bytes are the
+signature of the PNG and are not part of a chunk. But if you start at byte 8
+then you have a chunk, and can check the following things of it.
+
+NOTE: none of these functions check for memory buffer boundaries. To avoid
+exploits, always make sure the buffer contains all the data of the chunks.
+When using lodepng_chunk_next, make sure the returned value is within the
+allocated memory.
+
+unsigned lodepng_chunk_length(const unsigned char* chunk):
+
+Get the length of the chunk's data. The total chunk length is this length + 12.
+
+void lodepng_chunk_type(char type[5], const unsigned char* chunk):
+unsigned char lodepng_chunk_type_equals(const unsigned char* chunk, const char* type):
+
+Get the type of the chunk or compare if it's a certain type
+
+unsigned char lodepng_chunk_critical(const unsigned char* chunk):
+unsigned char lodepng_chunk_private(const unsigned char* chunk):
+unsigned char lodepng_chunk_safetocopy(const unsigned char* chunk):
+
+Check if the chunk is critical in the PNG standard (only IHDR, PLTE, IDAT and IEND are).
+Check if the chunk is private (public chunks are part of the standard, private ones not).
+Check if the chunk is safe to copy. If it's not, then, when modifying data in a critical
+chunk, unsafe to copy chunks of the old image may NOT be saved in the new one if your
+program doesn't handle that type of unknown chunk.
+
+unsigned char* lodepng_chunk_data(unsigned char* chunk):
+const unsigned char* lodepng_chunk_data_const(const unsigned char* chunk):
+
+Get a pointer to the start of the data of the chunk.
+
+unsigned lodepng_chunk_check_crc(const unsigned char* chunk):
+void lodepng_chunk_generate_crc(unsigned char* chunk):
+
+Check if the crc is correct or generate a correct one.
+
+unsigned char* lodepng_chunk_next(unsigned char* chunk):
+const unsigned char* lodepng_chunk_next_const(const unsigned char* chunk):
+
+Iterate to the next chunk. This works if you have a buffer with consecutive chunks. Note that these
+functions do no boundary checking of the allocated data whatsoever, so make sure there is enough
+data available in the buffer to be able to go to the next chunk.
+
+unsigned lodepng_chunk_append(unsigned char** out, size_t* outlength, const unsigned char* chunk):
+unsigned lodepng_chunk_create(unsigned char** out, size_t* outlength, unsigned length,
+                              const char* type, const unsigned char* data):
+
+These functions are used to create new chunks that are appended to the data in *out that has
+length *outlength. The append function appends an existing chunk to the new data. The create
+function creates a new chunk with the given parameters and appends it. Type is the 4-letter
+name of the chunk.
+
+8.2. chunks in info_png
+-----------------------
+
+The LodePNGInfo struct contains fields with the unknown chunk in it. It has 3
+buffers (each with size) to contain 3 types of unknown chunks:
+the ones that come before the PLTE chunk, the ones that come between the PLTE
+and the IDAT chunks, and the ones that come after the IDAT chunks.
+It's necessary to make the distionction between these 3 cases because the PNG
+standard forces to keep the ordering of unknown chunks compared to the critical
+chunks, but does not force any other ordering rules.
+
+info_png.unknown_chunks_data[0] is the chunks before PLTE
+info_png.unknown_chunks_data[1] is the chunks after PLTE, before IDAT
+info_png.unknown_chunks_data[2] is the chunks after IDAT
+
+The chunks in these 3 buffers can be iterated through and read by using the same
+way described in the previous subchapter.
+
+When using the decoder to decode a PNG, you can make it store all unknown chunks
+if you set the option settings.remember_unknown_chunks to 1. By default, this
+option is off (0).
+
+The encoder will always encode unknown chunks that are stored in the info_png.
+If you need it to add a particular chunk that isn't known by LodePNG, you can
+use lodepng_chunk_append or lodepng_chunk_create to the chunk data in
+info_png.unknown_chunks_data[x].
+
+Chunks that are known by LodePNG should not be added in that way. E.g. to make
+LodePNG add a bKGD chunk, set background_defined to true and add the correct
+parameters there instead.
+
+
+9. compiler support
+-------------------
+
+No libraries other than the current standard C library are needed to compile
+LodePNG. For the C++ version, only the standard C++ library is needed on top.
+Add the files lodepng.c(pp) and lodepng.h to your project, include
+lodepng.h where needed, and your program can read/write PNG files.
+
+If performance is important, use optimization when compiling! For both the
+encoder and decoder, this makes a large difference.
+
+Make sure that LodePNG is compiled with the same compiler of the same version
+and with the same settings as the rest of the program, or the interfaces with
+std::vectors and std::strings in C++ can be incompatible.
+
+CHAR_BITS must be 8 or higher, because LodePNG uses unsigned chars for octets.
+
+*) gcc and g++
+
+LodePNG is developed in gcc so this compiler is natively supported. It gives no
+warnings with compiler options "-Wall -Wextra -pedantic -ansi", with gcc and g++
+version 4.7.0 on Linux.
+
+*) Mingw
+
+The Mingw compiler (a port of gcc) for Windows is fully supported by LodePNG.
+
+*) Visual Studio 2005 and Visual C++ 2005 Express Edition
+
+Versions 20070604 up to 20080107 have been tested on VS2005 and work. Visual
+studio may give warnings about 'fopen' being deprecated. A multiplatform library
+can't support the proposed Visual Studio alternative however.
+
+If you're using LodePNG in VS2005 and don't want to see the deprecated warnings,
+put this on top of lodepng.h before the inclusions:
+#define _CRT_SECURE_NO_DEPRECATE
+
+Visual Studio may want "stdafx.h" files to be included in each source file. That
+is not standard C++ and will not be added to the stock LodePNG. Try to find a
+setting to disable it for this source file.
+
+*) Visual Studio 6.0
+
+LodePNG support for Visual Studio 6.0 is not guaranteed because VS6 doesn't
+follow the C++ standard correctly.
+
+*) Comeau C/C++
+
+Vesion 20070107 compiles without problems on the Comeau C/C++ Online Test Drive
+at http://www.comeaucomputing.com/tryitout in both C90 and C++ mode.
+
+*) Compilers on Macintosh
+
+LodePNG has been reported to work both with the gcc and LLVM for Macintosh, both
+for C and C++.
+
+*) Other Compilers
+
+If you encounter problems on other compilers, feel free to let me know and I may
+try to fix it if the compiler is modern standards complient.
+
+
+10. examples
+------------
+
+This decoder example shows the most basic usage of LodePNG. More complex
+examples can be found on the LodePNG website.
+
+10.1. decoder C++ example
+-------------------------
+
+#include "lodepng.h"
+#include <iostream>
+
+int main(int argc, char *argv[])
+{
+  const char* filename = argc > 1 ? argv[1] : "test.png";
+
+  //load and decode
+  std::vector<unsigned char> image;
+  unsigned width, height;
+  unsigned error = lodepng::decode(image, width, height, filename);
+
+  //if there's an error, display it
+  if(error) std::cout << "decoder error " << error << ": " << lodepng_error_text(error) << std::endl;
+
+  //the pixels are now in the vector "image", 4 bytes per pixel, ordered RGBARGBA..., use it as texture, draw it, ...
+}
+
+10.2. decoder C example
+-----------------------
+
+#include "lodepng.h"
+
+int main(int argc, char *argv[])
+{
+  unsigned error;
+  unsigned char* image;
+  size_t width, height;
+  const char* filename = argc > 1 ? argv[1] : "test.png";
+
+  error = lodepng_decode32_file(&image, &width, &height, filename);
+
+  if(error) printf("decoder error %u: %s\n", error, lodepng_error_text(error));
+
+  / * use image here * /
+
+  free(image);
+  return 0;
+}
+
+
+11. changes
+-----------
+
+The version number of LodePNG is the date of the change given in the format
+yyyymmdd.
+
+Some changes aren't backwards compatible. Those are indicated with a (!)
+symbol.
+
+*) 23 jun 2012: Added more filter strategies. Made it easier to use custom alloc
+    and free functions and toggle #defines from compiler flags. Small fixes.
+*) 6 may 2012 (!): Made plugging in custom zlib/deflate functions more flexible.
+*) 22 apr 2012 (!): Made interface more consistent, renaming a lot. Removed
+    redundant C++ codec classes. Reduced amount of structs. Everything changed,
+    but it is cleaner now imho and functionality remains the same. Also fixed
+    several bugs and shrinked the implementation code. Made new samples.
+*) 6 nov 2011 (!): By default, the encoder now automatically chooses the best
+    PNG color model and bit depth, based on the amount and type of colors of the
+    raw image. For this, autoLeaveOutAlphaChannel replaced by auto_choose_color.
+*) 9 okt 2011: simpler hash chain implementation for the encoder.
+*) 8 sep 2011: lz77 encoder lazy matching instead of greedy matching.
+*) 23 aug 2011: tweaked the zlib compression parameters after benchmarking.
+    A bug with the PNG filtertype heuristic was fixed, so that it chooses much
+    better ones (it's quite significant). A setting to do an experimental, slow,
+    brute force search for PNG filter types is added.
+*) 17 aug 2011 (!): changed some C zlib related function names.
+*) 16 aug 2011: made the code less wide (max 120 characters per line).
+*) 17 apr 2011: code cleanup. Bugfixes. Convert low to 16-bit per sample colors.
+*) 21 feb 2011: fixed compiling for C90. Fixed compiling with sections disabled.
+*) 11 dec 2010: encoding is made faster, based on suggestion by Peter Eastman
+    to optimize long sequences of zeros.
+*) 13 nov 2010: added LodePNG_InfoColor_hasPaletteAlpha and
+    LodePNG_InfoColor_canHaveAlpha functions for convenience.
+*) 7 nov 2010: added LodePNG_error_text function to get error code description.
+*) 30 okt 2010: made decoding slightly faster
+*) 26 okt 2010: (!) changed some C function and struct names (more consistent).
+     Reorganized the documentation and the declaration order in the header.
+*) 08 aug 2010: only changed some comments and external samples.
+*) 05 jul 2010: fixed bug thanks to warnings in the new gcc version.
+*) 14 mar 2010: fixed bug where too much memory was allocated for char buffers.
+*) 02 sep 2008: fixed bug where it could create empty tree that linux apps could
+    read by ignoring the problem but windows apps couldn't.
+*) 06 jun 2008: added more error checks for out of memory cases.
+*) 26 apr 2008: added a few more checks here and there to ensure more safety.
+*) 06 mar 2008: crash with encoding of strings fixed
+*) 02 feb 2008: support for international text chunks added (iTXt)
+*) 23 jan 2008: small cleanups, and #defines to divide code in sections
+*) 20 jan 2008: support for unknown chunks allowing using LodePNG for an editor.
+*) 18 jan 2008: support for tIME and pHYs chunks added to encoder and decoder.
+*) 17 jan 2008: ability to encode and decode compressed zTXt chunks added
+    Also vareous fixes, such as in the deflate and the padding bits code.
+*) 13 jan 2008: Added ability to encode Adam7-interlaced images. Improved
+    filtering code of encoder.
+*) 07 jan 2008: (!) changed LodePNG to use ISO C90 instead of C++. A
+    C++ wrapper around this provides an interface almost identical to before.
+    Having LodePNG be pure ISO C90 makes it more portable. The C and C++ code
+    are together in these files but it works both for C and C++ compilers.
+*) 29 dec 2007: (!) changed most integer types to unsigned int + other tweaks
+*) 30 aug 2007: bug fixed which makes this Borland C++ compatible
+*) 09 aug 2007: some VS2005 warnings removed again
+*) 21 jul 2007: deflate code placed in new namespace separate from zlib code
+*) 08 jun 2007: fixed bug with 2- and 4-bit color, and small interlaced images
+*) 04 jun 2007: improved support for Visual Studio 2005: crash with accessing
+    invalid std::vector element [0] fixed, and level 3 and 4 warnings removed
+*) 02 jun 2007: made the encoder add a tag with version by default
+*) 27 may 2007: zlib and png code separated (but still in the same file),
+    simple encoder/decoder functions added for more simple usage cases
+*) 19 may 2007: minor fixes, some code cleaning, new error added (error 69),
+    moved some examples from here to lodepng_examples.cpp
+*) 12 may 2007: palette decoding bug fixed
+*) 24 apr 2007: changed the license from BSD to the zlib license
+*) 11 mar 2007: very simple addition: ability to encode bKGD chunks.
+*) 04 mar 2007: (!) tEXt chunk related fixes, and support for encoding
+    palettized PNG images. Plus little interface change with palette and texts.
+*) 03 mar 2007: Made it encode dynamic Huffman shorter  with repeat codes.
+    Fixed a bug where the end code of a block had length 0 in the Huffman tree.
+*) 26 feb 2007: Huffman compression with dynamic trees (BTYPE 2) now implemented
+    and supported by the encoder, resulting in smaller PNGs at the output.
+*) 27 jan 2007: Made the Adler-32 test faster so that a timewaste is gone.
+*) 24 jan 2007: gave encoder an error interface. Added color conversion from any
+    greyscale type to 8-bit greyscale with or without alpha.
+*) 21 jan 2007: (!) Totally changed the interface. It allows more color types
+    to convert to and is more uniform. See the manual for how it works now.
+*) 07 jan 2007: Some cleanup & fixes, and a few changes over the last days:
+    encode/decode custom tEXt chunks, separate classes for zlib & deflate, and
+    at last made the decoder give errors for incorrect Adler32 or Crc.
+*) 01 jan 2007: Fixed bug with encoding PNGs with less than 8 bits per channel.
+*) 29 dec 2006: Added support for encoding images without alpha channel, and
+    cleaned out code as well as making certain parts faster.
+*) 28 dec 2006: Added "Settings" to the encoder.
+*) 26 dec 2006: The encoder now does LZ77 encoding and produces much smaller files now.
+    Removed some code duplication in the decoder. Fixed little bug in an example.
+*) 09 dec 2006: (!) Placed output parameters of public functions as first parameter.
+    Fixed a bug of the decoder with 16-bit per color.
+*) 15 okt 2006: Changed documentation structure
+*) 09 okt 2006: Encoder class added. It encodes a valid PNG image from the
+    given image buffer, however for now it's not compressed.
+*) 08 sep 2006: (!) Changed to interface with a Decoder class
+*) 30 jul 2006: (!) LodePNG_InfoPng , width and height are now retrieved in different
+    way. Renamed decodePNG to decodePNGGeneric.
+*) 29 jul 2006: (!) Changed the interface: image info is now returned as a
+    struct of type LodePNG::LodePNG_Info, instead of a vector, which was a bit clumsy.
+*) 28 jul 2006: Cleaned the code and added new error checks.
+    Corrected terminology "deflate" into "inflate".
+*) 23 jun 2006: Added SDL example in the documentation in the header, this
+    example allows easy debugging by displaying the PNG and its transparency.
+*) 22 jun 2006: (!) Changed way to obtain error value. Added
+    loadFile function for convenience. Made decodePNG32 faster.
+*) 21 jun 2006: (!) Changed type of info vector to unsigned.
+    Changed position of palette in info vector. Fixed an important bug that
+    happened on PNGs with an uncompressed block.
+*) 16 jun 2006: Internally changed unsigned into unsigned where
+    needed, and performed some optimizations.
+*) 07 jun 2006: (!) Renamed functions to decodePNG and placed them
+    in LodePNG namespace. Changed the order of the parameters. Rewrote the
+    documentation in the header. Renamed files to lodepng.cpp and lodepng.h
+*) 22 apr 2006: Optimized and improved some code
+*) 07 sep 2005: (!) Changed to std::vector interface
+*) 12 aug 2005: Initial release (C++, decoder only)
+
+
+12. contact information
+-----------------------
+
+Feel free to contact me with suggestions, problems, comments, ... concerning
+LodePNG. If you encounter a PNG image that doesn't work properly with this
+decoder, feel free to send it and I'll use it to find and fix the problem.
+
+My email address is (puzzle the account and domain together with an @ symbol):
+Domain: gmail dot com.
+Account: lode dot vandevenne.
+
+
+Copyright (c) 2005-2012 Lode Vandevenne
+*/
diff --git a/lib/png.c b/lib/png.c
new file mode 100644
index 0000000..f71fc6a
--- /dev/null
+++ b/lib/png.c
@@ -0,0 +1,89 @@
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <fb.h>
+#include <asm/byteorder.h>
+#include <init.h>
+#include <image_renderer.h>
+#include <graphic_utils.h>
+#include <linux/zlib.h>
+
+#include "png.h"
+
+z_stream png_stream;
+static int initialized;
+
+int png_uncompress_init(void)
+{
+	if (!initialized++) {
+		png_stream.workspace = malloc(zlib_inflate_workspacesize());
+		if (!png_stream.workspace) {
+			initialized = 0;
+			return -ENOMEM;
+		}
+		png_stream.next_in = NULL;
+		png_stream.avail_in = 0;
+		zlib_inflateInit(&png_stream);
+	}
+	return 0;
+}
+
+void png_uncompress_exit(void)
+{
+	if (!--initialized) {
+		zlib_inflateEnd(&png_stream);
+		vfree(png_stream.workspace);
+	}
+}
+
+static int png_renderer(struct fb_info *info, struct image *img, void* fb,
+		int startx, int starty, void* offscreenbuf)
+{
+	int width, height;
+	void *buf;
+	int xres, yres;
+
+	xres = info->xres;
+	yres = info->yres;
+
+	if (startx < 0) {
+		startx = (xres - img->width) / 2;
+		if (startx < 0)
+			startx = 0;
+	}
+
+	if (starty < 0) {
+		starty = (yres - img->height) / 2;
+		if (starty < 0)
+			starty = 0;
+	}
+
+	width = min(img->width, xres - startx);
+	height = min(img->height, yres - starty);
+
+	buf = offscreenbuf ? offscreenbuf : fb;
+
+	rgba_blend(info, img->data, buf, height, width, startx, starty, true);
+
+	if (offscreenbuf) {
+		int fbsize;
+
+		fbsize = xres * yres * (info->bits_per_pixel >> 3);
+		memcpy(fb, offscreenbuf, fbsize);
+	}
+
+	return img->height;
+}
+
+static struct image_renderer png = {
+	.type = filetype_png,
+	.open = png_open,
+	.close = png_close,
+	.renderer = png_renderer,
+};
+
+static int png_init(void)
+{
+	return image_renderer_register(&png);
+}
+fs_initcall(png_init);
diff --git a/lib/png.h b/lib/png.h
new file mode 100644
index 0000000..3ac9364
--- /dev/null
+++ b/lib/png.h
@@ -0,0 +1,21 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
+ *
+ * GPL v2
+ */
+
+#ifndef __PNG_H__
+#define __PNG_H__
+
+#include <filetype.h>
+#include <linux/list.h>
+#include <errno.h>
+#include <linux/err.h>
+
+int png_uncompress_init(void);
+void png_uncompress_exit(void);
+void png_close(struct image *img);
+struct image *png_open(char *inbuf, int insize);
+extern z_stream png_stream;
+
+#endif /* __PNG_H__ */
diff --git a/lib/png_lode.c b/lib/png_lode.c
new file mode 100644
index 0000000..5c46370
--- /dev/null
+++ b/lib/png_lode.c
@@ -0,0 +1,90 @@
+#include <common.h>
+#include <errno.h>
+#include <malloc.h>
+#include <fb.h>
+#include <asm/byteorder.h>
+#include <init.h>
+#include <image_renderer.h>
+#include <graphic_utils.h>
+#include <linux/zlib.h>
+
+#include "lodepng.h"
+#include "png.h"
+
+unsigned lodepng_custom_zlib_decompress(unsigned char** out, size_t* outsize,
+					const unsigned char* in, size_t insize,
+					const LodePNGDecompressSettings* settings)
+{
+	int err;
+
+	png_stream.next_in = in;
+	png_stream.avail_in = insize;
+
+	png_stream.next_out = *out;
+	png_stream.avail_out = *outsize;
+
+	err = zlib_inflateReset(&png_stream);
+	if (err != Z_OK) {
+		printk("zlib_inflateReset error %d\n", err);
+		zlib_inflateEnd(&png_stream);
+		zlib_inflateInit(&png_stream);
+	}
+
+	err = zlib_inflate(&png_stream, Z_FINISH);
+	if (err != Z_STREAM_END)
+		goto err;
+	return 0;
+
+err:
+	printk("Error %d while decompressing!\n", err);
+	printk("%p(%d)->%p(%d)\n", in, insize, *out, *outsize);
+	return -EIO;
+}
+
+struct image *png_open(char *inbuf, int insize)
+{
+	LodePNGState state;
+	int ret;
+	unsigned error;
+	struct image *img = calloc(1, sizeof(struct image));
+	unsigned char *png;
+
+	if (!img)
+		return ERR_PTR(-ENOMEM);
+
+	ret = png_uncompress_init();
+	if (ret)
+		goto err;
+
+	lodepng_state_init(&state);
+
+	state.info_raw.colortype = LCT_RGBA;
+	state.info_raw.bitdepth = 8;
+
+	error = lodepng_decode(&png, &img->width, &img->height, &state, inbuf, insize);
+
+	if(error) {
+		printf("error %u: %s\n", error, lodepng_error_text(error));
+		ret = -EINVAL;
+		goto err;
+	}
+
+	img->bits_per_pixel = 4 << 3;
+	img->data = png;
+
+	pr_debug("png: %d x %d data@0x%p\n", img->width, img->height, img->data);
+
+	lodepng_state_cleanup(&state);
+
+	return img;
+err:
+	free(png);
+	free(img);
+	return ERR_PTR(ret);
+}
+
+void png_close(struct image *img)
+{
+	free(img->data);
+	png_uncompress_exit();
+}
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
