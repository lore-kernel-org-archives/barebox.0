Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQOn-0006J7-Qc
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:58 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id A6C9D26C200A
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:17 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:22 +0100
Message-Id: <1415055144-6119-10-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 10/12] serial: ns16550: add Tegra support
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/serial/serial_ns16550.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 07dedf7..8f2e93f 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -311,6 +311,11 @@ static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
 };
 
+static __maybe_unused struct ns16550_drvdata tegra_drvdata = {
+	.init_port = ns16550_serial_init_port,
+	.linux_console_name = "ttyS",
+};
+
 static int ns16550_init_iomem(struct device_d *dev, struct ns16550_priv *priv)
 {
 	struct resource *res;
@@ -477,6 +482,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = (unsigned long)&omap_drvdata,
 	},
 #endif
+#if IS_ENABLED(CONFIG_ARCH_TEGRA)
+	{
+		.compatible = "nvidia,tegra20-uart",
+		.data = (unsigned long)&tegra_drvdata,
+	},
+#endif
 #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
 	{
 		.compatible = "ingenic,jz4740-uart",
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
