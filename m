Delivery-date: Tue, 16 Apr 2024 11:54:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfW4-003BOw-1n
	for lore@lore.pengutronix.de;
	Tue, 16 Apr 2024 11:54:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwfVz-0003p5-CR
	for lore@pengutronix.de; Tue, 16 Apr 2024 11:54:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x4v/xtqKSjtlwzAy+o1lCwy+jzYducM9pES5PgarGCg=; b=T9FEOQ9+uYAi8P7/6b3kN6I/Z0
	BSYuIwc7Rg1zVWWPurJyugylxJ8+oy0BiJzyNXorPhEwbsw2EDUQKzBhUx7GhXpFTqk28jDUcJo6k
	ixnl/Gpxkb6vrGNxcwJ0SX6G2efrICRUnLxI4tMHLLZmN1iPdxbQdYAKIsM7iWbXZUukbpnu+Dd8U
	xFrJkqk95YyBdWXpvNJrTBjhAO4Ern+16aytDcMuAQjWpIW/XxOKMMxN9rL7zq4msky0GoyrTCY+K
	dDl5fX5CfqOxHhotf2txODJfovtGP2r0N3mXtgkL5C/YMD+JM4rhOWrCCbI0ivrTGvyHVYHRj04lR
	bQeZfGBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfVF-0000000BffG-2uu2;
	Tue, 16 Apr 2024 09:53:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwfV8-0000000BfcI-0mGd
	for barebox@lists.infradead.org;
	Tue, 16 Apr 2024 09:53:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-0002di-HV; Tue, 16 Apr 2024 11:53:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-00CaKM-50; Tue, 16 Apr 2024 11:53:15 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rwfV5-008J49-09;
	Tue, 16 Apr 2024 11:53:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 16 Apr 2024 11:53:11 +0200
Message-Id: <20240416095313.1977242-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240416095313.1977242-1-s.hauer@pengutronix.de>
References: <20240416095313.1977242-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240416_025318_433340_ADAD0AD3 
X-CRM114-Status: GOOD (  20.67  )
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
Subject: [PATCH 6/8] mtd: nand: mxc_nand: separate page read from ecc calc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our read_page hook currently reads out a page and also counts and
returns the number of bitflips. In upcoming exec_op conversion we'll
need to read the page data in exec_op, but the bitflip information
will be needed in mxc_nand_read_page(). To ease exec_op conversion
separate the page read out from the bitflip evaluation.

For the v2/v3 controllers we can leave the bitflip information in the
status register for later evaluation. For the v1 controller this is
not possible, because the status register is overwritten with each
subpage read. We therefore store the bitflip information in the private
data.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 140 ++++++++++++++++++++------------
 1 file changed, 86 insertions(+), 54 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index 9b5b5c744a..d9e06a0014 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -12,6 +12,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/io.h>
+#include <linux/bitfield.h>
 #include <linux/completion.h>
 
 #define DRIVER_NAME "mxc_nand"
@@ -40,6 +41,8 @@
 #define NFC_V1_V2_CONFIG1		(host->regs + 0x1a)
 #define NFC_V1_V2_CONFIG2		(host->regs + 0x1c)
 
+#define NFC_V1_V2_ECC_STATUS_RESULT_ERM GENMASK(3, 2)
+
 #define NFC_V2_CONFIG1_ECC_MODE_4	(1 << 0)
 #define NFC_V1_V2_CONFIG1_SP_EN		(1 << 2)
 #define NFC_V1_V2_CONFIG1_ECC_EN	(1 << 3)
@@ -125,7 +128,7 @@ struct mxc_nand_devtype_data {
 	uint16_t (*get_dev_status)(struct mxc_nand_host *);
 	int (*check_int)(struct mxc_nand_host *);
 	void (*irq_control)(struct mxc_nand_host *, int);
-	u32 (*get_ecc_status)(struct mxc_nand_host *);
+	u32 (*get_ecc_status)(struct nand_chip *);
 	const struct mtd_ooblayout_ops *ooblayout;
 	void (*select_chip)(struct nand_chip *chip, int cs);
 	int (*setup_interface)(struct nand_chip *chip, int csline,
@@ -168,6 +171,7 @@ struct mxc_nand_host {
 	int			eccsize;
 	int			used_oobsize;
 	int			active_cs;
+	unsigned int		ecc_stats_v1;
 
 	struct completion	op_completion;
 
@@ -388,19 +392,81 @@ static void irq_control_v3(struct mxc_nand_host *host, int activate)
 	writel(tmp, NFC_V3_CONFIG2);
 }
 
-static u32 get_ecc_status_v1(struct mxc_nand_host *host)
+static u32 get_ecc_status_v1(struct nand_chip *chip)
+{
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	unsigned int ecc_stats, max_bitflips = 0;
+	int no_subpages, i;
+
+	no_subpages = mtd->writesize >> 9;
+
+	ecc_stats = host->ecc_stats_v1;
+
+	for (i = 0; i < no_subpages; i++) {
+		switch (ecc_stats & 0x3) {
+		case 0:
+		default:
+			break;
+		case 1:
+			mtd->ecc_stats.corrected++;
+			max_bitflips = 1;
+			break;
+		case 2:
+			mtd->ecc_stats.failed++;
+			break;
+		}
+
+		ecc_stats >>= 2;
+	}
+
+	return max_bitflips;
+}
+
+static u32 get_ecc_status_v2_v3(struct nand_chip *chip, unsigned int ecc_stat)
 {
-	return readw(NFC_V1_V2_ECC_STATUS_RESULT);
+	struct mtd_info *mtd = nand_to_mtd(chip);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+	u8 ecc_bit_mask, err_limit;
+	unsigned int max_bitflips = 0;
+	int no_subpages, err;
+
+	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
+	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
+
+	no_subpages = mtd->writesize >> 9;
+
+	do {
+		err = ecc_stat & ecc_bit_mask;
+		if (err > err_limit) {
+			mtd->ecc_stats.failed++;
+		} else {
+			mtd->ecc_stats.corrected += err;
+			max_bitflips = max_t(unsigned int, max_bitflips, err);
+		}
+
+		ecc_stat >>= 4;
+	} while (--no_subpages);
+
+	return max_bitflips;
 }
 
-static u32 get_ecc_status_v2(struct mxc_nand_host *host)
+static u32 get_ecc_status_v2(struct nand_chip *chip)
 {
-	return readl(NFC_V1_V2_ECC_STATUS_RESULT);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	u32 ecc_stat = readl(NFC_V1_V2_ECC_STATUS_RESULT);
+
+	return get_ecc_status_v2_v3(chip, ecc_stat);
 }
 
-static u32 get_ecc_status_v3(struct mxc_nand_host *host)
+static u32 get_ecc_status_v3(struct nand_chip *chip)
 {
-	return readl(NFC_V3_ECC_STATUS_RESULT);
+	struct mxc_nand_host *host = nand_get_controller_data(chip);
+
+	u32 ecc_stat = readl(NFC_V3_ECC_STATUS_RESULT);
+
+	return get_ecc_status_v2_v3(chip, ecc_stat);
 }
 
 /* This function polls the NANDFC to wait for the basic operation to
@@ -665,9 +731,9 @@ static int mxc_nand_read_page_v1(struct nand_chip *chip, void *buf, void *oob,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
-	unsigned int bitflips_corrected = 0;
 	int no_subpages;
 	int i;
+	unsigned int ecc_stats = 0;
 
 	host->devtype_data->enable_hwecc(chip, ecc);
 
@@ -680,8 +746,6 @@ static int mxc_nand_read_page_v1(struct nand_chip *chip, void *buf, void *oob,
 	no_subpages = mtd->writesize >> 9;
 
 	for (i = 0; i < no_subpages; i++) {
-		uint16_t ecc_stats;
-
 		/* NANDFC buffer 0 is used for page read/write */
 		writew((host->active_cs << 4) | i, NFC_V1_V2_BUF_ADDR);
 
@@ -690,32 +754,18 @@ static int mxc_nand_read_page_v1(struct nand_chip *chip, void *buf, void *oob,
 		/* Wait for operation to complete */
 		wait_op_done(host, true);
 
-		ecc_stats = get_ecc_status_v1(host);
-
-		ecc_stats >>= 2;
-
-		if (buf && ecc) {
-			switch (ecc_stats & 0x3) {
-			case 0:
-			default:
-				break;
-			case 1:
-				mtd->ecc_stats.corrected++;
-				bitflips_corrected = 1;
-				break;
-			case 2:
-				mtd->ecc_stats.failed++;
-				break;
-			}
-		}
+		ecc_stats |= FIELD_GET(NFC_V1_V2_ECC_STATUS_RESULT_ERM,
+				       readw(NFC_V1_V2_ECC_STATUS_RESULT)) << i * 2;
 	}
 
+	host->ecc_stats_v1 = ecc_stats;
+
 	if (buf)
 		memcpy32_fromio(buf, host->main_area0, mtd->writesize);
 	if (oob)
 		copy_spare(mtd, true, oob);
 
-	return bitflips_corrected;
+	return 0;
 }
 
 static int mxc_nand_read_page_v2_v3(struct nand_chip *chip, void *buf,
@@ -723,10 +773,6 @@ static int mxc_nand_read_page_v2_v3(struct nand_chip *chip, void *buf,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
-	unsigned int max_bitflips = 0;
-	u32 ecc_stat, err;
-	int no_subpages;
-	u8 ecc_bit_mask, err_limit;
 
 	host->devtype_data->enable_hwecc(chip, ecc);
 
@@ -744,26 +790,7 @@ static int mxc_nand_read_page_v2_v3(struct nand_chip *chip, void *buf,
 	if (oob)
 		copy_spare(mtd, true, oob);
 
-	ecc_bit_mask = (host->eccsize == 4) ? 0x7 : 0xf;
-	err_limit = (host->eccsize == 4) ? 0x4 : 0x8;
-
-	no_subpages = mtd->writesize >> 9;
-
-	ecc_stat = host->devtype_data->get_ecc_status(host);
-
-	do {
-		err = ecc_stat & ecc_bit_mask;
-		if (err > err_limit) {
-			mtd->ecc_stats.failed++;
-		} else {
-			mtd->ecc_stats.corrected += err;
-			max_bitflips = max_t(unsigned int, max_bitflips, err);
-		}
-
-		ecc_stat >>= 4;
-	} while (--no_subpages);
-
-	return max_bitflips;
+	return 0;
 }
 
 static int mxc_nand_read_page(struct nand_chip *chip, uint8_t *buf,
@@ -771,13 +798,18 @@ static int mxc_nand_read_page(struct nand_chip *chip, uint8_t *buf,
 {
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	void *oob_buf;
+	int ret;
 
 	if (oob_required)
 		oob_buf = chip->oob_poi;
 	else
 		oob_buf = NULL;
 
-	return host->devtype_data->read_page(chip, buf, oob_buf, 1, page);
+	ret = host->devtype_data->read_page(chip, buf, oob_buf, 1, page);
+	if (ret)
+		return ret;
+
+	return host->devtype_data->get_ecc_status(chip);
 }
 
 static int mxc_nand_read_page_raw(struct nand_chip *chip, uint8_t *buf,
-- 
2.39.2



