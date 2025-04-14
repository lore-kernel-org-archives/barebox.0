Delivery-date: Mon, 14 Apr 2025 09:06:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dtq-000XZQ-0o
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 09:06:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4Dtp-00033Q-JJ
	for lore@pengutronix.de; Mon, 14 Apr 2025 09:06:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zSVl/aDnGEIdjG8aU0Nd8fXm3wr/xL6krznmk9Da8iI=; b=AmlF6Z64zhCffUuypkz2RwagzY
	iawgqA/wdqoz1gBJKg6AzKxtd856mwgbkm80D+zl1D0qVwozkwLZdvjN1gG45OCaFmoqAjLqCAStG
	qsZXyJ8OzOv3JYaM5I0xH/3uSaeew+vcd8RfDcTbDC3og9FkJ1vZiWkbKDMkjlk8fLcy53XxR93zu
	XsWEive5fn2CxDxMwC72YzaoeHjmKLUWRozNTTloLWhm9LAuBYs2qQhw3xcIYvnSUOqgidSWDId1E
	+8Bkw2LtYSqKxPy3x/q0o18LJ9+d6RMxb7FQA7N+qjMkt7BDRXmFjw+ABKlYXuwVAY9jQHQYFqC2n
	mi4flQdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DtP-00000000ssV-0Kgy;
	Mon, 14 Apr 2025 07:06:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4Dsk-00000000sjE-1jDj
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 07:05:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsj-0002UD-02; Mon, 14 Apr 2025 09:05:25 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-000D67-2a;
	Mon, 14 Apr 2025 09:05:24 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4Dsi-00BgNz-2I;
	Mon, 14 Apr 2025 09:05:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 09:05:22 +0200
Message-Id: <20250414070524.2784496-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_000526_453619_17FB9E32 
X-CRM114-Status: GOOD (  10.50  )
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
Subject: [PATCH 1/3] base: class: add convenience helpers for iteration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Using list_for_each_entry with a last argument that is a member of a
member gets unwieldy, so let's add macros for use in macro definitions
for:

  - iterating through all container of devices
  - getting the first device

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/rtc/class.c        | 3 ++-
 drivers/watchdog/wd_core.c | 3 ++-
 include/device.h           | 6 ++++++
 include/net.h              | 3 ++-
 4 files changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/rtc/class.c b/drivers/rtc/class.c
index c09ec3f61ea2..6bbf5b31833f 100644
--- a/drivers/rtc/class.c
+++ b/drivers/rtc/class.c
@@ -10,7 +10,8 @@
 #include <linux/rtc.h>
 #include <device.h>
 
-#define for_each_rtc(rtc) list_for_each_entry(rtc, &rtc_class.devices, class_dev.class_list)
+#define for_each_rtc(rtc) \
+	class_for_each_container_of_device(&rtc_class, rtc, class_dev)
 
 DEFINE_DEV_CLASS(rtc_class, "rtc");
 
diff --git a/drivers/watchdog/wd_core.c b/drivers/watchdog/wd_core.c
index 6e239edf612d..ee0e4ccb109b 100644
--- a/drivers/watchdog/wd_core.c
+++ b/drivers/watchdog/wd_core.c
@@ -11,7 +11,8 @@
 #include <watchdog.h>
 #include <restart.h>
 
-#define for_each_watchdog(wd) list_for_each_entry(wd, &watchdog_class.devices, dev.class_list)
+#define for_each_watchdog(wd) \
+	class_for_each_container_of_device(&watchdog_class, wd, dev)
 
 DEFINE_DEV_CLASS(watchdog_class, "watchdog");
 
diff --git a/include/device.h b/include/device.h
index e0c130551f9a..8841197a0a56 100644
--- a/include/device.h
+++ b/include/device.h
@@ -134,6 +134,12 @@ int class_register_device(struct class *class, struct device *class_dev,
 
 extern struct list_head class_list;
 #define class_for_each_device(class, dev) list_for_each_entry((dev), &(class)->devices, class_list)
+#define class_first_device(class) \
+	list_first_entry_or_null(&(class)->devices, struct device, class_list)
+
+#define class_for_each_container_of_device(class, obj, member) \
+	list_for_each_entry((obj), &(class)->devices, member.class_list)
+
 #define class_for_each(class) list_for_each_entry((class), &class_list, list)
 
 struct device_alias {
diff --git a/include/net.h b/include/net.h
index a3c466784630..52f6a0fa97ad 100644
--- a/include/net.h
+++ b/include/net.h
@@ -597,7 +597,8 @@ void ifdown_edev(struct eth_device *edev);
 int ifdown(const char *name);
 void ifdown_all(void);
 
-#define for_each_netdev(netdev) list_for_each_entry(netdev, &eth_class.devices, dev.class_list)
+#define for_each_netdev(netdev) \
+	class_for_each_container_of_device(&eth_class, netdev, dev)
 
 extern struct class eth_class;
 
-- 
2.39.5



