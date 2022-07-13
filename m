Delivery-date: Wed, 13 Jul 2022 12:11:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKk-005vsU-Oa
	for lore@lore.pengutronix.de; Wed, 13 Jul 2022 12:11:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBZKh-0002kx-P3
	for lore@pengutronix.de; Wed, 13 Jul 2022 12:11:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ygFtzuKpa2vyAkIjXxDgiDNYdPuHrhiycgWOdUluzQw=; b=onJUCWp5XFMvxSfcGqB3ZQAm7v
	mphDaXex0D/idtFnEm3MsVk9+/gcSCsOrOGfrc720HLoxGfw1ovhqHlkr5z0fRBwPXtKlIGTc8xO1
	OPgU3SIRFAEBsEfpBC3rOa5nrp5SDCw+Nnx+shvn937W8l0T0r1yCIQtDBywcjBu2aZESRbe5nK6d
	ONE4rwRHfT2sBwczzUrb4hfp3a6DalqOuNVfWWXBJ48xM9mrLL225eSwe6+9TncxPM7o/GWLuwNqw
	vPw6y12NgsEqD+wTBlHuEi3K80z4I2eqilQkhNjuR+s9H6ylVfPp0gDtGaFMQhhKizU5gqw56HIHG
	AvKcjySQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJN-002aFI-RL; Wed, 13 Jul 2022 10:09:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBZJ9-002a7m-4h
	for barebox@lists.infradead.org; Wed, 13 Jul 2022 10:09:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ7-0002GV-S7; Wed, 13 Jul 2022 12:09:25 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ7-000gVq-5O; Wed, 13 Jul 2022 12:09:25 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oBZJ6-008Chc-AZ; Wed, 13 Jul 2022 12:09:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 13 Jul 2022 12:09:22 +0200
Message-Id: <20220713100922.1880282-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
References: <20220713100922.1880282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220713_030927_534579_EC918BD0 
X-CRM114-Status: GOOD (  47.28  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/5] lib: uncompress: add general zstd support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

So far, we only supported zstd in squashfs and ubifs. Add support
everywhere else: In PBL for decompressing barebox proper, in uncompress
for compression arbitrary files and for bootm to decompress zstd
kernel images.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c          |   8 +
 common/filetype.c       |   4 +
 include/filetype.h      |   2 +
 lib/Makefile            |   1 +
 lib/decompress_unzstd.c | 351 ++++++++++++++++++++++++++++++++++++++++
 lib/uncompress.c        |   6 +
 pbl/Kconfig             |   4 +
 pbl/decomp.c            |   4 +
 scripts/Makefile.lib    |  29 ++++
 9 files changed, 409 insertions(+)
 create mode 100644 lib/decompress_unzstd.c

diff --git a/common/bootm.c b/common/bootm.c
index 39c566e33b72..269a40beafa1 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -908,6 +908,12 @@ static struct image_handler lz4_bootm_handler = {
 	.filetype = filetype_lz4_compressed,
 };
 
+static struct image_handler zstd_bootm_handler = {
+	.name = "ZSTD compressed file",
+	.bootm = do_bootm_compressed,
+	.filetype = filetype_zstd_compressed,
+};
+
 static struct image_handler xz_bootm_handler = {
 	.name = "XZ compressed file",
 	.bootm = do_bootm_compressed,
@@ -948,6 +954,8 @@ static int bootm_init(void)
 		register_image_handler(&lz4_bootm_handler);
 	if (IS_ENABLED(CONFIG_XZ_DECOMPRESS))
 		register_image_handler(&xz_bootm_handler);
+	if (IS_ENABLED(CONFIG_ZSTD_DECOMPRESS))
+		register_image_handler(&zstd_bootm_handler);
 
 	return 0;
 }
diff --git a/common/filetype.c b/common/filetype.c
index 8f79f48bc122..e44c90df6377 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -77,6 +77,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
 	[filetype_rockchip_rkns_image] = { "Rockchip boot image", "rk-image" },
 	[filetype_fip] = { "TF-A Firmware Image Package", "fip" },
+	[filetype_zstd_compressed] = { "ZSTD compressed", "zstd" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -278,6 +279,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf8[0] == 0x02 && buf8[1] == 0x21 && buf8[2] == 0x4c &&
 			buf8[3] == 0x18)
 		return filetype_lz4_compressed;
+	if (buf8[0] == 0x28 && buf8[1] == 0xB5 && buf8[2] == 0x2F &&
+			buf8[3] == 0xFD)
+		return filetype_zstd_compressed;
 	if (buf[0] == be32_to_cpu(0x27051956))
 		return filetype_uimage;
 	if (buf[0] == 0x23494255)
diff --git a/include/filetype.h b/include/filetype.h
index 00d54e48d528..009c062a9958 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -58,6 +58,7 @@ enum filetype {
 	filetype_mxs_sd_image,
 	filetype_rockchip_rkns_image,
 	filetype_fip,
+	filetype_zstd_compressed,
 	filetype_max,
 };
 
@@ -79,6 +80,7 @@ static inline bool file_is_compressed_file(enum filetype ft)
 	switch (ft) {
 	case filetype_lzo_compressed:
 	case filetype_lz4_compressed:
+	case filetype_zstd_compressed:
 	case filetype_gzip:
 	case filetype_bzip2:
 	case filetype_xz_compressed:
diff --git a/lib/Makefile b/lib/Makefile
index 3f6653d74e9a..92b8bc81019a 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -44,6 +44,7 @@ obj-$(CONFIG_ZSTD_DECOMPRESS) += zstd/
 obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_LZ4_DECOMPRESS) += decompress_unlz4.o
+obj-$(CONFIG_ZSTD_DECOMPRESS) += decompress_unzstd.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
 obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
diff --git a/lib/decompress_unzstd.c b/lib/decompress_unzstd.c
new file mode 100644
index 000000000000..e26cd75330f2
--- /dev/null
+++ b/lib/decompress_unzstd.c
@@ -0,0 +1,351 @@
+// SPDX-License-Identifier: GPL-2.0
+
+/*
+ * Important notes about in-place decompression
+ *
+ * At least on x86, the kernel is decompressed in place: the compressed data
+ * is placed to the end of the output buffer, and the decompressor overwrites
+ * most of the compressed data. There must be enough safety margin to
+ * guarantee that the write position is always behind the read position.
+ *
+ * The safety margin for ZSTD with a 128 KB block size is calculated below.
+ * Note that the margin with ZSTD is bigger than with GZIP or XZ!
+ *
+ * The worst case for in-place decompression is that the beginning of
+ * the file is compressed extremely well, and the rest of the file is
+ * uncompressible. Thus, we must look for worst-case expansion when the
+ * compressor is encoding uncompressible data.
+ *
+ * The structure of the .zst file in case of a compressed kernel is as follows.
+ * Maximum sizes (as bytes) of the fields are in parenthesis.
+ *
+ *    Frame Header: (18)
+ *    Blocks: (N)
+ *    Checksum: (4)
+ *
+ * The frame header and checksum overhead is at most 22 bytes.
+ *
+ * ZSTD stores the data in blocks. Each block has a header whose size is
+ * a 3 bytes. After the block header, there is up to 128 KB of payload.
+ * The maximum uncompressed size of the payload is 128 KB. The minimum
+ * uncompressed size of the payload is never less than the payload size
+ * (excluding the block header).
+ *
+ * The assumption, that the uncompressed size of the payload is never
+ * smaller than the payload itself, is valid only when talking about
+ * the payload as a whole. It is possible that the payload has parts where
+ * the decompressor consumes more input than it produces output. Calculating
+ * the worst case for this would be tricky. Instead of trying to do that,
+ * let's simply make sure that the decompressor never overwrites any bytes
+ * of the payload which it is currently reading.
+ *
+ * Now we have enough information to calculate the safety margin. We need
+ *   - 22 bytes for the .zst file format headers;
+ *   - 3 bytes per every 128 KiB of uncompressed size (one block header per
+ *     block); and
+ *   - 128 KiB (biggest possible zstd block size) to make sure that the
+ *     decompressor never overwrites anything from the block it is currently
+ *     reading.
+ *
+ * We get the following formula:
+ *
+ *    safety_margin = 22 + uncompressed_size * 3 / 131072 + 131072
+ *                 <= 22 + (uncompressed_size >> 15) + 131072
+ */
+
+/*
+ * Preboot environments #include "path/to/decompress_unzstd.c".
+ * All of the source files we depend on must be #included.
+ * zstd's only source dependency is xxhash, which has no source
+ * dependencies.
+ *
+ * When UNZSTD_PREBOOT is defined we declare __decompress(), which is
+ * used for kernel decompression, instead of unzstd().
+ *
+ * Define __DISABLE_EXPORTS in preboot environments to prevent symbols
+ * from xxhash and zstd from being exported by the EXPORT_SYMBOL macro.
+ */
+#ifdef STATIC
+# define UNZSTD_PREBOOT
+# include "xxhash.c"
+# include "zstd/decompress_sources.h"
+#endif
+
+#include <linux/decompress/unzstd.h>
+#include <linux/decompress/mm.h>
+#include <linux/kernel.h>
+#include <linux/zstd.h>
+
+/* 128MB is the maximum window size supported by zstd. */
+#define ZSTD_WINDOWSIZE_MAX	(1 << ZSTD_WINDOWLOG_MAX)
+/*
+ * Size of the input and output buffers in multi-call mode.
+ * Pick a larger size because it isn't used during kernel decompression,
+ * since that is single pass, and we have to allocate a large buffer for
+ * zstd's window anyway. The larger size speeds up initramfs decompression.
+ */
+#define ZSTD_IOBUF_SIZE		(1 << 17)
+
+static int INIT handle_zstd_error(size_t ret, void (*error)(char *x))
+{
+	const zstd_error_code err = zstd_get_error_code(ret);
+
+	if (!zstd_is_error(ret))
+		return 0;
+
+	/*
+	 * zstd_get_error_name() cannot be used because error takes a char *
+	 * not a const char *
+	 */
+	switch (err) {
+	case ZSTD_error_memory_allocation:
+		error("ZSTD decompressor ran out of memory");
+		break;
+	case ZSTD_error_prefix_unknown:
+		error("Input is not in the ZSTD format (wrong magic bytes)");
+		break;
+	case ZSTD_error_dstSize_tooSmall:
+	case ZSTD_error_corruption_detected:
+	case ZSTD_error_checksum_wrong:
+		error("ZSTD-compressed data is corrupt");
+		break;
+	default:
+		error("ZSTD-compressed data is probably corrupt");
+		break;
+	}
+	return -1;
+}
+
+/*
+ * Handle the case where we have the entire input and output in one segment.
+ * We can allocate less memory (no circular buffer for the sliding window),
+ * and avoid some memcpy() calls.
+ */
+static int INIT decompress_single(const u8 *in_buf, int in_len, u8 *out_buf,
+				  int out_len, int *in_pos,
+				  void (*error)(char *x))
+{
+	const size_t wksp_size = zstd_dctx_workspace_bound();
+	void *wksp = large_malloc(wksp_size);
+	zstd_dctx *dctx = zstd_init_dctx(wksp, wksp_size);
+	int err;
+	size_t ret;
+
+	if (dctx == NULL) {
+		error("Out of memory while allocating zstd_dctx");
+		err = -1;
+		goto out;
+	}
+	/*
+	 * Find out how large the frame actually is, there may be junk at
+	 * the end of the frame that zstd_decompress_dctx() can't handle.
+	 */
+	ret = zstd_find_frame_compressed_size(in_buf, in_len);
+	err = handle_zstd_error(ret, error);
+	if (err)
+		goto out;
+	in_len = (int)ret;
+
+	ret = zstd_decompress_dctx(dctx, out_buf, out_len, in_buf, in_len);
+	err = handle_zstd_error(ret, error);
+	if (err)
+		goto out;
+
+	if (in_pos != NULL)
+		*in_pos = in_len;
+
+	err = 0;
+out:
+	if (wksp != NULL)
+		large_free(wksp);
+	return err;
+}
+
+static int INIT __unzstd(unsigned char *in_buf, int in_len,
+			 int (*fill)(void*, unsigned int),
+			 int (*flush)(void*, unsigned int),
+			 unsigned char *out_buf, int out_len,
+			 int *in_pos,
+			 void (*error)(char *x))
+{
+	zstd_in_buffer in;
+	zstd_out_buffer out;
+	zstd_frame_header header;
+	void *in_allocated = NULL;
+	void *out_allocated = NULL;
+	void *wksp = NULL;
+	size_t wksp_size;
+	zstd_dstream *dstream;
+	int err;
+	size_t ret;
+
+	/*
+	 * ZSTD decompression code won't be happy if the buffer size is so big
+	 * that its end address overflows. When the size is not provided, make
+	 * it as big as possible without having the end address overflow.
+	 */
+	if (out_len == 0)
+		out_len = UINTPTR_MAX - (uintptr_t)out_buf;
+
+	if (fill == NULL && flush == NULL)
+		/*
+		 * We can decompress faster and with less memory when we have a
+		 * single chunk.
+		 */
+		return decompress_single(in_buf, in_len, out_buf, out_len,
+					 in_pos, error);
+
+	/*
+	 * If in_buf is not provided, we must be using fill(), so allocate
+	 * a large enough buffer. If it is provided, it must be at least
+	 * ZSTD_IOBUF_SIZE large.
+	 */
+	if (in_buf == NULL) {
+		in_allocated = large_malloc(ZSTD_IOBUF_SIZE);
+		if (in_allocated == NULL) {
+			error("Out of memory while allocating input buffer");
+			err = -1;
+			goto out;
+		}
+		in_buf = in_allocated;
+		in_len = 0;
+	}
+	/* Read the first chunk, since we need to decode the frame header. */
+	if (fill != NULL)
+		in_len = fill(in_buf, ZSTD_IOBUF_SIZE);
+	if (in_len < 0) {
+		error("ZSTD-compressed data is truncated");
+		err = -1;
+		goto out;
+	}
+	/* Set the first non-empty input buffer. */
+	in.src = in_buf;
+	in.pos = 0;
+	in.size = in_len;
+	/* Allocate the output buffer if we are using flush(). */
+	if (flush != NULL) {
+		out_allocated = large_malloc(ZSTD_IOBUF_SIZE);
+		if (out_allocated == NULL) {
+			error("Out of memory while allocating output buffer");
+			err = -1;
+			goto out;
+		}
+		out_buf = out_allocated;
+		out_len = ZSTD_IOBUF_SIZE;
+	}
+	/* Set the output buffer. */
+	out.dst = out_buf;
+	out.pos = 0;
+	out.size = out_len;
+
+	/*
+	 * We need to know the window size to allocate the zstd_dstream.
+	 * Since we are streaming, we need to allocate a buffer for the sliding
+	 * window. The window size varies from 1 KB to ZSTD_WINDOWSIZE_MAX
+	 * (8 MB), so it is important to use the actual value so as not to
+	 * waste memory when it is smaller.
+	 */
+	ret = zstd_get_frame_header(&header, in.src, in.size);
+	err = handle_zstd_error(ret, error);
+	if (err)
+		goto out;
+	if (ret != 0) {
+		error("ZSTD-compressed data has an incomplete frame header");
+		err = -1;
+		goto out;
+	}
+	if (header.windowSize > ZSTD_WINDOWSIZE_MAX) {
+		error("ZSTD-compressed data has too large a window size");
+		err = -1;
+		goto out;
+	}
+
+	/*
+	 * Allocate the zstd_dstream now that we know how much memory is
+	 * required.
+	 */
+	wksp_size = zstd_dstream_workspace_bound(header.windowSize);
+	wksp = large_malloc(wksp_size);
+	dstream = zstd_init_dstream(header.windowSize, wksp, wksp_size);
+	if (dstream == NULL) {
+		error("Out of memory while allocating ZSTD_DStream");
+		err = -1;
+		goto out;
+	}
+
+	/*
+	 * Decompression loop:
+	 * Read more data if necessary (error if no more data can be read).
+	 * Call the decompression function, which returns 0 when finished.
+	 * Flush any data produced if using flush().
+	 */
+	if (in_pos != NULL)
+		*in_pos = 0;
+	do {
+		/*
+		 * If we need to reload data, either we have fill() and can
+		 * try to get more data, or we don't and the input is truncated.
+		 */
+		if (in.pos == in.size) {
+			if (in_pos != NULL)
+				*in_pos += in.pos;
+			in_len = fill ? fill(in_buf, ZSTD_IOBUF_SIZE) : -1;
+			if (in_len < 0) {
+				error("ZSTD-compressed data is truncated");
+				err = -1;
+				goto out;
+			}
+			in.pos = 0;
+			in.size = in_len;
+		}
+		/* Returns zero when the frame is complete. */
+		ret = zstd_decompress_stream(dstream, &out, &in);
+		err = handle_zstd_error(ret, error);
+		if (err)
+			goto out;
+		/* Flush all of the data produced if using flush(). */
+		if (flush != NULL && out.pos > 0) {
+			if (out.pos != flush(out.dst, out.pos)) {
+				error("Failed to flush()");
+				err = -1;
+				goto out;
+			}
+			out.pos = 0;
+		}
+	} while (ret != 0);
+
+	if (in_pos != NULL)
+		*in_pos += in.pos;
+
+	err = 0;
+out:
+	if (in_allocated != NULL)
+		large_free(in_allocated);
+	if (out_allocated != NULL)
+		large_free(out_allocated);
+	if (wksp != NULL)
+		large_free(wksp);
+	return err;
+}
+
+#ifndef UNZSTD_PREBOOT
+STATIC int INIT unzstd(unsigned char *buf, int len,
+		       int (*fill)(void*, unsigned int),
+		       int (*flush)(void*, unsigned int),
+		       unsigned char *out_buf,
+		       int *pos,
+		       void (*error)(char *x))
+{
+	return __unzstd(buf, len, fill, flush, out_buf, 0, pos, error);
+}
+#else
+STATIC int INIT decompress(unsigned char *buf, int len,
+			     int (*fill)(void*, unsigned int),
+			     int (*flush)(void*, unsigned int),
+			     unsigned char *out_buf,
+			     int *pos,
+			     void (*error)(char *x))
+{
+	return __unzstd(buf, len, fill, flush, out_buf, 0, pos, error);
+}
+#endif
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 5c0d1e9f4d66..15eb3da098c8 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -20,6 +20,7 @@
 #include <lzo.h>
 #include <linux/xz.h>
 #include <linux/decompress/unlz4.h>
+#include <linux/decompress/unzstd.h>
 #include <errno.h>
 #include <filetype.h>
 #include <malloc.h>
@@ -121,6 +122,11 @@ int uncompress(unsigned char *inbuf, int len,
 	case filetype_xz_compressed:
 		compfn = decompress_unxz;
 		break;
+#endif
+#ifdef CONFIG_ZSTD_DECOMPRESS
+	case filetype_zstd_compressed:
+		compfn = unzstd;
+		break;
 #endif
 	default:
 		err = basprintf("cannot handle filetype %s",
diff --git a/pbl/Kconfig b/pbl/Kconfig
index ba809af2d5b9..232f846e20b0 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -35,6 +35,7 @@ config USE_COMPRESSED_DTB
 	select LZO_DECOMPRESS if IMAGE_COMPRESSION_LZO
 	select ZLIB if IMAGE_COMPRESSION_GZIP
 	select XZ_DECOMPRESS if IMAGE_COMPRESSION_XZKERN
+	select ZSTD_DECOMPRESS if IMAGE_COMPRESSION_ZSTD
 
 config PBL_RELOCATABLE
 	depends on ARM || MIPS || RISCV
@@ -77,6 +78,9 @@ config IMAGE_COMPRESSION_GZIP
 config IMAGE_COMPRESSION_XZKERN
 	bool "xz"
 
+config IMAGE_COMPRESSION_ZSTD
+	bool "zstd"
+
 config IMAGE_COMPRESSION_NONE
 	bool "none"
 
diff --git a/pbl/decomp.c b/pbl/decomp.c
index 1e0ef81ada00..742e15bfedf8 100644
--- a/pbl/decomp.c
+++ b/pbl/decomp.c
@@ -31,6 +31,10 @@
 #include "../../../lib/decompress_unxz.c"
 #endif
 
+#ifdef CONFIG_IMAGE_COMPRESSION_ZSTD
+#include "../../../lib/decompress_unzstd.c"
+#endif
+
 #ifdef CONFIG_IMAGE_COMPRESSION_NONE
 STATIC int decompress(u8 *input, int in_len,
 				int (*fill) (void *, unsigned int),
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 61617bd9dcba..a648835b1bfb 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -279,6 +279,7 @@ suffix_$(CONFIG_IMAGE_COMPRESSION_GZIP) = gzip
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZO)  = lzo
 suffix_$(CONFIG_IMAGE_COMPRESSION_LZ4)	= lz4
 suffix_$(CONFIG_IMAGE_COMPRESSION_XZKERN) = xzkern
+suffix_$(CONFIG_IMAGE_COMPRESSION_ZSTD)	= zstd_with_size
 suffix_$(CONFIG_IMAGE_COMPRESSION_NONE) = comp_copy
 
 # Gzip
@@ -478,6 +479,34 @@ cmd_lz4 = (cat $(filter-out FORCE,$^) | \
 %.lz4: %
 	$(call if_changed,lz4)
 
+# ZSTD
+# ---------------------------------------------------------------------------
+# Appends the uncompressed size of the data using size_append. The .zst
+# format has the size information available at the beginning of the file too,
+# but it's in a more complex format and it's good to avoid changing the part
+# of the boot code that reads the uncompressed size.
+#
+# Note that the bytes added by size_append will make the zstd tool think that
+# the file is corrupt. This is expected.
+#
+# zstd uses a maximum window size of 8 MB. zstd22 uses a maximum window size of
+# 128 MB. zstd22 is used for kernel compression because it is decompressed in a
+# single pass, so zstd doesn't need to allocate a window buffer. When streaming
+# decompression is used, like initramfs decompression, zstd22 should likely not
+# be used because it would require zstd to allocate a 128 MB buffer.
+
+quiet_cmd_zstd = ZSTD    $@
+      cmd_zstd = cat $(filter-out FORCE,$^) | zstd -19 > $@
+
+quiet_cmd_zstd_with_size = ZSTD    $@
+      cmd_zstd_with_size = { cat $(filter-out FORCE,$^) | zstd -19; $(call size_append, $(filter-out FORCE,$^)); } > $@
+
+quiet_cmd_zstd22 = ZSTD22  $@
+      cmd_zstd22 = cat $(filter-out FORCE,$^) | zstd -22 --ultra > $@
+
+quiet_cmd_zstd22_with_size = ZSTD22  $@
+      cmd_zstd22_with_size = { cat $(filter-out FORCE,$^) | zstd -22 --ultra; $(call size_append, $(filter-out FORCE,$^)); } > $@
+
 # comp_copy
 # ---------------------------------------------------------------------------
 # Wrapper which only copies a file, but compatible to the compression
-- 
2.30.2



