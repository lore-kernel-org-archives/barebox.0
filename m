Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from arroyo.ext.ti.com ([192.94.94.40])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NyiHO-0002UC-6z
	for barebox@lists.infradead.org; Mon, 05 Apr 2010 09:07:35 +0000
Received: from dbdp31.itg.ti.com ([172.24.170.98])
	by arroyo.ext.ti.com (8.13.7/8.13.7) with ESMTP id o3597SoH015994
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO)
	for <barebox@lists.infradead.org>; Mon, 5 Apr 2010 04:07:31 -0500
From: Anand Gadiyar <gadiyar@ti.com>
Date: Mon,  5 Apr 2010 14:37:24 +0530
Message-Id: <1270458446-25073-1-git-send-email-gadiyar@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] omap3: 3430sdp: add choice of UARTs for console
To: barebox@lists.infradead.org
Cc: Anand Gadiyar <gadiyar@ti.com>

The OMAP3 SDPs have both UART1 and UART3 available.
Historically, UART1 has been used for the console.

Add a config option to select between these UARTs
(along the lines of what has been done for OMAP3 EVM)

Signed-off-by: Anand Gadiyar <gadiyar@ti.com>
---
 board/omap/Kconfig         |   16 ++++++++++++++++
 board/omap/board-sdp343x.c |    4 ++++
 2 files changed, 20 insertions(+)

Index: barebox/board/omap/Kconfig
===================================================================
--- barebox.orig/board/omap/Kconfig
+++ barebox/board/omap/Kconfig
@@ -61,6 +61,22 @@ config MACH_OMAP3EVM
 
 endchoice
 
+if MACH_OMAP343xSDP
+	choice
+	prompt "Select UART"
+
+	config OMAP343xSDP_UART1
+		bool "Use UART1"
+		help
+		  Say Y here if you would like to use UART1 as console.
+
+	config OMAP343xSDP_UART3
+		bool "Use UART3"
+		help
+		  Say Y here if you would like to use UART1 as console.
+	endchoice
+endif
+
 if MACH_OMAP3EVM
 	choice
 	prompt "Select UART"
Index: barebox/board/omap/board-sdp343x.c
===================================================================
--- barebox.orig/board/omap/board-sdp343x.c
+++ barebox/board/omap/board-sdp343x.c
@@ -611,7 +611,11 @@ static struct NS16550_plat serial_plat =
 
 static struct device_d sdp3430_serial_device = {
 	.name = "serial_ns16550",
+#if defined(CONFIG_OMAP343xSDP_UART1)
+	.map_base = OMAP_UART1_BASE,
+#elif defined(CONFIG_OMAP343xSDP_UART3)
 	.map_base = OMAP_UART3_BASE,
+#endif
 	.size = 1024,
 	.platform_data = (void *)&serial_plat,
 };

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
