Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp27.mail.ru ([94.100.176.180])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj54a-0007CW-Pj
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 08:55:09 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon, 25 Jun 2012 12:54:58 +0400
Message-Id: <1340614498-8596-1-git-send-email-shc_work@mail.ru>
In-Reply-To: <20120625072641.GB24458@pengutronix.de>
References: <20120625072641.GB24458@pengutronix.de>
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
Subject: [PATCH] i.MX clko: Checking for clko-line properly
To: barebox@lists.infradead.org

This patch adds a check for the correct number of CLKO-line.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/clko.c        |    6 ++++--
 arch/arm/mach-imx/speed-imx21.c |    3 ++-
 arch/arm/mach-imx/speed-imx25.c |    3 ++-
 arch/arm/mach-imx/speed-imx27.c |    3 ++-
 arch/arm/mach-imx/speed-imx35.c |    3 ++-
 arch/arm/mach-imx/speed-imx51.c |    3 ++-
 6 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/clko.c b/arch/arm/mach-imx/clko.c
index 4c5df71..aeafaa9 100644
--- a/arch/arm/mach-imx/clko.c
+++ b/arch/arm/mach-imx/clko.c
@@ -35,8 +35,10 @@ static int do_clko(int argc, char *argv[])
 
 	if (div != 0) {
 		ret = imx_clko_set_div(num, div);
-		if (ret != div)
-			printf("limited divider to %d\n", ret);
+		if (ret < 0)
+			printf("CLKO-line %i not supported.\n", num);
+		else if (ret != div)
+			printf("Divider limited to %d.\n", ret);
 	}
 
 	return 0;
diff --git a/arch/arm/mach-imx/speed-imx21.c b/arch/arm/mach-imx/speed-imx21.c
index 6b44efa..4729583 100644
--- a/arch/arm/mach-imx/speed-imx21.c
+++ b/arch/arm/mach-imx/speed-imx21.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <asm-generic/errno.h>
 #include <mach/imx-regs.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
@@ -167,7 +168,7 @@ int imx_clko_set_div(int num, int div)
 	ulong pcdr;
 
 	if (num != 1)
-		return;
+		return -ENODEV;
 
 	div--;
 	div &= 0x7;
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index b5c9822..ed14113 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -1,4 +1,5 @@
 #include <common.h>
+#include <asm-generic/errno.h>
 #include <mach/imx-regs.h>
 #include <io.h>
 #include <mach/clock.h>
@@ -116,7 +117,7 @@ int imx_clko_set_div(int num, int div)
 	unsigned long mcr = readl(IMX_CCM_BASE + 0x64);
 
 	if (num != 1)
-		return;
+		return -ENODEV;
 
 	div -= 1;
 	div &= 0x3f;
diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
index 6c66344..644fd04 100644
--- a/arch/arm/mach-imx/speed-imx27.c
+++ b/arch/arm/mach-imx/speed-imx27.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <asm-generic/errno.h>
 #include <mach/imx-regs.h>
 #include <mach/generic.h>
 #include <mach/clock.h>
@@ -194,7 +195,7 @@ int imx_clko_set_div(int num, int div)
 	ulong pcdr;
 
 	if (num != 1)
-		return;
+		return -ENODEV;
 
 	div--;
 	div &= 0x7;
diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 28cd1b1..2b707aa 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <asm-generic/errno.h>
 #include <mach/imx-regs.h>
 #include <io.h>
 #include <mach/clock.h>
@@ -208,7 +209,7 @@ int imx_clko_set_div(int num, int div)
 	unsigned long cosr = readl(IMX_CCM_BASE + CCM_COSR);
 
 	if (num != 1)
-		return;
+		return -ENODEV;
 
 	div -= 1;
 	div &= 0x3f;
diff --git a/arch/arm/mach-imx/speed-imx51.c b/arch/arm/mach-imx/speed-imx51.c
index f716346..63d4932 100644
--- a/arch/arm/mach-imx/speed-imx51.c
+++ b/arch/arm/mach-imx/speed-imx51.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <io.h>
 #include <asm-generic/div64.h>
+#include <asm-generic/errno.h>
 #include <mach/imx51-regs.h>
 #include <mach/clock-imx51_53.h>
 
@@ -251,7 +252,7 @@ int imx_clko_set_div(int num, int div)
 		ccm_writel(ccosr, MX5_CCM_CCOSR);
 		break;
 	default:
-		break;
+		return -ENODEV;
 	}
 
 	return div + 1;
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
