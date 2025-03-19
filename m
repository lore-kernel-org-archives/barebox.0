Delivery-date: Wed, 19 Mar 2025 11:24:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuqb9-001Pww-2A
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 11:24:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuqb8-0007p1-Fz
	for lore@pengutronix.de; Wed, 19 Mar 2025 11:24:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=13vMv5lAvfBboonPOodkk6KHf9Pd6CZ2UgSdZBcKurs=; b=HfKbCzDNbJF8yL
	vbO+UnUlA8xqQtfYqpA3lyU4AYFzoXCosIMZchzwP/EbZjKmmu6LbFyfHPFBfJ+6VJti1gJAyvnZG
	+xONqVTqvrOLtt/Wxi0j01TH0bd37+PfTluRoYUnpCzJD6RQCIhQCVr+ivmfLWaoy0Jqvcw4cj0gC
	IH6VNjYxtyYUnJI81Q5Jo0C/J/2TJAabbBHyEU49hj7LIsuTgAtTdZ5feQAHrdZ4nHMNWZG9W264X
	fa0W0/nN0LYuX/WJc4SyRdqb/d4iNJqXZKWJ+k2Rhl3e88gxj7OOjolwawm2by5AL+9B0rWl0XyJU
	8FeNMRz5ZopfI+1GToHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqaW-00000008eU0-2BTd;
	Wed, 19 Mar 2025 10:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuqZF-00000008eDh-1VNz
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 10:22:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuqZB-0007S3-U1; Wed, 19 Mar 2025 11:22:29 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuqZB-000ZqE-11;
	Wed, 19 Mar 2025 11:22:29 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tuqZB-00A4l6-21;
	Wed, 19 Mar 2025 11:22:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 19 Mar 2025 11:22:28 +0100
Message-Id: <20250319102228.2401563-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_032233_406748_3AE6E6BC 
X-CRM114-Status: GOOD (  14.77  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] serial: omap: make Linux console name configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Depending on the configuration Linux on OMAP SoCs either needs ttyO or
ttyS as console name. We used to pass ttyO, but c1c0d18973
("serial: omap: Use ttyS as Linux console name") recently changed this
to ttyS which breaks setups that used to work earlier. Make the
name configurable to allow for setups requiring ttyS and use ttyO
as default to keep existing setups working.

Note that with ti,am4372-uart we used to pass ttyO as well, but this
specific compatible is only supported by the 8250 based driver which
needs ttyS as console name. With this patch we always pass ttyS
regardless of CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS.

All new SoCs like the K3 SoCs are only supported by the 8250 based
driver which needs ttyS. On these SoCs CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
will also have no effect.

Fixes: c1c0d18973 ("serial: omap: Use ttyS as Linux console name")
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/Kconfig          | 12 ++++++++++++
 drivers/serial/serial_ns16550.c |  4 ++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b7312ca796..6ac1d94526 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -77,6 +77,18 @@ config DRIVER_SERIAL_NS16550
 	help
 	  Enable this to get support for NS16550 based serial devices
 
+config DRIVER_SERIAL_NS16550_OMAP_TTYS
+	depends on ARCH_OMAP
+	bool "Use ttyS as console name for TI OMAP/AMxxx SoCs"
+	help
+	  Linux has two different drivers for the TI OMAP/AMxxx serial ports. One is
+	  based on the generic 8250 driver and activated with CONFIG_SERIAL_8250_OMAP.
+	  This one uses ttyS as console name. When CONFIG_SERIAL_8250_OMAP_TTYO_FIXUP
+	  is enabled, this driver takes ttyO as console name as well, but issues a warning
+	  during boot. The other driver is activated with CONFIG_SERIAL_OMAP and takes ttyO
+	  as console name. Say yes here to pass ttyS as console, otherwise ttyO will be
+	  used.
+
 config DRIVER_SERIAL_ATMEL
 	depends on ARCH_AT91
 	default y
diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 56a1c6c6b9..6d4a4e8c7c 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -402,7 +402,11 @@ static struct ns16550_drvdata ns16550_drvdata = {
 
 static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.init_port = ns16550_omap_init_port,
+#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
 	.linux_console_name = "ttyS",
+#else
+	.linux_console_name = "ttyO",
+#endif
 	.linux_earlycon_name = "omap8250",
 };
 
-- 
2.39.5



