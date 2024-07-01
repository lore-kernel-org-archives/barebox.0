Delivery-date: Mon, 01 Jul 2024 09:43:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBhc-000Qbb-2p
	for lore@lore.pengutronix.de;
	Mon, 01 Jul 2024 09:43:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sOBhc-0000G7-79
	for lore@pengutronix.de; Mon, 01 Jul 2024 09:43:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zHaG6PErAm6gOE0d6X0jlSYc1+CDkfJN/iCm9ewQQ64=; b=nB+mvBLo7mRhTXXF3A0+EpikPj
	9BcMaSCsR3++gX/W0vV99JpaPZLZh6C+6r1fgtGaEqoQsSiBYbU5qumaVgvabEO/Gzm9rMVHb3u1o
	o9zluc7uw80ET2wjpWAkuLTI4wfg+ZAZlXfgzkwk4KNR07RKFiGlO4BdP9FFUaBScgzG9ARAo3VB6
	3lIh5FOWDTj5YLAoZLsFi05bsfwJIF/ePLmJNsFsVXYwndFJia7kMHot0E7twaPCOaaM0GouvVKd0
	UJn7rAB7PMHlXb89o+KIuMCUsvBJrgiMHn9ZZF/8rIXG6qQ5k5LmVQpHG+YpFEwmT00MzmivTgR3D
	ah2kfgHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBhC-00000002665-05Do;
	Mon, 01 Jul 2024 07:43:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sOBhA-00000002656-0Dar
	for barebox@lists.infradead.org;
	Mon, 01 Jul 2024 07:43:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBh8-0000Dk-GW; Mon, 01 Jul 2024 09:43:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBh8-006Jrx-44; Mon, 01 Jul 2024 09:43:26 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sOBh8-000nbG-06;
	Mon, 01 Jul 2024 09:43:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Jul 2024 09:43:25 +0200
Message-Id: <20240701074325.190376-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240701_004328_111024_C9EFADBC 
X-CRM114-Status: GOOD (  12.55  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] rtc: register RTC class to collect devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We already have an RTC class device, so by using struct class, we can
drop the list member in struct rtc_device and make it possible to list
the device using the class command.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/rtc/class.c | 10 ++++++----
 include/linux/rtc.h |  1 -
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index 3edb294ed772..3d6cfd6197a7 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -8,9 +8,11 @@
 #include <linux/err.h>
 #include <rtc.h>
 #include <linux/rtc.h>
+#include <device.h>
 
-LIST_HEAD(rtc_list);
-EXPORT_SYMBOL(rtc_list);
+#define for_each_rtc(rtc) list_for_each_entry(rtc, &rtc_class.devices, class_dev.class_list)
+
+DEFINE_DEV_CLASS(rtc_class, "rtc");
 
 struct rtc_device *rtc_lookup(const char *name)
 {
@@ -19,7 +21,7 @@ struct rtc_device *rtc_lookup(const char *name)
 	if (!name)
 		return ERR_PTR(-ENODEV);
 
-	list_for_each_entry(r, &rtc_list, list) {
+	for_each_rtc(r) {
 		if (!strcmp(dev_name(&r->class_dev), name))
 			return r;
 	}
@@ -62,7 +64,7 @@ int rtc_register(struct rtc_device *rtcdev)
 		dev->parent = rtcdev->dev;
 	platform_device_register(dev);
 
-	list_add_tail(&rtcdev->list, &rtc_list);
+	class_add_device(&rtc_class, &rtcdev->class_dev);
 
 	return 0;
 }
diff --git a/include/linux/rtc.h b/include/linux/rtc.h
index def07548c554..82a82ce61682 100644
--- a/include/linux/rtc.h
+++ b/include/linux/rtc.h
@@ -26,7 +26,6 @@ struct rtc_class_ops;
 struct rtc_device {
 	struct device *dev;
 	struct device class_dev;
-	struct list_head list;
 
 	const struct rtc_class_ops *ops;
 };
-- 
2.39.2



