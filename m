Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x230.google.com ([2a00:1450:4010:c04::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WSBGT-0002Pk-01
 for barebox@lists.infradead.org; Mon, 24 Mar 2014 20:14:33 +0000
Received: by mail-lb0-f176.google.com with SMTP id 10so3981048lbg.7
 for <barebox@lists.infradead.org>; Mon, 24 Mar 2014 13:14:11 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 25 Mar 2014 00:13:51 +0400
Message-Id: <1395692034-5821-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
References: <1395692034-5821-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 5/8] serial: ns16550: add compatible entry for "ingenic,
 jz4740-uart"
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 0089a04..a37ac69 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -191,6 +191,16 @@ static void ns16550_omap_init_port(struct console_device *cdev)
 	ns16550_write(cdev, 0x00, omap_mdr1);
 }
 
+#define JZ_FCR_UME 0x10 /* Uart Module Enable */
+
+static void ns16550_jz_init_port(struct console_device *cdev)
+{
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+	priv->fcrval |= JZ_FCR_UME;
+	ns16550_serial_init_port(cdev);
+}
+
 /*********** Exposed Functions **********************************/
 
 /**
@@ -251,6 +261,10 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.linux_console_name = "ttyO",
 };
 
+static __maybe_unused struct ns16550_drvdata jz_drvdata = {
+	.init_port = ns16550_jz_init_port,
+};
+
 /**
  * @brief Probe entry point -called on the first match for device
  *
@@ -347,6 +361,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 		.data = (unsigned long)&omap_drvdata,
 	},
 #endif
+#if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
+	{
+		.compatible = "ingenic,jz4740-uart",
+		.data = (unsigned long)&jz_drvdata,
+	},
+#endif
 	{
 		/* sentinel */
 	},
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
