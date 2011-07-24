Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f43.google.com ([209.85.161.43])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qks1N-000189-Qr
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 06:18:38 +0000
Received: by fxg17 with SMTP id 17so5859933fxg.16
	for <barebox@lists.infradead.org>; Sat, 23 Jul 2011 23:18:34 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 24 Jul 2011 10:18:25 +0400
Message-Id: <1311488305-29960-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] DRIVER_SERIAL_LINUX_CONSOLE: fix misprint
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/serial/Kconfig  |    2 +-
 drivers/serial/Makefile |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index b8ae475..c2bee79 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -28,7 +28,7 @@ config DRIVER_SERIAL_NETX
 	default y
 	bool "Netx serial driver"
 
-config DRIVER_SERIAL_LINUX_COMSOLE
+config DRIVER_SERIAL_LINUX_CONSOLE
 	depends on LINUX
 	default y
 	bool "linux console driver"
diff --git a/drivers/serial/Makefile b/drivers/serial/Makefile
index 8b56d15..411b8c5 100644
--- a/drivers/serial/Makefile
+++ b/drivers/serial/Makefile
@@ -10,7 +10,7 @@ obj-$(CONFIG_DRIVER_SERIAL_IMX)			+= serial_imx.o
 obj-$(CONFIG_DRIVER_SERIAL_STM378X)		+= stm-serial.o
 obj-$(CONFIG_DRIVER_SERIAL_ATMEL)		+= atmel.o
 obj-$(CONFIG_DRIVER_SERIAL_NETX)		+= serial_netx.o
-obj-$(CONFIG_DRIVER_SERIAL_LINUX_COMSOLE)	+= linux_console.o
+obj-$(CONFIG_DRIVER_SERIAL_LINUX_CONSOLE)	+= linux_console.o
 obj-$(CONFIG_DRIVER_SERIAL_MPC5XXX)		+= serial_mpc5xxx.o
 obj-$(CONFIG_DRIVER_SERIAL_BLACKFIN)		+= serial_blackfin.o
 obj-$(CONFIG_DRIVER_SERIAL_NS16550)		+= serial_ns16550.o
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
