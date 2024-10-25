Delivery-date: Fri, 25 Oct 2024 09:31:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Ems-000XNL-2C
	for lore@lore.pengutronix.de;
	Fri, 25 Oct 2024 09:31:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4Ems-0006kZ-49
	for lore@pengutronix.de; Fri, 25 Oct 2024 09:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aPIqrIHsUv8l0XAbeKxq4LInJJCWWutuhajdvIgisQs=; b=Yh/YT+YdW8p7uXKuQ8gGVeMeqS
	vWeEWCvPfXF7XMP5GYqezYU4IrB7lkp+3GsEeKTGcPkp/FOnTRSEHGHnI7yLfNsaGrfw1U09trmsl
	jxZeQq8dr45Sc3qqqlE9jVi7qfhNdqzdNOfpTv/wyZWVkq8xODTXJ7rgTvudAHeUAxrdkBuHgNgHh
	h12YiZDDUAKiLY9qiJZ11H14LEmndbn9heKSLlnZS/lNyJ4/M9zBMVHJQ0MZ+44RHZe8b0CmRR655
	afS+OgTOveuj1gVxBEheb5iEjnjhLwdDMRfP/0gXh4JqspipHUO6TCI9eceQQ7Idoz9Df8eF8ysL+
	hodWisVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmI-00000002oMF-29HI;
	Fri, 25 Oct 2024 07:30:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4EmD-00000002oLN-3Aqp
	for barebox@lists.infradead.org;
	Fri, 25 Oct 2024 07:30:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-0006ZT-D4; Fri, 25 Oct 2024 09:30:28 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-000KI9-0W;
	Fri, 25 Oct 2024 09:30:28 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t4EmC-008HjI-0K;
	Fri, 25 Oct 2024 09:30:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 25 Oct 2024 09:30:26 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241025-i2c-busnum-v1-3-332d9257eafe@pengutronix.de>
References: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
In-Reply-To: <20241025-i2c-busnum-v1-0-332d9257eafe@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1729841428; l=931;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=DV0f7kgSZuBcNFG6ngcZGGppIUxSSzcND2MJmeEopx4=;
 b=r3TsN4jDdpU3CiUXVM9mMz8OcZyQjVfuK5VjreXOt0F3K13i35oGK9weh7iDnUtbS/GmnRKVv
 SUXZPnm1xeMBjttpdqU4dKTmTDUaY6sWX1KMqDmnlPP5U6gdyEdHhdG
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241025_003031_561533_3A21E3DA 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] i2c: start dynamic I2C bus numbers at 32
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To avoid clashes with bus numbers derived from device tree let's start
the dynamically assigned bus numbers at 32.

Usually the SoC internal I2C controllers with fixed bus numbers are
registered before any other controllers, but with deep probe support
this is no longer always true. In my case I saw a HDMI internal I2C
controller registered before some SoC controller messing up the
numbering.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 4eed7fb5c6..d19506af26 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -711,7 +711,7 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	if (adapter->nr < 0) {
 		int nr;
 
-		for (nr = 0;; nr++)
+		for (nr = 32;; nr++)
 			if (!i2c_get_adapter(nr))
 				break;
 		adapter->nr = nr;

-- 
2.39.5



