Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAPMb-0003ET-Vy
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 18:34:54 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 26 Feb 2013 19:34:49 +0100
Message-Id: <1361903690-30420-2-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1361903690-30420-1-git-send-email-mkl@pengutronix.de>
References: <1361903690-30420-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 1/2] driver/serial: Kconfig: explicitly state that existing
 mxs driver is for the debug uart
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/serial/Kconfig |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/serial/Kconfig b/drivers/serial/Kconfig
index a8be9cd..b23d17e 100644
--- a/drivers/serial/Kconfig
+++ b/drivers/serial/Kconfig
@@ -21,7 +21,7 @@ config DRIVER_SERIAL_IMX
 config DRIVER_SERIAL_STM378X
 	depends on ARCH_MXS
 	default y
-	bool "i.MX23/i.MX28 serial driver"
+	bool "i.MX23/i.MX28 debug UART serial driver"
 
 config DRIVER_SERIAL_NETX
 	depends on ARCH_NETX
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
