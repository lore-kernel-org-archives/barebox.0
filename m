Delivery-date: Sat, 08 Jan 2022 18:15:57 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJt-00Ecbs-TP
	for lore@lore.pengutronix.de; Sat, 08 Jan 2022 18:15:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n6FJs-0004Lb-Gq
	for lore@pengutronix.de; Sat, 08 Jan 2022 18:15:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mTIm7WpGVxqcTxrUmAYvXseish83kcmV+pn/A25Gx9M=; b=ui0yiP3sQcFSI0
	KsgJaEXqLr/vaAltajIXps1N2lHvl/TKJsWX0p58WPiUKM9sPtbz7m2eumboTMg8ZYSLEPAZraWEI
	LXdKqpp1VUWrCLuO7HCBZuMJZGof3FHu+qIOpgrHEHESOkRkwx/IOrZ+yeV82W/7q7kJ46NckhCQj
	xJTeeKXo2iKd7j3fjXUdkKcFFyFWvkx5tSKzoThIS1df/sb6MFmwUbGlfpm4e7MBYUWsCzATIdxri
	WNTdR+eWKx7YWfa+rh09nit9B20XqVGlnloqXt2uzACdlgylSv9nyesAY4TQK4KsAdwYfkadpHpin
	HzMr5Ar6Oi0ExwWRYB+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n6FIa-006jGa-NI; Sat, 08 Jan 2022 17:14:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n6FIT-006jEt-O9
 for barebox@lists.infradead.org; Sat, 08 Jan 2022 17:14:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIS-0003rE-GZ; Sat, 08 Jan 2022 18:14:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n6FIS-002SXs-0x; Sat, 08 Jan 2022 18:14:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat,  8 Jan 2022 18:14:25 +0100
Message-Id: <20220108171426.586330-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220108171426.586330-1-a.fatoum@pengutronix.de>
References: <20220108171426.586330-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220108_091429_816089_D0176D00 
X-CRM114-Status: GOOD (  11.94  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] driver: have CONFIG_DEBUG_PROBES report device unbind as
 well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This aligns it with DEBUG_INITCALLS, which also traces exitcalls.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig        | 10 ++++++++--
 drivers/base/driver.c |  4 ++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index d0055e2d2182..802bd9bfbb2e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1503,9 +1503,15 @@ config DEBUG_INITCALLS
 	  If enabled this will print initcall traces.
 
 config DEBUG_PROBES
-	bool "Trace driver probes"
+	bool "Trace driver probes/removes"
 	help
-	  If enabled this will print driver probe traces.
+	  If enabled this will log driver probe and remove traces. If DEBUG_LL is enabled,
+	  probes will be printed even before registering consoles. If it's disabled, they
+	  will be collected in the log and written out once a console is active.
+
+	  Removes are written to the log and will be printed as long as consoles exist.
+	  Most consoles do not implement a remove callback to remain operable until
+	  the very end. Consoles using DMA, however, must be removed.
 
 config PBL_BREAK
 	bool "Execute software break on pbl start"
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index dd965eb165ee..bb07e96dcaf4 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -502,11 +502,15 @@ EXPORT_SYMBOL_GPL(dev_set_name);
 static void devices_shutdown(void)
 {
 	struct device_d *dev;
+	int depth = 0;
 
 	list_for_each_entry(dev, &active, active) {
 		if (dev->bus->remove) {
+			depth++;
+			pr_report_probe("%*sremove-> %s\n", depth * 4, "", dev_name(dev));
 			dev->bus->remove(dev);
 			dev->driver = NULL;
+			depth--;
 		}
 	}
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

