Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XsrUL-00070V-0c
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 11:07:26 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1XsrTw-0000NZ-IB
 for barebox@lists.infradead.org; Mon, 24 Nov 2014 12:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 24 Nov 2014 12:06:41 +0100
Message-Id: <1416827220-3103-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
References: <1416827220-3103-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 01/20] firmware: socfpga: depend on ARCH_SOCFPGA
To: barebox@lists.infradead.org

This driver uses a lot of arch specific functionality and
fails to build on anything but SOCFPGA.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/firmware/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 58660632519e..a907eaf85457 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -10,5 +10,6 @@ config FIRMWARE_ALTERA_SERIAL
 
 config FIRMWARE_ALTERA_SOCFPGA
 	bool "Altera SoCFPGA fpga loader"
+	depends on ARCH_SOCFPGA
 
 endmenu
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
