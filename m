Delivery-date: Tue, 30 Apr 2024 11:45:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3j-00A4ub-10
	for lore@lore.pengutronix.de;
	Tue, 30 Apr 2024 11:45:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s1k3e-00021k-9M
	for lore@pengutronix.de; Tue, 30 Apr 2024 11:45:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q3eEHpgLU8czZPAX+HcfC6ScqX6DSr11mEb2g+2ewN0=; b=QhmptUuSQtvK88GeGEXXeKVK95
	MVFr03zVZv/pMxHGnxYanc49fPtIYzxRvL7PA9hSGi7KUJIsytzXr37QbrXaVS4GAti2xMZa8QWeA
	ETrNEJGa+r/RclkZEA4bI0cwnNoNXOv9HtQ08pGuMAI6rmnyQrMNLOsipitYitdT9R9b60vwm74DE
	Pnb/0tsxakx7ih+a/+C4UF1gvzQcMJWkYACSHtpeQL90DgCAfcBQf3nv2SxZB0A48V6J/NhQoliYI
	niCrpwSZEO+zmZFFiXYJeokCZRAGgOa/91o2h2Xs1rZ5n9hLp29Q/oWLmDrg0EPP1vkVRZWnEUtzd
	SgPwkhqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2v-00000005t9Z-1JRr;
	Tue, 30 Apr 2024 09:45:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s1k2q-00000005t7P-2o9Q
	for barebox@lists.infradead.org;
	Tue, 30 Apr 2024 09:45:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2n-0001nW-Ev; Tue, 30 Apr 2024 11:45:01 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2n-00F8e7-2U; Tue, 30 Apr 2024 11:45:01 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s1k2m-00C2vZ-39;
	Tue, 30 Apr 2024 11:45:00 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 30 Apr 2024 11:44:54 +0200
Message-ID: <20240430094451.1038256-6-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
References: <20240430094451.1038256-4-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3203; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=V/ZN4fNiKXZjmkiqO0q6AUUxfroqBT0WfRwnEwhqApU=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmML2W0zNgVBT/KEU59leLXCgh3HlQXNlCgsDCT etNdh6qls2JATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjC9lgAKCRCPgPtYfRL+ ToEkB/4kQrtgmbnFForpQTTQhJ3vmbvgrwzocjT5KnS2sScCXK+xdBEYx1tyIPnbObhxCFnGViJ eY77bg+93/G36MxwAi1tp345ICkssp8keHREoP0YJ6KCtOYCgaxt8M/S51aeD0QGMcBM2rWz80R 1vyQ3Pl0R4H+9NXK6soBFJn4N+mNuSCkAT39Q3+hPgmuG6/BtlZHSZ6VpNtmHuZ/MmAjg6+V8D8 9/nwfvMDUXfdJB91B95zYhigi1JaybkWsER26NCXKpIS/mndAjblSMkufzY7rSToUgQEsw0mkrW Js6LcetgwjU0rX541OXKJgoNlfDZGpYgLQtdKZyirAxTF4tG
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240430_024504_773612_1BB3778E 
X-CRM114-Status: GOOD (  22.62  )
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
Subject: [PATCH 3/3] mtd: mxc-nand: Only automatically create BBT if NAND seems to be pristine
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

Add a light check for the NAND to be really pristine: If the first block
looks like containing a barebox image or a UBI refuse to create a BBT.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 58 ++++++++++++++++++---------------
 1 file changed, 31 insertions(+), 27 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index a72275480144..fd5ae447a198 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1555,30 +1555,6 @@ static const struct nand_controller_ops mxcnd_controller_ops = {
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
@@ -1598,12 +1574,40 @@ static int imxnd_create_bbt(struct nand_chip *chip)
 
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



