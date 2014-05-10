Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x236.google.com ([2a00:1450:400c:c05::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjFyT-0005D7-2u
 for barebox@lists.infradead.org; Sat, 10 May 2014 22:42:34 +0000
Received: by mail-wi0-f182.google.com with SMTP id r20so2869464wiv.15
 for <barebox@lists.infradead.org>; Sat, 10 May 2014 15:42:09 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Sun, 11 May 2014 00:42:04 +0200
Message-Id: <1399761724-4109-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] openrisc: move ethoc registration to device_initcall
To: barebox@lists.infradead.org

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 arch/openrisc/boards/generic/generic.c |   18 ++++++++++++------
 1 files changed, 12 insertions(+), 6 deletions(-)

diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index 9f68007..5c1698d 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -9,6 +9,18 @@ static struct NS16550_plat serial_plat = {
 	.shift = 0,
 };
 
+static int openrisc_devices_init(void)
+{
+#ifdef CONFIG_DRIVER_NET_ETHOC
+	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
+			   OPENRISC_SOPC_ETHOC_BASE, 0x1000,
+			   IORESOURCE_MEM, NULL);
+#endif
+	return 0;
+}
+
+device_initcall(openrisc_devices_init);
+
 static int openrisc_console_init(void)
 {
 	barebox_set_model("OpenRISC or1k");
@@ -18,12 +30,6 @@ static int openrisc_console_init(void)
 	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024,
 			   IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
 
-#ifdef CONFIG_DRIVER_NET_ETHOC
-	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
-			   OPENRISC_SOPC_ETHOC_BASE, 0x1000,
-			   IORESOURCE_MEM, NULL);
-#endif
-
 	return 0;
 }
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
