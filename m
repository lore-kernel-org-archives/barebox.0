Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVV-0007jP-1M
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:42 +0200
Message-Id: <1311839985-11285-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839985-11285-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] ARM i.MX31: Add IIM support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx31.c |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx31.c b/arch/arm/mach-imx/imx31.c
index f2fea4c..bb713ca 100644
--- a/arch/arm/mach-imx/imx31.c
+++ b/arch/arm/mach-imx/imx31.c
@@ -16,6 +16,9 @@
  */
 
 #include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <mach/imx-regs.h>
 
 #include "gpio.h"
 
@@ -27,3 +30,11 @@ void *imx_gpio_base[] = {
 
 int imx_gpio_count = ARRAY_SIZE(imx_gpio_base) * 32;
 
+static int imx31_init(void)
+{
+	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+			IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(imx31_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
