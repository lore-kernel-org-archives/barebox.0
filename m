Delivery-date: Tue, 16 Apr 2024 11:54:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfW2-003BOG-2t
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfVx-0003lw-F0
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0kG880DV2uioZQgYKq1plZ0pQkp4bPwjDFN74/leegs=; b=g8ifLD15U6n8vJt38FPTpCbEts
	lNP0Ml6/Z9o8FpqeFM0EApnfeO3RZ6AxU7MUXYKHsIxnwyIEWiNXkAp5dnx1d7kf5QtuAE4/sBb4R
	VSv++ivrwZ3dGsSDHU9Vh150s68QFoemJG/K6YZfjb++fouXY9Cp9qBWGGyRmiNmO+P16SZc9jRRn
	ahki3Nl85pdTWz2NSyu1ET6emRNITGALTfsOSWTe/UlvPyd7iCuIFV+7fUBB0EcuyCTTmJPHJ6IlO
	C1XDAUIFjvSXRN+a4wPSWHVef6TCtUeBRt8Z0cy7Z8j9onMPUWedrp2l38WNBT3qowFhvm4DBNulN
	8iwHdi+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVC-0000000Bfea-3lQi;
	Tue, 16 Apr 2024 09:53:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcF-0mgF
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002cp-82; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-00CaKD-S4; Tue, 16 Apr 2024 11:53:14 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV4-008J49-2T;
	Tue, 16 Apr 2024 11:53:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:08 +0200
Message-Id: <20240416095313.1977242-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_256750_5E4F0583 
X-CRM114-Status: GOOD (  14.41  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/8] mtd: update _lock/_unlock prototype
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux the _lock/_unlock hooks now take a uint64_t as length argument.
Follow suit to be more consistent with Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/mtdconcat.c          | 4 ++--
 drivers/mtd/nand/raw/nand_base.c | 4 ++--
 drivers/mtd/nor/cfi_flash.c      | 4 ++--
 drivers/mtd/partition.c          | 4 ++--
 drivers/mtd/spi-nor/spi-nor.c    | 4 ++--
 drivers/net/e1000/mtd.c          | 4 ++--
 include/linux/mtd/mtd.h          | 4 ++--
 7 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/mtd/mtdconcat.c b/drivers/mtd/mtdconcat.c
index 964b00166a..d4f0227384 100644
--- a/drivers/mtd/mtdconcat.c
+++ b/drivers/mtd/mtdconcat.c
@@ -382,7 +382,7 @@ static int concat_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return 0;
 }
 
-static int concat_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int concat_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct mtd_concat *concat = CONCAT(mtd);
 	int i, err = -EINVAL;
@@ -416,7 +416,7 @@ static int concat_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
 	return err;
 }
 
-static int concat_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int concat_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct mtd_concat *concat = CONCAT(mtd);
 	int i, err = 0;
diff --git a/drivers/mtd/nand/raw/nand_base.c b/drivers/mtd/nand/raw/nand_base.c
index 2599e8c8c2..439c3f72d2 100644
--- a/drivers/mtd/nand/raw/nand_base.c
+++ b/drivers/mtd/nand/raw/nand_base.c
@@ -4449,7 +4449,7 @@ static int nand_block_markgood(struct mtd_info *mtd, loff_t ofs)
  * @ofs: offset byte address
  * @len: number of bytes to lock (must be a multiple of block/page size)
  */
-static int nand_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int nand_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
@@ -4465,7 +4465,7 @@ static int nand_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
  * @ofs: offset byte address
  * @len: number of bytes to unlock (must be a multiple of block/page size)
  */
-static int nand_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int nand_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct nand_chip *chip = mtd_to_nand(mtd);
 
diff --git a/drivers/mtd/nor/cfi_flash.c b/drivers/mtd/nor/cfi_flash.c
index ac46575004..2cb3d5538f 100644
--- a/drivers/mtd/nor/cfi_flash.c
+++ b/drivers/mtd/nor/cfi_flash.c
@@ -652,14 +652,14 @@ static int cfi_mtd_protect(struct flash_info *finfo, loff_t offset, size_t len,
 	return 0;
 }
 
-static int cfi_mtd_lock(struct mtd_info *mtd, loff_t offset, size_t len)
+static int cfi_mtd_lock(struct mtd_info *mtd, loff_t offset, uint64_t len)
 {
 	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
 
 	return cfi_mtd_protect(finfo, offset, len, 1);
 }
 
-static int cfi_mtd_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
+static int cfi_mtd_unlock(struct mtd_info *mtd, loff_t offset, uint64_t len)
 {
 	struct flash_info *finfo = container_of(mtd, struct flash_info, mtd);
 
diff --git a/drivers/mtd/partition.c b/drivers/mtd/partition.c
index 4ebc5bba41..c53375e0e2 100644
--- a/drivers/mtd/partition.c
+++ b/drivers/mtd/partition.c
@@ -80,7 +80,7 @@ static int mtd_part_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
+static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, uint64_t len)
 {
 	if (!mtd->parent->_lock)
 		return -ENOSYS;
@@ -96,7 +96,7 @@ static int mtd_part_lock(struct mtd_info *mtd, loff_t offset, size_t len)
 	return mtd->parent->_lock(mtd->parent, offset, len);
 }
 
-static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, size_t len)
+static int mtd_part_unlock(struct mtd_info *mtd, loff_t offset, uint64_t len)
 {
 	if (!mtd->parent->_unlock)
 		return -ENOSYS;
diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 1773db09a1..9fdcffeed1 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -546,12 +546,12 @@ static int spi_nor_erase(struct mtd_info *mtd, struct erase_info *instr)
 	return ret;
 }
 
-static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int spi_nor_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	return 0;
 }
 
-static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int spi_nor_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	struct spi_nor *nor = mtd_to_spi_nor(mtd);
 	uint8_t status;
diff --git a/drivers/net/e1000/mtd.c b/drivers/net/e1000/mtd.c
index d472bd10a9..50883fc2a6 100644
--- a/drivers/net/e1000/mtd.c
+++ b/drivers/net/e1000/mtd.c
@@ -688,12 +688,12 @@ static int e1000_mtd_sr_rmw(struct mtd_info *mtd, u8 mask, u8 val)
  */
 #define SR_BPALL (SR_BP0 | SR_BP1 | SR_BP2)
 
-static int e1000_mtd_lock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int e1000_mtd_lock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	return e1000_mtd_sr_rmw(mtd, SR_BPALL, SR_BPALL);
 }
 
-static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, size_t len)
+static int e1000_mtd_unlock(struct mtd_info *mtd, loff_t ofs, uint64_t len)
 {
 	return e1000_mtd_sr_rmw(mtd, SR_BPALL, 0x0);
 }
diff --git a/include/linux/mtd/mtd.h b/include/linux/mtd/mtd.h
index 54cb2ec64c..530f743e68 100644
--- a/include/linux/mtd/mtd.h
+++ b/include/linux/mtd/mtd.h
@@ -198,8 +198,8 @@ struct mtd_info {
 	void (*_sync) (struct mtd_info *mtd);
 
 	/* Chip-supported device locking */
-	int (*_lock) (struct mtd_info *mtd, loff_t ofs, size_t len);
-	int (*_unlock) (struct mtd_info *mtd, loff_t ofs, size_t len);
+	int (*_lock) (struct mtd_info *mtd, loff_t ofs, uint64_t len);
+	int (*_unlock) (struct mtd_info *mtd, loff_t ofs, uint64_t len);
 
 	/* Bad block management functions */
 	int (*_block_isbad) (struct mtd_info *mtd, loff_t ofs);
-- 
2.39.2



