Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SB1rJ-000660-8v
 for barebox@lists.infradead.org; Fri, 23 Mar 2012 10:36:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Mar 2012 11:36:18 +0100
Message-Id: <1332498979-13742-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
References: <1332498979-13742-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] ARM i.MX51 babbage: move lowlevel setup after power init
To: barebox@lists.infradead.org

The imx51 lowlevel setup code currently sets the full cpu
speed only for TO3. It turned out that this is not a TO
specific hack but a hack for older babbage boards. Move
the lowlevel init after babbage_power_init() so that we
can remove the hack from the generic i.MX51 lowlevel
function. As this potentially changes the UART clock we
have to flush the console beforehand and call the clock
notifier afterwards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index e515d94..108af93 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -30,6 +30,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <nand.h>
+#include <notifier.h>
 #include <spi/spi.h>
 #include <mfd/mc13892.h>
 #include <io.h>
@@ -245,6 +246,10 @@ static int f3s_devices_init(void)
 
 	babbage_power_init();
 
+	console_flush();
+	imx51_init_lowlevel();
+	clock_notifier_call_chain();
+
 	armlinux_set_bootparams((void *)0x90000100);
 	armlinux_set_architecture(MACH_TYPE_MX51_BABBAGE);
 
@@ -266,8 +271,6 @@ static int f3s_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
 
-	imx51_init_lowlevel();
-
 	writel(0, 0x73fa8228);
 	writel(0, 0x73fa822c);
 	writel(0, 0x73fa8230);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
