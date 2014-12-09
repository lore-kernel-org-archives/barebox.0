Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyQ51-0008AH-4o
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 19:04:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 20:03:28 +0100
Message-Id: <1418151816-24593-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
References: <1418151816-24593-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/13] ARM: MXS: remove unnecessary mach/imx-regs.h include
To: barebox@lists.infradead.org
Cc: Marek Vasut <marex@denx.de>

And replace the ones needed with the SoC specific header.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mxs/clocksource-imx23.c | 2 +-
 arch/arm/mach-mxs/clocksource-imx28.c | 2 +-
 arch/arm/mach-mxs/ocotp.c             | 1 -
 arch/arm/mach-mxs/soc-imx23.c         | 2 +-
 arch/arm/mach-mxs/soc-imx28.c         | 2 +-
 arch/arm/mach-mxs/usb-imx23.c         | 2 +-
 arch/arm/mach-mxs/usb-imx28.c         | 2 +-
 7 files changed, 6 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index d9b7c1a..8279ee2 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -17,7 +17,7 @@
 #include <init.h>
 #include <clock.h>
 #include <notifier.h>
-#include <mach/imx-regs.h>
+#include <mach/imx23-regs.h>
 #include <mach/clock.h>
 #include <io.h>
 
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index d26aa93..4f38af6 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -16,7 +16,7 @@
 #include <init.h>
 #include <clock.h>
 #include <notifier.h>
-#include <mach/imx-regs.h>
+#include <mach/imx28-regs.h>
 #include <mach/clock.h>
 #include <io.h>
 
diff --git a/arch/arm/mach-mxs/ocotp.c b/arch/arm/mach-mxs/ocotp.c
index c7c24e0..abdd445 100644
--- a/arch/arm/mach-mxs/ocotp.c
+++ b/arch/arm/mach-mxs/ocotp.c
@@ -27,7 +27,6 @@
 
 #include <mach/generic.h>
 #include <mach/ocotp.h>
-#include <mach/imx-regs.h>
 #include <mach/power.h>
 
 #define DRIVERNAME "ocotp"
diff --git a/arch/arm/mach-mxs/soc-imx23.c b/arch/arm/mach-mxs/soc-imx23.c
index 825ea20..b219865 100644
--- a/arch/arm/mach-mxs/soc-imx23.c
+++ b/arch/arm/mach-mxs/soc-imx23.c
@@ -16,7 +16,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx23-regs.h>
 #include <io.h>
 
 #define HW_CLKCTRL_RESET 0x120
diff --git a/arch/arm/mach-mxs/soc-imx28.c b/arch/arm/mach-mxs/soc-imx28.c
index 01bc20a..c7252f5 100644
--- a/arch/arm/mach-mxs/soc-imx28.c
+++ b/arch/arm/mach-mxs/soc-imx28.c
@@ -16,7 +16,7 @@
 
 #include <common.h>
 #include <init.h>
-#include <mach/imx-regs.h>
+#include <mach/imx28-regs.h>
 #include <io.h>
 
 #define HW_CLKCTRL_RESET 0x1e0
diff --git a/arch/arm/mach-mxs/usb-imx23.c b/arch/arm/mach-mxs/usb-imx23.c
index 8bed11d..e626396 100644
--- a/arch/arm/mach-mxs/usb-imx23.c
+++ b/arch/arm/mach-mxs/usb-imx23.c
@@ -15,7 +15,7 @@
  */
 #include <common.h>
 #include <io.h>
-#include <mach/imx-regs.h>
+#include <mach/imx23-regs.h>
 #include <mach/power.h>
 
 #define USBPHY_PWD			(IMX_USBPHY_BASE + 0x0)
diff --git a/arch/arm/mach-mxs/usb-imx28.c b/arch/arm/mach-mxs/usb-imx28.c
index 1c982a0..a87d4f6 100644
--- a/arch/arm/mach-mxs/usb-imx28.c
+++ b/arch/arm/mach-mxs/usb-imx28.c
@@ -17,7 +17,7 @@
 #include <common.h>
 #include <io.h>
 #include <errno.h>
-#include <mach/imx-regs.h>
+#include <mach/imx28-regs.h>
 
 #define POWER_CTRL			(IMX_POWER_BASE + 0x0)
 #define POWER_CTRL_CLKGATE		0x40000000
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
