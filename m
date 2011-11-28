Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RV9Ow-0001vo-VQ
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 22:10:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 23:09:59 +0100
Message-Id: <1322518209-2965-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
References: <1322518209-2965-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/16] add kernel gunzip implementation
To: barebox@lists.infradead.org

The kernel uncompression functions have a unified API so use this
implementation to get it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/bootm.c                 |   10 +-
 include/common.h                 |    2 -
 include/gunzip.h                 |   10 +
 include/linux/zconf.h            |   57 +++
 include/linux/zlib.h             |  711 +++++++++++++++++++++++++++++
 include/linux/zutil.h            |  106 +++++
 lib/Makefile                     |    2 +-
 lib/decompress_inflate.c         |  183 ++++++++
 lib/zlib_inflate/Makefile        |   18 +
 lib/zlib_inflate/inffast.c       |  363 +++++++++++++++
 lib/zlib_inflate/inffast.h       |   11 +
 lib/zlib_inflate/inffixed.h      |   94 ++++
 lib/zlib_inflate/inflate.c       |  918 ++++++++++++++++++++++++++++++++++++++
 lib/zlib_inflate/inflate.h       |  111 +++++
 lib/zlib_inflate/inftrees.c      |  315 +++++++++++++
 lib/zlib_inflate/inftrees.h      |   59 +++
 lib/zlib_inflate/infutil.c       |   47 ++
 lib/zlib_inflate/infutil.h       |   25 +
 lib/zlib_inflate/modules.builtin |    1 +
 19 files changed, 3036 insertions(+), 7 deletions(-)
 create mode 100644 include/gunzip.h
 create mode 100644 include/linux/zconf.h
 create mode 100644 include/linux/zlib.h
 create mode 100644 include/linux/zutil.h
 create mode 100644 lib/decompress_inflate.c
 create mode 100644 lib/zlib_inflate/Makefile
 create mode 100644 lib/zlib_inflate/inffast.c
 create mode 100644 lib/zlib_inflate/inffast.h
 create mode 100644 lib/zlib_inflate/inffixed.h
 create mode 100644 lib/zlib_inflate/inflate.c
 create mode 100644 lib/zlib_inflate/inflate.h
 create mode 100644 lib/zlib_inflate/inftrees.c
 create mode 100644 lib/zlib_inflate/inftrees.h
 create mode 100644 lib/zlib_inflate/infutil.c
 create mode 100644 lib/zlib_inflate/infutil.h
 create mode 100644 lib/zlib_inflate/modules.builtin

diff --git a/commands/bootm.c b/commands/bootm.c
index 22b4964..578e9a5 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -30,7 +30,7 @@
 #include <command.h>
 #include <image.h>
 #include <malloc.h>
-#include <zlib.h>
+#include <gunzip.h>
 #include <environment.h>
 #include <asm/byteorder.h>
 #include <xfuncs.h>
@@ -134,9 +134,11 @@ int relocate_image(struct image_handle *handle, void *load_address)
 #ifdef CONFIG_CMD_BOOTM_ZLIB
 	case IH_COMP_GZIP:
 		printf ("   Uncompressing ... ");
-		if (gunzip (load_address, unc_len,
-			    (uchar *)data, &len) != 0)
-			return -1;
+
+		ret = gunzip((void *)data, len, NULL, NULL, load_address, NULL,
+				unzip_error);
+		if (ret)
+			return ret;
 		break;
 #endif
 #ifdef CONFIG_CMD_BOOTM_BZLIB
diff --git a/include/common.h b/include/common.h
index d63ad02..5b69beb 100644
--- a/include/common.h
+++ b/include/common.h
@@ -111,8 +111,6 @@ void __noreturn reset_cpu(unsigned long addr);
 void	udelay (unsigned long);
 void	mdelay (unsigned long);
 
-int gunzip(void *dst, int dstlen, unsigned char *src, unsigned long *lenp);
-
 /* lib_generic/vsprintf.c */
 ulong	simple_strtoul(const char *cp,char **endp,unsigned int base);
 #ifdef CFG_64BIT_VSPRINTF
diff --git a/include/gunzip.h b/include/gunzip.h
new file mode 100644
index 0000000..8c0aef1
--- /dev/null
+++ b/include/gunzip.h
@@ -0,0 +1,10 @@
+#ifndef INFLATE_H
+#define INFLATE_H
+
+int gunzip(unsigned char *inbuf, int len,
+	   int(*fill)(void*, unsigned int),
+	   int(*flush)(void*, unsigned int),
+	   unsigned char *output,
+	   int *pos,
+	   void(*error_fn)(char *x));
+#endif
diff --git a/include/linux/zconf.h b/include/linux/zconf.h
new file mode 100644
index 0000000..9e8750e
--- /dev/null
+++ b/include/linux/zconf.h
@@ -0,0 +1,57 @@
+/* zconf.h -- configuration of the zlib compression library
+ * Copyright (C) 1995-1998 Jean-loup Gailly.
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* @(#) $Id$ */
+
+#ifndef _ZCONF_H
+#define _ZCONF_H
+
+/* The memory requirements for deflate are (in bytes):
+            (1 << (windowBits+2)) +  (1 << (memLevel+9))
+ that is: 128K for windowBits=15  +  128K for memLevel = 8  (default values)
+ plus a few kilobytes for small objects. For example, if you want to reduce
+ the default memory requirements from 256K to 128K, compile with
+     make CFLAGS="-O -DMAX_WBITS=14 -DMAX_MEM_LEVEL=7"
+ Of course this will generally degrade compression (there's no free lunch).
+
+   The memory requirements for inflate are (in bytes) 1 << windowBits
+ that is, 32K for windowBits=15 (default value) plus a few kilobytes
+ for small objects.
+*/
+
+/* Maximum value for memLevel in deflateInit2 */
+#ifndef MAX_MEM_LEVEL
+#  define MAX_MEM_LEVEL 8
+#endif
+
+/* Maximum value for windowBits in deflateInit2 and inflateInit2.
+ * WARNING: reducing MAX_WBITS makes minigzip unable to extract .gz files
+ * created by gzip. (Files created by minigzip can still be extracted by
+ * gzip.)
+ */
+#ifndef MAX_WBITS
+#  define MAX_WBITS   15 /* 32K LZ77 window */
+#endif
+
+/* default windowBits for decompression. MAX_WBITS is for compression only */
+#ifndef DEF_WBITS
+#  define DEF_WBITS MAX_WBITS
+#endif
+
+/* default memLevel */
+#if MAX_MEM_LEVEL >= 8
+#  define DEF_MEM_LEVEL 8
+#else
+#  define DEF_MEM_LEVEL  MAX_MEM_LEVEL
+#endif
+
+                        /* Type declarations */
+
+typedef unsigned char  Byte;  /* 8 bits */
+typedef unsigned int   uInt;  /* 16 bits or more */
+typedef unsigned long  uLong; /* 32 bits or more */
+typedef void     *voidp;
+
+#endif /* _ZCONF_H */
diff --git a/include/linux/zlib.h b/include/linux/zlib.h
new file mode 100644
index 0000000..d8bd20c
--- /dev/null
+++ b/include/linux/zlib.h
@@ -0,0 +1,711 @@
+/* zlib.h -- interface of the 'zlib' general purpose compression library
+
+  Copyright (C) 1995-2005 Jean-loup Gailly and Mark Adler
+
+  This software is provided 'as-is', without any express or implied
+  warranty.  In no event will the authors be held liable for any damages
+  arising from the use of this software.
+
+  Permission is granted to anyone to use this software for any purpose,
+  including commercial applications, and to alter it and redistribute it
+  freely, subject to the following restrictions:
+
+  1. The origin of this software must not be misrepresented; you must not
+     claim that you wrote the original software. If you use this software
+     in a product, an acknowledgment in the product documentation would be
+     appreciated but is not required.
+  2. Altered source versions must be plainly marked as such, and must not be
+     misrepresented as being the original software.
+  3. This notice may not be removed or altered from any source distribution.
+
+  Jean-loup Gailly        Mark Adler
+  jloup@gzip.org          madler@alumni.caltech.edu
+
+
+  The data format used by the zlib library is described by RFCs (Request for
+  Comments) 1950 to 1952 in the files http://www.ietf.org/rfc/rfc1950.txt
+  (zlib format), rfc1951.txt (deflate format) and rfc1952.txt (gzip format).
+*/
+
+#ifndef _ZLIB_H
+#define _ZLIB_H
+
+#include <linux/zconf.h>
+
+/* zlib deflate based on ZLIB_VERSION "1.1.3" */
+/* zlib inflate based on ZLIB_VERSION "1.2.3" */
+
+/*
+  This is a modified version of zlib for use inside the Linux kernel.
+  The main changes are to perform all memory allocation in advance.
+
+  Inflation Changes:
+    * Z_PACKET_FLUSH is added and used by ppp_deflate. Before returning
+      this checks there is no more input data available and the next data
+      is a STORED block. It also resets the mode to be read for the next
+      data, all as per PPP requirements.
+    * Addition of zlib_inflateIncomp which copies incompressible data into
+      the history window and adjusts the accoutning without calling
+      zlib_inflate itself to inflate the data.
+*/
+
+/*
+     The 'zlib' compression library provides in-memory compression and
+  decompression functions, including integrity checks of the uncompressed
+  data.  This version of the library supports only one compression method
+  (deflation) but other algorithms will be added later and will have the same
+  stream interface.
+
+     Compression can be done in a single step if the buffers are large
+  enough (for example if an input file is mmap'ed), or can be done by
+  repeated calls of the compression function.  In the latter case, the
+  application must provide more input and/or consume the output
+  (providing more output space) before each call.
+
+     The compressed data format used by default by the in-memory functions is
+  the zlib format, which is a zlib wrapper documented in RFC 1950, wrapped
+  around a deflate stream, which is itself documented in RFC 1951.
+
+     The library also supports reading and writing files in gzip (.gz) format
+  with an interface similar to that of stdio.
+
+     The zlib format was designed to be compact and fast for use in memory
+  and on communications channels.  The gzip format was designed for single-
+  file compression on file systems, has a larger header than zlib to maintain
+  directory information, and uses a different, slower check method than zlib.
+
+     The library does not install any signal handler. The decoder checks
+  the consistency of the compressed data, so the library should never
+  crash even in case of corrupted input.
+*/
+
+struct internal_state;
+
+typedef struct z_stream_s {
+    const Byte *next_in;   /* next input byte */
+    uInt     avail_in;  /* number of bytes available at next_in */
+    uLong    total_in;  /* total nb of input bytes read so far */
+
+    Byte    *next_out;  /* next output byte should be put there */
+    uInt     avail_out; /* remaining free space at next_out */
+    uLong    total_out; /* total nb of bytes output so far */
+
+    char     *msg;      /* last error message, NULL if no error */
+    struct internal_state *state; /* not visible by applications */
+
+    void     *workspace; /* memory allocated for this stream */
+
+    int     data_type;  /* best guess about the data type: ascii or binary */
+    uLong   adler;      /* adler32 value of the uncompressed data */
+    uLong   reserved;   /* reserved for future use */
+} z_stream;
+
+typedef z_stream *z_streamp;
+
+/*
+   The application must update next_in and avail_in when avail_in has
+   dropped to zero. It must update next_out and avail_out when avail_out
+   has dropped to zero. The application must initialize zalloc, zfree and
+   opaque before calling the init function. All other fields are set by the
+   compression library and must not be updated by the application.
+
+   The opaque value provided by the application will be passed as the first
+   parameter for calls of zalloc and zfree. This can be useful for custom
+   memory management. The compression library attaches no meaning to the
+   opaque value.
+
+   zalloc must return NULL if there is not enough memory for the object.
+   If zlib is used in a multi-threaded application, zalloc and zfree must be
+   thread safe.
+
+   On 16-bit systems, the functions zalloc and zfree must be able to allocate
+   exactly 65536 bytes, but will not be required to allocate more than this
+   if the symbol MAXSEG_64K is defined (see zconf.h). WARNING: On MSDOS,
+   pointers returned by zalloc for objects of exactly 65536 bytes *must*
+   have their offset normalized to zero. The default allocation function
+   provided by this library ensures this (see zutil.c). To reduce memory
+   requirements and avoid any allocation of 64K objects, at the expense of
+   compression ratio, compile the library with -DMAX_WBITS=14 (see zconf.h).
+
+   The fields total_in and total_out can be used for statistics or
+   progress reports. After compression, total_in holds the total size of
+   the uncompressed data and may be saved for use in the decompressor
+   (particularly if the decompressor wants to decompress everything in
+   a single step).
+*/
+
+                        /* constants */
+
+#define Z_NO_FLUSH      0
+#define Z_PARTIAL_FLUSH 1 /* will be removed, use Z_SYNC_FLUSH instead */
+#define Z_PACKET_FLUSH  2
+#define Z_SYNC_FLUSH    3
+#define Z_FULL_FLUSH    4
+#define Z_FINISH        5
+#define Z_BLOCK         6 /* Only for inflate at present */
+/* Allowed flush values; see deflate() and inflate() below for details */
+
+#define Z_OK            0
+#define Z_STREAM_END    1
+#define Z_NEED_DICT     2
+#define Z_ERRNO        (-1)
+#define Z_STREAM_ERROR (-2)
+#define Z_DATA_ERROR   (-3)
+#define Z_MEM_ERROR    (-4)
+#define Z_BUF_ERROR    (-5)
+#define Z_VERSION_ERROR (-6)
+/* Return codes for the compression/decompression functions. Negative
+ * values are errors, positive values are used for special but normal events.
+ */
+
+#define Z_NO_COMPRESSION         0
+#define Z_BEST_SPEED             1
+#define Z_BEST_COMPRESSION       9
+#define Z_DEFAULT_COMPRESSION  (-1)
+/* compression levels */
+
+#define Z_FILTERED            1
+#define Z_HUFFMAN_ONLY        2
+#define Z_DEFAULT_STRATEGY    0
+/* compression strategy; see deflateInit2() below for details */
+
+#define Z_BINARY   0
+#define Z_ASCII    1
+#define Z_UNKNOWN  2
+/* Possible values of the data_type field */
+
+#define Z_DEFLATED   8
+/* The deflate compression method (the only one supported in this version) */
+
+                        /* basic functions */
+
+extern int zlib_deflate_workspacesize (int windowBits, int memLevel);
+/*
+   Returns the number of bytes that needs to be allocated for a per-
+   stream workspace with the specified parameters.  A pointer to this
+   number of bytes should be returned in stream->workspace before
+   you call zlib_deflateInit() or zlib_deflateInit2().  If you call
+   zlib_deflateInit(), specify windowBits = MAX_WBITS and memLevel =
+   MAX_MEM_LEVEL here.  If you call zlib_deflateInit2(), the windowBits
+   and memLevel parameters passed to zlib_deflateInit2() must not
+   exceed those passed here.
+*/
+
+/*
+extern int deflateInit (z_streamp strm, int level);
+
+     Initializes the internal stream state for compression. The fields
+   zalloc, zfree and opaque must be initialized before by the caller.
+   If zalloc and zfree are set to NULL, deflateInit updates them to
+   use default allocation functions.
+
+     The compression level must be Z_DEFAULT_COMPRESSION, or between 0 and 9:
+   1 gives best speed, 9 gives best compression, 0 gives no compression at
+   all (the input data is simply copied a block at a time).
+   Z_DEFAULT_COMPRESSION requests a default compromise between speed and
+   compression (currently equivalent to level 6).
+
+     deflateInit returns Z_OK if success, Z_MEM_ERROR if there was not
+   enough memory, Z_STREAM_ERROR if level is not a valid compression level,
+   Z_VERSION_ERROR if the zlib library version (zlib_version) is incompatible
+   with the version assumed by the caller (ZLIB_VERSION).
+   msg is set to null if there is no error message.  deflateInit does not
+   perform any compression: this will be done by deflate().
+*/
+
+
+extern int zlib_deflate (z_streamp strm, int flush);
+/*
+    deflate compresses as much data as possible, and stops when the input
+  buffer becomes empty or the output buffer becomes full. It may introduce some
+  output latency (reading input without producing any output) except when
+  forced to flush.
+
+    The detailed semantics are as follows. deflate performs one or both of the
+  following actions:
+
+  - Compress more input starting at next_in and update next_in and avail_in
+    accordingly. If not all input can be processed (because there is not
+    enough room in the output buffer), next_in and avail_in are updated and
+    processing will resume at this point for the next call of deflate().
+
+  - Provide more output starting at next_out and update next_out and avail_out
+    accordingly. This action is forced if the parameter flush is non zero.
+    Forcing flush frequently degrades the compression ratio, so this parameter
+    should be set only when necessary (in interactive applications).
+    Some output may be provided even if flush is not set.
+
+  Before the call of deflate(), the application should ensure that at least
+  one of the actions is possible, by providing more input and/or consuming
+  more output, and updating avail_in or avail_out accordingly; avail_out
+  should never be zero before the call. The application can consume the
+  compressed output when it wants, for example when the output buffer is full
+  (avail_out == 0), or after each call of deflate(). If deflate returns Z_OK
+  and with zero avail_out, it must be called again after making room in the
+  output buffer because there might be more output pending.
+
+    If the parameter flush is set to Z_SYNC_FLUSH, all pending output is
+  flushed to the output buffer and the output is aligned on a byte boundary, so
+  that the decompressor can get all input data available so far. (In particular
+  avail_in is zero after the call if enough output space has been provided
+  before the call.)  Flushing may degrade compression for some compression
+  algorithms and so it should be used only when necessary.
+
+    If flush is set to Z_FULL_FLUSH, all output is flushed as with
+  Z_SYNC_FLUSH, and the compression state is reset so that decompression can
+  restart from this point if previous compressed data has been damaged or if
+  random access is desired. Using Z_FULL_FLUSH too often can seriously degrade
+  the compression.
+
+    If deflate returns with avail_out == 0, this function must be called again
+  with the same value of the flush parameter and more output space (updated
+  avail_out), until the flush is complete (deflate returns with non-zero
+  avail_out).
+
+    If the parameter flush is set to Z_FINISH, pending input is processed,
+  pending output is flushed and deflate returns with Z_STREAM_END if there
+  was enough output space; if deflate returns with Z_OK, this function must be
+  called again with Z_FINISH and more output space (updated avail_out) but no
+  more input data, until it returns with Z_STREAM_END or an error. After
+  deflate has returned Z_STREAM_END, the only possible operations on the
+  stream are deflateReset or deflateEnd.
+
+    Z_FINISH can be used immediately after deflateInit if all the compression
+  is to be done in a single step. In this case, avail_out must be at least
+  0.1% larger than avail_in plus 12 bytes.  If deflate does not return
+  Z_STREAM_END, then it must be called again as described above.
+
+    deflate() sets strm->adler to the adler32 checksum of all input read
+  so far (that is, total_in bytes).
+
+    deflate() may update data_type if it can make a good guess about
+  the input data type (Z_ASCII or Z_BINARY). In doubt, the data is considered
+  binary. This field is only for information purposes and does not affect
+  the compression algorithm in any manner.
+
+    deflate() returns Z_OK if some progress has been made (more input
+  processed or more output produced), Z_STREAM_END if all input has been
+  consumed and all output has been produced (only when flush is set to
+  Z_FINISH), Z_STREAM_ERROR if the stream state was inconsistent (for example
+  if next_in or next_out was NULL), Z_BUF_ERROR if no progress is possible
+  (for example avail_in or avail_out was zero).
+*/
+
+
+extern int zlib_deflateEnd (z_streamp strm);
+/*
+     All dynamically allocated data structures for this stream are freed.
+   This function discards any unprocessed input and does not flush any
+   pending output.
+
+     deflateEnd returns Z_OK if success, Z_STREAM_ERROR if the
+   stream state was inconsistent, Z_DATA_ERROR if the stream was freed
+   prematurely (some input or output was discarded). In the error case,
+   msg may be set but then points to a static string (which must not be
+   deallocated).
+*/
+
+
+extern int zlib_inflate_workspacesize (void);
+/*
+   Returns the number of bytes that needs to be allocated for a per-
+   stream workspace.  A pointer to this number of bytes should be
+   returned in stream->workspace before calling zlib_inflateInit().
+*/
+
+/*
+extern int zlib_inflateInit (z_streamp strm);
+
+     Initializes the internal stream state for decompression. The fields
+   next_in, avail_in, and workspace must be initialized before by
+   the caller. If next_in is not NULL and avail_in is large enough (the exact
+   value depends on the compression method), inflateInit determines the
+   compression method from the zlib header and allocates all data structures
+   accordingly; otherwise the allocation will be deferred to the first call of
+   inflate.  If zalloc and zfree are set to NULL, inflateInit updates them to
+   use default allocation functions.
+
+     inflateInit returns Z_OK if success, Z_MEM_ERROR if there was not enough
+   memory, Z_VERSION_ERROR if the zlib library version is incompatible with the
+   version assumed by the caller.  msg is set to null if there is no error
+   message. inflateInit does not perform any decompression apart from reading
+   the zlib header if present: this will be done by inflate().  (So next_in and
+   avail_in may be modified, but next_out and avail_out are unchanged.)
+*/
+
+
+extern int zlib_inflate (z_streamp strm, int flush);
+/*
+    inflate decompresses as much data as possible, and stops when the input
+  buffer becomes empty or the output buffer becomes full. It may introduce
+  some output latency (reading input without producing any output) except when
+  forced to flush.
+
+  The detailed semantics are as follows. inflate performs one or both of the
+  following actions:
+
+  - Decompress more input starting at next_in and update next_in and avail_in
+    accordingly. If not all input can be processed (because there is not
+    enough room in the output buffer), next_in is updated and processing
+    will resume at this point for the next call of inflate().
+
+  - Provide more output starting at next_out and update next_out and avail_out
+    accordingly.  inflate() provides as much output as possible, until there
+    is no more input data or no more space in the output buffer (see below
+    about the flush parameter).
+
+  Before the call of inflate(), the application should ensure that at least
+  one of the actions is possible, by providing more input and/or consuming
+  more output, and updating the next_* and avail_* values accordingly.
+  The application can consume the uncompressed output when it wants, for
+  example when the output buffer is full (avail_out == 0), or after each
+  call of inflate(). If inflate returns Z_OK and with zero avail_out, it
+  must be called again after making room in the output buffer because there
+  might be more output pending.
+
+    The flush parameter of inflate() can be Z_NO_FLUSH, Z_SYNC_FLUSH,
+  Z_FINISH, or Z_BLOCK. Z_SYNC_FLUSH requests that inflate() flush as much
+  output as possible to the output buffer. Z_BLOCK requests that inflate() stop
+  if and when it gets to the next deflate block boundary. When decoding the
+  zlib or gzip format, this will cause inflate() to return immediately after
+  the header and before the first block. When doing a raw inflate, inflate()
+  will go ahead and process the first block, and will return when it gets to
+  the end of that block, or when it runs out of data.
+
+    The Z_BLOCK option assists in appending to or combining deflate streams.
+  Also to assist in this, on return inflate() will set strm->data_type to the
+  number of unused bits in the last byte taken from strm->next_in, plus 64
+  if inflate() is currently decoding the last block in the deflate stream,
+  plus 128 if inflate() returned immediately after decoding an end-of-block
+  code or decoding the complete header up to just before the first byte of the
+  deflate stream. The end-of-block will not be indicated until all of the
+  uncompressed data from that block has been written to strm->next_out.  The
+  number of unused bits may in general be greater than seven, except when
+  bit 7 of data_type is set, in which case the number of unused bits will be
+  less than eight.
+
+    inflate() should normally be called until it returns Z_STREAM_END or an
+  error. However if all decompression is to be performed in a single step
+  (a single call of inflate), the parameter flush should be set to
+  Z_FINISH. In this case all pending input is processed and all pending
+  output is flushed; avail_out must be large enough to hold all the
+  uncompressed data. (The size of the uncompressed data may have been saved
+  by the compressor for this purpose.) The next operation on this stream must
+  be inflateEnd to deallocate the decompression state. The use of Z_FINISH
+  is never required, but can be used to inform inflate that a faster approach
+  may be used for the single inflate() call.
+
+     In this implementation, inflate() always flushes as much output as
+  possible to the output buffer, and always uses the faster approach on the
+  first call. So the only effect of the flush parameter in this implementation
+  is on the return value of inflate(), as noted below, or when it returns early
+  because Z_BLOCK is used.
+
+     If a preset dictionary is needed after this call (see inflateSetDictionary
+  below), inflate sets strm->adler to the adler32 checksum of the dictionary
+  chosen by the compressor and returns Z_NEED_DICT; otherwise it sets
+  strm->adler to the adler32 checksum of all output produced so far (that is,
+  total_out bytes) and returns Z_OK, Z_STREAM_END or an error code as described
+  below. At the end of the stream, inflate() checks that its computed adler32
+  checksum is equal to that saved by the compressor and returns Z_STREAM_END
+  only if the checksum is correct.
+
+    inflate() will decompress and check either zlib-wrapped or gzip-wrapped
+  deflate data.  The header type is detected automatically.  Any information
+  contained in the gzip header is not retained, so applications that need that
+  information should instead use raw inflate, see inflateInit2() below, or
+  inflateBack() and perform their own processing of the gzip header and
+  trailer.
+
+    inflate() returns Z_OK if some progress has been made (more input processed
+  or more output produced), Z_STREAM_END if the end of the compressed data has
+  been reached and all uncompressed output has been produced, Z_NEED_DICT if a
+  preset dictionary is needed at this point, Z_DATA_ERROR if the input data was
+  corrupted (input stream not conforming to the zlib format or incorrect check
+  value), Z_STREAM_ERROR if the stream structure was inconsistent (for example
+  if next_in or next_out was NULL), Z_MEM_ERROR if there was not enough memory,
+  Z_BUF_ERROR if no progress is possible or if there was not enough room in the
+  output buffer when Z_FINISH is used. Note that Z_BUF_ERROR is not fatal, and
+  inflate() can be called again with more input and more output space to
+  continue decompressing. If Z_DATA_ERROR is returned, the application may then
+  call inflateSync() to look for a good compression block if a partial recovery
+  of the data is desired.
+*/
+
+
+extern int zlib_inflateEnd (z_streamp strm);
+/*
+     All dynamically allocated data structures for this stream are freed.
+   This function discards any unprocessed input and does not flush any
+   pending output.
+
+     inflateEnd returns Z_OK if success, Z_STREAM_ERROR if the stream state
+   was inconsistent. In the error case, msg may be set but then points to a
+   static string (which must not be deallocated).
+*/
+
+                        /* Advanced functions */
+
+/*
+    The following functions are needed only in some special applications.
+*/
+
+/*
+extern int deflateInit2 (z_streamp strm,
+                                     int  level,
+                                     int  method,
+                                     int  windowBits,
+                                     int  memLevel,
+                                     int  strategy);
+
+     This is another version of deflateInit with more compression options. The
+   fields next_in, zalloc, zfree and opaque must be initialized before by
+   the caller.
+
+     The method parameter is the compression method. It must be Z_DEFLATED in
+   this version of the library.
+
+     The windowBits parameter is the base two logarithm of the window size
+   (the size of the history buffer).  It should be in the range 8..15 for this
+   version of the library. Larger values of this parameter result in better
+   compression at the expense of memory usage. The default value is 15 if
+   deflateInit is used instead.
+
+     The memLevel parameter specifies how much memory should be allocated
+   for the internal compression state. memLevel=1 uses minimum memory but
+   is slow and reduces compression ratio; memLevel=9 uses maximum memory
+   for optimal speed. The default value is 8. See zconf.h for total memory
+   usage as a function of windowBits and memLevel.
+
+     The strategy parameter is used to tune the compression algorithm. Use the
+   value Z_DEFAULT_STRATEGY for normal data, Z_FILTERED for data produced by a
+   filter (or predictor), or Z_HUFFMAN_ONLY to force Huffman encoding only (no
+   string match).  Filtered data consists mostly of small values with a
+   somewhat random distribution. In this case, the compression algorithm is
+   tuned to compress them better. The effect of Z_FILTERED is to force more
+   Huffman coding and less string matching; it is somewhat intermediate
+   between Z_DEFAULT and Z_HUFFMAN_ONLY. The strategy parameter only affects
+   the compression ratio but not the correctness of the compressed output even
+   if it is not set appropriately.
+
+      deflateInit2 returns Z_OK if success, Z_MEM_ERROR if there was not enough
+   memory, Z_STREAM_ERROR if a parameter is invalid (such as an invalid
+   method). msg is set to null if there is no error message.  deflateInit2 does
+   not perform any compression: this will be done by deflate().
+*/
+
+#if 0
+extern int zlib_deflateSetDictionary (z_streamp strm,
+						     const Byte *dictionary,
+						     uInt  dictLength);
+#endif
+/*
+     Initializes the compression dictionary from the given byte sequence
+   without producing any compressed output. This function must be called
+   immediately after deflateInit, deflateInit2 or deflateReset, before any
+   call of deflate. The compressor and decompressor must use exactly the same
+   dictionary (see inflateSetDictionary).
+
+     The dictionary should consist of strings (byte sequences) that are likely
+   to be encountered later in the data to be compressed, with the most commonly
+   used strings preferably put towards the end of the dictionary. Using a
+   dictionary is most useful when the data to be compressed is short and can be
+   predicted with good accuracy; the data can then be compressed better than
+   with the default empty dictionary.
+
+     Depending on the size of the compression data structures selected by
+   deflateInit or deflateInit2, a part of the dictionary may in effect be
+   discarded, for example if the dictionary is larger than the window size in
+   deflate or deflate2. Thus the strings most likely to be useful should be
+   put at the end of the dictionary, not at the front.
+
+     Upon return of this function, strm->adler is set to the Adler32 value
+   of the dictionary; the decompressor may later use this value to determine
+   which dictionary has been used by the compressor. (The Adler32 value
+   applies to the whole dictionary even if only a subset of the dictionary is
+   actually used by the compressor.)
+
+     deflateSetDictionary returns Z_OK if success, or Z_STREAM_ERROR if a
+   parameter is invalid (such as NULL dictionary) or the stream state is
+   inconsistent (for example if deflate has already been called for this stream
+   or if the compression method is bsort). deflateSetDictionary does not
+   perform any compression: this will be done by deflate().
+*/
+
+#if 0
+extern int zlib_deflateCopy (z_streamp dest, z_streamp source);
+#endif
+
+/*
+     Sets the destination stream as a complete copy of the source stream.
+
+     This function can be useful when several compression strategies will be
+   tried, for example when there are several ways of pre-processing the input
+   data with a filter. The streams that will be discarded should then be freed
+   by calling deflateEnd.  Note that deflateCopy duplicates the internal
+   compression state which can be quite large, so this strategy is slow and
+   can consume lots of memory.
+
+     deflateCopy returns Z_OK if success, Z_MEM_ERROR if there was not
+   enough memory, Z_STREAM_ERROR if the source stream state was inconsistent
+   (such as zalloc being NULL). msg is left unchanged in both source and
+   destination.
+*/
+
+extern int zlib_deflateReset (z_streamp strm);
+/*
+     This function is equivalent to deflateEnd followed by deflateInit,
+   but does not free and reallocate all the internal compression state.
+   The stream will keep the same compression level and any other attributes
+   that may have been set by deflateInit2.
+
+      deflateReset returns Z_OK if success, or Z_STREAM_ERROR if the source
+   stream state was inconsistent (such as zalloc or state being NULL).
+*/
+
+static inline unsigned long deflateBound(unsigned long s)
+{
+	return s + ((s + 7) >> 3) + ((s + 63) >> 6) + 11;
+}
+
+#if 0
+extern int zlib_deflateParams (z_streamp strm, int level, int strategy);
+#endif
+/*
+     Dynamically update the compression level and compression strategy.  The
+   interpretation of level and strategy is as in deflateInit2.  This can be
+   used to switch between compression and straight copy of the input data, or
+   to switch to a different kind of input data requiring a different
+   strategy. If the compression level is changed, the input available so far
+   is compressed with the old level (and may be flushed); the new level will
+   take effect only at the next call of deflate().
+
+     Before the call of deflateParams, the stream state must be set as for
+   a call of deflate(), since the currently available input may have to
+   be compressed and flushed. In particular, strm->avail_out must be non-zero.
+
+     deflateParams returns Z_OK if success, Z_STREAM_ERROR if the source
+   stream state was inconsistent or if a parameter was invalid, Z_BUF_ERROR
+   if strm->avail_out was zero.
+*/
+
+/*
+extern int inflateInit2 (z_streamp strm, int  windowBits);
+
+     This is another version of inflateInit with an extra parameter. The
+   fields next_in, avail_in, zalloc, zfree and opaque must be initialized
+   before by the caller.
+
+     The windowBits parameter is the base two logarithm of the maximum window
+   size (the size of the history buffer).  It should be in the range 8..15 for
+   this version of the library. The default value is 15 if inflateInit is used
+   instead. windowBits must be greater than or equal to the windowBits value
+   provided to deflateInit2() while compressing, or it must be equal to 15 if
+   deflateInit2() was not used. If a compressed stream with a larger window
+   size is given as input, inflate() will return with the error code
+   Z_DATA_ERROR instead of trying to allocate a larger window.
+
+     windowBits can also be -8..-15 for raw inflate. In this case, -windowBits
+   determines the window size. inflate() will then process raw deflate data,
+   not looking for a zlib or gzip header, not generating a check value, and not
+   looking for any check values for comparison at the end of the stream. This
+   is for use with other formats that use the deflate compressed data format
+   such as zip.  Those formats provide their own check values. If a custom
+   format is developed using the raw deflate format for compressed data, it is
+   recommended that a check value such as an adler32 or a crc32 be applied to
+   the uncompressed data as is done in the zlib, gzip, and zip formats.  For
+   most applications, the zlib format should be used as is. Note that comments
+   above on the use in deflateInit2() applies to the magnitude of windowBits.
+
+     windowBits can also be greater than 15 for optional gzip decoding. Add
+   32 to windowBits to enable zlib and gzip decoding with automatic header
+   detection, or add 16 to decode only the gzip format (the zlib format will
+   return a Z_DATA_ERROR).  If a gzip stream is being decoded, strm->adler is
+   a crc32 instead of an adler32.
+
+     inflateInit2 returns Z_OK if success, Z_MEM_ERROR if there was not enough
+   memory, Z_STREAM_ERROR if a parameter is invalid (such as a null strm). msg
+   is set to null if there is no error message.  inflateInit2 does not perform
+   any decompression apart from reading the zlib header if present: this will
+   be done by inflate(). (So next_in and avail_in may be modified, but next_out
+   and avail_out are unchanged.)
+*/
+
+extern int zlib_inflateSetDictionary (z_streamp strm,
+						     const Byte *dictionary,
+						     uInt  dictLength);
+/*
+     Initializes the decompression dictionary from the given uncompressed byte
+   sequence. This function must be called immediately after a call of inflate,
+   if that call returned Z_NEED_DICT. The dictionary chosen by the compressor
+   can be determined from the adler32 value returned by that call of inflate.
+   The compressor and decompressor must use exactly the same dictionary (see
+   deflateSetDictionary).  For raw inflate, this function can be called
+   immediately after inflateInit2() or inflateReset() and before any call of
+   inflate() to set the dictionary.  The application must insure that the
+   dictionary that was used for compression is provided.
+
+     inflateSetDictionary returns Z_OK if success, Z_STREAM_ERROR if a
+   parameter is invalid (such as NULL dictionary) or the stream state is
+   inconsistent, Z_DATA_ERROR if the given dictionary doesn't match the
+   expected one (incorrect adler32 value). inflateSetDictionary does not
+   perform any decompression: this will be done by subsequent calls of
+   inflate().
+*/
+
+#if 0
+extern int zlib_inflateSync (z_streamp strm);
+#endif
+/*
+    Skips invalid compressed data until a full flush point (see above the
+  description of deflate with Z_FULL_FLUSH) can be found, or until all
+  available input is skipped. No output is provided.
+
+    inflateSync returns Z_OK if a full flush point has been found, Z_BUF_ERROR
+  if no more input was provided, Z_DATA_ERROR if no flush point has been found,
+  or Z_STREAM_ERROR if the stream structure was inconsistent. In the success
+  case, the application may save the current current value of total_in which
+  indicates where valid compressed data was found. In the error case, the
+  application may repeatedly call inflateSync, providing more input each time,
+  until success or end of the input data.
+*/
+
+extern int zlib_inflateReset (z_streamp strm);
+/*
+     This function is equivalent to inflateEnd followed by inflateInit,
+   but does not free and reallocate all the internal decompression state.
+   The stream will keep attributes that may have been set by inflateInit2.
+
+      inflateReset returns Z_OK if success, or Z_STREAM_ERROR if the source
+   stream state was inconsistent (such as zalloc or state being NULL).
+*/
+
+extern int zlib_inflateIncomp (z_stream *strm);
+/*
+     This function adds the data at next_in (avail_in bytes) to the output
+   history without performing any output.  There must be no pending output,
+   and the decompressor must be expecting to see the start of a block.
+   Calling this function is equivalent to decompressing a stored block
+   containing the data at next_in (except that the data is not output).
+*/
+
+#define zlib_deflateInit(strm, level) \
+	zlib_deflateInit2((strm), (level), Z_DEFLATED, MAX_WBITS, \
+			      DEF_MEM_LEVEL, Z_DEFAULT_STRATEGY)
+#define zlib_inflateInit(strm) \
+	zlib_inflateInit2((strm), DEF_WBITS)
+
+extern int zlib_deflateInit2(z_streamp strm, int  level, int  method,
+                                      int windowBits, int memLevel,
+                                      int strategy);
+extern int zlib_inflateInit2(z_streamp strm, int  windowBits);
+
+#if !defined(_Z_UTIL_H) && !defined(NO_DUMMY_DECL)
+    struct internal_state {int dummy;}; /* hack for buggy compilers */
+#endif
+
+/* Utility function: initialize zlib, unpack binary blob, clean up zlib,
+ * return len or negative error code. */
+extern int zlib_inflate_blob(void *dst, unsigned dst_sz, const void *src, unsigned src_sz);
+
+#endif /* _ZLIB_H */
diff --git a/include/linux/zutil.h b/include/linux/zutil.h
new file mode 100644
index 0000000..6adfa9a
--- /dev/null
+++ b/include/linux/zutil.h
@@ -0,0 +1,106 @@
+/* zutil.h -- internal interface and configuration of the compression library
+ * Copyright (C) 1995-1998 Jean-loup Gailly.
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* WARNING: this file should *not* be used by applications. It is
+   part of the implementation of the compression library and is
+   subject to change. Applications should only use zlib.h.
+ */
+
+/* @(#) $Id: zutil.h,v 1.1 2000/01/01 03:32:23 davem Exp $ */
+
+#ifndef _Z_UTIL_H
+#define _Z_UTIL_H
+
+#include <linux/zlib.h>
+#include <linux/string.h>
+#include <linux/kernel.h>
+
+typedef unsigned char  uch;
+typedef unsigned short ush;
+typedef unsigned long  ulg;
+
+        /* common constants */
+
+#define STORED_BLOCK 0
+#define STATIC_TREES 1
+#define DYN_TREES    2
+/* The three kinds of block type */
+
+#define MIN_MATCH  3
+#define MAX_MATCH  258
+/* The minimum and maximum match lengths */
+
+#define PRESET_DICT 0x20 /* preset dictionary flag in zlib header */
+
+        /* target dependencies */
+
+        /* Common defaults */
+
+#ifndef OS_CODE
+#  define OS_CODE  0x03  /* assume Unix */
+#endif
+
+         /* functions */
+
+typedef uLong (*check_func) (uLong check, const Byte *buf,
+				       uInt len);
+
+
+                        /* checksum functions */
+
+#define BASE 65521L /* largest prime smaller than 65536 */
+#define NMAX 5552
+/* NMAX is the largest n such that 255n(n+1)/2 + (n+1)(BASE-1) <= 2^32-1 */
+
+#define DO1(buf,i)  {s1 += buf[i]; s2 += s1;}
+#define DO2(buf,i)  DO1(buf,i); DO1(buf,i+1);
+#define DO4(buf,i)  DO2(buf,i); DO2(buf,i+2);
+#define DO8(buf,i)  DO4(buf,i); DO4(buf,i+4);
+#define DO16(buf)   DO8(buf,0); DO8(buf,8);
+
+/* ========================================================================= */
+/*
+     Update a running Adler-32 checksum with the bytes buf[0..len-1] and
+   return the updated checksum. If buf is NULL, this function returns
+   the required initial value for the checksum.
+   An Adler-32 checksum is almost as reliable as a CRC32 but can be computed
+   much faster. Usage example:
+
+     uLong adler = adler32(0L, NULL, 0);
+
+     while (read_buffer(buffer, length) != EOF) {
+       adler = adler32(adler, buffer, length);
+     }
+     if (adler != original_adler) error();
+*/
+static inline uLong zlib_adler32(uLong adler,
+				 const Byte *buf,
+				 uInt len)
+{
+    unsigned long s1 = adler & 0xffff;
+    unsigned long s2 = (adler >> 16) & 0xffff;
+    int k;
+
+    if (buf == NULL) return 1L;
+
+    while (len > 0) {
+        k = len < NMAX ? len : NMAX;
+        len -= k;
+        while (k >= 16) {
+            DO16(buf);
+	    buf += 16;
+            k -= 16;
+        }
+        if (k != 0) do {
+            s1 += *buf++;
+	    s2 += s1;
+        } while (--k);
+        s1 %= BASE;
+        s2 %= BASE;
+    }
+    return (s2 << 16) | s1;
+}
+
+#endif /* _Z_UTIL_H */
diff --git a/lib/Makefile b/lib/Makefile
index b02191a..f0abc21 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -16,7 +16,7 @@ obj-y			+= stringlist.o
 obj-y			+= recursive_action.o
 obj-y			+= make_directory.o
 obj-$(CONFIG_BZLIB)	+= decompress_bunzip2.o
-obj-$(CONFIG_ZLIB)	+= zlib.o gunzip.o
+obj-$(CONFIG_ZLIB)	+= decompress_inflate.o zlib_inflate/
 obj-$(CONFIG_CMDLINE_EDITING)	+= readline.o
 obj-$(CONFIG_SIMPLE_READLINE)	+= readline_simple.o
 obj-$(CONFIG_GLOB)		+= fnmatch.o
diff --git a/lib/decompress_inflate.c b/lib/decompress_inflate.c
new file mode 100644
index 0000000..d246d4d
--- /dev/null
+++ b/lib/decompress_inflate.c
@@ -0,0 +1,183 @@
+#ifdef STATIC
+/* Pre-boot environment: included */
+
+/* prevent inclusion of _LINUX_KERNEL_H in pre-boot environment: lots
+ * errors about console_printk etc... on ARM */
+#define _LINUX_KERNEL_H
+
+#include "zlib_inflate/inftrees.c"
+#include "zlib_inflate/inffast.c"
+#include "zlib_inflate/inflate.c"
+
+#else /* STATIC */
+/* initramfs et al: linked */
+
+#include <linux/zutil.h>
+#include <common.h>
+#include <malloc.h>
+
+#include "zlib_inflate/inftrees.h"
+#include "zlib_inflate/inffast.h"
+#include "zlib_inflate/inflate.h"
+
+#include "zlib_inflate/infutil.h"
+
+#endif /* STATIC */
+
+#define GZIP_IOBUF_SIZE (16*1024)
+
+static int  nofill(void *buffer, unsigned int len)
+{
+	return -1;
+}
+
+/* Included from initramfs et al code */
+int  gunzip(unsigned char *buf, int len,
+		       int(*fill)(void*, unsigned int),
+		       int(*flush)(void*, unsigned int),
+		       unsigned char *out_buf,
+		       int *pos,
+		       void(*error)(char *x)) {
+	u8 *zbuf;
+	struct z_stream_s *strm;
+	int rc;
+	size_t out_len;
+
+	rc = -1;
+	if (flush) {
+		out_len = 0x8000; /* 32 K */
+		out_buf = malloc(out_len);
+	} else {
+		out_len = 0x7fffffff; /* no limit */
+	}
+	if (!out_buf) {
+		error("Out of memory while allocating output buffer");
+		goto gunzip_nomem1;
+	}
+
+	if (buf)
+		zbuf = buf;
+	else {
+		zbuf = malloc(GZIP_IOBUF_SIZE);
+		len = 0;
+	}
+	if (!zbuf) {
+		error("Out of memory while allocating input buffer");
+		goto gunzip_nomem2;
+	}
+
+	strm = malloc(sizeof(*strm));
+	if (strm == NULL) {
+		error("Out of memory while allocating z_stream");
+		goto gunzip_nomem3;
+	}
+
+	strm->workspace = malloc(flush ? zlib_inflate_workspacesize() :
+				 sizeof(struct inflate_state));
+	if (strm->workspace == NULL) {
+		error("Out of memory while allocating workspace");
+		goto gunzip_nomem4;
+	}
+
+	if (!fill)
+		fill = nofill;
+
+	if (len == 0)
+		len = fill(zbuf, GZIP_IOBUF_SIZE);
+
+	/* verify the gzip header */
+	if (len < 10 ||
+	   zbuf[0] != 0x1f || zbuf[1] != 0x8b || zbuf[2] != 0x08) {
+		if (pos)
+			*pos = 0;
+		error("Not a gzip file");
+		goto gunzip_5;
+	}
+
+	/* skip over gzip header (1f,8b,08... 10 bytes total +
+	 * possible asciz filename)
+	 */
+	strm->next_in = zbuf + 10;
+	strm->avail_in = len - 10;
+	/* skip over asciz filename */
+	if (zbuf[3] & 0x8) {
+		do {
+			/*
+			 * If the filename doesn't fit into the buffer,
+			 * the file is very probably corrupt. Don't try
+			 * to read more data.
+			 */
+			if (strm->avail_in == 0) {
+				error("header error");
+				goto gunzip_5;
+			}
+			--strm->avail_in;
+		} while (*strm->next_in++);
+	}
+
+	strm->next_out = out_buf;
+	strm->avail_out = out_len;
+
+	rc = zlib_inflateInit2(strm, -MAX_WBITS);
+
+	if (!flush) {
+		WS(strm)->inflate_state.wsize = 0;
+		WS(strm)->inflate_state.window = NULL;
+	}
+
+	while (rc == Z_OK) {
+		if (strm->avail_in == 0) {
+			/* TODO: handle case where both pos and fill are set */
+			len = fill(zbuf, GZIP_IOBUF_SIZE);
+			if (len < 0) {
+				rc = -1;
+				error("read error");
+				break;
+			}
+			strm->next_in = zbuf;
+			strm->avail_in = len;
+		}
+		rc = zlib_inflate(strm, 0);
+
+		/* Write any data generated */
+		if (flush && strm->next_out > out_buf) {
+			int l = strm->next_out - out_buf;
+			if (l != flush(out_buf, l)) {
+				rc = -1;
+				error("write error");
+				break;
+			}
+			strm->next_out = out_buf;
+			strm->avail_out = out_len;
+		}
+
+		/* after Z_FINISH, only Z_STREAM_END is "we unpacked it all" */
+		if (rc == Z_STREAM_END) {
+			rc = 0;
+			break;
+		} else if (rc != Z_OK) {
+			error("uncompression error");
+			rc = -1;
+		}
+	}
+
+	zlib_inflateEnd(strm);
+	if (pos)
+		/* add + 8 to skip over trailer */
+		*pos = strm->next_in - zbuf+8;
+
+gunzip_5:
+	free(strm->workspace);
+gunzip_nomem4:
+	free(strm);
+gunzip_nomem3:
+	if (!buf)
+		free(zbuf);
+gunzip_nomem2:
+	if (flush)
+		free(out_buf);
+gunzip_nomem1:
+	return rc; /* returns Z_OK (0) if successful */
+}
+
+#define decompress gunzip
diff --git a/lib/zlib_inflate/Makefile b/lib/zlib_inflate/Makefile
new file mode 100644
index 0000000..8e95fcd
--- /dev/null
+++ b/lib/zlib_inflate/Makefile
@@ -0,0 +1,18 @@
+#
+# This is a modified version of zlib, which does all memory
+# allocation ahead of time.
+#
+# This is only the decompression, see zlib_deflate for the
+# the compression
+#
+# Decompression needs to be serialized for each memory
+# allocation.
+#
+# (The upsides of the simplification is that you can't get in
+# any nasty situations wrt memory management, and that the
+# uncompression can be done without blocking on allocation).
+#
+
+obj-$(CONFIG_ZLIB) += zlib_inflate.o
+
+zlib_inflate-objs := inffast.o inflate.o inftrees.o
diff --git a/lib/zlib_inflate/inffast.c b/lib/zlib_inflate/inffast.c
new file mode 100644
index 0000000..2c13ecc
--- /dev/null
+++ b/lib/zlib_inflate/inffast.c
@@ -0,0 +1,363 @@
+/* inffast.c -- fast decoding
+ * Copyright (C) 1995-2004 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+#include <linux/zutil.h>
+#include "inftrees.h"
+#include "inflate.h"
+#include "inffast.h"
+
+#ifndef ASMINF
+
+/* Allow machine dependent optimization for post-increment or pre-increment.
+   Based on testing to date,
+   Pre-increment preferred for:
+   - PowerPC G3 (Adler)
+   - MIPS R5000 (Randers-Pehrson)
+   Post-increment preferred for:
+   - none
+   No measurable difference:
+   - Pentium III (Anderson)
+   - M68060 (Nikl)
+ */
+union uu {
+	unsigned short us;
+	unsigned char b[2];
+};
+
+/* Endian independed version */
+static inline unsigned short
+get_unaligned16(const unsigned short *p)
+{
+	union uu  mm;
+	unsigned char *b = (unsigned char *)p;
+
+	mm.b[0] = b[0];
+	mm.b[1] = b[1];
+	return mm.us;
+}
+
+#ifdef POSTINC
+#  define OFF 0
+#  define PUP(a) *(a)++
+#  define UP_UNALIGNED(a) get_unaligned16((a)++)
+#else
+#  define OFF 1
+#  define PUP(a) *++(a)
+#  define UP_UNALIGNED(a) get_unaligned16(++(a))
+#endif
+
+/*
+   Decode literal, length, and distance codes and write out the resulting
+   literal and match bytes until either not enough input or output is
+   available, an end-of-block is encountered, or a data error is encountered.
+   When large enough input and output buffers are supplied to inflate(), for
+   example, a 16K input buffer and a 64K output buffer, more than 95% of the
+   inflate execution time is spent in this routine.
+
+   Entry assumptions:
+
+        state->mode == LEN
+        strm->avail_in >= 6
+        strm->avail_out >= 258
+        start >= strm->avail_out
+        state->bits < 8
+
+   On return, state->mode is one of:
+
+        LEN -- ran out of enough output space or enough available input
+        TYPE -- reached end of block code, inflate() to interpret next block
+        BAD -- error in block data
+
+   Notes:
+
+    - The maximum input bits used by a length/distance pair is 15 bits for the
+      length code, 5 bits for the length extra, 15 bits for the distance code,
+      and 13 bits for the distance extra.  This totals 48 bits, or six bytes.
+      Therefore if strm->avail_in >= 6, then there is enough input to avoid
+      checking for available input while decoding.
+
+    - The maximum bytes that a single length/distance pair can output is 258
+      bytes, which is the maximum length that can be coded.  inflate_fast()
+      requires strm->avail_out >= 258 for each loop to avoid checking for
+      output space.
+
+    - @start:	inflate()'s starting value for strm->avail_out
+ */
+void inflate_fast(z_streamp strm, unsigned start)
+{
+    struct inflate_state *state;
+    const unsigned char *in;    /* local strm->next_in */
+    const unsigned char *last;  /* while in < last, enough input available */
+    unsigned char *out;         /* local strm->next_out */
+    unsigned char *beg;         /* inflate()'s initial strm->next_out */
+    unsigned char *end;         /* while out < end, enough space available */
+#ifdef INFLATE_STRICT
+    unsigned dmax;              /* maximum distance from zlib header */
+#endif
+    unsigned wsize;             /* window size or zero if not using window */
+    unsigned whave;             /* valid bytes in the window */
+    unsigned write;             /* window write index */
+    unsigned char *window;      /* allocated sliding window, if wsize != 0 */
+    unsigned long hold;         /* local strm->hold */
+    unsigned bits;              /* local strm->bits */
+    code const *lcode;          /* local strm->lencode */
+    code const *dcode;          /* local strm->distcode */
+    unsigned lmask;             /* mask for first level of length codes */
+    unsigned dmask;             /* mask for first level of distance codes */
+    code this;                  /* retrieved table entry */
+    unsigned op;                /* code bits, operation, extra bits, or */
+                                /*  window position, window bytes to copy */
+    unsigned len;               /* match length, unused bytes */
+    unsigned dist;              /* match distance */
+    unsigned char *from;        /* where to copy match from */
+
+    /* copy state to local variables */
+    state = (struct inflate_state *)strm->state;
+    in = strm->next_in - OFF;
+    last = in + (strm->avail_in - 5);
+    out = strm->next_out - OFF;
+    beg = out - (start - strm->avail_out);
+    end = out + (strm->avail_out - 257);
+#ifdef INFLATE_STRICT
+    dmax = state->dmax;
+#endif
+    wsize = state->wsize;
+    whave = state->whave;
+    write = state->write;
+    window = state->window;
+    hold = state->hold;
+    bits = state->bits;
+    lcode = state->lencode;
+    dcode = state->distcode;
+    lmask = (1U << state->lenbits) - 1;
+    dmask = (1U << state->distbits) - 1;
+
+    /* decode literals and length/distances until end-of-block or not enough
+       input data or output space */
+    do {
+        if (bits < 15) {
+            hold += (unsigned long)(PUP(in)) << bits;
+            bits += 8;
+            hold += (unsigned long)(PUP(in)) << bits;
+            bits += 8;
+        }
+        this = lcode[hold & lmask];
+      dolen:
+        op = (unsigned)(this.bits);
+        hold >>= op;
+        bits -= op;
+        op = (unsigned)(this.op);
+        if (op == 0) {                          /* literal */
+            PUP(out) = (unsigned char)(this.val);
+        }
+        else if (op & 16) {                     /* length base */
+            len = (unsigned)(this.val);
+            op &= 15;                           /* number of extra bits */
+            if (op) {
+                if (bits < op) {
+                    hold += (unsigned long)(PUP(in)) << bits;
+                    bits += 8;
+                }
+                len += (unsigned)hold & ((1U << op) - 1);
+                hold >>= op;
+                bits -= op;
+            }
+            if (bits < 15) {
+                hold += (unsigned long)(PUP(in)) << bits;
+                bits += 8;
+                hold += (unsigned long)(PUP(in)) << bits;
+                bits += 8;
+            }
+            this = dcode[hold & dmask];
+          dodist:
+            op = (unsigned)(this.bits);
+            hold >>= op;
+            bits -= op;
+            op = (unsigned)(this.op);
+            if (op & 16) {                      /* distance base */
+                dist = (unsigned)(this.val);
+                op &= 15;                       /* number of extra bits */
+                if (bits < op) {
+                    hold += (unsigned long)(PUP(in)) << bits;
+                    bits += 8;
+                    if (bits < op) {
+                        hold += (unsigned long)(PUP(in)) << bits;
+                        bits += 8;
+                    }
+                }
+                dist += (unsigned)hold & ((1U << op) - 1);
+#ifdef INFLATE_STRICT
+                if (dist > dmax) {
+                    strm->msg = (char *)"invalid distance too far back";
+                    state->mode = BAD;
+                    break;
+                }
+#endif
+                hold >>= op;
+                bits -= op;
+                op = (unsigned)(out - beg);     /* max distance in output */
+                if (dist > op) {                /* see if copy from window */
+                    op = dist - op;             /* distance back in window */
+                    if (op > whave) {
+                        strm->msg = (char *)"invalid distance too far back";
+                        state->mode = BAD;
+                        break;
+                    }
+                    from = window - OFF;
+                    if (write == 0) {           /* very common case */
+                        from += wsize - op;
+                        if (op < len) {         /* some from window */
+                            len -= op;
+                            do {
+                                PUP(out) = PUP(from);
+                            } while (--op);
+                            from = out - dist;  /* rest from output */
+                        }
+                    }
+                    else if (write < op) {      /* wrap around window */
+                        from += wsize + write - op;
+                        op -= write;
+                        if (op < len) {         /* some from end of window */
+                            len -= op;
+                            do {
+                                PUP(out) = PUP(from);
+                            } while (--op);
+                            from = window - OFF;
+                            if (write < len) {  /* some from start of window */
+                                op = write;
+                                len -= op;
+                                do {
+                                    PUP(out) = PUP(from);
+                                } while (--op);
+                                from = out - dist;      /* rest from output */
+                            }
+                        }
+                    }
+                    else {                      /* contiguous in window */
+                        from += write - op;
+                        if (op < len) {         /* some from window */
+                            len -= op;
+                            do {
+                                PUP(out) = PUP(from);
+                            } while (--op);
+                            from = out - dist;  /* rest from output */
+                        }
+                    }
+                    while (len > 2) {
+                        PUP(out) = PUP(from);
+                        PUP(out) = PUP(from);
+                        PUP(out) = PUP(from);
+                        len -= 3;
+                    }
+                    if (len) {
+                        PUP(out) = PUP(from);
+                        if (len > 1)
+                            PUP(out) = PUP(from);
+                    }
+                }
+                else {
+		    unsigned short *sout;
+		    unsigned long loops;
+
+                    from = out - dist;          /* copy direct from output */
+		    /* minimum length is three */
+		    /* Align out addr */
+		    if (!((long)(out - 1 + OFF) & 1)) {
+			PUP(out) = PUP(from);
+			len--;
+		    }
+		    sout = (unsigned short *)(out - OFF);
+		    if (dist > 2) {
+			unsigned short *sfrom;
+
+			sfrom = (unsigned short *)(from - OFF);
+			loops = len >> 1;
+			do
+#ifdef CONFIG_HAVE_EFFICIENT_UNALIGNED_ACCESS
+			    PUP(sout) = PUP(sfrom);
+#else
+			    PUP(sout) = UP_UNALIGNED(sfrom);
+#endif
+			while (--loops);
+			out = (unsigned char *)sout + OFF;
+			from = (unsigned char *)sfrom + OFF;
+		    } else { /* dist == 1 or dist == 2 */
+			unsigned short pat16;
+
+			pat16 = *(sout-1+OFF);
+			if (dist == 1) {
+				union uu mm;
+				/* copy one char pattern to both bytes */
+				mm.us = pat16;
+				mm.b[0] = mm.b[1];
+				pat16 = mm.us;
+			}
+			loops = len >> 1;
+			do
+			    PUP(sout) = pat16;
+			while (--loops);
+			out = (unsigned char *)sout + OFF;
+		    }
+		    if (len & 1)
+			PUP(out) = PUP(from);
+                }
+            }
+            else if ((op & 64) == 0) {          /* 2nd level distance code */
+                this = dcode[this.val + (hold & ((1U << op) - 1))];
+                goto dodist;
+            }
+            else {
+                strm->msg = (char *)"invalid distance code";
+                state->mode = BAD;
+                break;
+            }
+        }
+        else if ((op & 64) == 0) {              /* 2nd level length code */
+            this = lcode[this.val + (hold & ((1U << op) - 1))];
+            goto dolen;
+        }
+        else if (op & 32) {                     /* end-of-block */
+            state->mode = TYPE;
+            break;
+        }
+        else {
+            strm->msg = (char *)"invalid literal/length code";
+            state->mode = BAD;
+            break;
+        }
+    } while (in < last && out < end);
+
+    /* return unused bytes (on entry, bits < 8, so in won't go too far back) */
+    len = bits >> 3;
+    in -= len;
+    bits -= len << 3;
+    hold &= (1U << bits) - 1;
+
+    /* update state and return */
+    strm->next_in = in + OFF;
+    strm->next_out = out + OFF;
+    strm->avail_in = (unsigned)(in < last ? 5 + (last - in) : 5 - (in - last));
+    strm->avail_out = (unsigned)(out < end ?
+                                 257 + (end - out) : 257 - (out - end));
+    state->hold = hold;
+    state->bits = bits;
+    return;
+}
+
+/*
+   inflate_fast() speedups that turned out slower (on a PowerPC G3 750CXe):
+   - Using bit fields for code structure
+   - Different op definition to avoid & for extra bits (do & for table bits)
+   - Three separate decoding do-loops for direct, window, and write == 0
+   - Special case for distance > 1 copies to do overlapped load and store copy
+   - Explicit branch predictions (based on measured branch probabilities)
+   - Deferring match copy and interspersed it with decoding subsequent codes
+   - Swapping literal/length else
+   - Swapping window/direct else
+   - Larger unrolled copy loops (three is about right)
+   - Moving len -= 3 statement into middle of loop
+ */
+
+#endif /* !ASMINF */
diff --git a/lib/zlib_inflate/inffast.h b/lib/zlib_inflate/inffast.h
new file mode 100644
index 0000000..40315d9
--- /dev/null
+++ b/lib/zlib_inflate/inffast.h
@@ -0,0 +1,11 @@
+/* inffast.h -- header to use inffast.c
+ * Copyright (C) 1995-2003 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* WARNING: this file should *not* be used by applications. It is
+   part of the implementation of the compression library and is
+   subject to change. Applications should only use zlib.h.
+ */
+
+void inflate_fast (z_streamp strm, unsigned start);
diff --git a/lib/zlib_inflate/inffixed.h b/lib/zlib_inflate/inffixed.h
new file mode 100644
index 0000000..75ed4b5
--- /dev/null
+++ b/lib/zlib_inflate/inffixed.h
@@ -0,0 +1,94 @@
+    /* inffixed.h -- table for decoding fixed codes
+     * Generated automatically by makefixed().
+     */
+
+    /* WARNING: this file should *not* be used by applications. It
+       is part of the implementation of the compression library and
+       is subject to change. Applications should only use zlib.h.
+     */
+
+    static const code lenfix[512] = {
+        {96,7,0},{0,8,80},{0,8,16},{20,8,115},{18,7,31},{0,8,112},{0,8,48},
+        {0,9,192},{16,7,10},{0,8,96},{0,8,32},{0,9,160},{0,8,0},{0,8,128},
+        {0,8,64},{0,9,224},{16,7,6},{0,8,88},{0,8,24},{0,9,144},{19,7,59},
+        {0,8,120},{0,8,56},{0,9,208},{17,7,17},{0,8,104},{0,8,40},{0,9,176},
+        {0,8,8},{0,8,136},{0,8,72},{0,9,240},{16,7,4},{0,8,84},{0,8,20},
+        {21,8,227},{19,7,43},{0,8,116},{0,8,52},{0,9,200},{17,7,13},{0,8,100},
+        {0,8,36},{0,9,168},{0,8,4},{0,8,132},{0,8,68},{0,9,232},{16,7,8},
+        {0,8,92},{0,8,28},{0,9,152},{20,7,83},{0,8,124},{0,8,60},{0,9,216},
+        {18,7,23},{0,8,108},{0,8,44},{0,9,184},{0,8,12},{0,8,140},{0,8,76},
+        {0,9,248},{16,7,3},{0,8,82},{0,8,18},{21,8,163},{19,7,35},{0,8,114},
+        {0,8,50},{0,9,196},{17,7,11},{0,8,98},{0,8,34},{0,9,164},{0,8,2},
+        {0,8,130},{0,8,66},{0,9,228},{16,7,7},{0,8,90},{0,8,26},{0,9,148},
+        {20,7,67},{0,8,122},{0,8,58},{0,9,212},{18,7,19},{0,8,106},{0,8,42},
+        {0,9,180},{0,8,10},{0,8,138},{0,8,74},{0,9,244},{16,7,5},{0,8,86},
+        {0,8,22},{64,8,0},{19,7,51},{0,8,118},{0,8,54},{0,9,204},{17,7,15},
+        {0,8,102},{0,8,38},{0,9,172},{0,8,6},{0,8,134},{0,8,70},{0,9,236},
+        {16,7,9},{0,8,94},{0,8,30},{0,9,156},{20,7,99},{0,8,126},{0,8,62},
+        {0,9,220},{18,7,27},{0,8,110},{0,8,46},{0,9,188},{0,8,14},{0,8,142},
+        {0,8,78},{0,9,252},{96,7,0},{0,8,81},{0,8,17},{21,8,131},{18,7,31},
+        {0,8,113},{0,8,49},{0,9,194},{16,7,10},{0,8,97},{0,8,33},{0,9,162},
+        {0,8,1},{0,8,129},{0,8,65},{0,9,226},{16,7,6},{0,8,89},{0,8,25},
+        {0,9,146},{19,7,59},{0,8,121},{0,8,57},{0,9,210},{17,7,17},{0,8,105},
+        {0,8,41},{0,9,178},{0,8,9},{0,8,137},{0,8,73},{0,9,242},{16,7,4},
+        {0,8,85},{0,8,21},{16,8,258},{19,7,43},{0,8,117},{0,8,53},{0,9,202},
+        {17,7,13},{0,8,101},{0,8,37},{0,9,170},{0,8,5},{0,8,133},{0,8,69},
+        {0,9,234},{16,7,8},{0,8,93},{0,8,29},{0,9,154},{20,7,83},{0,8,125},
+        {0,8,61},{0,9,218},{18,7,23},{0,8,109},{0,8,45},{0,9,186},{0,8,13},
+        {0,8,141},{0,8,77},{0,9,250},{16,7,3},{0,8,83},{0,8,19},{21,8,195},
+        {19,7,35},{0,8,115},{0,8,51},{0,9,198},{17,7,11},{0,8,99},{0,8,35},
+        {0,9,166},{0,8,3},{0,8,131},{0,8,67},{0,9,230},{16,7,7},{0,8,91},
+        {0,8,27},{0,9,150},{20,7,67},{0,8,123},{0,8,59},{0,9,214},{18,7,19},
+        {0,8,107},{0,8,43},{0,9,182},{0,8,11},{0,8,139},{0,8,75},{0,9,246},
+        {16,7,5},{0,8,87},{0,8,23},{64,8,0},{19,7,51},{0,8,119},{0,8,55},
+        {0,9,206},{17,7,15},{0,8,103},{0,8,39},{0,9,174},{0,8,7},{0,8,135},
+        {0,8,71},{0,9,238},{16,7,9},{0,8,95},{0,8,31},{0,9,158},{20,7,99},
+        {0,8,127},{0,8,63},{0,9,222},{18,7,27},{0,8,111},{0,8,47},{0,9,190},
+        {0,8,15},{0,8,143},{0,8,79},{0,9,254},{96,7,0},{0,8,80},{0,8,16},
+        {20,8,115},{18,7,31},{0,8,112},{0,8,48},{0,9,193},{16,7,10},{0,8,96},
+        {0,8,32},{0,9,161},{0,8,0},{0,8,128},{0,8,64},{0,9,225},{16,7,6},
+        {0,8,88},{0,8,24},{0,9,145},{19,7,59},{0,8,120},{0,8,56},{0,9,209},
+        {17,7,17},{0,8,104},{0,8,40},{0,9,177},{0,8,8},{0,8,136},{0,8,72},
+        {0,9,241},{16,7,4},{0,8,84},{0,8,20},{21,8,227},{19,7,43},{0,8,116},
+        {0,8,52},{0,9,201},{17,7,13},{0,8,100},{0,8,36},{0,9,169},{0,8,4},
+        {0,8,132},{0,8,68},{0,9,233},{16,7,8},{0,8,92},{0,8,28},{0,9,153},
+        {20,7,83},{0,8,124},{0,8,60},{0,9,217},{18,7,23},{0,8,108},{0,8,44},
+        {0,9,185},{0,8,12},{0,8,140},{0,8,76},{0,9,249},{16,7,3},{0,8,82},
+        {0,8,18},{21,8,163},{19,7,35},{0,8,114},{0,8,50},{0,9,197},{17,7,11},
+        {0,8,98},{0,8,34},{0,9,165},{0,8,2},{0,8,130},{0,8,66},{0,9,229},
+        {16,7,7},{0,8,90},{0,8,26},{0,9,149},{20,7,67},{0,8,122},{0,8,58},
+        {0,9,213},{18,7,19},{0,8,106},{0,8,42},{0,9,181},{0,8,10},{0,8,138},
+        {0,8,74},{0,9,245},{16,7,5},{0,8,86},{0,8,22},{64,8,0},{19,7,51},
+        {0,8,118},{0,8,54},{0,9,205},{17,7,15},{0,8,102},{0,8,38},{0,9,173},
+        {0,8,6},{0,8,134},{0,8,70},{0,9,237},{16,7,9},{0,8,94},{0,8,30},
+        {0,9,157},{20,7,99},{0,8,126},{0,8,62},{0,9,221},{18,7,27},{0,8,110},
+        {0,8,46},{0,9,189},{0,8,14},{0,8,142},{0,8,78},{0,9,253},{96,7,0},
+        {0,8,81},{0,8,17},{21,8,131},{18,7,31},{0,8,113},{0,8,49},{0,9,195},
+        {16,7,10},{0,8,97},{0,8,33},{0,9,163},{0,8,1},{0,8,129},{0,8,65},
+        {0,9,227},{16,7,6},{0,8,89},{0,8,25},{0,9,147},{19,7,59},{0,8,121},
+        {0,8,57},{0,9,211},{17,7,17},{0,8,105},{0,8,41},{0,9,179},{0,8,9},
+        {0,8,137},{0,8,73},{0,9,243},{16,7,4},{0,8,85},{0,8,21},{16,8,258},
+        {19,7,43},{0,8,117},{0,8,53},{0,9,203},{17,7,13},{0,8,101},{0,8,37},
+        {0,9,171},{0,8,5},{0,8,133},{0,8,69},{0,9,235},{16,7,8},{0,8,93},
+        {0,8,29},{0,9,155},{20,7,83},{0,8,125},{0,8,61},{0,9,219},{18,7,23},
+        {0,8,109},{0,8,45},{0,9,187},{0,8,13},{0,8,141},{0,8,77},{0,9,251},
+        {16,7,3},{0,8,83},{0,8,19},{21,8,195},{19,7,35},{0,8,115},{0,8,51},
+        {0,9,199},{17,7,11},{0,8,99},{0,8,35},{0,9,167},{0,8,3},{0,8,131},
+        {0,8,67},{0,9,231},{16,7,7},{0,8,91},{0,8,27},{0,9,151},{20,7,67},
+        {0,8,123},{0,8,59},{0,9,215},{18,7,19},{0,8,107},{0,8,43},{0,9,183},
+        {0,8,11},{0,8,139},{0,8,75},{0,9,247},{16,7,5},{0,8,87},{0,8,23},
+        {64,8,0},{19,7,51},{0,8,119},{0,8,55},{0,9,207},{17,7,15},{0,8,103},
+        {0,8,39},{0,9,175},{0,8,7},{0,8,135},{0,8,71},{0,9,239},{16,7,9},
+        {0,8,95},{0,8,31},{0,9,159},{20,7,99},{0,8,127},{0,8,63},{0,9,223},
+        {18,7,27},{0,8,111},{0,8,47},{0,9,191},{0,8,15},{0,8,143},{0,8,79},
+        {0,9,255}
+    };
+
+    static const code distfix[32] = {
+        {16,5,1},{23,5,257},{19,5,17},{27,5,4097},{17,5,5},{25,5,1025},
+        {21,5,65},{29,5,16385},{16,5,3},{24,5,513},{20,5,33},{28,5,8193},
+        {18,5,9},{26,5,2049},{22,5,129},{64,5,0},{16,5,2},{23,5,385},
+        {19,5,25},{27,5,6145},{17,5,7},{25,5,1537},{21,5,97},{29,5,24577},
+        {16,5,4},{24,5,769},{20,5,49},{28,5,12289},{18,5,13},{26,5,3073},
+        {22,5,193},{64,5,0}
+    };
diff --git a/lib/zlib_inflate/inflate.c b/lib/zlib_inflate/inflate.c
new file mode 100644
index 0000000..f5ce87b
--- /dev/null
+++ b/lib/zlib_inflate/inflate.c
@@ -0,0 +1,918 @@
+/* inflate.c -- zlib decompression
+ * Copyright (C) 1995-2005 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ *
+ * Based on zlib 1.2.3 but modified for the Linux Kernel by
+ * Richard Purdie <richard@openedhand.com>
+ *
+ * Changes mainly for static instead of dynamic memory allocation
+ *
+ */
+
+#include <linux/zutil.h>
+#include "inftrees.h"
+#include "inflate.h"
+#include "inffast.h"
+#include "infutil.h"
+
+int zlib_inflate_workspacesize(void)
+{
+    return sizeof(struct inflate_workspace);
+}
+
+int zlib_inflateReset(z_streamp strm)
+{
+    struct inflate_state *state;
+
+    if (strm == NULL || strm->state == NULL) return Z_STREAM_ERROR;
+    state = (struct inflate_state *)strm->state;
+    strm->total_in = strm->total_out = state->total = 0;
+    strm->msg = NULL;
+    strm->adler = 1;        /* to support ill-conceived Java test suite */
+    state->mode = HEAD;
+    state->last = 0;
+    state->havedict = 0;
+    state->dmax = 32768U;
+    state->hold = 0;
+    state->bits = 0;
+    state->lencode = state->distcode = state->next = state->codes;
+
+    /* Initialise Window */
+    state->wsize = 1U << state->wbits;
+    state->write = 0;
+    state->whave = 0;
+
+    return Z_OK;
+}
+
+#if 0
+int zlib_inflatePrime(z_streamp strm, int bits, int value)
+{
+    struct inflate_state *state;
+
+    if (strm == NULL || strm->state == NULL) return Z_STREAM_ERROR;
+    state = (struct inflate_state *)strm->state;
+    if (bits > 16 || state->bits + bits > 32) return Z_STREAM_ERROR;
+    value &= (1L << bits) - 1;
+    state->hold += value << state->bits;
+    state->bits += bits;
+    return Z_OK;
+}
+#endif
+
+int zlib_inflateInit2(z_streamp strm, int windowBits)
+{
+    struct inflate_state *state;
+
+    if (strm == NULL) return Z_STREAM_ERROR;
+    strm->msg = NULL;                 /* in case we return an error */
+
+    state = &WS(strm)->inflate_state;
+    strm->state = (struct internal_state *)state;
+
+    if (windowBits < 0) {
+        state->wrap = 0;
+        windowBits = -windowBits;
+    }
+    else {
+        state->wrap = (windowBits >> 4) + 1;
+    }
+    if (windowBits < 8 || windowBits > 15) {
+        return Z_STREAM_ERROR;
+    }
+    state->wbits = (unsigned)windowBits;
+    state->window = &WS(strm)->working_window[0];
+
+    return zlib_inflateReset(strm);
+}
+
+/*
+   Return state with length and distance decoding tables and index sizes set to
+   fixed code decoding.  This returns fixed tables from inffixed.h.
+ */
+static void zlib_fixedtables(struct inflate_state *state)
+{
+#   include "inffixed.h"
+    state->lencode = lenfix;
+    state->lenbits = 9;
+    state->distcode = distfix;
+    state->distbits = 5;
+}
+
+
+/*
+   Update the window with the last wsize (normally 32K) bytes written before
+   returning. This is only called when a window is already in use, or when
+   output has been written during this inflate call, but the end of the deflate
+   stream has not been reached yet. It is also called to window dictionary data
+   when a dictionary is loaded.
+
+   Providing output buffers larger than 32K to inflate() should provide a speed
+   advantage, since only the last 32K of output is copied to the sliding window
+   upon return from inflate(), and since all distances after the first 32K of
+   output will fall in the output data, making match copies simpler and faster.
+   The advantage may be dependent on the size of the processor's data caches.
+ */
+static void zlib_updatewindow(z_streamp strm, unsigned out)
+{
+    struct inflate_state *state;
+    unsigned copy, dist;
+
+    state = (struct inflate_state *)strm->state;
+
+    /* copy state->wsize or less output bytes into the circular window */
+    copy = out - strm->avail_out;
+    if (copy >= state->wsize) {
+        memcpy(state->window, strm->next_out - state->wsize, state->wsize);
+        state->write = 0;
+        state->whave = state->wsize;
+    }
+    else {
+        dist = state->wsize - state->write;
+        if (dist > copy) dist = copy;
+        memcpy(state->window + state->write, strm->next_out - copy, dist);
+        copy -= dist;
+        if (copy) {
+            memcpy(state->window, strm->next_out - copy, copy);
+            state->write = copy;
+            state->whave = state->wsize;
+        }
+        else {
+            state->write += dist;
+            if (state->write == state->wsize) state->write = 0;
+            if (state->whave < state->wsize) state->whave += dist;
+        }
+    }
+}
+
+
+/*
+ * At the end of a Deflate-compressed PPP packet, we expect to have seen
+ * a `stored' block type value but not the (zero) length bytes.
+ */
+/*
+   Returns true if inflate is currently at the end of a block generated by
+   Z_SYNC_FLUSH or Z_FULL_FLUSH. This function is used by one PPP
+   implementation to provide an additional safety check. PPP uses
+   Z_SYNC_FLUSH but removes the length bytes of the resulting empty stored
+   block. When decompressing, PPP checks that at the end of input packet,
+   inflate is waiting for these length bytes.
+ */
+static int zlib_inflateSyncPacket(z_streamp strm)
+{
+    struct inflate_state *state;
+
+    if (strm == NULL || strm->state == NULL) return Z_STREAM_ERROR;
+    state = (struct inflate_state *)strm->state;
+
+    if (state->mode == STORED && state->bits == 0) {
+	state->mode = TYPE;
+        return Z_OK;
+    }
+    return Z_DATA_ERROR;
+}
+
+/* Macros for inflate(): */
+
+/* check function to use adler32() for zlib or crc32() for gzip */
+#define UPDATE(check, buf, len) zlib_adler32(check, buf, len)
+
+/* Load registers with state in inflate() for speed */
+#define LOAD() \
+    do { \
+        put = strm->next_out; \
+        left = strm->avail_out; \
+        next = strm->next_in; \
+        have = strm->avail_in; \
+        hold = state->hold; \
+        bits = state->bits; \
+    } while (0)
+
+/* Restore state from registers in inflate() */
+#define RESTORE() \
+    do { \
+        strm->next_out = put; \
+        strm->avail_out = left; \
+        strm->next_in = next; \
+        strm->avail_in = have; \
+        state->hold = hold; \
+        state->bits = bits; \
+    } while (0)
+
+/* Clear the input bit accumulator */
+#define INITBITS() \
+    do { \
+        hold = 0; \
+        bits = 0; \
+    } while (0)
+
+/* Get a byte of input into the bit accumulator, or return from inflate()
+   if there is no input available. */
+#define PULLBYTE() \
+    do { \
+        if (have == 0) goto inf_leave; \
+        have--; \
+        hold += (unsigned long)(*next++) << bits; \
+        bits += 8; \
+    } while (0)
+
+/* Assure that there are at least n bits in the bit accumulator.  If there is
+   not enough available input to do that, then return from inflate(). */
+#define NEEDBITS(n) \
+    do { \
+        while (bits < (unsigned)(n)) \
+            PULLBYTE(); \
+    } while (0)
+
+/* Return the low n bits of the bit accumulator (n < 16) */
+#define BITS(n) \
+    ((unsigned)hold & ((1U << (n)) - 1))
+
+/* Remove n bits from the bit accumulator */
+#define DROPBITS(n) \
+    do { \
+        hold >>= (n); \
+        bits -= (unsigned)(n); \
+    } while (0)
+
+/* Remove zero to seven bits as needed to go to a byte boundary */
+#define BYTEBITS() \
+    do { \
+        hold >>= bits & 7; \
+        bits -= bits & 7; \
+    } while (0)
+
+/* Reverse the bytes in a 32-bit value */
+#define REVERSE(q) \
+    ((((q) >> 24) & 0xff) + (((q) >> 8) & 0xff00) + \
+     (((q) & 0xff00) << 8) + (((q) & 0xff) << 24))
+
+/*
+   inflate() uses a state machine to process as much input data and generate as
+   much output data as possible before returning.  The state machine is
+   structured roughly as follows:
+
+    for (;;) switch (state) {
+    ...
+    case STATEn:
+        if (not enough input data or output space to make progress)
+            return;
+        ... make progress ...
+        state = STATEm;
+        break;
+    ...
+    }
+
+   so when inflate() is called again, the same case is attempted again, and
+   if the appropriate resources are provided, the machine proceeds to the
+   next state.  The NEEDBITS() macro is usually the way the state evaluates
+   whether it can proceed or should return.  NEEDBITS() does the return if
+   the requested bits are not available.  The typical use of the BITS macros
+   is:
+
+        NEEDBITS(n);
+        ... do something with BITS(n) ...
+        DROPBITS(n);
+
+   where NEEDBITS(n) either returns from inflate() if there isn't enough
+   input left to load n bits into the accumulator, or it continues.  BITS(n)
+   gives the low n bits in the accumulator.  When done, DROPBITS(n) drops
+   the low n bits off the accumulator.  INITBITS() clears the accumulator
+   and sets the number of available bits to zero.  BYTEBITS() discards just
+   enough bits to put the accumulator on a byte boundary.  After BYTEBITS()
+   and a NEEDBITS(8), then BITS(8) would return the next byte in the stream.
+
+   NEEDBITS(n) uses PULLBYTE() to get an available byte of input, or to return
+   if there is no input available.  The decoding of variable length codes uses
+   PULLBYTE() directly in order to pull just enough bytes to decode the next
+   code, and no more.
+
+   Some states loop until they get enough input, making sure that enough
+   state information is maintained to continue the loop where it left off
+   if NEEDBITS() returns in the loop.  For example, want, need, and keep
+   would all have to actually be part of the saved state in case NEEDBITS()
+   returns:
+
+    case STATEw:
+        while (want < need) {
+            NEEDBITS(n);
+            keep[want++] = BITS(n);
+            DROPBITS(n);
+        }
+        state = STATEx;
+    case STATEx:
+
+   As shown above, if the next state is also the next case, then the break
+   is omitted.
+
+   A state may also return if there is not enough output space available to
+   complete that state.  Those states are copying stored data, writing a
+   literal byte, and copying a matching string.
+
+   When returning, a "goto inf_leave" is used to update the total counters,
+   update the check value, and determine whether any progress has been made
+   during that inflate() call in order to return the proper return code.
+   Progress is defined as a change in either strm->avail_in or strm->avail_out.
+   When there is a window, goto inf_leave will update the window with the last
+   output written.  If a goto inf_leave occurs in the middle of decompression
+   and there is no window currently, goto inf_leave will create one and copy
+   output to the window for the next call of inflate().
+
+   In this implementation, the flush parameter of inflate() only affects the
+   return code (per zlib.h).  inflate() always writes as much as possible to
+   strm->next_out, given the space available and the provided input--the effect
+   documented in zlib.h of Z_SYNC_FLUSH.  Furthermore, inflate() always defers
+   the allocation of and copying into a sliding window until necessary, which
+   provides the effect documented in zlib.h for Z_FINISH when the entire input
+   stream available.  So the only thing the flush parameter actually does is:
+   when flush is set to Z_FINISH, inflate() cannot return Z_OK.  Instead it
+   will return Z_BUF_ERROR if it has not reached the end of the stream.
+ */
+
+int zlib_inflate(z_streamp strm, int flush)
+{
+    struct inflate_state *state;
+    const unsigned char *next;  /* next input */
+    unsigned char *put;         /* next output */
+    unsigned have, left;        /* available input and output */
+    unsigned long hold;         /* bit buffer */
+    unsigned bits;              /* bits in bit buffer */
+    unsigned in, out;           /* save starting available input and output */
+    unsigned copy;              /* number of stored or match bytes to copy */
+    unsigned char *from;        /* where to copy match bytes from */
+    code this;                  /* current decoding table entry */
+    code last;                  /* parent table entry */
+    unsigned len;               /* length to copy for repeats, bits to drop */
+    int ret;                    /* return code */
+    static const unsigned short order[19] = /* permutation of code lengths */
+        {16, 17, 18, 0, 8, 7, 9, 6, 10, 5, 11, 4, 12, 3, 13, 2, 14, 1, 15};
+
+    /* Do not check for strm->next_out == NULL here as ppc zImage
+       inflates to strm->next_out = 0 */
+
+    if (strm == NULL || strm->state == NULL ||
+        (strm->next_in == NULL && strm->avail_in != 0))
+        return Z_STREAM_ERROR;
+
+    state = (struct inflate_state *)strm->state;
+
+    if (state->mode == TYPE) state->mode = TYPEDO;      /* skip check */
+    LOAD();
+    in = have;
+    out = left;
+    ret = Z_OK;
+    for (;;)
+        switch (state->mode) {
+        case HEAD:
+            if (state->wrap == 0) {
+                state->mode = TYPEDO;
+                break;
+            }
+            NEEDBITS(16);
+            if (
+                ((BITS(8) << 8) + (hold >> 8)) % 31) {
+                strm->msg = (char *)"incorrect header check";
+                state->mode = BAD;
+                break;
+            }
+            if (BITS(4) != Z_DEFLATED) {
+                strm->msg = (char *)"unknown compression method";
+                state->mode = BAD;
+                break;
+            }
+            DROPBITS(4);
+            len = BITS(4) + 8;
+            if (len > state->wbits) {
+                strm->msg = (char *)"invalid window size";
+                state->mode = BAD;
+                break;
+            }
+            state->dmax = 1U << len;
+            strm->adler = state->check = zlib_adler32(0L, NULL, 0);
+            state->mode = hold & 0x200 ? DICTID : TYPE;
+            INITBITS();
+            break;
+        case DICTID:
+            NEEDBITS(32);
+            strm->adler = state->check = REVERSE(hold);
+            INITBITS();
+            state->mode = DICT;
+        case DICT:
+            if (state->havedict == 0) {
+                RESTORE();
+                return Z_NEED_DICT;
+            }
+            strm->adler = state->check = zlib_adler32(0L, NULL, 0);
+            state->mode = TYPE;
+        case TYPE:
+            if (flush == Z_BLOCK) goto inf_leave;
+        case TYPEDO:
+            if (state->last) {
+                BYTEBITS();
+                state->mode = CHECK;
+                break;
+            }
+            NEEDBITS(3);
+            state->last = BITS(1);
+            DROPBITS(1);
+            switch (BITS(2)) {
+            case 0:                             /* stored block */
+                state->mode = STORED;
+                break;
+            case 1:                             /* fixed block */
+                zlib_fixedtables(state);
+                state->mode = LEN;              /* decode codes */
+                break;
+            case 2:                             /* dynamic block */
+                state->mode = TABLE;
+                break;
+            case 3:
+                strm->msg = (char *)"invalid block type";
+                state->mode = BAD;
+            }
+            DROPBITS(2);
+            break;
+        case STORED:
+            BYTEBITS();                         /* go to byte boundary */
+            NEEDBITS(32);
+            if ((hold & 0xffff) != ((hold >> 16) ^ 0xffff)) {
+                strm->msg = (char *)"invalid stored block lengths";
+                state->mode = BAD;
+                break;
+            }
+            state->length = (unsigned)hold & 0xffff;
+            INITBITS();
+            state->mode = COPY;
+        case COPY:
+            copy = state->length;
+            if (copy) {
+                if (copy > have) copy = have;
+                if (copy > left) copy = left;
+                if (copy == 0) goto inf_leave;
+                memcpy(put, next, copy);
+                have -= copy;
+                next += copy;
+                left -= copy;
+                put += copy;
+                state->length -= copy;
+                break;
+            }
+            state->mode = TYPE;
+            break;
+        case TABLE:
+            NEEDBITS(14);
+            state->nlen = BITS(5) + 257;
+            DROPBITS(5);
+            state->ndist = BITS(5) + 1;
+            DROPBITS(5);
+            state->ncode = BITS(4) + 4;
+            DROPBITS(4);
+#ifndef PKZIP_BUG_WORKAROUND
+            if (state->nlen > 286 || state->ndist > 30) {
+                strm->msg = (char *)"too many length or distance symbols";
+                state->mode = BAD;
+                break;
+            }
+#endif
+            state->have = 0;
+            state->mode = LENLENS;
+        case LENLENS:
+            while (state->have < state->ncode) {
+                NEEDBITS(3);
+                state->lens[order[state->have++]] = (unsigned short)BITS(3);
+                DROPBITS(3);
+            }
+            while (state->have < 19)
+                state->lens[order[state->have++]] = 0;
+            state->next = state->codes;
+            state->lencode = (code const *)(state->next);
+            state->lenbits = 7;
+            ret = zlib_inflate_table(CODES, state->lens, 19, &(state->next),
+                                &(state->lenbits), state->work);
+            if (ret) {
+                strm->msg = (char *)"invalid code lengths set";
+                state->mode = BAD;
+                break;
+            }
+            state->have = 0;
+            state->mode = CODELENS;
+        case CODELENS:
+            while (state->have < state->nlen + state->ndist) {
+                for (;;) {
+                    this = state->lencode[BITS(state->lenbits)];
+                    if ((unsigned)(this.bits) <= bits) break;
+                    PULLBYTE();
+                }
+                if (this.val < 16) {
+                    NEEDBITS(this.bits);
+                    DROPBITS(this.bits);
+                    state->lens[state->have++] = this.val;
+                }
+                else {
+                    if (this.val == 16) {
+                        NEEDBITS(this.bits + 2);
+                        DROPBITS(this.bits);
+                        if (state->have == 0) {
+                            strm->msg = (char *)"invalid bit length repeat";
+                            state->mode = BAD;
+                            break;
+                        }
+                        len = state->lens[state->have - 1];
+                        copy = 3 + BITS(2);
+                        DROPBITS(2);
+                    }
+                    else if (this.val == 17) {
+                        NEEDBITS(this.bits + 3);
+                        DROPBITS(this.bits);
+                        len = 0;
+                        copy = 3 + BITS(3);
+                        DROPBITS(3);
+                    }
+                    else {
+                        NEEDBITS(this.bits + 7);
+                        DROPBITS(this.bits);
+                        len = 0;
+                        copy = 11 + BITS(7);
+                        DROPBITS(7);
+                    }
+                    if (state->have + copy > state->nlen + state->ndist) {
+                        strm->msg = (char *)"invalid bit length repeat";
+                        state->mode = BAD;
+                        break;
+                    }
+                    while (copy--)
+                        state->lens[state->have++] = (unsigned short)len;
+                }
+            }
+
+            /* handle error breaks in while */
+            if (state->mode == BAD) break;
+
+            /* build code tables */
+            state->next = state->codes;
+            state->lencode = (code const *)(state->next);
+            state->lenbits = 9;
+            ret = zlib_inflate_table(LENS, state->lens, state->nlen, &(state->next),
+                                &(state->lenbits), state->work);
+            if (ret) {
+                strm->msg = (char *)"invalid literal/lengths set";
+                state->mode = BAD;
+                break;
+            }
+            state->distcode = (code const *)(state->next);
+            state->distbits = 6;
+            ret = zlib_inflate_table(DISTS, state->lens + state->nlen, state->ndist,
+                            &(state->next), &(state->distbits), state->work);
+            if (ret) {
+                strm->msg = (char *)"invalid distances set";
+                state->mode = BAD;
+                break;
+            }
+            state->mode = LEN;
+        case LEN:
+            if (have >= 6 && left >= 258) {
+                RESTORE();
+                inflate_fast(strm, out);
+                LOAD();
+                break;
+            }
+            for (;;) {
+                this = state->lencode[BITS(state->lenbits)];
+                if ((unsigned)(this.bits) <= bits) break;
+                PULLBYTE();
+            }
+            if (this.op && (this.op & 0xf0) == 0) {
+                last = this;
+                for (;;) {
+                    this = state->lencode[last.val +
+                            (BITS(last.bits + last.op) >> last.bits)];
+                    if ((unsigned)(last.bits + this.bits) <= bits) break;
+                    PULLBYTE();
+                }
+                DROPBITS(last.bits);
+            }
+            DROPBITS(this.bits);
+            state->length = (unsigned)this.val;
+            if ((int)(this.op) == 0) {
+                state->mode = LIT;
+                break;
+            }
+            if (this.op & 32) {
+                state->mode = TYPE;
+                break;
+            }
+            if (this.op & 64) {
+                strm->msg = (char *)"invalid literal/length code";
+                state->mode = BAD;
+                break;
+            }
+            state->extra = (unsigned)(this.op) & 15;
+            state->mode = LENEXT;
+        case LENEXT:
+            if (state->extra) {
+                NEEDBITS(state->extra);
+                state->length += BITS(state->extra);
+                DROPBITS(state->extra);
+            }
+            state->mode = DIST;
+        case DIST:
+            for (;;) {
+                this = state->distcode[BITS(state->distbits)];
+                if ((unsigned)(this.bits) <= bits) break;
+                PULLBYTE();
+            }
+            if ((this.op & 0xf0) == 0) {
+                last = this;
+                for (;;) {
+                    this = state->distcode[last.val +
+                            (BITS(last.bits + last.op) >> last.bits)];
+                    if ((unsigned)(last.bits + this.bits) <= bits) break;
+                    PULLBYTE();
+                }
+                DROPBITS(last.bits);
+            }
+            DROPBITS(this.bits);
+            if (this.op & 64) {
+                strm->msg = (char *)"invalid distance code";
+                state->mode = BAD;
+                break;
+            }
+            state->offset = (unsigned)this.val;
+            state->extra = (unsigned)(this.op) & 15;
+            state->mode = DISTEXT;
+        case DISTEXT:
+            if (state->extra) {
+                NEEDBITS(state->extra);
+                state->offset += BITS(state->extra);
+                DROPBITS(state->extra);
+            }
+#ifdef INFLATE_STRICT
+            if (state->offset > state->dmax) {
+                strm->msg = (char *)"invalid distance too far back";
+                state->mode = BAD;
+                break;
+            }
+#endif
+            if (state->offset > state->whave + out - left) {
+                strm->msg = (char *)"invalid distance too far back";
+                state->mode = BAD;
+                break;
+            }
+            state->mode = MATCH;
+        case MATCH:
+            if (left == 0) goto inf_leave;
+            copy = out - left;
+            if (state->offset > copy) {         /* copy from window */
+                copy = state->offset - copy;
+                if (copy > state->write) {
+                    copy -= state->write;
+                    from = state->window + (state->wsize - copy);
+                }
+                else
+                    from = state->window + (state->write - copy);
+                if (copy > state->length) copy = state->length;
+            }
+            else {                              /* copy from output */
+                from = put - state->offset;
+                copy = state->length;
+            }
+            if (copy > left) copy = left;
+            left -= copy;
+            state->length -= copy;
+            do {
+                *put++ = *from++;
+            } while (--copy);
+            if (state->length == 0) state->mode = LEN;
+            break;
+        case LIT:
+            if (left == 0) goto inf_leave;
+            *put++ = (unsigned char)(state->length);
+            left--;
+            state->mode = LEN;
+            break;
+        case CHECK:
+            if (state->wrap) {
+                NEEDBITS(32);
+                out -= left;
+                strm->total_out += out;
+                state->total += out;
+                if (out)
+                    strm->adler = state->check =
+                        UPDATE(state->check, put - out, out);
+                out = left;
+                if ((
+                     REVERSE(hold)) != state->check) {
+                    strm->msg = (char *)"incorrect data check";
+                    state->mode = BAD;
+                    break;
+                }
+                INITBITS();
+            }
+            state->mode = DONE;
+        case DONE:
+            ret = Z_STREAM_END;
+            goto inf_leave;
+        case BAD:
+            ret = Z_DATA_ERROR;
+            goto inf_leave;
+        case MEM:
+            return Z_MEM_ERROR;
+        case SYNC:
+        default:
+            return Z_STREAM_ERROR;
+        }
+
+    /*
+       Return from inflate(), updating the total counts and the check value.
+       If there was no progress during the inflate() call, return a buffer
+       error.  Call zlib_updatewindow() to create and/or update the window state.
+     */
+  inf_leave:
+    RESTORE();
+    if (state->wsize || (state->mode < CHECK && out != strm->avail_out))
+        zlib_updatewindow(strm, out);
+
+    in -= strm->avail_in;
+    out -= strm->avail_out;
+    strm->total_in += in;
+    strm->total_out += out;
+    state->total += out;
+    if (state->wrap && out)
+        strm->adler = state->check =
+            UPDATE(state->check, strm->next_out - out, out);
+
+    strm->data_type = state->bits + (state->last ? 64 : 0) +
+                      (state->mode == TYPE ? 128 : 0);
+
+    if (flush == Z_PACKET_FLUSH && ret == Z_OK &&
+            strm->avail_out != 0 && strm->avail_in == 0)
+		return zlib_inflateSyncPacket(strm);
+
+    if (((in == 0 && out == 0) || flush == Z_FINISH) && ret == Z_OK)
+        ret = Z_BUF_ERROR;
+
+    return ret;
+}
+
+int zlib_inflateEnd(z_streamp strm)
+{
+    if (strm == NULL || strm->state == NULL)
+        return Z_STREAM_ERROR;
+    return Z_OK;
+}
+
+#if 0
+int zlib_inflateSetDictionary(z_streamp strm, const Byte *dictionary,
+        uInt dictLength)
+{
+    struct inflate_state *state;
+    unsigned long id;
+
+    /* check state */
+    if (strm == NULL || strm->state == NULL) return Z_STREAM_ERROR;
+    state = (struct inflate_state *)strm->state;
+    if (state->wrap != 0 && state->mode != DICT)
+        return Z_STREAM_ERROR;
+
+    /* check for correct dictionary id */
+    if (state->mode == DICT) {
+        id = zlib_adler32(0L, NULL, 0);
+        id = zlib_adler32(id, dictionary, dictLength);
+        if (id != state->check)
+            return Z_DATA_ERROR;
+    }
+
+    /* copy dictionary to window */
+    zlib_updatewindow(strm, strm->avail_out);
+
+    if (dictLength > state->wsize) {
+        memcpy(state->window, dictionary + dictLength - state->wsize,
+                state->wsize);
+        state->whave = state->wsize;
+    }
+    else {
+        memcpy(state->window + state->wsize - dictLength, dictionary,
+                dictLength);
+        state->whave = dictLength;
+    }
+    state->havedict = 1;
+    return Z_OK;
+}
+#endif
+
+#if 0
+/*
+   Search buf[0..len-1] for the pattern: 0, 0, 0xff, 0xff.  Return when found
+   or when out of input.  When called, *have is the number of pattern bytes
+   found in order so far, in 0..3.  On return *have is updated to the new
+   state.  If on return *have equals four, then the pattern was found and the
+   return value is how many bytes were read including the last byte of the
+   pattern.  If *have is less than four, then the pattern has not been found
+   yet and the return value is len.  In the latter case, zlib_syncsearch() can be
+   called again with more data and the *have state.  *have is initialized to
+   zero for the first call.
+ */
+static unsigned zlib_syncsearch(unsigned *have, unsigned char *buf,
+        unsigned len)
+{
+    unsigned got;
+    unsigned next;
+
+    got = *have;
+    next = 0;
+    while (next < len && got < 4) {
+        if ((int)(buf[next]) == (got < 2 ? 0 : 0xff))
+            got++;
+        else if (buf[next])
+            got = 0;
+        else
+            got = 4 - got;
+        next++;
+    }
+    *have = got;
+    return next;
+}
+#endif
+
+#if 0
+int zlib_inflateSync(z_streamp strm)
+{
+    unsigned len;               /* number of bytes to look at or looked at */
+    unsigned long in, out;      /* temporary to save total_in and total_out */
+    unsigned char buf[4];       /* to restore bit buffer to byte string */
+    struct inflate_state *state;
+
+    /* check parameters */
+    if (strm == NULL || strm->state == NULL) return Z_STREAM_ERROR;
+    state = (struct inflate_state *)strm->state;
+    if (strm->avail_in == 0 && state->bits < 8) return Z_BUF_ERROR;
+
+    /* if first time, start search in bit buffer */
+    if (state->mode != SYNC) {
+        state->mode = SYNC;
+        state->hold <<= state->bits & 7;
+        state->bits -= state->bits & 7;
+        len = 0;
+        while (state->bits >= 8) {
+            buf[len++] = (unsigned char)(state->hold);
+            state->hold >>= 8;
+            state->bits -= 8;
+        }
+        state->have = 0;
+        zlib_syncsearch(&(state->have), buf, len);
+    }
+
+    /* search available input */
+    len = zlib_syncsearch(&(state->have), strm->next_in, strm->avail_in);
+    strm->avail_in -= len;
+    strm->next_in += len;
+    strm->total_in += len;
+
+    /* return no joy or set up to restart inflate() on a new block */
+    if (state->have != 4) return Z_DATA_ERROR;
+    in = strm->total_in;  out = strm->total_out;
+    zlib_inflateReset(strm);
+    strm->total_in = in;  strm->total_out = out;
+    state->mode = TYPE;
+    return Z_OK;
+}
+#endif
+
+/*
+ * This subroutine adds the data at next_in/avail_in to the output history
+ * without performing any output.  The output buffer must be "caught up";
+ * i.e. no pending output but this should always be the case. The state must
+ * be waiting on the start of a block (i.e. mode == TYPE or HEAD).  On exit,
+ * the output will also be caught up, and the checksum will have been updated
+ * if need be.
+ */
+int zlib_inflateIncomp(z_stream *z)
+{
+    struct inflate_state *state = (struct inflate_state *)z->state;
+    Byte *saved_no = z->next_out;
+    uInt saved_ao = z->avail_out;
+
+    if (state->mode != TYPE && state->mode != HEAD)
+	return Z_DATA_ERROR;
+
+    /* Setup some variables to allow misuse of updateWindow */
+    z->avail_out = 0;
+    z->next_out = (unsigned char*)z->next_in + z->avail_in;
+
+    zlib_updatewindow(z, z->avail_in);
+
+    /* Restore saved variables */
+    z->avail_out = saved_ao;
+    z->next_out = saved_no;
+
+    z->adler = state->check =
+        UPDATE(state->check, z->next_in, z->avail_in);
+
+    z->total_out += z->avail_in;
+    z->total_in += z->avail_in;
+    z->next_in += z->avail_in;
+    state->total += z->avail_in;
+    z->avail_in = 0;
+
+    return Z_OK;
+}
diff --git a/lib/zlib_inflate/inflate.h b/lib/zlib_inflate/inflate.h
new file mode 100644
index 0000000..3d17b3d
--- /dev/null
+++ b/lib/zlib_inflate/inflate.h
@@ -0,0 +1,111 @@
+#ifndef INFLATE_H
+#define INFLATE_H
+
+/* inflate.h -- internal inflate state definition
+ * Copyright (C) 1995-2004 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* WARNING: this file should *not* be used by applications. It is
+   part of the implementation of the compression library and is
+   subject to change. Applications should only use zlib.h.
+ */
+
+/* Possible inflate modes between inflate() calls */
+typedef enum {
+    HEAD,       /* i: waiting for magic header */
+    FLAGS,      /* i: waiting for method and flags (gzip) */
+    TIME,       /* i: waiting for modification time (gzip) */
+    OS,         /* i: waiting for extra flags and operating system (gzip) */
+    EXLEN,      /* i: waiting for extra length (gzip) */
+    EXTRA,      /* i: waiting for extra bytes (gzip) */
+    NAME,       /* i: waiting for end of file name (gzip) */
+    COMMENT,    /* i: waiting for end of comment (gzip) */
+    HCRC,       /* i: waiting for header crc (gzip) */
+    DICTID,     /* i: waiting for dictionary check value */
+    DICT,       /* waiting for inflateSetDictionary() call */
+        TYPE,       /* i: waiting for type bits, including last-flag bit */
+        TYPEDO,     /* i: same, but skip check to exit inflate on new block */
+        STORED,     /* i: waiting for stored size (length and complement) */
+        COPY,       /* i/o: waiting for input or output to copy stored block */
+        TABLE,      /* i: waiting for dynamic block table lengths */
+        LENLENS,    /* i: waiting for code length code lengths */
+        CODELENS,   /* i: waiting for length/lit and distance code lengths */
+            LEN,        /* i: waiting for length/lit code */
+            LENEXT,     /* i: waiting for length extra bits */
+            DIST,       /* i: waiting for distance code */
+            DISTEXT,    /* i: waiting for distance extra bits */
+            MATCH,      /* o: waiting for output space to copy string */
+            LIT,        /* o: waiting for output space to write literal */
+    CHECK,      /* i: waiting for 32-bit check value */
+    LENGTH,     /* i: waiting for 32-bit length (gzip) */
+    DONE,       /* finished check, done -- remain here until reset */
+    BAD,        /* got a data error -- remain here until reset */
+    MEM,        /* got an inflate() memory error -- remain here until reset */
+    SYNC        /* looking for synchronization bytes to restart inflate() */
+} inflate_mode;
+
+/*
+    State transitions between above modes -
+
+    (most modes can go to the BAD or MEM mode -- not shown for clarity)
+
+    Process header:
+        HEAD -> (gzip) or (zlib)
+        (gzip) -> FLAGS -> TIME -> OS -> EXLEN -> EXTRA -> NAME
+        NAME -> COMMENT -> HCRC -> TYPE
+        (zlib) -> DICTID or TYPE
+        DICTID -> DICT -> TYPE
+    Read deflate blocks:
+            TYPE -> STORED or TABLE or LEN or CHECK
+            STORED -> COPY -> TYPE
+            TABLE -> LENLENS -> CODELENS -> LEN
+    Read deflate codes:
+                LEN -> LENEXT or LIT or TYPE
+                LENEXT -> DIST -> DISTEXT -> MATCH -> LEN
+                LIT -> LEN
+    Process trailer:
+        CHECK -> LENGTH -> DONE
+ */
+
+/* state maintained between inflate() calls.  Approximately 7K bytes. */
+struct inflate_state {
+    inflate_mode mode;          /* current inflate mode */
+    int last;                   /* true if processing last block */
+    int wrap;                   /* bit 0 true for zlib, bit 1 true for gzip */
+    int havedict;               /* true if dictionary provided */
+    int flags;                  /* gzip header method and flags (0 if zlib) */
+    unsigned dmax;              /* zlib header max distance (INFLATE_STRICT) */
+    unsigned long check;        /* protected copy of check value */
+    unsigned long total;        /* protected copy of output count */
+ /*   gz_headerp head; */           /* where to save gzip header information */
+        /* sliding window */
+    unsigned wbits;             /* log base 2 of requested window size */
+    unsigned wsize;             /* window size or zero if not using window */
+    unsigned whave;             /* valid bytes in the window */
+    unsigned write;             /* window write index */
+    unsigned char *window;  /* allocated sliding window, if needed */
+        /* bit accumulator */
+    unsigned long hold;         /* input bit accumulator */
+    unsigned bits;              /* number of bits in "in" */
+        /* for string and stored block copying */
+    unsigned length;            /* literal or length of data to copy */
+    unsigned offset;            /* distance back to copy string from */
+        /* for table and code decoding */
+    unsigned extra;             /* extra bits needed */
+        /* fixed and dynamic code tables */
+    code const *lencode;    /* starting table for length/literal codes */
+    code const *distcode;   /* starting table for distance codes */
+    unsigned lenbits;           /* index bits for lencode */
+    unsigned distbits;          /* index bits for distcode */
+        /* dynamic table building */
+    unsigned ncode;             /* number of code length code lengths */
+    unsigned nlen;              /* number of length code lengths */
+    unsigned ndist;             /* number of distance code lengths */
+    unsigned have;              /* number of code lengths in lens[] */
+    code *next;             /* next available space in codes[] */
+    unsigned short lens[320];   /* temporary storage for code lengths */
+    unsigned short work[288];   /* work area for code table building */
+    code codes[ENOUGH];         /* space for code tables */
+};
+#endif
diff --git a/lib/zlib_inflate/inftrees.c b/lib/zlib_inflate/inftrees.c
new file mode 100644
index 0000000..3fe6ce5
--- /dev/null
+++ b/lib/zlib_inflate/inftrees.c
@@ -0,0 +1,315 @@
+/* inftrees.c -- generate Huffman trees for efficient decoding
+ * Copyright (C) 1995-2005 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+#include <linux/zutil.h>
+#include "inftrees.h"
+
+#define MAXBITS 15
+
+/*
+   Build a set of tables to decode the provided canonical Huffman code.
+   The code lengths are lens[0..codes-1].  The result starts at *table,
+   whose indices are 0..2^bits-1.  work is a writable array of at least
+   lens shorts, which is used as a work area.  type is the type of code
+   to be generated, CODES, LENS, or DISTS.  On return, zero is success,
+   -1 is an invalid code, and +1 means that ENOUGH isn't enough.  table
+   on return points to the next available entry's address.  bits is the
+   requested root table index bits, and on return it is the actual root
+   table index bits.  It will differ if the request is greater than the
+   longest code or if it is less than the shortest code.
+ */
+int zlib_inflate_table(codetype type, unsigned short *lens, unsigned codes,
+			code **table, unsigned *bits, unsigned short *work)
+{
+    unsigned len;               /* a code's length in bits */
+    unsigned sym;               /* index of code symbols */
+    unsigned min, max;          /* minimum and maximum code lengths */
+    unsigned root;              /* number of index bits for root table */
+    unsigned curr;              /* number of index bits for current table */
+    unsigned drop;              /* code bits to drop for sub-table */
+    int left;                   /* number of prefix codes available */
+    unsigned used;              /* code entries in table used */
+    unsigned huff;              /* Huffman code */
+    unsigned incr;              /* for incrementing code, index */
+    unsigned fill;              /* index for replicating entries */
+    unsigned low;               /* low bits for current root entry */
+    unsigned mask;              /* mask for low root bits */
+    code this;                  /* table entry for duplication */
+    code *next;             /* next available space in table */
+    const unsigned short *base;     /* base value table to use */
+    const unsigned short *extra;    /* extra bits table to use */
+    int end;                    /* use base and extra for symbol > end */
+    unsigned short count[MAXBITS+1];    /* number of codes of each length */
+    unsigned short offs[MAXBITS+1];     /* offsets in table for each length */
+    static const unsigned short lbase[31] = { /* Length codes 257..285 base */
+        3, 4, 5, 6, 7, 8, 9, 10, 11, 13, 15, 17, 19, 23, 27, 31,
+        35, 43, 51, 59, 67, 83, 99, 115, 131, 163, 195, 227, 258, 0, 0};
+    static const unsigned short lext[31] = { /* Length codes 257..285 extra */
+        16, 16, 16, 16, 16, 16, 16, 16, 17, 17, 17, 17, 18, 18, 18, 18,
+        19, 19, 19, 19, 20, 20, 20, 20, 21, 21, 21, 21, 16, 201, 196};
+    static const unsigned short dbase[32] = { /* Distance codes 0..29 base */
+        1, 2, 3, 4, 5, 7, 9, 13, 17, 25, 33, 49, 65, 97, 129, 193,
+        257, 385, 513, 769, 1025, 1537, 2049, 3073, 4097, 6145,
+        8193, 12289, 16385, 24577, 0, 0};
+    static const unsigned short dext[32] = { /* Distance codes 0..29 extra */
+        16, 16, 16, 16, 17, 17, 18, 18, 19, 19, 20, 20, 21, 21, 22, 22,
+        23, 23, 24, 24, 25, 25, 26, 26, 27, 27,
+        28, 28, 29, 29, 64, 64};
+
+    /*
+       Process a set of code lengths to create a canonical Huffman code.  The
+       code lengths are lens[0..codes-1].  Each length corresponds to the
+       symbols 0..codes-1.  The Huffman code is generated by first sorting the
+       symbols by length from short to long, and retaining the symbol order
+       for codes with equal lengths.  Then the code starts with all zero bits
+       for the first code of the shortest length, and the codes are integer
+       increments for the same length, and zeros are appended as the length
+       increases.  For the deflate format, these bits are stored backwards
+       from their more natural integer increment ordering, and so when the
+       decoding tables are built in the large loop below, the integer codes
+       are incremented backwards.
+
+       This routine assumes, but does not check, that all of the entries in
+       lens[] are in the range 0..MAXBITS.  The caller must assure this.
+       1..MAXBITS is interpreted as that code length.  zero means that that
+       symbol does not occur in this code.
+
+       The codes are sorted by computing a count of codes for each length,
+       creating from that a table of starting indices for each length in the
+       sorted table, and then entering the symbols in order in the sorted
+       table.  The sorted table is work[], with that space being provided by
+       the caller.
+
+       The length counts are used for other purposes as well, i.e. finding
+       the minimum and maximum length codes, determining if there are any
+       codes at all, checking for a valid set of lengths, and looking ahead
+       at length counts to determine sub-table sizes when building the
+       decoding tables.
+     */
+
+    /* accumulate lengths for codes (assumes lens[] all in 0..MAXBITS) */
+    for (len = 0; len <= MAXBITS; len++)
+        count[len] = 0;
+    for (sym = 0; sym < codes; sym++)
+        count[lens[sym]]++;
+
+    /* bound code lengths, force root to be within code lengths */
+    root = *bits;
+    for (max = MAXBITS; max >= 1; max--)
+        if (count[max] != 0) break;
+    if (root > max) root = max;
+    if (max == 0) {                     /* no symbols to code at all */
+        this.op = (unsigned char)64;    /* invalid code marker */
+        this.bits = (unsigned char)1;
+        this.val = (unsigned short)0;
+        *(*table)++ = this;             /* make a table to force an error */
+        *(*table)++ = this;
+        *bits = 1;
+        return 0;     /* no symbols, but wait for decoding to report error */
+    }
+    for (min = 1; min <= MAXBITS; min++)
+        if (count[min] != 0) break;
+    if (root < min) root = min;
+
+    /* check for an over-subscribed or incomplete set of lengths */
+    left = 1;
+    for (len = 1; len <= MAXBITS; len++) {
+        left <<= 1;
+        left -= count[len];
+        if (left < 0) return -1;        /* over-subscribed */
+    }
+    if (left > 0 && (type == CODES || max != 1))
+        return -1;                      /* incomplete set */
+
+    /* generate offsets into symbol table for each length for sorting */
+    offs[1] = 0;
+    for (len = 1; len < MAXBITS; len++)
+        offs[len + 1] = offs[len] + count[len];
+
+    /* sort symbols by length, by symbol order within each length */
+    for (sym = 0; sym < codes; sym++)
+        if (lens[sym] != 0) work[offs[lens[sym]]++] = (unsigned short)sym;
+
+    /*
+       Create and fill in decoding tables.  In this loop, the table being
+       filled is at next and has curr index bits.  The code being used is huff
+       with length len.  That code is converted to an index by dropping drop
+       bits off of the bottom.  For codes where len is less than drop + curr,
+       those top drop + curr - len bits are incremented through all values to
+       fill the table with replicated entries.
+
+       root is the number of index bits for the root table.  When len exceeds
+       root, sub-tables are created pointed to by the root entry with an index
+       of the low root bits of huff.  This is saved in low to check for when a
+       new sub-table should be started.  drop is zero when the root table is
+       being filled, and drop is root when sub-tables are being filled.
+
+       When a new sub-table is needed, it is necessary to look ahead in the
+       code lengths to determine what size sub-table is needed.  The length
+       counts are used for this, and so count[] is decremented as codes are
+       entered in the tables.
+
+       used keeps track of how many table entries have been allocated from the
+       provided *table space.  It is checked when a LENS table is being made
+       against the space in *table, ENOUGH, minus the maximum space needed by
+       the worst case distance code, MAXD.  This should never happen, but the
+       sufficiency of ENOUGH has not been proven exhaustively, hence the check.
+       This assumes that when type == LENS, bits == 9.
+
+       sym increments through all symbols, and the loop terminates when
+       all codes of length max, i.e. all codes, have been processed.  This
+       routine permits incomplete codes, so another loop after this one fills
+       in the rest of the decoding tables with invalid code markers.
+     */
+
+    /* set up for code type */
+    switch (type) {
+    case CODES:
+        base = extra = work;    /* dummy value--not used */
+        end = 19;
+        break;
+    case LENS:
+        base = lbase;
+        base -= 257;
+        extra = lext;
+        extra -= 257;
+        end = 256;
+        break;
+    default:            /* DISTS */
+        base = dbase;
+        extra = dext;
+        end = -1;
+    }
+
+    /* initialize state for loop */
+    huff = 0;                   /* starting code */
+    sym = 0;                    /* starting code symbol */
+    len = min;                  /* starting code length */
+    next = *table;              /* current table to fill in */
+    curr = root;                /* current table index bits */
+    drop = 0;                   /* current bits to drop from code for index */
+    low = (unsigned)(-1);       /* trigger new sub-table when len > root */
+    used = 1U << root;          /* use root table entries */
+    mask = used - 1;            /* mask for comparing low */
+
+    /* check available table space */
+    if (type == LENS && used >= ENOUGH - MAXD)
+        return 1;
+
+    /* process all codes and make table entries */
+    for (;;) {
+        /* create table entry */
+        this.bits = (unsigned char)(len - drop);
+        if ((int)(work[sym]) < end) {
+            this.op = (unsigned char)0;
+            this.val = work[sym];
+        }
+        else if ((int)(work[sym]) > end) {
+            this.op = (unsigned char)(extra[work[sym]]);
+            this.val = base[work[sym]];
+        }
+        else {
+            this.op = (unsigned char)(32 + 64);         /* end of block */
+            this.val = 0;
+        }
+
+        /* replicate for those indices with low len bits equal to huff */
+        incr = 1U << (len - drop);
+        fill = 1U << curr;
+        min = fill;                 /* save offset to next table */
+        do {
+            fill -= incr;
+            next[(huff >> drop) + fill] = this;
+        } while (fill != 0);
+
+        /* backwards increment the len-bit code huff */
+        incr = 1U << (len - 1);
+        while (huff & incr)
+            incr >>= 1;
+        if (incr != 0) {
+            huff &= incr - 1;
+            huff += incr;
+        }
+        else
+            huff = 0;
+
+        /* go to next symbol, update count, len */
+        sym++;
+        if (--(count[len]) == 0) {
+            if (len == max) break;
+            len = lens[work[sym]];
+        }
+
+        /* create new sub-table if needed */
+        if (len > root && (huff & mask) != low) {
+            /* if first time, transition to sub-tables */
+            if (drop == 0)
+                drop = root;
+
+            /* increment past last table */
+            next += min;            /* here min is 1 << curr */
+
+            /* determine length of next table */
+            curr = len - drop;
+            left = (int)(1 << curr);
+            while (curr + drop < max) {
+                left -= count[curr + drop];
+                if (left <= 0) break;
+                curr++;
+                left <<= 1;
+            }
+
+            /* check for enough space */
+            used += 1U << curr;
+            if (type == LENS && used >= ENOUGH - MAXD)
+                return 1;
+
+            /* point entry in root table to sub-table */
+            low = huff & mask;
+            (*table)[low].op = (unsigned char)curr;
+            (*table)[low].bits = (unsigned char)root;
+            (*table)[low].val = (unsigned short)(next - *table);
+        }
+    }
+
+    /*
+       Fill in rest of table for incomplete codes.  This loop is similar to the
+       loop above in incrementing huff for table indices.  It is assumed that
+       len is equal to curr + drop, so there is no loop needed to increment
+       through high index bits.  When the current sub-table is filled, the loop
+       drops back to the root table to fill in any remaining entries there.
+     */
+    this.op = (unsigned char)64;                /* invalid code marker */
+    this.bits = (unsigned char)(len - drop);
+    this.val = (unsigned short)0;
+    while (huff != 0) {
+        /* when done with sub-table, drop back to root table */
+        if (drop != 0 && (huff & mask) != low) {
+            drop = 0;
+            len = root;
+            next = *table;
+            this.bits = (unsigned char)len;
+        }
+
+        /* put invalid code marker in table */
+        next[huff >> drop] = this;
+
+        /* backwards increment the len-bit code huff */
+        incr = 1U << (len - 1);
+        while (huff & incr)
+            incr >>= 1;
+        if (incr != 0) {
+            huff &= incr - 1;
+            huff += incr;
+        }
+        else
+            huff = 0;
+    }
+
+    /* set return parameters */
+    *table += used;
+    *bits = root;
+    return 0;
+}
diff --git a/lib/zlib_inflate/inftrees.h b/lib/zlib_inflate/inftrees.h
new file mode 100644
index 0000000..b70b473
--- /dev/null
+++ b/lib/zlib_inflate/inftrees.h
@@ -0,0 +1,59 @@
+#ifndef INFTREES_H
+#define INFTREES_H
+
+/* inftrees.h -- header to use inftrees.c
+ * Copyright (C) 1995-2005 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* WARNING: this file should *not* be used by applications. It is
+   part of the implementation of the compression library and is
+   subject to change. Applications should only use zlib.h.
+ */
+
+/* Structure for decoding tables.  Each entry provides either the
+   information needed to do the operation requested by the code that
+   indexed that table entry, or it provides a pointer to another
+   table that indexes more bits of the code.  op indicates whether
+   the entry is a pointer to another table, a literal, a length or
+   distance, an end-of-block, or an invalid code.  For a table
+   pointer, the low four bits of op is the number of index bits of
+   that table.  For a length or distance, the low four bits of op
+   is the number of extra bits to get after the code.  bits is
+   the number of bits in this code or part of the code to drop off
+   of the bit buffer.  val is the actual byte to output in the case
+   of a literal, the base length or distance, or the offset from
+   the current table to the next table.  Each entry is four bytes. */
+typedef struct {
+    unsigned char op;           /* operation, extra bits, table bits */
+    unsigned char bits;         /* bits in this part of the code */
+    unsigned short val;         /* offset in table or code value */
+} code;
+
+/* op values as set by inflate_table():
+    00000000 - literal
+    0000tttt - table link, tttt != 0 is the number of table index bits
+    0001eeee - length or distance, eeee is the number of extra bits
+    01100000 - end of block
+    01000000 - invalid code
+ */
+
+/* Maximum size of dynamic tree.  The maximum found in a long but non-
+   exhaustive search was 1444 code structures (852 for length/literals
+   and 592 for distances, the latter actually the result of an
+   exhaustive search).  The true maximum is not known, but the value
+   below is more than safe. */
+#define ENOUGH 2048
+#define MAXD 592
+
+/* Type of code to build for inftable() */
+typedef enum {
+    CODES,
+    LENS,
+    DISTS
+} codetype;
+
+extern int zlib_inflate_table (codetype type, unsigned short *lens,
+                             unsigned codes, code **table,
+                             unsigned *bits, unsigned short *work);
+#endif
diff --git a/lib/zlib_inflate/infutil.c b/lib/zlib_inflate/infutil.c
new file mode 100644
index 0000000..f452ba6
--- /dev/null
+++ b/lib/zlib_inflate/infutil.c
@@ -0,0 +1,47 @@
+#include <linux/zutil.h>
+#include <errno.h>
+
+/* Utility function: initialize zlib, unpack binary blob, clean up zlib,
+ * return len or negative error code.
+ */
+int zlib_inflate_blob(void *gunzip_buf, unsigned int sz,
+		      const void *buf, unsigned int len)
+{
+	const u8 *zbuf = buf;
+	struct z_stream_s *strm;
+	int rc;
+
+	rc = -ENOMEM;
+	strm = kmalloc(sizeof(*strm), GFP_KERNEL);
+	if (strm == NULL)
+		goto gunzip_nomem1;
+	strm->workspace = kmalloc(zlib_inflate_workspacesize(), GFP_KERNEL);
+	if (strm->workspace == NULL)
+		goto gunzip_nomem2;
+
+	/* gzip header (1f,8b,08... 10 bytes total + possible asciz filename)
+	 * expected to be stripped from input
+	 */
+	strm->next_in = zbuf;
+	strm->avail_in = len;
+	strm->next_out = gunzip_buf;
+	strm->avail_out = sz;
+
+	rc = zlib_inflateInit2(strm, -MAX_WBITS);
+	if (rc == Z_OK) {
+		rc = zlib_inflate(strm, Z_FINISH);
+		/* after Z_FINISH, only Z_STREAM_END is "we unpacked it all" */
+		if (rc == Z_STREAM_END)
+			rc = sz - strm->avail_out;
+		else
+			rc = -EINVAL;
+		zlib_inflateEnd(strm);
+	} else
+		rc = -EINVAL;
+
+	kfree(strm->workspace);
+gunzip_nomem2:
+	kfree(strm);
+gunzip_nomem1:
+	return rc; /* returns Z_OK (0) if successful */
+}
diff --git a/lib/zlib_inflate/infutil.h b/lib/zlib_inflate/infutil.h
new file mode 100644
index 0000000..e7dea7a
--- /dev/null
+++ b/lib/zlib_inflate/infutil.h
@@ -0,0 +1,25 @@
+/* infutil.h -- types and macros common to blocks and codes
+ * Copyright (C) 1995-1998 Mark Adler
+ * For conditions of distribution and use, see copyright notice in zlib.h
+ */
+
+/* WARNING: this file should *not* be used by applications. It is
+   part of the implementation of the compression library and is
+   subject to change. Applications should only use zlib.h.
+ */
+
+#ifndef _INFUTIL_H
+#define _INFUTIL_H
+
+#include <linux/zlib.h>
+
+/* memory allocation for inflation */
+
+struct inflate_workspace {
+	struct inflate_state inflate_state;
+	unsigned char working_window[1 << MAX_WBITS];
+};
+
+#define WS(z) ((struct inflate_workspace *)(z->workspace))
+
+#endif
diff --git a/lib/zlib_inflate/modules.builtin b/lib/zlib_inflate/modules.builtin
new file mode 100644
index 0000000..7206225
--- /dev/null
+++ b/lib/zlib_inflate/modules.builtin
@@ -0,0 +1 @@
+kernel/lib/zlib_inflate/zlib_inflate.ko
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
