Delivery-date: Tue, 18 Mar 2025 15:47:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE3-0014fo-0Z
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 15:47:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuYE1-0007r6-S3
	for lore@pengutronix.de; Tue, 18 Mar 2025 15:47:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VL9yrN7e1RVnRTOCwUZOzH2elL+Ay/34R5ewEdXUyAg=; b=fMTLdV9y96Tvnm09EjGsAL6seJ
	xJlNTJdJaae2FVLRTviGiUU2/EKmiaI04R0BVqgtoqDKa7WTd7vKwFG84pPR0iTn+6yxCU7P8rP+j
	CPH9hSLXJNKvtW6XruRvTV9MIa5HdZPYKmoLWFkbJiSzkhlIMhitqlIHWU8Mm+fRPyv+7xNsRONn+
	IZ37M+k0uQeerz1iNe2nkPgHZpqfAhQDtObMQWVe+p8//aZWUbRxUWfb99/NwsNKU8Z5EfPgDKaMc
	l9NgBPn6h0cY+QAb7EPGYZuKNwDjMfH4C4cOKkdFa186k7+LT1o9xpX702x2IA5fHDLSaOIQfpNoE
	kSfJ0Iwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuYDQ-00000006E2O-2E4Q;
	Tue, 18 Mar 2025 14:46:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuY8X-00000006DKV-1JQi
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 14:41:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8V-0006nG-AA; Tue, 18 Mar 2025 15:41:43 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-000Rab-21;
	Tue, 18 Mar 2025 15:41:43 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuY8U-00F87i-38;
	Tue, 18 Mar 2025 15:41:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2025 15:41:43 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250318-filetype-size-reduction-v1-2-4f463ffae7d0@pengutronix.de>
References: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
In-Reply-To: <20250318-filetype-size-reduction-v1-0-4f463ffae7d0@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742308902; l=4532;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=lNBpyHL97DNt1omBlk+3NqeDkLSnObI+ZLn+D/N1sD4=;
 b=Tc2g3185aqrWqYWqHSUhVJkpyO492unSdWRxf4kQq5Ktd9/Rd/mDWEq3M55ya0XZt7WjCbR4o
 Eh4API7KiSdDf5JwosoHovkLk6FM6OPDvWpBr0K6cvuw+IKx/0iBnMu
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_074145_398976_F3828EED 
X-CRM114-Status: GOOD (  16.94  )
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
Subject: [PATCH 2/7] filetype: add file_detect_fs_type()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

add file_detect_fs_type() which only tests if the buffer contains one of
the supported filesystems without testing for other binary formats.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 59 ++++++++++++++++++++++++++++++++++++------------------
 include/filetype.h |  1 +
 2 files changed, 41 insertions(+), 19 deletions(-)

diff --git a/common/filetype.c b/common/filetype.c
index 9916b63b80..2a55d5f4ea 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -198,29 +198,39 @@ int is_fat_boot_sector(const void *sect)
 	return 0;
 }
 
-enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
+static enum filetype file_detect_fs_fat(const void *_buf, size_t bufsize)
 {
-	/*
-	 * bootsec can be used to return index of the first sector in the
-	 * first partition
-	 */
-	if (bootsec)
-		*bootsec = 0;
+	const u8 *buf8 = _buf;
 
 	/*
 	 * Check record signature (always placed at offset 510 even if the
 	 * sector size is > 512)
 	 */
-	if (get_unaligned_le16(&sector[BS_55AA]) != 0xAA55)
+	if (get_unaligned_le16(&buf8[BS_55AA]) != 0xAA55)
 		return filetype_unknown;
 
 	/* Check "FAT" string */
-	if ((get_unaligned_le32(&sector[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
+	if ((get_unaligned_le32(&buf8[BS_FilSysType]) & 0xFFFFFF) == 0x544146)
 		return filetype_fat;
 
-	if ((get_unaligned_le32(&sector[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
+	if ((get_unaligned_le32(&buf8[BS_FilSysType32]) & 0xFFFFFF) == 0x544146)
 		return filetype_fat;
 
+	return filetype_unknown;
+}
+
+enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
+{
+	/*
+	 * bootsec can be used to return index of the first sector in the
+	 * first partition
+	 */
+	if (bootsec)
+		*bootsec = 0;
+
+	if (file_detect_fs_fat(sector, 512) != filetype_fat)
+		return filetype_unknown;
+
 	if (bootsec)
 		/*
 		 * This must be an MBR, so return the starting sector of the
@@ -289,12 +299,31 @@ enum filetype file_detect_compression_type(const void *_buf, size_t bufsize)
 	return filetype_unknown;
 }
 
+enum filetype file_detect_fs_type(const void *_buf, size_t bufsize)
+{
+	const u32 *buf = _buf;
+	const u16 *buf16 = _buf;
+	const u8 *buf8 = _buf;
+
+	if (bufsize < 16)
+		return filetype_unknown;
+
+	if (buf8[0] == 'h' && buf8[1] == 's' && buf8[2] == 'q' &&
+			buf8[3] == 's')
+		return filetype_squashfs;
+	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
+		return filetype_ext;
+	if (buf[0] == le32_to_cpu(0x06101831))
+		return filetype_ubifs;
+
+	return file_detect_fs_fat(_buf, bufsize);
+}
+
 enum filetype file_detect_type(const void *_buf, size_t bufsize)
 {
 	const u32 *buf = _buf;
 	const u64 *buf64 = _buf;
 	const u8 *buf8 = _buf;
-	const u16 *buf16 = _buf;
 	const struct imx_flash_header *imx_flash_header = _buf;
 	enum filetype type;
 
@@ -319,13 +348,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 		return filetype_uimage;
 	if (buf[0] == 0x23494255)
 		return filetype_ubi;
-	if (buf[0] == le32_to_cpu(0x06101831))
-		return filetype_ubifs;
 	if (buf[0] == 0x20031985)
 		return filetype_jffs2;
-	if (buf8[0] == 'h' && buf8[1] == 's' && buf8[2] == 'q' &&
-			buf8[3] == 's')
-		return filetype_squashfs;
 	if (buf[0] == be32_to_cpu(0xd00dfeed))
 		return filetype_oftree;
 	if (strncmp(buf8, "ANDROID!", 8) == 0)
@@ -423,9 +447,6 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (type != filetype_unknown)
 		return type;
 
-	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
-		return filetype_ext;
-
 	if (strncmp(buf8 + CH_TOC_section_name, "CHSETTINGS", 10) == 0)
 		return filetype_ch_image;
 
diff --git a/include/filetype.h b/include/filetype.h
index b8c0105bf2..329ebc9e8b 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -75,6 +75,7 @@ const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
 enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
 enum filetype file_detect_compression_type(const void *_buf, size_t bufsize);
+enum filetype file_detect_fs_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
 int file_name_detect_type(const char *filename, enum filetype *type);
 int file_name_detect_type_offset(const char *filename, loff_t pos, enum filetype *type);

-- 
2.39.5



