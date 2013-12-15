Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x22a.google.com ([2a00:1450:4013:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsFLE-0008CC-2W
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 17:18:56 +0000
Received: by mail-ee0-f42.google.com with SMTP id e53so1781060eek.29
 for <barebox@lists.infradead.org>; Sun, 15 Dec 2013 09:18:34 -0800 (PST)
From: Beniamino Galvani <b.galvani@gmail.com>
Date: Sun, 15 Dec 2013 18:17:26 +0100
Message-Id: <1387127846-27477-2-git-send-email-b.galvani@gmail.com>
In-Reply-To: <1387127846-27477-1-git-send-email-b.galvani@gmail.com>
References: <1387127846-27477-1-git-send-email-b.galvani@gmail.com>
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
Subject: [PATCH 2/2] openrisc: enable OpenCores ethernet driver
To: barebox@lists.infradead.org

The OpenCores 10/100 Mbps ethernet MAC is often available on
OpenRISC-based SoCs and is supported by the OpenRISC architectural
simulator (or1ksim) as well.

The patch enables the driver on the 'generic' openrisc board.

Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>
---
 arch/openrisc/boards/generic/config.h   |    2 ++
 arch/openrisc/boards/generic/generic.c  |    7 +++++++
 arch/openrisc/configs/generic_defconfig |    6 ++++++
 3 files changed, 15 insertions(+)

diff --git a/arch/openrisc/boards/generic/config.h b/arch/openrisc/boards/generic/config.h
index 95260cd..6ebab42 100644
--- a/arch/openrisc/boards/generic/config.h
+++ b/arch/openrisc/boards/generic/config.h
@@ -11,6 +11,8 @@
 #define OPENRISC_SOPC_UART_FREQ		CONFIG_SYS_CLK_FREQ
 #define OPENRISC_SOPC_UART_BASE		0x90000000
 
+#define OPENRISC_SOPC_ETHOC_BASE	0x92000000
+
 /* We reserve 256K for barebox */
 #define BAREBOX_RESERVED_SIZE		0x40000
 
diff --git a/arch/openrisc/boards/generic/generic.c b/arch/openrisc/boards/generic/generic.c
index e366d85..290e05c 100644
--- a/arch/openrisc/boards/generic/generic.c
+++ b/arch/openrisc/boards/generic/generic.c
@@ -16,6 +16,13 @@ static int openrisc_console_init(void)
 
 	/* Register the serial port */
 	add_ns16550_device(DEVICE_ID_DYNAMIC, OPENRISC_SOPC_UART_BASE, 1024, IORESOURCE_MEM_8BIT, &serial_plat);
+
+#ifdef CONFIG_DRIVER_NET_ETHOC
+	add_generic_device("ethoc", DEVICE_ID_DYNAMIC, NULL,
+			   OPENRISC_SOPC_ETHOC_BASE, 0x1000,
+			   IORESOURCE_MEM, NULL);
+#endif
+
 	return 0;
 }
 
diff --git a/arch/openrisc/configs/generic_defconfig b/arch/openrisc/configs/generic_defconfig
index 7ae85b0..53ff671 100644
--- a/arch/openrisc/configs/generic_defconfig
+++ b/arch/openrisc/configs/generic_defconfig
@@ -18,3 +18,9 @@ CONFIG_CMD_GO=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_DRIVER_SERIAL_NS16550=y
+CONFIG_NET=y
+CONFIG_NET_DHCP=y
+CONFIG_NET_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_FS_TFTP=y
+CONFIG_DRIVER_NET_ETHOC=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
