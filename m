Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StHQH-0003ia-RD
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 12:07:39 +0000
Received: by lbbgg6 with SMTP id gg6so8281267lbb.36
 for <barebox@lists.infradead.org>; Mon, 23 Jul 2012 05:07:32 -0700 (PDT)
Message-ID: <500D3E7D.8040006@kiwigrid.com>
Date: Mon, 23 Jul 2012 14:07:25 +0200
From: "Wjatscheslaw Stoljarski (Slawa)" <wjatscheslaw.stoljarski@kiwigrid.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------000807060503060106010704"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] i.MX53 boards: notify clocksource after init_lowlevel
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------000807060503060106010704
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



--------------000807060503060106010704
Content-Type: text/x-patch;
 name="0001-i.MX53-boards-notify-clocksource-after-init_lowlevel.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0001-i.MX53-boards-notify-clocksource-after-init_lowlevel.pa";
 filename*1="tch"

From 4d9a8e960654c02205cf4a8e47b4e86cac4b2a95 Mon Sep 17 00:00:00 2001
From: "Wjatscheslaw Stoljarski" <wjatscheslaw.stoljarski@kiwigrid.com>
Date: Mon, 23 Jul 2012 13:48:07 +0200
Subject: [PATCH] i.MX53 boards: notify clocksource after init_lowlevel

This fix a clock inaccuracy in get_time_ns (used by sleep, time, etc).

Signed-off-by: Wjatscheslaw Stoljarski <wjatscheslaw.stoljarski@kiwigrid.com>
---
 arch/arm/boards/freescale-mx53-loco/board.c |    2 ++
 arch/arm/boards/freescale-mx53-smd/board.c  |    2 ++
 arch/arm/boards/tqma53/board.c              |    2 ++
 3 files changed, 6 insertions(+)

diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-loco/board.c
index 0d71555..b8e8d24 100644
--- a/arch/arm/boards/freescale-mx53-loco/board.c
+++ b/arch/arm/boards/freescale-mx53-loco/board.c
@@ -22,6 +22,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <notifier.h>
 #include <partition.h>
 #include <sizes.h>
 
@@ -215,6 +216,7 @@ static int loco_console_init(void)
 	mxc_iomux_v3_setup_multiple_pads(loco_pads, ARRAY_SIZE(loco_pads));
 
 	imx53_init_lowlevel(1000);
+	clock_notifier_call_chain();
 
 	imx53_add_uart0();
 	return 0;
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
index 0483103..74b38bd 100644
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ b/arch/arm/boards/freescale-mx53-smd/board.c
@@ -22,6 +22,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <notifier.h>
 #include <partition.h>
 #include <sizes.h>
 
@@ -161,6 +162,7 @@ static int smd_console_init(void)
 	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
 
 	imx53_init_lowlevel(1000);
+	clock_notifier_call_chain();
 
 	imx53_add_uart0();
 	imx53_add_uart1();
diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 8c3d855..c4837cb 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -21,6 +21,7 @@
 #include <init.h>
 #include <nand.h>
 #include <net.h>
+#include <notifier.h>
 #include <partition.h>
 #include <sizes.h>
 #include <mci.h>
@@ -265,6 +266,7 @@ static int tqma53_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
 	imx53_init_lowlevel(800);
+	clock_notifier_call_chain();
 	imx53_add_uart0();
 
 	return 0;
-- 
1.7.9.5


--------------000807060503060106010704
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------000807060503060106010704--
