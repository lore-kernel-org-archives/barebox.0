Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VDqix-0006bu-1N
 for barebox@lists.infradead.org; Mon, 26 Aug 2013 06:56:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Aug 2013 08:55:59 +0200
Message-Id: <1377500163-28962-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
References: <1377500163-28962-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/22] ARM: beaglebone: Initialize UART for lowlevel debugging
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/beaglebone/lowlevel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/beaglebone/lowlevel.c b/arch/arm/boards/beaglebone/lowlevel.c
index 0a32d3b..c0152f3 100644
--- a/arch/arm/boards/beaglebone/lowlevel.c
+++ b/arch/arm/boards/beaglebone/lowlevel.c
@@ -1,6 +1,7 @@
 #include <init.h>
 #include <sizes.h>
 #include <io.h>
+#include <debug_ll.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
 #include <mach/am33xx-silicon.h>
@@ -93,7 +94,10 @@ static int beaglebone_board_init(void)
 
 	am335x_sdram_init(0x18B, &ddr2_cmd_ctrl, &ddr2_regs, &ddr2_data);
 
+	am33xx_uart0_soft_reset();
 	am33xx_enable_uart0_pin_mux();
+	omap_uart_lowlevel_init();
+	putc_ll('>');
 
 	return 0;
 }
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
