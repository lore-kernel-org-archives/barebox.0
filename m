Delivery-date: Wed, 28 Feb 2024 17:06:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRd-00DfRz-0A
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 17:06:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfMRc-00005h-BT
	for lore@pengutronix.de; Wed, 28 Feb 2024 17:06:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OTuMh1PPyzsS/h1uk6euu7HXbMrkWKX0zPBOTHmOYKk=; b=Bvjo0RTSDiPL3lN3/v/N/I7ebW
	pAogV1OIp2tdA3GV9/xz7GDszg0LWNvPkjadBAbsxGS9T4yJYmYOCWIoQG6RyoT9q1gex7tl87eb5
	FgaIbX4TSbS+VkdxfUei9YBwktO0MGNiZspTCAiPFoT1+ge7JDK2iMHVp98dIoWMMEjRyan9XGlqr
	hT+snyc2jW6FS7Vc/08/c6wuGnXpphTbw7kV9iO0IV9yNIdPTjib5LK2h0wB1gp7BQ16gT0PsCNkT
	RNDE7mvZ/i0BbWq/Ia7M/Yt9U4wj+MQ3OFkyJAEEJS0FwPrADB4OY4y+2t5F1/sLP2eci4F0LZPv4
	ri7iOo8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMRB-0000000A2EW-2iHy;
	Wed, 28 Feb 2024 16:05:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfMR2-0000000A28k-1neG
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 16:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQt-00083E-5q; Wed, 28 Feb 2024 17:05:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-003Qfe-Og; Wed, 28 Feb 2024 17:05:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rfMQs-006fql-0X;
	Wed, 28 Feb 2024 17:05:22 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 Feb 2024 17:05:18 +0100
Message-Id: <20240228160518.1589193-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
References: <20240228160518.1589193-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_080532_652887_54F5712A 
X-CRM114-Status: GOOD (  13.92  )
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
Subject: [PATCH 6/6] usb: print number of skipped OTG controllers when scanning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I often get confused by running usb and wondering why devices behind
unconfigured OTG controllers are not enumerated. Improve the user
experience by printing a message when doing a USB scan while some OTG
controllers are not yet configured (i.e. the otg.mode device parameter
hasn't been set to "peripheral" or "host").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/usb.c   | 14 ++++++++++++++
 drivers/usb/otg/otgdev.c | 12 ++++++++++++
 include/linux/usb/usb.h  |  2 ++
 3 files changed, 28 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 614527fecbf3..1f6f1d7c4184 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -616,6 +616,20 @@ int usb_rescan(void)
 
 	pr_info("%d USB Device(s) found\n", dev_count);
 
+	if (IS_ENABLED(CONFIG_USB_OTGDEV)) {
+		unsigned int skipped_otg = 0;
+		struct device *dev;
+
+		bus_for_each_device(&otg_bus_type, dev) {
+			if (otg_device_get_mode(dev) == USB_DR_MODE_OTG)
+				skipped_otg++;
+		}
+
+		if (skipped_otg)
+			pr_notice("%u unconfigured OTG controller(s) were not scanned\n",
+				  skipped_otg);
+	}
+
 	return dev_count;
 }
 
diff --git a/drivers/usb/otg/otgdev.c b/drivers/usb/otg/otgdev.c
index b4315c2d3c28..5a8626343056 100644
--- a/drivers/usb/otg/otgdev.c
+++ b/drivers/usb/otg/otgdev.c
@@ -62,6 +62,18 @@ struct bus_type otg_bus_type = {
 	.name = "usbotg" /* "otg" is already taken for the alias */
 };
 
+int otg_device_get_mode(struct device *dev)
+{
+	struct otg_mode *otg;
+
+	if (dev->bus != &otg_bus_type)
+		return -ENODEV;
+
+	otg = dev->priv;
+
+	return otg->cur_mode;
+}
+
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx)
 {
diff --git a/include/linux/usb/usb.h b/include/linux/usb/usb.h
index a611d19b4a17..4ad2fd32d217 100644
--- a/include/linux/usb/usb.h
+++ b/include/linux/usb/usb.h
@@ -480,6 +480,8 @@ enum usb_device_speed of_usb_get_maximum_speed(struct device_node *np,
 int usb_register_otg_device(struct device *parent,
 			    int (*set_mode)(void *ctx, enum usb_dr_mode mode), void *ctx);
 
+int otg_device_get_mode(struct device *dev);
+
 extern struct bus_type otg_bus_type;
 
 extern struct list_head usb_device_list;
-- 
2.39.2



