Delivery-date: Mon, 06 May 2024 16:48:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdZ-0069HU-1I
	for lore@lore.pengutronix.de;
	Mon, 06 May 2024 16:48:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s3zdY-0003Bh-D6
	for lore@pengutronix.de; Mon, 06 May 2024 16:48:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NQCKaKZ7EbcuLQOOpBlcHICMgF19M4DiGBwza9Tbf/0=; b=qg97PlRpxu0H/YrtEpRGqUr9+r
	VBF5ZV4T241mlCHSysoWrNmBK0AvQ6W3W4dQ5WfjEgU0ZG6eYrd24cUbIEtZ+6Dy9udhcoVztzTNM
	neeRYP3qKa/RN3vwAFEshw5T0vAWa37hEL9rMN77N44LjNJiNUPXsaBUzx3fRHGcoTBcidj+RU+Vp
	Bn7jrTWb94HGjOUXAiJWYFV0qTCP2RFj+6MltTJ4lh5+s+mBULJGezUnmr6akW3JCJsqGm8JYrXRY
	vtMHz67P3JU+b4Rf12q5hnNZiy15OZzWwfY1aY9kacz/PoDwPYXkEteYM/obzXNuRr/cXnpJE1ayD
	AQncf8lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zcy-00000007jkG-26tH;
	Mon, 06 May 2024 14:47:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3zct-00000007jg7-2Hr0
	for barebox@lists.infradead.org;
	Mon, 06 May 2024 14:47:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-0002s3-Rl; Mon, 06 May 2024 16:47:32 +0200
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GHbe-F5; Mon, 06 May 2024 16:47:32 +0200
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1s3zcq-00GqIW-1G;
	Mon, 06 May 2024 16:47:32 +0200
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  6 May 2024 16:46:11 +0200
Message-ID: <20240506144606.1562643-10-u.kleine-koenig@pengutronix.de>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
References: <20240506144606.1562643-6-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1706; i=u.kleine-koenig@pengutronix.de; h=from:subject; bh=j31VOryfEg+MfOihaZockvE/T1su5czh4GZOmlcdq3A=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBmOO00+D8pA4bLEFPzyZYR8CfmWiqa+wlTvX5tO W2KgE9r2nqJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZjjtNAAKCRCPgPtYfRL+ TnjPB/9V7+3z74gu746AEp851H3eD6ZVMd43A+HaWJFEduxs9yQ/9bGWtqwlODD5OnSu3rcS+mu g6/0ZPhuqFZie+vrpZFlots8jE7IHRqzeRXMSliETGi7gyjnmOUXHnNed3Eh/pSdbB82Mi7GrZb ENVL9FByCf4przVJwNrT93wnR5t4d9bRlencaocz0x3ab3D4rcCuwed01E/k0MV73Jue7Rd8doi 1+PwK45tniBhXzhiEcLY5aZVrihIyeOa50NCBLbJtvfQjVhvQH70Zcrfu5UcGQi0poIU0G4h9jF uh8NxULYC021PRW8/RGUEZ+6wjOfO3uarUFN0rea6rnAeBci
X-Developer-Key: i=u.kleine-koenig@pengutronix.de; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240506_074735_682146_AAC86073 
X-CRM114-Status: GOOD (  16.66  )
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
Subject: [PATCH v2 4/4] mtd: nand: mxc_nand: Only automatically create BBT if NAND seems to be pristine
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

Add a light check for the NAND to be really pristine: If any block looks
like containing a barebox image or a UBI refuse to create a BBT.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/mtd/nand/raw/mxc_nand.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/mtd/nand/raw/mxc_nand.c b/drivers/mtd/nand/raw/mxc_nand.c
index faea1c95f95e..f8517df823e5 100644
--- a/drivers/mtd/nand/raw/mxc_nand.c
+++ b/drivers/mtd/nand/raw/mxc_nand.c
@@ -1575,6 +1575,23 @@ static int checkbad(struct mtd_info *mtd, loff_t ofs)
 		return ret;
 	}
 
+	/*
+	 * Automatically adding a BBT based on factory BBTs is only
+	 * sensible if the NAND is pristine. Abort if the first page
+	 * looks like a bootloader or UBI block.
+	 */
+	if (is_barebox_arm_head(buf)) {
+		dev_err(mtd->dev.parent,
+			"Flash seems to contain a barebox image, refusing to create BBT\n");
+		return -EINVAL;
+	}
+
+	if (!memcmp(buf, "UBI#", 4)) {
+		dev_err(mtd->dev.parent,
+			"Flash seems to contain a UBI, refusing to create BBT\n");
+		return -EINVAL;
+	}
+
 	if (buf[2000] != 0xff)
 		/* block considered bad */
 		return 1;
-- 
2.43.0



