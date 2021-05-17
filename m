Delivery-date: Mon, 17 May 2021 20:56:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPl-0005VI-I7
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:29 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPk-0004Ne-5y
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=eZX76pOGbC0RSYsxMGvVOlyQ/LPRbRzi8u/3XCVQy+A=; b=YGe10grPGFyfcAWHVH9wb+7rt
	AvFBofqtq9Cy3xWRA+FN9dwehevhsmQeaecsl3vUgryCd7ad3mUHPF0Q/QrZoWk051na7uPgxA1tH
	HWrkzKjfeRyVeXe1mooTfZqACM+OMa368BH8LaBnRTaK1pEcjNOy83+TjJHTRhzIpHGrj+ZNKwuNN
	vf8z6JthgnLQ+yQEdJGvXjhSrkL01Yu103HIQ+mpQtbK1r9rX1hHnMgTgtS6KfwC2Y3T/MXw12e23
	ApunIrJUKcrQ9FxKDkkwquIoypcgfO3KtDgi7dBs4Cg6+JB/RkVHmVFhSEcP7kv4FuJByCBxnWETM
	a/tcVyGbw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiOp-00FtmW-3o; Mon, 17 May 2021 18:55:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO0-00FtVa-D7
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=FokNIEQyjV0pd18acaFjaybaj8n8DyZ/4CAGuGPKdUQ=; b=mvD6fDoAQOxfwmTB1WgJlQBpJT
 TvhEM/ZcmYoluKB5gC3Ac274gtUSY50z4rzls/P4MGcmBl7/LQNiCxF53oMBT4EcXOP1gaHBHmqvc
 4k9jPBSv7N/rik/9/unYTQEIwidTMQ6GdfA/2CkgdGQon2cR33XClj/g89FfOXK5bDNG4xWKW9tWp
 nAEQONhZBW80euQ9R4RhOC8AEkaBVStXrTmRpPf2QYcgx2nAFsrp4iZ/IXcYB2kcRiPQv3mEWrKtL
 4xoLqGGKjkJllchPslBYutRmkIBHBbjFpHzpJz/CexxPgxE5TkNgTK/1Mm56UFKrK89+A3goTMXPY
 Vqk06CZQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiNw-00E4Vd-T9
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:39 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003P9-J9; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002xO-B4; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:12 +0200
Message-Id: <20210517185424.32145-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115437_003787_E3F3F969 
X-CRM114-Status: GOOD (  11.21  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 03/15] i.MX FCB: Fix error checking
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The return value of imx_bbu_firmware_fcb_start_page() is assigned to an
unsigned type which is then tested for an error (<0). Test against a
signed variable instead to let the error checking actually work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/imx-bbu-nand-fcb.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/common/imx-bbu-nand-fcb.c b/common/imx-bbu-nand-fcb.c
index 4e680a0a51..3b07d539ee 100644
--- a/common/imx-bbu-nand-fcb.c
+++ b/common/imx-bbu-nand-fcb.c
@@ -1263,16 +1263,17 @@ static int imx_bbu_nand_update(struct bbu_handler *handler, struct bbu_data *dat
 
 		free(fcb);
 		fcb = xzalloc(sizeof(*fcb));
-		fcb->Firmware1_startingPage = imx_bbu_firmware_fcb_start_page(mtd, !used);
-		if (fcb->Firmware1_startingPage < 0) {
-			ret = fcb->Firmware1_startingPage;
+
+		ret = imx_bbu_firmware_fcb_start_page(mtd, !used);
+		if (ret < 0)
 			goto out;
-		}
-		fcb->Firmware2_startingPage = imx_bbu_firmware_fcb_start_page(mtd, used);
-		if (fcb->Firmware2_startingPage < 0) {
-			ret = fcb->Firmware2_startingPage;
+		fcb->Firmware1_startingPage = ret;
+
+		ret = imx_bbu_firmware_fcb_start_page(mtd, used);
+		if (ret < 0)
 			goto out;
-		}
+		fcb->Firmware2_startingPage = ret;
+
 		fcb->PagesInFirmware1 = fw_size / mtd->writesize;
 		fcb->PagesInFirmware2 = fcb->PagesInFirmware1;
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

