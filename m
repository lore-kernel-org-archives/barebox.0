Delivery-date: Tue, 02 Jul 2024 10:45:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOZ96-000myt-1D
	for lore@lore.pengutronix.de;
	Tue, 02 Jul 2024 10:45:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOZ95-0002gm-RE
	for lore@pengutronix.de; Tue, 02 Jul 2024 10:45:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xFVHCjvz1rEMO7haQyeoCYvX/taqShL+t3J2qKwxXzs=; b=OJVQ04id7kxM2uP63P4Bv/CzPT
	ddIr00nUUZpR46ikAP1Z7w6FBJwi9tBF04JEzb8A8Z7OR6G03S9tkEKLjt4fxQXVZR4Ku+97XP1cM
	VbmVEU+2/eNhNKgXOrjAzxT/+/+72RENWoym6fPcCNXgRGxHDaxwhuKOlqO6am7m3mBREEqOz/Aww
	V7AG5QzovI4CsF8Nh1MvFAvkMqt3r+IaNMDjJ77cZvWmBdiM1vA0Ch6TOgsJ1BW1P/wc/ri3+7n8Q
	trW05He73DMh+nmREFPcAcNpj77G2cCLSVMGopKD11rMeDMk138xpDbPcCSopIfVeUDqm0jwo6twH
	nvDkSxAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOZ8h-000000061Fe-2VRf;
	Tue, 02 Jul 2024 08:45:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOZ8e-000000061Ei-3AMw
	for barebox@lists.infradead.org;
	Tue, 02 Jul 2024 08:45:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8d-0002Ww-GR; Tue, 02 Jul 2024 10:45:23 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8d-006ZO0-3z; Tue, 02 Jul 2024 10:45:23 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sOZ8d-002xh3-04;
	Tue, 02 Jul 2024 10:45:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 Jul 2024 10:45:22 +0200
Message-Id: <20240702084522.705903-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240702_014524_907952_B48FFF1B 
X-CRM114-Status: GOOD (  11.17  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] mtd: nand: mxc_nand: always copy_spare() for page write
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When doing a page write we always have to copy the OOB data in place,
as the controller will always write it. Not copying it means we write
random data to the OOB area.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index a5500f7dda..c2a03ed0d1 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -759,8 +759,7 @@ static int mxc_nand_write_page_ecc(struct nand_chip *chip, const uint8_t *buf,
 	struct mxc_nand_host *host = nand_get_controller_data(chip);
 	int ret;
 
-	if (oob_required)
-		copy_spare(mtd, false, chip->oob_poi);
+	copy_spare(mtd, false, chip->oob_poi);
 
 	host->devtype_data->enable_hwecc(chip, true);
 
@@ -776,8 +775,7 @@ static int mxc_nand_write_page_raw(struct nand_chip *chip, const uint8_t *buf,
 {
 	struct mtd_info *mtd = nand_to_mtd(chip);
 
-	if (oob_required)
-		copy_spare(mtd, false, chip->oob_poi);
+	copy_spare(mtd, false, chip->oob_poi);
 
 	return nand_prog_page_op(chip, page, 0, buf, mtd->writesize);
 }
-- 
2.39.2



