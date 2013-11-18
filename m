Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ViMfa-0007iI-Is
 for barebox@lists.infradead.org; Mon, 18 Nov 2013 11:07:07 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Mon, 18 Nov 2013 12:06:37 +0100
Message-Id: <1384772798-3297-6-git-send-email-p.zabel@pengutronix.de>
In-Reply-To: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
References: <1384772798-3297-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH 6/6] ARM i.MX6: sabrelite: register SPI flash barebox update
 handler
To: barebox@lists.infradead.org
Cc: Philipp Zabel <p.zabel@pengutronix.de>

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index 22be6f8..e9a8a4a 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -20,6 +20,7 @@
 #include <mach/imx6-regs.h>
 #include <fec.h>
 #include <gpio.h>
+#include <mach/bbu.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
 #include <partition.h>
@@ -123,6 +124,8 @@ static int sabrelite_devices_init(void)
 	armlinux_set_bootparams((void *)0x10000100);
 	armlinux_set_architecture(3769);
 
+	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
+			BBU_HANDLER_FLAG_DEFAULT, NULL, 0, 0);
 
 	return 0;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
