Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRK8I-0007P8-Jt
 for barebox@lists.infradead.org; Sat, 22 Mar 2014 11:30:35 +0000
Received: by mail-la0-f53.google.com with SMTP id b8so2370844lan.40
 for <barebox@lists.infradead.org>; Sat, 22 Mar 2014 04:30:13 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 22 Mar 2014 15:29:54 +0400
Message-Id: <1395487797-16599-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
References: <1395487797-16599-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 4/7] serial: ns16550: add compatible entry for "ingenic,
 jz4740-uart"
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/serial_ns16550.c | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index aa0992f..7130871 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -257,6 +257,30 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.linux_console_name = "ttyO",
 };
 
+#define JZ_UART_SHIFT	2
+
+static void jz_serial_reg_write(unsigned int val, unsigned long base,
+	unsigned char reg_offset)
+{
+	switch (reg_offset) {
+	case (fcr << JZ_UART_SHIFT):
+		val |= 0x10; /* Enable uart module */
+		break;
+	case (ier << JZ_UART_SHIFT):
+		val |= (val & 0x4) << 2;
+		break;
+	default:
+		break;
+	}
+
+	writeb(val & 0xff, (void *)(base + reg_offset));
+}
+
+static __maybe_unused struct ns16550_drvdata jz_drvdata = {
+	.init_port = ns16550_serial_init_port,
+	.reg_write = jz_serial_reg_write,
+};
+
 /**
  * @brief Probe entry point -called on the first match for device
  *
@@ -351,6 +375,12 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
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
