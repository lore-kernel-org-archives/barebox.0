Delivery-date: Mon, 28 Jun 2021 09:06:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLv-0002Eb-Q2
	for lore@lore.pengutronix.de; Mon, 28 Jun 2021 09:06:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lxlLu-0006mq-DY
	for lore@pengutronix.de; Mon, 28 Jun 2021 09:06:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OpP8WEN+QUTHbHAyDQxkyAw0f0FVzzE7iZbOQ4pI/mk=; b=bqRJm/YigBrLVg
	pw3uWUD4ekrn8N2r7/+GSGQv1imfUdo1ehnztp1+b0q7P3lWL+Xy5TeOL8aZ//i00JD2S2HrDbE6m
	xncMiRGXnNXVMGKoArPDnAlXJ161xVRDUorZiXD2XvfNWXC71lNRudF5n2Mwzi3QncezLLD0NHYso
	n8m3koHtkiVmFiUiB23TPFPr51oJ9UkiCI8IimjaG1rziVGBtkBv826hHuIL5MaVMPYklt5o5LRzx
	qPaMd/KIxaCPahR4vZdgT1KZZRJpyq+fNjfyvCGxoSF3csZLqbxOwylqdmcHe6LQrCkqCIsP+6fdw
	TRh3YKEQeOWRIxHUQXJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lxlKb-0078mG-T6; Mon, 28 Jun 2021 07:05:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lxlJ6-0078DL-2z
 for barebox@lists.infradead.org; Mon, 28 Jun 2021 07:03:49 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlJ4-000666-S8; Mon, 28 Jun 2021 09:03:46 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lxlJ4-0003cW-Jy; Mon, 28 Jun 2021 09:03:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 28 Jun 2021 09:03:45 +0200
Message-Id: <20210628070345.13838-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210628_000348_158964_ABFE645E 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] driver: add CONFIG_DEBUG_PROBES
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_DEBUG_INITCALLS can be very useful to roughly pinpoint what
causes barebox to hang. With deep probe, most probes run at the same
initcall level making the debug option much less useful.

Add a new CONFIG_DEBUG_PROBES that will instead log whenever a probe is
invoked. The text's horizontal alignment is increased with each
recursive probe making the option suitable for debugging some deep probe
issues as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig        |  4 ++++
 drivers/base/driver.c | 17 +++++++++++++++--
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index a2aa0b2568de..05e4bdbba132 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1497,6 +1497,10 @@ config DEBUG_INITCALLS
 	help
 	  If enabled this will print initcall traces.
 
+config DEBUG_PROBES
+	bool "Trace driver probes"
+	help
+	  If enabled this will print driver probe traces.
 
 config PBL_BREAK
 	bool "Execute software break on pbl start"
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index c2ab9d308e91..c6a8aef879af 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -36,6 +36,12 @@
 #include <pinctrl.h>
 #include <linux/clk/clk-conf.h>
 
+#ifdef CONFIG_DEBUG_PROBES
+#define pr_report_probe		pr_info
+#else
+#define pr_report_probe		pr_debug
+#endif
+
 LIST_HEAD(device_list);
 EXPORT_SYMBOL(device_list);
 
@@ -82,8 +88,13 @@ int get_free_deviceid(const char *name_template)
 
 int device_probe(struct device_d *dev)
 {
+	static int depth = 0;
 	int ret;
 
+	depth++;
+
+	pr_report_probe("%*sprobe-> %s\n", depth, "", dev_name(dev));
+
 	pinctrl_select_state_default(dev);
 	of_clk_set_defaults(dev->device_node, false);
 
@@ -91,7 +102,7 @@ int device_probe(struct device_d *dev)
 
 	ret = dev->bus->probe(dev);
 	if (ret == 0)
-		return 0;
+		goto out;
 
 	if (ret == -EPROBE_DEFER) {
 		list_del(&dev->active);
@@ -105,7 +116,7 @@ int device_probe(struct device_d *dev)
 			dev_err(dev, "probe deferred\n");
 		else
 			dev_dbg(dev, "probe deferred\n");
-		return ret;
+		goto out;
 	}
 
 	list_del(&dev->active);
@@ -116,6 +127,8 @@ int device_probe(struct device_d *dev)
 	else
 		dev_err(dev, "probe failed: %s\n", strerror(-ret));
 
+out:
+	depth--;
 	return ret;
 }
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

