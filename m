Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnu-0003w6-1J
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:47:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:17 +0100
Message-Id: <20200217124623.14520-37-s.hauer@pengutronix.de>
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
Subject: [PATCH 36/42] ARM: i.MX8MQ boards: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

The i.MX8MQ board files all use get_builtin_firmware(), thus need
include/firmware.h. This is currently only indirectly included, include
it directly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    | 1 +
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 1 +
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    | 1 +
 3 files changed, 3 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index ebf6203f3a..bf3d43b9a3 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -1,6 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
 
 #include <common.h>
+#include <firmware.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index 9a48c1dded..f460901a2c 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -4,6 +4,7 @@
  */
 
 #include <common.h>
+#include <firmware.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index c1ec827184..2646f5fc3e 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -5,6 +5,7 @@
  */
 
 #include <common.h>
+#include <firmware.h>
 #include <linux/sizes.h>
 #include <mach/generic.h>
 #include <asm/barebox-arm-head.h>
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
