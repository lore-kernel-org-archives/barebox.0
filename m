Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8RTT-00046o-BQ
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 09:30:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Jan 2014 10:29:59 +0100
Message-Id: <1390987800-18095-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] misc Kconfig: always ask for misc devices
To: barebox@lists.infradead.org

The "Misc devices" menu does not enable anything by itself, so make it a
regular menu rather than a menuconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/misc/Kconfig | 10 ++--------
 1 file changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/misc/Kconfig b/drivers/misc/Kconfig
index 606490b..e59c4f1 100644
--- a/drivers/misc/Kconfig
+++ b/drivers/misc/Kconfig
@@ -2,17 +2,11 @@
 # Misc strange devices
 #
 
-menuconfig MISC_DEVICES
-	bool "Misc devices"
-	help
-	  Add support for misc strange devices
-
-if MISC_DEVICES
+menu "Misc devices"
 
 config JTAG
 	tristate "JTAG Bitbang driver"
 	depends on GENERIC_GPIO
 	help
 	  Controls JTAG chains connected to I/O pins
-
-endif # MISC_DEVICES
+endmenu
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
