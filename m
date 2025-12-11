Delivery-date: Thu, 11 Dec 2025 21:37:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPs-00AQKW-2z
	for lore@lore.pengutronix.de;
	Thu, 11 Dec 2025 21:37:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTnPs-0008PK-7d
	for lore@pengutronix.de; Thu, 11 Dec 2025 21:37:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=P8R5tTFao8KYuX60H2gI7czzxX/T0hRL+CP9uwVcYpI=; b=hQR70PlY/DLaBDCp3S7paWb5Rd
	tVzcEQxiJbAbL39WQkLQYFyQI7KGZP/AHbKhzxpZZ1I9AEjj1yJy2PuG4ChIauMMvkftgoboYj90g
	4DLElB+K06TWsxdwA9CNw95R81w65sFY6dJEmUfT+U7yfJrSIskHeMysc1moZ4rue9aAd7iTe4S/f
	QXhJrfCeVz53C0CZneustJikan/fT87WtDhXw1yfHmt5PKfmo30nM9WcYuHo11n4on/qiyvVcO9cr
	DzoQADEGX++sy6rykMSQRUKrvJfb8k+sToGer6CpBuXtQ3ZBmw+Ro1DjaAj6RQWjim5jt4K5ou2BV
	E6jVgL5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPW-0000000HFg3-1TCP;
	Thu, 11 Dec 2025 20:37:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTnPU-0000000HFf3-40Cq
	for barebox@bombadil.infradead.org;
	Thu, 11 Dec 2025 20:37:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=P8R5tTFao8KYuX60H2gI7czzxX/T0hRL+CP9uwVcYpI=; b=lXHUWuLSpAnQ014WyO1HqiZdZD
	LvCG6YrarfK4Faek5JlYnM9H3Qd39MJKGXMsCHHggvfx55NfkOTJeiM8xSuKw66EgtnSnmGvdtCu8
	3cJIM9i+6EVRwPfK5Cdl+IZtLO2jchSYWEMBLF2d7tEZgHzQilj1Xe/DDduz9R9B1BVo1ue8HVcc3
	ASkS3u3Uv2Z1cIha/WdyzjL0N2+cK6jvY903QuusUAHduh2WBCVcd3qxw09sbDI/pTutmSR1a25pp
	sVZDLd1dpBxCGoV2m2HGz4s0znh+bpzWkRtfQQF+ez89iokH0OyRO4nnhrlhwa/IQNqMO0r28YltH
	vxezcJqQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTmXx-0000000FZai-0w3X
	for barebox@lists.infradead.org;
	Thu, 11 Dec 2025 19:41:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnPR-00084e-Ie; Thu, 11 Dec 2025 21:37:09 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnPR-005BWu-0h;
	Thu, 11 Dec 2025 21:37:09 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vTnPR-0000000AEzR-0TrK;
	Thu, 11 Dec 2025 21:37:09 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 11 Dec 2025 21:37:07 +0100
Message-ID: <20251211203708.2440188-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251211_194153_397326_84235DE5 
X-CRM114-Status: GOOD (  10.18  )
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
X-Spam-Status: No, score=-1.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] driver: base: report driver remove before, not after operation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Calling pr_report_probe() after the removal is unexpected as for
initcalls and probes, we print before to make hangs or crashes
easier to pinpoint.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/base/driver.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 753e06963b16..102e7ea2c0dd 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -659,15 +659,25 @@ int dev_add_alias(struct device *dev, const char *fmt, ...)
 }
 EXPORT_SYMBOL_GPL(dev_add_alias);
 
-bool device_remove(struct device *dev)
+typedef void (*dev_remove_op_t)(struct device *dev);
+
+static dev_remove_op_t get_device_remove(struct device *dev)
 {
 	if (dev->bus && dev->bus->remove)
-		dev->bus->remove(dev);
+		return dev->bus->remove;
 	else if (dev->driver->remove)
-		dev->driver->remove(dev);
+		return dev->driver->remove;
 	else
-		return false; /* nothing to do */
+		return NULL;
+}
 
+bool device_remove(struct device *dev)
+{
+	dev_remove_op_t remove = get_device_remove(dev);
+	if (!remove)
+		return false;  /* nothing to do */
+
+	remove(dev);
 	return true;
 }
 EXPORT_SYMBOL_GPL(device_remove);
@@ -677,8 +687,11 @@ static void devices_shutdown(void)
 	struct device *dev;
 
 	list_for_each_entry(dev, &active_device_list, active) {
-		if (device_remove(dev))
+		dev_remove_op_t remove = get_device_remove(dev);
+		if (remove) {
 			pr_report_probe("%*sremove-> %s\n", 1 * 4, "", dev_name(dev));
+			remove(dev);
+		}
 		dev->driver = NULL;
 	}
 }
-- 
2.47.3



