Delivery-date: Mon, 06 May 2024 16:48:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zda-0069HY-1T
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 16:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdZ-0003DR-Qh
	for lore@pengutronix.de; Mon, 06 May 2024 16:48:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MuD6HiXuXOQyTrcHz1Wu4k1jg1S6PfUk2gAQGAz2+ps=; b=0N70HiH6x60MxZ1ONr1PDSzTUi
	iT0Rg7xLTctj0G4fYPtg23TUYhYNIgCWWgUA1x3F3uM9nRH6W3jvDbOcNKAC20nWzuCnD9t2rxWOz
	Iyckm8XTEIo5kqc0hWdkzTkJ/FnmFl1GlhYYMah9JHDBMYlG5i4uf+TJqYvuIatHm+dj9EGV0ATyk
	MkUXCIx4g1ij+hR33Kvt0WNWJKtcD1wYQzJUpX2B3jP5Bet1iRzfKgc1qnStM3OCS9ixBibvClORG
	qQG/S4BoNhmQ4DQ1ilT3NV3T4iST6/IsQbDslc8Qysg7qkE+KTdv4CE8tn8Kwcr5jzenv6JhNglfp
	PWxMBljw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zcz-00000007jkV-0Eyl;
	Mon, 06 May 2024 14:47:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zct-00000007jg1-2HkE
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 14:47:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-0002rl-Fx; Mon, 06 May 2024 16:47:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GHbV-3L; Mon, 06 May 2024 16:47:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GqIK-06;
	Mon, 06 May 2024 16:47:32 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 May 2024 16:46:08 +0200
Message-ID: <20240506144606.1562643-7-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
References: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=2816; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=dLemYecgVfUDLx0sAPqhVVYwqDdhanIuyWcHJYf/OGI=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmOO0ws8NSXqr7FkQ9svtk7AY561NPea+aih7W5 /l745F8w+mJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjjtMAAKCRCPgPtYfRL+ TmcOB/4uQVkoupP0+kmT+GN+Vq9R2LnBF2nBmZrjIJoFNjEnZ+cizTCGvZhLlbPLP0ym9A6PwMW A3LbnHBErKF2y+GdFZmXHQgAssA06ldd44B+H3qbu7od6LoLwhTFKk8zRJ7LewSTm7YpKjZR/kk K+lG7xTW23/rIhfHqATBk8X7F7mFasoxZa0Z2dKQg/Z5x7MVnAGS+N9VICWXbBMmqqs66I8nlaV 8cIixUFMga5sITgZ4MAO6CVxQkNnwaCLNxatZMOwURaNlP5Fd/XsFYS8t3sraa2C8OCzTDZ6LC5 iwMb7PEOlogC2i6CWN6n/KlGSWLbnzhvcpQ8kcBZ2AMusTWX
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_074735_676805_5C51E020 
X-CRM114-Status: GOOD (  17.35  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] mtd: nand: mxc_nand: Improve comment about vendor BBM and address verschwurbelung
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To better describe why the BBM is at offset 2000 describe the full
misinterpretation^Wmapping of the NAND memory that the i.MX hardware
implements.

Also adapt the comment to reality: A BBT is created automatically since
commit 2ad441bb7e78 ("mtd: nand-imx: Create BBT automatically when
necessary") which was included in v2020.03.0.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index c6533b20fc0f..f7ef2e4374a9 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1528,20 +1528,32 @@ static const struct nand_controller_ops mxcnd_controller_ops = {
  * 512b data + 16b OOB +
  * 512b data + 16b OOB
  *
+ * So the mapping between original NAND addressing (as intended by the chip
+ * vendor) and interpretation when accessed via the i.MX NAND controller is as
+ * follows:
+ *
+ *       original       |        i.MX
+ * ---------------------+---------------------
+ * data 0x0000 - 0x0200 | data 0x0000 - 0x0200
+ * data 0x0200 - 0x0210 | oob  0x0000 - 0x0010
+ * data 0x0210 - 0x0410 | data 0x0200 - 0x0400
+ * data 0x0410 - 0x0420 | oob  0x0010 - 0x0020
+ * data 0x0420 - 0x0620 | data 0x0400 - 0x0600
+ * data 0x0620 - 0x0630 | oob  0x0020 - 0x0030
+ * data 0x0630 - 0x0800 | data 0x0600 - 0x07d0
+ * oob  0x0000 - 0x0030 | data 0x07d0 - 0x0800
+ * oob  0x0030 - 0x0040 | oob  0x0030 - 0x0040
+ *
  * This means that the factory provided bad block marker ends up
- * in the page data at offset 2000 instead of in the OOB data.
+ * in the page data at offset 2000 = 0x7d0 instead of in the OOB data.
  *
- * To preserve the factory bad block information we take the following
- * strategy:
- *
- * - If the NAND driver detects that no flash BBT is present on 2k NAND
- *   chips it will not create one because it would do so based on the wrong
- *   BBM position
- * - This command is used to create a flash BBT then.
+ * If the NAND driver detects that no flash BBT is present on a 2k NAND
+ * chip it will create one automatically in the assumption that the NAND is
+ * pristine (that is completely erased with only vendor BBMs in the OOB) to
+ * preserve factory bad block information.
  *
  * From this point on we can forget about the BBMs and rely completely
  * on the flash BBT.
- *
  */
 static int checkbad(struct nand_chip *chip, loff_t ofs)
 {
@@ -1562,8 +1574,10 @@ static int checkbad(struct nand_chip *chip, loff_t ofs)
 		return ret;
 
 	if (buf[2000] != 0xff)
+		/* block considered bad */
 		return 1;
 
+	/* block considered good */
 	return 0;
 }
 
-- 
2.43.0



