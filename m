Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoLrz-0004az-50
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 23:28:39 +0000
Received: by mail-wg0-f53.google.com with SMTP id k14so13484099wgh.32
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 15:28:17 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  5 Dec 2013 00:28:11 +0100
Message-Id: <1386199691-12032-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH] serial: add missing depends on ARCH_ZYNQ
To: barebox@lists.infradead.org

The cadence serial driver is some ARCH_ZYNQ specific driver.
Add a depends on ARCH_ZYNQ for this driver.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/serial/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index 11fc155..d520dda 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -119,6 +119,7 @@ config DRIVER_SERIAL_OMAP4_USBBOOT
 
 config DRIVER_SERIAL_CADENCE
 	bool "Cadence UART driver"
+	depends on ARCH_ZYNQ
 	help
 	  Say Y here if you have a Cadence serial IP core.
 
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
