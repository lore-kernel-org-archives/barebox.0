Delivery-date: Fri, 26 Jun 2026 10:51:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HY-00A1AC-2C
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:51:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2HW-00020A-Nq
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:51:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJYHeFPYEECpSk62ZJH0v4azSoL3vnJzqTcTeaY9Wt0=; b=OwWWuevRHTfpyGsZx00JwXBMZH
	uP5dBX6AtQL0RrwlisVsIbCGJQ5zeqEIWA6scKWkBHG0KC8KoAXPNRJRHqqtH+4Wfkh+dPZSi8EDe
	mFB97REIRNeXkedrAg9uv5wBeoKpzOwt7XGpU1Mk16d0yFoKrcI3wILrN4XVWiG27Q9GYcdv8ORDa
	kvbuoFMUetz0DusfoimuqX0PwI/GrYJzeEAxN4wBQpE0ReRTXeWrsXXwuhLG5Z9EdQIZqHIoSt/gZ
	HlyP6C5HTaa8Sbamki4KhzicEHLglgOZWiNiQF/n7GL3mt9nJkvG28V2lXaI9Duvu+PvcgW5KK5MB
	8ps99orQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cf-0000000AtI5-0M3Q;
	Fri, 26 Jun 2026 08:46:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CW-0000000At8T-3BaA
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CU-0003ZP-1r; Fri, 26 Jun 2026 10:46:14 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:22 +0200
Message-ID: <20260626084608.1388806-12-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_799197_3F632DFA 
X-CRM114-Status: GOOD (  17.77  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 11/26] filetype: don't hardcode sector size in file_detect_partition_table
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The GPT is identified by the second LBA starting with "EFI PART".
file_detect_partition_table() checks for that, but implicitly assumes LBA
size to be 512 byte, which precludes using it to detect partitions
tables on block device with e.g. 4K block sizes.

In preparation for fixing that, adapt file_detect_partition_table() to
always take a sector size.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/createnv.c     |  2 +-
 common/bootscan.c       |  3 ++-
 common/filetype.c       | 16 +++++++++-------
 common/partitions.c     |  4 ++--
 common/partitions/efi.c |  3 ++-
 include/filetype.h      |  3 ++-
 6 files changed, 18 insertions(+), 13 deletions(-)

diff --git a/commands/createnv.c b/commands/createnv.c
index df03664be112..0c74637a114c 100644
--- a/commands/createnv.c
+++ b/commands/createnv.c
@@ -77,7 +77,7 @@ static int do_createnv(int argc, char *argv[])
 		goto err;
 	}
 
-	filetype = file_detect_partition_table(buf, 2 * SECTOR_SIZE);
+	filetype = file_detect_partition_table(buf, 2 * SECTOR_SIZE, SECTOR_SIZE);
 
 	switch (filetype) {
 	case filetype_gpt:
diff --git a/common/bootscan.c b/common/bootscan.c
index 1c865c6b1382..5b70024a75aa 100644
--- a/common/bootscan.c
+++ b/common/bootscan.c
@@ -4,6 +4,7 @@
 #include <driver.h>
 #include <xfuncs.h>
 #include <block.h>
+#include <disks.h>
 #include <fs.h>
 #include <linux/stat.h>
 #include <linux/err.h>
@@ -109,7 +110,7 @@ int boot_scan_cdev(struct bootscanner *scanner,
 
 	readsize = ret;
 
-	type = file_detect_partition_table(buf, readsize);
+	type = file_detect_partition_table(buf, readsize, SECTOR_SIZE);
 	filetype = file_detect_type(buf, readsize);
 	free(buf);
 
diff --git a/common/filetype.c b/common/filetype.c
index 80b7e1d98ce0..01cef7f1fbb7 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -157,16 +157,16 @@ static inline int pmbr_part_valid(const uint8_t *buf)
  * Validity depends on three things:
  *  1) MSDOS signature is in the last two bytes of the MBR
  *  2) One partition of type 0xEE is found
- *  3) EFI GPT signature is at offset 512
+ *  3) EFI GPT signature is at the next logical block
  */
-static int is_gpt_valid(const uint8_t *buf)
+static int is_gpt_valid(const uint8_t *buf, unsigned int sector_size)
 {
 	int i;
 
 	if (get_unaligned_le16(&buf[BS_55AA]) != 0xAA55)
 		return 0;
 
-	if (strncmp(&buf[512], "EFI PART", 8))
+	if (strncmp(buf + sector_size, "EFI PART", 8))
 		return 0;
 
 	buf += MBR_Table;
@@ -268,19 +268,21 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 	return filetype_mbr;
 }
 
-enum filetype file_detect_partition_table(const void *_buf, size_t bufsize)
+enum filetype file_detect_partition_table(const void *_buf,
+					  size_t bufsize,
+					  unsigned int sector_size)
 {
 	const u8 *buf8 = _buf;
 	enum filetype type;
 
-	if (bufsize < 512)
+	if (bufsize < MIN_SECTOR_SIZE || sector_size < MIN_SECTOR_SIZE)
 		return filetype_unknown;
 
 	/*
 	 * EFI GPT need to be detected before MBR otherwise
 	 * we will detect a MBR
 	 */
-	if (bufsize >= 520 && is_gpt_valid(buf8))
+	if (bufsize >= sector_size + 8 && is_gpt_valid(buf8, sector_size))
 		return filetype_gpt;
 
 	type = is_fat_or_mbr(buf8, NULL);
@@ -468,7 +470,7 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize < 512)
 		return filetype_unknown;
 
-	type = file_detect_partition_table(_buf, bufsize);
+	type = file_detect_partition_table(_buf, bufsize, SECTOR_SIZE);
 	if (type != filetype_unknown)
 		return type;
 
diff --git a/common/partitions.c b/common/partitions.c
index 40f4c629e1ac..ff977516aa1f 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -97,7 +97,7 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	struct partition_parser *parser;
 
 	/* first new partition table as EFI GPT */
-	type = file_detect_partition_table(buf, SECTOR_SIZE * 2);
+	type = file_detect_partition_table(buf, SECTOR_SIZE * 2, SECTOR_SIZE);
 
 	list_for_each_entry(parser, &partition_parser_list, list) {
 		if (parser->type == type)
@@ -108,7 +108,7 @@ static struct partition_parser *partition_parser_get_by_filetype(uint8_t *buf)
 	 * so if EFI GPT not enable take it as MBR
 	 * useful for compatibility
 	 */
-	type = file_detect_partition_table(buf, SECTOR_SIZE);
+	type = file_detect_partition_table(buf, SECTOR_SIZE, SECTOR_SIZE);
 	if (type == filetype_fat && !is_fat_boot_sector(buf))
 		type = filetype_mbr;
 
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 674f920743d3..4847f88fa551 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -505,7 +505,8 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
 	lastlba = last_lba(blk);
 	if (force_gpt) {
 		/* This will be added to the EFI Spec. per Intel after v1.02. */
-		if (file_detect_partition_table(buf, SECTOR_SIZE * 2) != filetype_gpt)
+		if (file_detect_partition_table(buf, SECTOR_SIZE * 2,
+						SECTOR_SIZE) != filetype_gpt)
 			goto fail;
 	}
 
diff --git a/include/filetype.h b/include/filetype.h
index 759ef9c2a343..2fd0e2217729 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -81,7 +81,8 @@ struct cdev;
 
 const char *file_type_to_string(enum filetype f);
 const char *file_type_to_short_string(enum filetype f);
-enum filetype file_detect_partition_table(const void *_buf, size_t bufsize);
+enum filetype file_detect_partition_table(const void *_buf, size_t bufsize,
+					  unsigned int sector_size);
 enum filetype file_detect_compression_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_fs_type(const void *_buf, size_t bufsize);
 enum filetype file_detect_type(const void *_buf, size_t bufsize);
-- 
2.47.3



