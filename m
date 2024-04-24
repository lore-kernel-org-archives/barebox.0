Delivery-date: Wed, 24 Apr 2024 18:48:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzfnP-00F6zM-2G
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 18:48:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzfnO-0003EN-QK
	for lore@pengutronix.de; Wed, 24 Apr 2024 18:48:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJy1FvFRndc4vFobWG7xsIYlZeBoZPYATBqjGEqvhhQ=; b=rPNqNV1JRZxuZgVYRm2q9ypsi+
	LSZK0bBSEwVbANXci5K3yRYMocMNUE1s4yXjdobWSW8cNKDUcnHq5l6fz0PNKwy8+6l7Rm/U73BHx
	CQZV0f1AY8dfnCDlTh4N+DeYirxGHvXKXznniqftO/j+q+ryu+/rreHM6EEmfNmbEuEdeSiffNhmM
	pkQfqERc6txM0tUMQb96sTo4wCwB8Zy9nm61/c8cSPb3lRgdRp7oOp54oPaFndknNMemXq+nIVr9F
	ldD/JmdNjTNXSh1bF/OT/jd7/EVCU7cPJvbc84ymnZmU2MEaTa4hnvrHcM/um4qo6MzQHyMxmVpCM
	Xbs28krQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfmr-000000050si-0ai7;
	Wed, 24 Apr 2024 16:48:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzfmn-000000050qO-37kc
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 16:47:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfmm-0002cm-14; Wed, 24 Apr 2024 18:47:56 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfml-00E73I-Kx; Wed, 24 Apr 2024 18:47:55 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1rzfml-007tns-1r;
	Wed, 24 Apr 2024 18:47:55 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 24 Apr 2024 18:47:44 +0200
Message-ID: <20240424164743.586410-4-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240424164743.586410-3-u.kleine-koenig@pengutronix.de>
References: <20240424164743.586410-3-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3345; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=CLEyPkPwp6MTgdKgRSWjREcoays0obxR0kFvnJD/LYg=; b=owGbwMvMwMXY3/A7olbonx/jabUkhjRN8w0zzkfqzIl7dHSqV63uwZpI/WOHlOdUSlq93x8+w a/p6Z59nYzGLAyMXAyyYoos9o1rMq2q5CI71/67DDOIlQlkCgMXpwBMxPEn+//KfU9/3TTSDDof 3sr3yrG5xeCdmcGxnRP+hvWUGm3ZclUg+NKpxMlZUuuVa/z1zI4etmeYl3P7XJPX913ZMVeaT8k IuvG4e+Vmlq+Vtl71O/R1xmuZhaycbB86ZY30JKcceJpwgbF9fVZgwomk9jk66z1/q9k8rJGyZ/ fWXT7LiSVN84Fn667yZgfNOyXO8WKs6rMC49KDD87w+LH7x8rYMIec6e6Rv+7Pdww70brsk+Q5D Z3/bQKxfYnlFSZnpy1c4iKlIv6m1df40wupuP/MqT4HeSv1bknrXTKf+qSoTDF2hd4ZllnrEm1r sgP5Fjnve3rCS0p+6tPvJ5Z0B0QHth1rbOA9xmkcNqMdAA==
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_094757_893843_A1266464 
X-CRM114-Status: GOOD (  23.30  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] mtd: nand-imx: Only automatically create BBT if NAND seems to be pristine
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Automatically creating a BBT is the right thing to do if the NAND is
factory new. However when migrating from a barebox older than commit
v2020.03.0~28^2~1 ("mtd: nand-imx: Create BBT automatically when
necessary") on a used machine, this automatism is really bad because it
most likely marks the blocks containing the barebox image (and possibly
more) as bad. On such a system the vendor BBMs are gone, but it was
operated without that information before, so continuing to do so is a
sane option.

Add a light check for the NAND to be really pristine: If the first
block looks like containing a barebox image or a UBI refuse to create a
BBT.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/nand_imx.c | 59 ++++++++++++++++++++-----------------
 1 file changed, 32 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nand/nand_imx.c b/drivers/mtd/nand/nand_imx.c
index b26889358b3f..9a7f82d59029 100644
--- a/drivers/mtd/nand/nand_imx.c
+++ b/drivers/mtd/nand/nand_imx.c
@@ -12,6 +12,7 @@
 
 #include <common.h>
 #include <driver.h>
+#include <filetype.h>
 #include <malloc.h>
 #include <init.h>
 #include <linux/mtd/mtd.h>
@@ -1166,30 +1167,6 @@ static int __init mxcnd_probe_dt(struct imx_nand_host *host)
  * From this point on we can forget about the BBMs and rely completely
  * on the flash BBT.
  */
-static int checkbad(struct nand_chip *chip, loff_t ofs)
-{
-	struct mtd_info *mtd = nand_to_mtd(chip);
-	int ret;
-	uint8_t buf[mtd->writesize + mtd->oobsize];
-	struct mtd_oob_ops ops;
-
-	ops.mode = MTD_OPS_RAW;
-	ops.ooboffs = 0;
-	ops.datbuf = buf;
-	ops.len = mtd->writesize;
-	ops.oobbuf = buf + mtd->writesize;
-	ops.ooblen = mtd->oobsize;
-
-	ret = mtd_read_oob(mtd, ofs, &ops);
-	if (ret < 0)
-		return ret;
-
-	if (buf[2000] != 0xff)
-		return 1;
-
-	return 0;
-}
-
 static int imxnd_create_bbt(struct nand_chip *chip)
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
@@ -1209,12 +1186,40 @@ static int imxnd_create_bbt(struct nand_chip *chip)
 
 	for (i = 0; i < numblocks; ++i) {
 		loff_t ofs = i << chip->bbt_erase_shift;
+		uint8_t buf[mtd->writesize + mtd->oobsize];
+		struct mtd_oob_ops ops = {
+			.mode = MTD_OPS_RAW,
+			.ooboffs = 0,
+			.datbuf = buf,
+			.len = mtd->writesize,
+			.oobbuf = buf + mtd->writesize,
+			.ooblen = mtd->oobsize,
+		};
 
-		ret = checkbad(chip, ofs);
-		if (ret < 0)
+		ret = mtd_read_oob(mtd, ofs, &ops);
+		if (ret < 0) {
+			dev_err(mtd->dev.parent, "Failed to read page at 0x%08x\n", (unsigned int)ofs);
 			goto out;
+		}
 
-		if (ret) {
+		/*
+		 * Automatically adding a BBT based on factory BBTs is only
+		 * sensible if the NAND is pristine. Abort if the first page
+		 * looks like a bootloader or UBI block.
+		 */
+		if (ofs == 0 && is_barebox_arm_head(buf)) {
+			dev_err(mtd->dev.parent, "Flash seems to contain a barebox image, refusing\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		if (ofs == 0 && !memcmp(buf, "UBI#", 4)) {
+			dev_err(mtd->dev.parent, "Flash seems to contain a UBI, refusing\n");
+			ret = -EINVAL;
+			goto out;
+		}
+
+		if (buf[2000] != 0xff) {
 			bbt[i >> 2] |= 0x03 << (2 * (i & 0x3));
 			dev_info(mtd->dev.parent, "Bad eraseblock %d at 0x%08x\n",
 				 i, (unsigned int)ofs);
-- 
2.43.0



