Delivery-date: Tue, 19 May 2026 07:56:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDRA-001OgX-1O
	for lore@lore.pengutronix.de;
	Tue, 19 May 2026 07:56:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPDR9-0000WF-OR
	for lore@pengutronix.de; Tue, 19 May 2026 07:56:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=cidvrkddiobJpjW77DQCl41pzU7AsCVq1EeFBk9vaA0=; b=xA70ERodV7oHNdrVa69H1aS2Wj
	GOI9E3z28/dwCc0ylF7zCwh5WGKEGH+dKSekpoBbTO9vb1pAh7LctAJphz8rLoRjgvd8BRfyOtIFn
	QaL0oLb1MoUV9TkIPRPTvR1rahr5wRYop8BDzJpEYsuBfzVlUlqrW5VTwLl5AMKyzzqyyKdYSbGNb
	OjwYD3YvgUC27YJMbCTVjZis6ZY5Az0Abk16/Fti/ZernsMAN5XGH3FsgAZRtctaXvHml3rRtMLXE
	Wsyt27Gi+fN1AYdCP3rD8d2dDUrX9cgxyfit0nwnR7VB3hKnGQ7fYsS7UwKYWFFVbSvA8w7M9DCp9
	Gy9ukKmQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDPz-00000000Fpd-3E1a;
	Tue, 19 May 2026 05:55:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPDPw-00000000FoQ-1WTD
	for barebox@lists.infradead.org;
	Tue, 19 May 2026 05:55:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDPu-0000O2-AM; Tue, 19 May 2026 07:54:58 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDPt-000iBY-2G;
	Tue, 19 May 2026 07:54:58 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wPDPu-0000000HGvm-0iWj;
	Tue, 19 May 2026 07:54:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 May 2026 07:53:40 +0200
Message-ID: <20260519055440.4116589-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_225500_401597_BF6E9E82 
X-CRM114-Status: GOOD (  11.09  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] serial: ns16550: fall back to using uart8250/ttyS as Linux console names
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most Linux drivers use the same names, so make them the default and only
list differing ones in the different ns16550_drvdata.

This also ensures, we don't end up with <NULL> formatted into the kernel
command-line by mistake.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Unlike [1], which is for the next release, this one is meant for next to
avoid such issues in future altogether.

[1]: https://lore.barebox.org/barebox/20260519053350.4061870-1-a.fatoum@pengutronix.de/T/#u
---
 drivers/serial/serial_ns16550.c | 19 ++++++-------------
 1 file changed, 6 insertions(+), 13 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 31e7c006d004..72bf8e464759 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -390,21 +390,15 @@ static void ns16550_probe_dt(struct device *dev, struct ns16550_priv *priv)
 
 static struct ns16550_drvdata ns16450_drvdata = {
 	.init_port = ns16450_serial_init_port,
-	.linux_console_name = "ttyS",
-	.linux_earlycon_name = "uart8250",
 };
 
 static struct ns16550_drvdata ns16550_drvdata = {
 	.init_port = ns16550_serial_init_port,
-	.linux_console_name = "ttyS",
-	.linux_earlycon_name = "uart8250",
 };
 
 static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.init_port = ns16550_omap_init_port,
-#ifdef CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
-	.linux_console_name = "ttyS",
-#else
+#ifndef CONFIG_DRIVER_SERIAL_NS16550_OMAP_TTYS
 	.linux_console_name = "ttyO",
 #endif
 	.linux_earlycon_name = "omap8250",
@@ -412,20 +406,16 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 
 static __maybe_unused struct ns16550_drvdata omap_clk48m_drvdata = {
 	.init_port = ns16550_omap_init_port,
-	.linux_console_name = "ttyS",
-	.linux_earlycon_name = "uart8250",
 	.clk_default = 48000000,
 };
 
 static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
-	.linux_console_name = "ttyS",
 	.linux_earlycon_name = "jz4740_uart",
 };
 
 static __maybe_unused struct ns16550_drvdata rpi_drvdata = {
 	.init_port = rpi_init_port,
-	.linux_console_name = "ttyS",
 	.linux_earlycon_name = "bcm2835aux",
 };
 
@@ -510,6 +500,7 @@ static int ns16550_probe(struct device *dev)
 	struct NS16550_plat *plat = (struct NS16550_plat *)dev->platform_data;
 	const struct ns16550_drvdata *devtype;
 	struct resource *iores;
+	const char *linux_earlycon_name;
 	int ret;
 
 	devtype = device_get_match_data(dev) ?: &ns16550_drvdata;
@@ -550,8 +541,10 @@ static int ns16550_probe(struct device *dev)
 	cdev->getc = ns16550_getc;
 	cdev->setbrg = priv->plat.clock ? ns16550_setbaudrate : NULL;
 	cdev->flush = ns16550_flush;
-	cdev->linux_console_name = devtype->linux_console_name;
-	cdev->linux_earlycon_name = basprintf("%s,%s", devtype->linux_earlycon_name,
+	cdev->linux_console_name = devtype->linux_console_name ?: "ttyS";
+	linux_earlycon_name = devtype->linux_earlycon_name ?: "uart8250";
+
+	cdev->linux_earlycon_name = basprintf("%s,%s", linux_earlycon_name,
 					      priv->access_type);
 	cdev->phys_base = !strcmp(priv->access_type, "io") ?
 		IOMEM((ulong)priv->iobase) : priv->mmiobase;
-- 
2.47.3



