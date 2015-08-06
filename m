Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZNJHa-0008HK-QU
 for barebox@lists.infradead.org; Thu, 06 Aug 2015 11:24:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  6 Aug 2015 13:23:52 +0200
Message-Id: <1438860232-26898-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1438860232-26898-1-git-send-email-s.hauer@pengutronix.de>
References: <1438860232-26898-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: boards: include gpio.h instead of mach/gpio.h
To: Barebox List <barebox@lists.infradead.org>

For getting the gpio functions include/gpio.h is the correct
header file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-pxa270/board.c | 2 +-
 arch/arm/mach-samsung/gpio-s3c24x0.c          | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-pxa270/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
index 833c4c8..1424c9c 100644
--- a/arch/arm/boards/phytec-phycore-pxa270/board.c
+++ b/arch/arm/boards/phytec-phycore-pxa270/board.c
@@ -26,7 +26,7 @@
 #include <partition.h>
 #include <linux/sizes.h>
 
-#include <plat/gpio.h>
+#include <gpio.h>
 #include <mach/mfp-pxa27x.h>
 #include <mach/pxa-regs.h>
 #include <mach/pxafb.h>
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index f62588f..58ca284 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -15,7 +15,7 @@
 #include <errno.h>
 #include <io.h>
 #include <mach/s3c-iomap.h>
-#include <mach/gpio.h>
+#include <gpio.h>
 #include <mach/s3c24xx-gpio.h>
 #include <mach/iomux.h>
 
-- 
2.4.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
