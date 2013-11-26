Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VlLmR-0000cf-83
 for barebox@lists.infradead.org; Tue, 26 Nov 2013 16:46:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Nov 2013 17:45:55 +0100
Message-Id: <1385484367-15366-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
References: <1385484367-15366-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/17] ARM: am33xx Phytec phyCORE: initialize debug UART
To: barebox@lists.infradead.org

Add debug UART initialization to lowlevel init and print a '>'. Helps
debugging lowlevel code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm051/lowlevel.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/pcm051/lowlevel.c
index ded108e..08f36ec 100644
--- a/arch/arm/boards/pcm051/lowlevel.c
+++ b/arch/arm/boards/pcm051/lowlevel.c
@@ -13,6 +13,7 @@
 #include <mach/am33xx-mux.h>
 #include <mach/am33xx-generic.h>
 #include <mach/wdt.h>
+#include <debug_ll.h>
 
 static const struct am33xx_cmd_control MT41J256M8HX15E_2x256M8_cmd = {
 	.slave_ratio0 = 0x40,
@@ -76,6 +77,8 @@ static int pcm051_board_init(void)
 
 	am33xx_uart0_soft_reset();
 	am33xx_enable_uart0_pin_mux();
+	omap_uart_lowlevel_init((void *)AM33XX_UART0_BASE);
+	putc_ll('>');
 
 	return 0;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
