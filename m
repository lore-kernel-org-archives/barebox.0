Delivery-date: Fri, 30 Sep 2022 14:17:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExb-001PP7-T3
	for lore@lore.pengutronix.de; Fri, 30 Sep 2022 14:17:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oeExa-0003ca-CR
	for lore@pengutronix.de; Fri, 30 Sep 2022 14:17:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V64LZ+ULd/urOjW1umgeCIkrA0ehyS3HIV4c0+KtZ14=; b=yq5V24jo/6o4OK
	vl07G2q+sG9BJN9ruEV1s2jqOncpm3T2b8HSFiQw1p7NiMz09ZgEhEHyznkOW1D1QEfQ1+M2qAS6s
	Z9hzIHChKXFXAzuIDLkwcfc6yzGc8nQCYtYfOc9rHBViKoRDhs83irseoy84pxziKA0RdpwV3a5B1
	9NGmwGBXLnH+cO+KddMm0qT/CBE+D/XyVdTgalLdVENJ/l5an9AH2MaVnO/s0rEo/1O9AqJq1Atkt
	tHGZxrkFufggx6VeJWJXe7iJdMY2xJ84rntmigT+1cD71KyNZ+13O4f8zWT8uwTg+Zsr0pzyD4oWf
	HsooD4zHHFnYpFMM8EUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEw1-0094ct-1f; Fri, 30 Sep 2022 12:16:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oeEvv-0094Zm-Cx
	for barebox@lists.infradead.org; Fri, 30 Sep 2022 12:16:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvs-00030o-83; Fri, 30 Sep 2022 14:15:56 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvt-003nUq-36; Fri, 30 Sep 2022 14:15:55 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oeEvq-001QvH-4D; Fri, 30 Sep 2022 14:15:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 30 Sep 2022 14:15:51 +0200
Message-Id: <20220930121553.335796-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220930121553.335796-1-s.hauer@pengutronix.de>
References: <20220930121553.335796-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220930_051559_473480_9F685B53 
X-CRM114-Status: GOOD (  13.52  )
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
Cc: Johannes Zink <j.zink@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] imx-bbu-nand-fcb: pass imx_handler further down
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Pass the struct bbu_handler *handler context pointer further down the
road. We'll need that in the next patches. No functional change.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index f268503f38..002e35bde9 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -843,7 +843,8 @@ out:
  *
  * return: 0 if the FCB/DBBT are valid, a negative error code otherwise
  */
-static int fcb_dbbt_check(struct mtd_info *mtd, int num, struct fcb_block *fcb)
+static int fcb_dbbt_check(struct imx_nand_fcb_bbu_handler *imx_handler,
+			  struct mtd_info *mtd, int num, struct fcb_block *fcb)
 {
 	int ret;
 	struct fcb_block *f;
@@ -885,7 +886,8 @@ out:
  *
  * return: 0 for success or a negative error code otherwise.
  */
-static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
+static int imx_bbu_write_fcbs_dbbts(struct imx_nand_fcb_bbu_handler *imx_handler,
+				    struct mtd_info *mtd, struct fcb_block *fcb)
 {
 	void *dbbt = NULL;
 	int i, ret, valid = 0;
@@ -928,7 +930,7 @@ static int imx_bbu_write_fcbs_dbbts(struct mtd_info *mtd, struct fcb_block *fcb)
 		if (mtd_peb_is_bad(mtd, i))
 			continue;
 
-		if (!fcb_dbbt_check(mtd, i, fcb)) {
+		if (!fcb_dbbt_check(imx_handler, mtd, i, fcb)) {
 			valid++;
 			pr_info("FCB/DBBT on block %d still valid\n", i);
 			continue;
@@ -1326,7 +1328,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	 * just written as primary firmware. From now on the new
 	 * firmware will be booted.
 	 */
-	ret = imx_bbu_write_fcbs_dbbts(mtd, fcb);
+	ret = imx_bbu_write_fcbs_dbbts(imx_handler, mtd, fcb);
 	if (ret < 0)
 		goto out;
 
@@ -1347,7 +1349,7 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 	 */
 	if (ret > 0) {
 		pr_info("New bad blocks detected, writing FCBs/DBBTs again\n");
-		ret = imx_bbu_write_fcbs_dbbts(mtd, fcb);
+		ret = imx_bbu_write_fcbs_dbbts(imx_handler, mtd, fcb);
 		if (ret < 0)
 			goto out;
 	}
-- 
2.30.2



