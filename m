Delivery-date: Wed, 28 Feb 2024 17:06:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRX-00DfQm-1R
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:06:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRW-0008TW-RI
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:06:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ok4os0WBCfuYoC9G597GASnZ8wcuDznlORiknOPtSZs=; b=weYjWhnmnU4UoLpU1fFKBYFh4e
	8sU1oKaoY35gi9VcaTNqTv/HAGXctdSC7fBAbNSRemFM6MPhFUeRddkBfeq3cCz67LVg6wJa9ABen
	//iQ67TvRSmiVJtS86y1lTWNB0rzvs3mY/SUf7h4v2GEMJ+OydPsEErcEsvlr5HQsDhmkFb2I4DAt
	HQBUGGHALja0exj6CoZFWOD08SyAM4hLTPvChyojZ6LBSnjlYygt6eLAJvYkCwhE+CFWVjx06/CZv
	D27383dXZP6Rc9+bOrplFi1NSF0iJ3orNxSnRSY4MNPzMQiX2CLRuDK4Ulorz76USji56i+9wQuB7
	ykDlqNoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMR4-0000000A2Ay-4AdM;
	Wed, 28 Feb 2024 16:05:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMQu-0000000A24G-1SCn
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:05:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQt-000837-5w; Wed, 28 Feb 2024 17:05:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-003Qfb-NK; Wed, 28 Feb 2024 17:05:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-006fql-0P;
	Wed, 28 Feb 2024 17:05:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Jules Maselbas <jmaselbas@zdiv.net>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:05:17 +0100
Message-Id: <20240228160518.1589193-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080524_531801_4EF3D598 
X-CRM114-Status: GOOD (  13.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] usb: otg: turn global otg device into device alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

barebox supports manual switching of USB OTG ports to either peripheral
or host via the otgX.mode={host,peripheral} device parameter.

When support for configuring multiple OTG ports was added, the old
singleton otg device was kept, as not to break existing scripts.

Since then, barebox has gained support for device aliases, which are a
light weight mechanism to resolve device names and point at a different
device. This is exactly what's required here, so make use of it.

Cc: Jules Maselbas <jmaselbas@zdiv.net>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/otg/otgdev.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index e035c988af2d..b4315c2d3c28 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -58,11 +58,6 @@ static int register_otg_device(struct device *dev, struct otg_mode *otg)
 	return PTR_ERR_OR_ZERO(param_mode);
 }
 
-static struct device otg_device = {
-	.name = "otg",
-	.id = DEVICE_ID_SINGLE,
-};
-
 struct bus_type otg_bus_type = {
 	.name = "usbotg" /* "otg" is already taken for the alias */
 };
@@ -70,6 +65,7 @@ struct bus_type otg_bus_type = {
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
+	bool first_otg = list_empty(&otg_bus_type.device_list);
 	int ret;
 	struct otg_mode *otg;
 
@@ -85,15 +81,15 @@ int usb_register_otg_device(struct device *parent,
 	otg->set_mode_callback = set_mode;
 	otg->ctx = ctx;
 
-	/* register otg.mode as an alias of otg0.mode */
-	if (otg_device.parent == NULL) {
-		otg_device.parent = parent;
-		ret = register_otg_device(&otg_device, otg);
-		if (ret)
-			return ret;
-	}
+	ret = register_otg_device(&otg->dev, otg);
+	if (ret)
+		return ret;
 
-	return register_otg_device(&otg->dev, otg);
+	/* register otg.mode as an alias of otg0.mode */
+	if (first_otg)
+		dev_add_alias(&otg->dev, "otg");
+
+	return 0;
 }
 
 static int otg_bus_init(void)
-- 
2.39.2



