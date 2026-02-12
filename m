Delivery-date: Thu, 12 Feb 2026 23:03:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0012DE-2o
	for lore@lore.pengutronix.de;
	Thu, 12 Feb 2026 23:03:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqem4-0008QY-M9
	for lore@pengutronix.de; Thu, 12 Feb 2026 23:03:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4lw09eIrbIZlSyjFL4klMVHwuWUBxvyliwYyTdV00/0=; b=xvFFhwXjJMMS+4uUUaGXboU8VP
	wknkEUzarmIQ3ScK1A/wfXsSkryPN8lI2m7+o5gJGOmxupAvxmp4Kx706Q6yeEQg/oYa5/y2OGDyE
	OgibQkzrjbFSbwfqHxTk5nvxWOC4fDtXeqXEF/iGHIoKrAJDJ1XUlUQ1jWQkRn7/dYzkugQtE8aPS
	DEcCzp7vVK60YOn5H7PF56Nldq2lEkwaWJBlpTVDp7E5UW7w5WuU7TuEua6UANUpOQ/CbgZ3P+NBx
	M5YEYKA1vO6NQf8ZRjchkSkiozSUxRxoRxXQnwPWFfhdCgVF5LNkZFmmNkebYkMdqD3ZETuUfQaX/
	BbnSA4YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelO-00000002fwm-0ggd;
	Thu, 12 Feb 2026 22:02:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqelJ-00000002ftw-1bzu
	for barebox@lists.infradead.org;
	Thu, 12 Feb 2026 22:02:16 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqelH-000855-2X; Thu, 12 Feb 2026 23:02:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu, 12 Feb 2026 23:02:06 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260212-vmaster-customers-leicageo-system1600-v2-4-f590b7d5b0e9@pengutronix.de>
References: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
In-Reply-To: <20260212-vmaster-customers-leicageo-system1600-v2-0-f590b7d5b0e9@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260212_140213_431137_1FDFC53B 
X-CRM114-Status: GOOD (  18.30  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/7] watchdog: Add Hexagon EFI watchdog driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The EFI system co-processor implements a watchdog device which must be
pinged to inform the MCU that the system is up and running.

Normaly the ping is done by Linux but sometimes it can become necessary
to do it within barebox too, e.g. to allow barebox debugging and
development.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/watchdog/Kconfig       |   9 ++++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/hgs_efi_wdt.c | 102 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 112 insertions(+)

diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index bf18782bdb58b20240d7762ce32f98c78c4cd12d..c962e8f22e5a7cb21ee93b3f82189cc8536781b9 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -195,4 +195,13 @@ config K3_RTI_WDT
 	  Say Y here if you want to include support for the K3 watchdog
 	  timer (RTI module) available in the K3 generation of processors.
 
+config HGS_EFI_WATCHDOG
+	bool "Hexagon Geosystems EFI watchdog"
+	depends on MFD_HGS_EFI || COMPILE_TEST
+	help
+	  Say Y here if you want to include support for the Hexagon Geosystems
+	  EFI watchdog timer.
+
+	  If unsure, say N.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index 85d8dbfa3f83d868ad84935ab98c5f7f64922f8e..187ab247ddcf61f9db8137425b3234b60a7062ac 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -25,3 +25,4 @@ obj-$(CONFIG_STARFIVE_WDT) += starfive_wdt.o
 obj-$(CONFIG_WDAT_WDT) += wdat_wdt.o
 obj-$(CONFIG_CADENCE_WATCHDOG) += cadence_wdt.o
 obj-$(CONFIG_K3_RTI_WDT) += rti_wdt.o
+obj-$(CONFIG_HGS_EFI_WATCHDOG) += hgs_efi_wdt.o
diff --git a/drivers/watchdog/hgs_efi_wdt.c b/drivers/watchdog/hgs_efi_wdt.c
new file mode 100644
index 0000000000000000000000000000000000000000..63297a0c27681917165ae422c3b94946ee99b401
--- /dev/null
+++ b/drivers/watchdog/hgs_efi_wdt.c
@@ -0,0 +1,102 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Pengutronix
+
+#include <common.h>
+#include <init.h>
+#include <of_device.h>
+#include <watchdog.h>
+
+#include <mfd/hgs-efi.h>
+
+struct hgs_efi_wdt_data {
+	unsigned int msg_id;
+};
+
+struct hgs_efi_wdt {
+	struct watchdog wdd;
+	struct hgs_efi *efi;
+	const struct hgs_efi_wdt_data *data;
+	bool pinged;
+};
+
+static struct hgs_efi_wdt *to_hgs_efi_wdt(struct watchdog *wdd)
+{
+	return container_of(wdd, struct hgs_efi_wdt, wdd);
+}
+
+static int hgs_efi_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	/*
+	 * The set_timeout callback is required by the core, but we actually
+	 * can't configure the watchdog, therefore return -ENOSYS.
+	 */
+	return -ENOSYS;
+}
+
+static int hgs_efi_wdt_ping(struct watchdog *wdd)
+{
+	struct hgs_efi_wdt *efi_wd = to_hgs_efi_wdt(wdd);
+	struct device *dev = &wdd->dev;
+	struct hgs_sep_cmd cmd = {
+		.type = HGS_SEP_MSG_TYPE_EVENT,
+		.msg_id = efi_wd->data->msg_id,
+	};
+	int error;
+
+	/* The EFI watchdog doesn't have a timeout, once pinged */
+	if (efi_wd->pinged)
+		return 0;
+
+	error = hgs_efi_exec(efi_wd->efi, &cmd);
+	if (error) {
+		dev_warn(dev, "Failed to send OsRunning/SystemReady\n");
+		return error;
+	}
+
+	efi_wd->pinged = true;
+
+	return 0;
+}
+
+static int hgs_efi_wdt_drv_probe(struct device *dev)
+{
+	struct hgs_efi_wdt *efi_wd;
+	struct watchdog *wdd;
+	int error;
+
+	efi_wd = xzalloc(sizeof(*efi_wd));
+	efi_wd->efi = dev_get_priv(dev->parent);
+	efi_wd->data = of_device_get_match_data(dev);
+
+	wdd = &efi_wd->wdd;
+	wdd->hwdev = dev;
+	wdd->ping = hgs_efi_wdt_ping;
+	wdd->set_timeout = hgs_efi_wdt_set_timeout;
+	/* The watchdog is always running */
+	wdd->running = WDOG_HW_RUNNING;
+
+	error = watchdog_register(wdd);
+	if (error) {
+		dev_err(dev, "Failed to register watchdog device\n");
+		return error;
+	}
+
+	return 0;
+}
+
+const struct hgs_efi_wdt_data hgs_efi_wdt_gs05 = {
+	.msg_id = 0,
+};
+
+static struct of_device_id hgs_efi_wdt_of_match[] = {
+	{ .compatible = "hgs,efi-gs05-wdt", .data = &hgs_efi_wdt_gs05 },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, hgs_efi_wdt_of_match);
+
+static struct driver hgs_efi_wdt_driver = {
+	.name		= "hgs-efi-wdt",
+	.probe		= hgs_efi_wdt_drv_probe,
+	.of_compatible	= hgs_efi_wdt_of_match,
+};
+device_platform_driver(hgs_efi_wdt_driver);

-- 
2.47.3



