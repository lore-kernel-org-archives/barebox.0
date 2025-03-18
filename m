Delivery-date: Tue, 18 Mar 2025 15:47:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE4-0014gU-07
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE2-0007sH-Hx
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1FZ5Ljh11OYvQ5Sts0UkgqnAr4bfXIaIGwC7OwLnY7w=; b=1heGymwnM+kbPsBfDpmtsoNCln
	q6pr2q7lp3eMvoAXJ++7HVtAWN0NYUXRYikSOjhEPXm9gqG9bq24wvQ5XQ8L9Q+pHi/00uRjWyuom
	TmEEMGRaaRxXfwIoldEo5/Tq1ZgrZBbRviKkp+2Zfjjc/gaRChdbapR3a1pnG6rFhGOD+/OaiybHt
	INoOBwURQqFhZmiFXdgGUNWeUG7UNZtzXYF7vUV8vbFWuVO4hAwLhD0Q3B9jdRtrkjGrnN4Yar/XK
	39PCq4oyOFKCzm0jaaSW89bMRPotPm7CQ+EoHGMxNL1411P54TBx2ZFP3lJHPpWrNlzimYjtMSz9E
	TdwxuOBA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDS-00000006E4E-3v0V;
	Tue, 18 Mar 2025 14:46:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8e-00000006DOi-2nam
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nJ-H7; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rad-2A;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-37;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-1-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=4885;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=zR9aYbdqNgJV+ccGsoq80PSf/Gsv0fREn4nSX9a5GI8=;
 b=0SEKUAg23AQqvqZo8Ats11qBXdFnY6N7TsLyh5M1NAxFWt5HwNt/4DWpVPCtwqAXi5HAxuXlk
 vXoz1jUdK/dB2lx+BSBqGxRk/bdUhRXU6U6P/xmKqWtlrYT4dzzB/4f
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074152_709909_E7BF7C81 
X-CRM114-Status: GOOD (  15.05  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] filetype: add file_detect_compression_type()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add file_detect_compression_type() and use that in the uncompression
code which is only interested if the file is one of the supported
compression formats.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 48 ++++++++++++++++++++++++++++++++----------------
 include/filetype.h |  1 +
 lib/uncompress.c   |  4 ++--
 3 files changed, 35 insertions(+), 18 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 73ea17e19b..9916b63b80 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -261,6 +261,34 @@ static bool is_dos_exe(const u8 *buf8)
 
 #define CH_TOC_section_name     0x14
 
+enum filetype file_detect_compression_type(const void *_buf, size_t bufsize)
+{
+	const u32 *buf = _buf;
+	const u8 *buf8 = _buf;
+
+	if (bufsize < 16)
+		return filetype_unknown;
+
+	if (buf8[0] == 0x89 && buf8[1] == 0x4c && buf8[2] == 0x5a &&
+			buf8[3] == 0x4f)
+		return filetype_lzo_compressed;
+	if (buf8[0] == 0x02 && buf8[1] == 0x21 && buf8[2] == 0x4c &&
+			buf8[3] == 0x18)
+		return filetype_lz4_compressed;
+	if (buf8[0] == 0x1f && buf8[1] == 0x8b && buf8[2] == 0x08)
+		return filetype_gzip;
+	if (buf8[0] == 'B' && buf8[1] == 'Z' && buf8[2] == 'h' &&
+			buf8[3] > '0' && buf8[3] <= '9')
+                return filetype_bzip2;
+	if (buf8[0] == 0xfd && buf8[1] == 0x37 && buf8[2] == 0x7a &&
+			buf8[3] == 0x58 && buf8[4] == 0x5a && buf8[5] == 0x00)
+		return filetype_xz_compressed;
+	if (le32_to_cpu(buf[0]) == le32_to_cpu(ZSTD_MAGICNUMBER))
+		return filetype_zstd_compressed;
+
+	return filetype_unknown;
+}
+
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
 	const u32 *buf = _buf;
@@ -278,17 +306,15 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[0] == ENVFS_32(ENVFS_MAGIC))
 		return filetype_barebox_env;
 
+	type = file_detect_compression_type(_buf, bufsize);
+	if (type != filetype_unknown)
+		return type;
+
 	if (bufsize < 32)
 		return filetype_unknown;
 
 	if (strncmp(buf8, "BM", 2) == 0)
 		return filetype_bmp;
-	if (buf8[0] == 0x89 && buf8[1] == 0x4c && buf8[2] == 0x5a &&
-			buf8[3] == 0x4f)
-		return filetype_lzo_compressed;
-	if (buf8[0] == 0x02 && buf8[1] == 0x21 && buf8[2] == 0x4c &&
-			buf8[3] == 0x18)
-		return filetype_lz4_compressed;
 	if (buf[0] == be32_to_cpu(0x27051956))
 		return filetype_uimage;
 	if (buf[0] == 0x23494255)
@@ -297,14 +323,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_ubifs;
 	if (buf[0] == 0x20031985)
 		return filetype_jffs2;
-	if (buf8[0] == 0x1f && buf8[1] == 0x8b && buf8[2] == 0x08)
-		return filetype_gzip;
-	if (buf8[0] == 'B' && buf8[1] == 'Z' && buf8[2] == 'h' &&
-			buf8[3] > '0' && buf8[3] <= '9')
-                return filetype_bzip2;
-	if (buf8[0] == 0xfd && buf8[1] == 0x37 && buf8[2] == 0x7a &&
-			buf8[3] == 0x58 && buf8[4] == 0x5a && buf8[5] == 0x00)
-		return filetype_xz_compressed;
 	if (buf8[0] == 'h' && buf8[1] == 's' && buf8[2] == 'q' &&
 			buf8[3] == 's')
 		return filetype_squashfs;
@@ -325,8 +343,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_rockchip_rkns_image;
 	if (le32_to_cpu(buf[0]) == le32_to_cpu(0xaa640001))
 		return filetype_fip;
-	if (le32_to_cpu(buf[0]) == le32_to_cpu(ZSTD_MAGICNUMBER))
-		return filetype_zstd_compressed;
 
 	if ((buf8[0] == 0x5a || buf8[0] == 0x69 || buf8[0] == 0x78 ||
 	     buf8[0] == 0x8b || buf8[0] == 0x9c) &&
diff --git a/include/filetype.h b/include/filetype.h
index c24d061e8f..b8c0105bf2 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -74,6 +74,7 @@ struct cdev;
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
+enum filetype file_detect_compression_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 int file_name_detect_type(const char *filename, enum filetype *type);
 int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type);
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 0aaeb066b6..c284bcc6ba 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -79,7 +79,7 @@ int uncompress(unsigned char *inbuf, long len,
 	char *err;
 
 	if (inbuf) {
-		ft = file_detect_type(inbuf, len);
+		ft = file_detect_compression_type(inbuf, len);
 		uncompress_buf = NULL;
 		uncompress_size = 0;
 	} else {
@@ -94,7 +94,7 @@ int uncompress(unsigned char *inbuf, long len,
 		if (ret < 0)
 			goto err;
 
-		ft = file_detect_type(uncompress_buf, 32);
+		ft = file_detect_compression_type(uncompress_buf, 32);
 	}
 
 	pr_debug("Filetype detected: %s\n", file_type_to_string(ft));

-- 
2.39.5



