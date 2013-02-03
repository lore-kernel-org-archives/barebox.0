Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo1.mail-out.ovh.net ([46.105.43.205]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U1vDC-0002dz-53
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 08:46:07 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 68183FF96CB
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 10:00:57 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 09:44:49 +0100
Message-Id: <1359881089-10578-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] atmel_lcdfb: fix warning: implicit declaration of
 function 'clk_get_rate'
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    2 +-
 drivers/video/atmel_lcdfb.c                    |    1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index 553af08..9104ac2 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -128,7 +128,7 @@ void __bare_init at91sam926x_lowlevel_init(struct at91sam926x_lowlevel_cfg *cfg)
 	/* configure PIOx as EBI0 D[16-31] */
 	at91_mux_gpio_disable(cfg->pio, cfg->ebi_pio_pdr);
 	at91_mux_set_pullup(cfg->pio, cfg->ebi_pio_ppudr, true);
-	if (cfg->is_pio_asr)
+	if (cfg->ebi_pio_is_peripha)
 		at91_mux_set_A_periph(cfg->pio, cfg->ebi_pio_ppudr);
 
 	at91_sys_write(cfg->matrix_csa, cfg->ebi_csa);
diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 85f5cf1..08888cc 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -30,6 +30,7 @@
 #include <mach/cpu.h>
 #include <errno.h>
 #include <asm/mmu.h>
+#include <linux/clk.h>
 
 #include "atmel_lcdfb.h"
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
