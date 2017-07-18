Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXSOx-00075W-29
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 13:19:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dXSOb-0006LK-NT
 for barebox@lists.infradead.org; Tue, 18 Jul 2017 15:18:37 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 18 Jul 2017 15:18:37 +0200
Message-Id: <20170718131837.26877-4-l.stach@pengutronix.de>
In-Reply-To: <20170718131837.26877-1-l.stach@pengutronix.de>
References: <20170718131837.26877-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: rdu2: include defaultenv from board
To: barebox@lists.infradead.org

Makes it available without the need for a spacial barebox config.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx6q-rdu2/Makefile | 1 +
 arch/arm/boards/zii-imx6q-rdu2/board.c  | 3 +++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/Makefile b/arch/arm/boards/zii-imx6q-rdu2/Makefile
index 01c7a259e9a5..c6285362f2ee 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/Makefile
+++ b/arch/arm/boards/zii-imx6q-rdu2/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-rdu2
diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 85140f8b5c61..265f97e2f464 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -14,6 +14,7 @@
  */
 
 #include <common.h>
+#include <envfs.h>
 #include <gpio.h>
 #include <init.h>
 #include <mach/bbu.h>
@@ -145,6 +146,8 @@ static int rdu2_devices_init(void)
 
 	imx6_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc3", 0);
 
+	defaultenv_append_directory(defaultenv_rdu2);
+
 	return 0;
 }
 device_initcall(rdu2_devices_init);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
