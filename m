Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnb-0008Kr-Te
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:04 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:09 +0100
Message-Id: <20200217124623.14520-29-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 28/42] ARM: i.MX8M: rename imx8-ccm-regs.h to imx8m-ccm-regs.h
To: Barebox List <barebox@lists.infradead.org>

i.MX8 is something different than the i.MX8M and both will not share
this header file, so rename it to imx8m-ccm-regs.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c                       | 2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c                    | 2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c                       | 2 +-
 .../mach-imx/include/mach/{imx8-ccm-regs.h => imx8m-ccm-regs.h} | 0
 4 files changed, 3 insertions(+), 3 deletions(-)
 rename arch/arm/mach-imx/include/mach/{imx8-ccm-regs.h => imx8m-ccm-regs.h} (100%)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 0f4b27a9af..ac97023631 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -5,7 +5,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8-ccm-regs.h>
+#include <mach/imx8m-ccm-regs.h>
 #include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 0abe0a6bc2..08287a135f 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -8,7 +8,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8-ccm-regs.h>
+#include <mach/imx8m-ccm-regs.h>
 #include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 0bb141fbf2..bc966589c3 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -9,7 +9,7 @@
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx8-ccm-regs.h>
+#include <mach/imx8m-ccm-regs.h>
 #include <mach/iomux-mx8mq.h>
 #include <mach/imx8-ddrc.h>
 #include <mach/xload.h>
diff --git a/arch/arm/mach-imx/include/mach/imx8-ccm-regs.h b/arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
similarity index 100%
rename from arch/arm/mach-imx/include/mach/imx8-ccm-regs.h
rename to arch/arm/mach-imx/include/mach/imx8m-ccm-regs.h
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
