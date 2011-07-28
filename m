Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVU-0007jN-VX
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:43 +0200
Message-Id: <1311839985-11285-8-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] ARM i.MX51: Add IIM support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c |   10 ++++++++++
 1 files changed, 10 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 075ed22..8b7c807 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -17,6 +17,7 @@
 
 #include <init.h>
 #include <common.h>
+#include <sizes.h>
 #include <asm/io.h>
 #include <mach/imx51-regs.h>
 
@@ -79,3 +80,12 @@ static int imx51_print_silicon_rev(void)
 	return 0;
 }
 device_initcall(imx51_print_silicon_rev);
+
+static int imx51_init(void)
+{
+	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
+			IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(imx51_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
