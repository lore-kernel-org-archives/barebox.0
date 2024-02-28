Delivery-date: Wed, 28 Feb 2024 17:06:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRa-00DfRR-0k
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:06:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRZ-0008Uu-JM
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:06:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qepj/xjcwpy8vMFxOLNA0VLms0TNrVj54EFlxhq5MvE=; b=FrRE4WgjPlwGiQibaALz9ai3+H
	Xsi+noB0Rk9z/wZxVpzRDqVeppl3v1VyvoEstnqYV99CEUizD0m26O45EPhlCmyC08m9wA/EmSBzl
	hL9U86+Pz1KGr3DCMmoZqB1+m0CXP8srERMqEaoQzIvaxYZkeNKkp8FlgLunwBlkLw8pL3kol4rwI
	thaZ6G8a7hkzjSi+9QpuV49ha7OgqdIYqCphksnEZovlFe7J+lzD91Z3XvR2MV0v2dG/4Eg8Rl0Tr
	fzba2v07uIUQCZo+B34UyMLCQW265A0O52QM8o+s6knL365Et83bBfhgzINto1oh8nN+Ljg/+3Jm8
	VDLSDrjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMR8-0000000A2Cg-1nvP;
	Wed, 28 Feb 2024 16:05:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMQu-0000000A24E-0wwa
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:05:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQt-000835-2D; Wed, 28 Feb 2024 17:05:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-003QfY-Lp; Wed, 28 Feb 2024 17:05:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-006fql-0G;
	Wed, 28 Feb 2024 17:05:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:05:16 +0100
Message-Id: <20240228160518.1589193-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080524_330206_5FB62A4A 
X-CRM114-Status: GOOD (  10.76  )
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
Subject: [PATCH 4/6] usb: otg: maintain list of USB OTG controllers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We register devices for OTG controllers only to associate a .mode device
parameter with them. Follow-up commits will need to refer to previously
registered OTG controllers, so let's register a bus type for them and
use it to maintain a list of controllers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/otg/otgdev.c | 11 +++++++++++
 include/linux/usb/usb.h  |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index d0a1cecc85cf..e035c988af2d 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -63,6 +63,10 @@ static struct device otg_device = {
 	.id = DEVICE_ID_SINGLE,
 };
 
+struct bus_type otg_bus_type = {
+	.name = "usbotg" /* "otg" is already taken for the alias */
+};
+
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
@@ -72,6 +76,7 @@ int usb_register_otg_device(struct device *parent,
 	otg = xzalloc(sizeof(*otg));
 	otg->dev.priv = otg;
 	otg->dev.parent = parent;
+	otg->dev.bus = &otg_bus_type;
 	otg->dev.id = DEVICE_ID_DYNAMIC;
 	dev_set_name(&otg->dev, "otg");
 
@@ -90,3 +95,9 @@ int usb_register_otg_device(struct device *parent,
 
 	return register_otg_device(&otg->dev, otg);
 }
+
+static int otg_bus_init(void)
+{
+	return bus_register(&otg_bus_type);
+}
+pure_initcall(otg_bus_init);
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index ffeceec88f9e..a611d19b4a17 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -480,6 +480,8 @@ enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
 
+extern struct bus_type otg_bus_type;
+
 extern struct list_head usb_device_list;
 
 bool usb_hub_is_root_hub(struct usb_device *hdev);
-- 
2.39.2



