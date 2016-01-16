Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aKa4p-000829-S4
 for barebox@lists.infradead.org; Sat, 16 Jan 2016 23:16:12 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun, 17 Jan 2016 00:15:42 +0100
Message-Id: <1452986142-1270-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH] fixup! input: gpio-keys: convert to input framework
To: barebox@lists.infradead.org
Cc: kernel@pengutronix.de

This patch adds the missing select to the input framework.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/input/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/input/Kconfig b/drivers/input/Kconfig
index 7cc98f2d5c2e..1f89ae3892dc 100644
--- a/drivers/input/Kconfig
+++ b/drivers/input/Kconfig
@@ -15,6 +15,7 @@ config KEYBOARD_GPIO
 	bool "GPIO Buttons"
 	depends on GENERIC_GPIO
 	select POLLER
+	select INPUT
 	help
 	  This driver implements support for buttons connected
 	  to GPIO pins of various CPUs (and some other chips).
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
