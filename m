Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4.mail.ru ([94.100.176.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SF7Km-0000Fw-T7
 for barebox@lists.infradead.org; Tue, 03 Apr 2012 17:15:58 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  3 Apr 2012 21:16:22 +0400
Message-Id: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 1/3] i.MX51: Use register names for imx_gpio_base
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/imx51.c |    8 ++++----
 1 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 40f4b1e..43cd45d 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -27,10 +27,10 @@
 #include "gpio.h"
 
 void *imx_gpio_base[] = {
-	(void *)0x73f84000,
-	(void *)0x73f88000,
-	(void *)0x73f8c000,
-	(void *)0x73f90000,
+	(void *)MX51_GPIO1_BASE_ADDR,
+	(void *)MX51_GPIO2_BASE_ADDR,
+	(void *)MX51_GPIO3_BASE_ADDR,
+	(void *)MX51_GPIO4_BASE_ADDR,
 };
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
