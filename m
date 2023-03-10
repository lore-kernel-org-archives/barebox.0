Delivery-date: Fri, 10 Mar 2023 10:44:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI8-00FviM-Ux
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI7-0006kq-KG
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:44:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uS5/FlLZRxMaLmQAJk8fOclEazWvehCbCgS/BOTdiik=; b=2eQFfS/a/Hkzb+3CtxHv2jDCqw
	BPvlqZ2Usi39uYTjv7+eAa4zPrVxJ39mjSLuTLeOz0khq0eDcNRrHpTmWAytuuqdQZvLbzGBUSa5q
	p9WgW/M5dMwZBjymEyq4vPt1ztQJQBG5GkLutmWPXVHGSyyd+EL0wfysrYfIpf/i8tYNr3JRcsLuv
	ZbpgTGEJCmr/26FMUVSirRXLVNIoGGOiBOJZE1PQLg8MHOy57N6UUMj8I3uOOAu0w/9RM5sb0KwHS
	46ssOXt9zHOs2Ak6x1Ng8uVm9E8/OqEHc1SYq2G3ZvtPFVP+1mUgG2yJfoLxsNSyCsAElLAmv0KSX
	KupNlmAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGx-00DzCz-T0; Fri, 10 Mar 2023 09:42:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGd-00Dz4p-Jv
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-0006ME-LW; Fri, 10 Mar 2023 10:42:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-003949-2A; Fri, 10 Mar 2023 10:42:25 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B49B-FZ; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:17 +0100
Message-Id: <20230310094222.2538259-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014227_872454_15FA3490 
X-CRM114-Status: GOOD (  20.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/7] driver: Add rescan hook to struct device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When devices are enabled with a device tree overlay the newly enabled
devices can be probed by doing a of_probe(). This works fine for the
regular platform devices, but doesn't work for devices which are not
probed by the core, but by the subsystem. Prominent examples are I2C or
SPI devices.

This patch adds a struct device::rescan hook that subsystems can
implement to trigger rescanning the device nodes.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 12 +++++-------
 include/driver.h      |  6 ++++++
 2 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index edb082b106..23b8fa7934 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -153,8 +153,10 @@ struct device *of_platform_device_create(struct device_node *np,
 	 * Linux uses the OF_POPULATED flag to skip already populated/created
 	 * devices.
 	 */
-	if (np->dev)
+	if (np->dev) {
+		device_rescan(np->dev);
 		return np->dev;
+	}
 
 	/* count the io resources */
 	if (of_can_translate_address(np))
@@ -414,17 +416,13 @@ static struct device *of_device_create_on_demand(struct device_node *np)
 {
 	struct device_node *parent;
 	struct device *parent_dev, *dev;
-	int ret;
 
 	parent = of_get_parent(np);
 	if (!parent)
 		return NULL;
 
-	if (!np->dev && parent->dev) {
-		ret = device_detect(parent->dev);
-		if (ret && ret != -ENOSYS)
-			return ERR_PTR(ret);
-	}
+	if (!np->dev && parent->dev)
+		device_rescan(parent->dev);
 
 	if (!np->dev)
 		pr_debug("Creating device for %s\n", np->full_name);
diff --git a/include/driver.h b/include/driver.h
index f53668711b..2cf0190699 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -91,6 +91,7 @@ struct device {
 	 * when the driver should actually detect client devices
 	 */
 	int     (*detect) (struct device *);
+	void	(*rescan) (struct device *);
 
 	/*
 	 * if a driver probe is deferred, this stores the last error
@@ -158,6 +159,11 @@ static inline void put_device(struct device *dev) {}
 void free_device_res(struct device *dev);
 void free_device(struct device *dev);
 
+static inline void device_rescan(struct device *dev)
+{
+	if (dev->rescan)
+		dev->rescan(dev);
+}
 
 /* Iterate over a devices children
  */
-- 
2.30.2



