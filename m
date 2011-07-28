Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLVU-0007jO-Up
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:59:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:59:41 +0200
Message-Id: <1311839985-11285-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/9] ARM i.MX35: Add IIM support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx35.c |   11 +++++++++++
 1 files changed, 11 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 74d63eb..40718e5 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -16,6 +16,8 @@
  */
 
 #include <common.h>
+#include <sizes.h>
+#include <init.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
@@ -39,3 +41,12 @@ int imx_silicon_revision()
 
 	return (reg & 0xFF);
 }
+
+static int imx35_init(void)
+{
+	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
+			IORESOURCE_MEM, NULL);
+
+	return 0;
+}
+coredevice_initcall(imx35_init);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
