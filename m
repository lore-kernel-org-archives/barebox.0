Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TG6BJ-0005Tx-9E
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 10:46:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Sep 2012 12:46:23 +0200
Message-Id: <1348483583-12586-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
References: <1348483583-12586-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/14] ARM i.MX25: Add function to setup chipselect
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx25.c                   |    9 +++++++++
 arch/arm/mach-imx/include/mach/imx25-regs.h |    6 +-----
 arch/arm/mach-imx/include/mach/weim.h       |    3 +++
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 3f44649..32c0412 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -16,8 +16,17 @@
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
 #include <io.h>
+#include <mach/weim.h>
 #include <sizes.h>
 
+void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional)
+{
+	writel(upper, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x0);
+	writel(lower, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x4);
+	writel(additional, MX25_WEIM_BASE_ADDR + (cs * 0x10) + 0x8);
+}
+
 /* IIM fuse definitions */
 #define IIM_BANK0_BASE	(MX25_IIM_BASE_ADDR + 0x800)
 #define IIM_BANK1_BASE	(MX25_IIM_BASE_ADDR + 0xc00)
diff --git a/arch/arm/mach-imx/include/mach/imx25-regs.h b/arch/arm/mach-imx/include/mach/imx25-regs.h
index 8e7ff85..0bf6e11 100644
--- a/arch/arm/mach-imx/include/mach/imx25-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx25-regs.h
@@ -137,11 +137,7 @@
 #define MX25_CSD1_BASE_ADDR  0x90000000
 
 #define MX25_ESDCTL_BASE_ADDR	0xb8001000
-
-#define WEIM_BASE 0xb8002000
-#define CSCR_U(x)     (WEIM_BASE + (x) * 0x10)
-#define CSCR_L(x)     (WEIM_BASE + 4 + (x) * 0x10)
-#define CSCR_A(x)     (WEIM_BASE + 8 + (x) * 0x10)
+#define MX25_WEIM_BASE_ADDR	0xb8002000
 
 /*
  * Watchdog Registers
diff --git a/arch/arm/mach-imx/include/mach/weim.h b/arch/arm/mach-imx/include/mach/weim.h
index 576f87c..8d572dc 100644
--- a/arch/arm/mach-imx/include/mach/weim.h
+++ b/arch/arm/mach-imx/include/mach/weim.h
@@ -10,6 +10,9 @@ void imx31_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 void imx35_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional);
 
+void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
+		unsigned additional);
+
 void imx1_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
 
 void imx21_setup_eimcs(size_t cs, unsigned upper, unsigned lower);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
