Delivery-date: Mon, 01 Jul 2024 09:35:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZu-000QUr-2F
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:35:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBZu-0007sN-3o
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:35:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=VMWomx2/8HPQzV+XNSM5vzyM+4ADD94wrRmhQb9iJjY=; b=XfaHAlGZdjpEr3mRrh+RuX8laU
	RzQyezd5TdCELooor8ahp0SYWgfFayvoW0y4vrRIkTOtO8MAtfKb3Sy9DZ8J/IsvUeOJbdZ14E9A8
	IfeT0F7Wbea05k1f+C1jY0XvLyClsQ+vMw4IYu4kUGCOZvQMe4m1kJIfBoLZiYDrxOG9KY0n9sOfF
	BC3CFhsuesoFEdZi9Sw/GxiapPMH8S6BB7jV63QZv8t6OwuB84Pnn1g1H5S6FTHtYB1LmYm08fFah
	3KctaXZBvlEsuNtoCuZe/mF/pWZtHHGVCXs1O1pqOUDfZI9IuE1AbVb/lNJ2a991iGsBl2SbRVGHC
	0ySzo4dA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZV-000000023gD-29t5;
	Mon, 01 Jul 2024 07:35:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBZR-000000023dW-1q7n
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:35:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZQ-0007e6-1O; Mon, 01 Jul 2024 09:35:28 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-006Jma-Kz; Mon, 01 Jul 2024 09:35:27 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBZP-000jsj-1o;
	Mon, 01 Jul 2024 09:35:27 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:35:24 +0200
Message-Id: <20240701073526.176353-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_003529_529227_9587FC2D 
X-CRM114-Status: GOOD (  11.63  )
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
Subject: [PATCH 1/3] e1000: mtd: remove needless error checking for device parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The invm device is specifically created for the EEPROM, so adding a
parameter should not result in a name clash.

This leaves only -ENOMEM as possible error. As the driver is usable
without EEPROM being writable, don't propagate the error.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/e1000/mtd.c | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/net/e1000/mtd.c b/drivers/net/e1000/mtd.c
index 50883fc2a602..b2643dcf4340 100644
--- a/drivers/net/e1000/mtd.c
+++ b/drivers/net/e1000/mtd.c
@@ -702,7 +702,6 @@ static int e1000_register_invm(struct e1000_hw *hw)
 {
 	int ret;
 	u16 word;
-	struct param_d *p;
 
 	if (e1000_eeprom_valid(hw)) {
 		ret = e1000_read_eeprom(hw, 0x0a, 1, &word);
@@ -732,15 +731,10 @@ static int e1000_register_invm(struct e1000_hw *hw)
 		return ret;
 	}
 
-	p = dev_add_param_int(&hw->invm.dev, "lock", e1000_invm_set_lock,
+	dev_add_param_int(&hw->invm.dev, "lock", e1000_invm_set_lock,
 			      NULL, &hw->invm.line, "%u", hw);
-	if (IS_ERR(p)) {
-		unregister_device(&hw->invm.dev);
-		devfs_remove(&hw->invm.cdev);
-		ret = PTR_ERR(p);
-	}
 
-	return ret;
+	return 0;
 }
 
 /*
-- 
2.39.2



