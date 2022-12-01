Delivery-date: Thu, 01 Dec 2022 14:40:51 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0jo2-007TKV-L0
	for lore@lore.pengutronix.de; Thu, 01 Dec 2022 14:40:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p0jo1-0000Zn-NH
	for lore@pengutronix.de; Thu, 01 Dec 2022 14:40:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Gl+OVNi9nFA2ww3cMhnO2y57xuOZfEj7DyXAeemrVX0=; b=m1/REdu5BxGGC/Q6tIbiE5oS4x
	JRe952+jL5Pj5GUlzeiblQmVtEA95fieiQqJT9zhxun121svX7Svk/Mv/hAD0VxZgaPH8rH90tLG4
	7K5IqFOGL7PyqkKJ/R1aQrkww0tcAO+ILAbMBgya5kdu0JWEfCzuewqzszCdGKE7YbnOE8t656zpz
	cyxhms8rlEECmbziA0QbzgbixcwKnb5CObCoaJ84Z9k0xlEeMb1ehHONNVz45T6OMPI3k4unXPaFv
	VsQTvAnii5fjbADKOkYPP6GE8RRUYzHaLh5M7wj0con0ciZjtqqV1D7ju3Zt3ZAzpMvfCMSJ5Qxp7
	hQAdo+HQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0jmC-007jpy-IW; Thu, 01 Dec 2022 13:38:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p0jm8-007jok-05
	for barebox@lists.infradead.org; Thu, 01 Dec 2022 13:38:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jm4-0000EU-GJ; Thu, 01 Dec 2022 14:38:48 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jm3-001apO-3X; Thu, 01 Dec 2022 14:38:47 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p0jm3-002gGu-2L; Thu, 01 Dec 2022 14:38:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	=?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Thu,  1 Dec 2022 14:38:46 +0100
Message-Id: <20221201133846.639078-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221201_053852_082545_FA91C3AC 
X-CRM114-Status: GOOD (  12.05  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] i2c: bcm283x: fix use of unregistered device in debug print
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

bcm283x_i2c_init is called before the i2c adapter device is allocated
and thus these message are prefixed with "<NULL>:". Use the hardware
device instead to fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: Daniel Brát <danek.brat@gmail.com>
---
 drivers/i2c/busses/i2c-bcm283x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index fdba3b91bd4c..d9bbc17b1368 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -74,7 +74,7 @@ static inline struct bcm283x_i2c *to_bcm283x_i2c(struct i2c_adapter *adapter)
 
 static inline int bcm283x_i2c_init(struct bcm283x_i2c *bcm_i2c)
 {
-	struct device_d *dev = &bcm_i2c->adapter.dev;
+	struct device_d *dev = bcm_i2c->adapter.dev.parent;
 	u32 mclk_rate, cdiv, redl, fedl;
 
 	/*
-- 
2.30.2



