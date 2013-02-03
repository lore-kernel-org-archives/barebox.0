Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U21Rg-00034N-KT
 for barebox@lists.infradead.org; Sun, 03 Feb 2013 15:25:29 +0000
Received: from mail403.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 2A2DB104EC32
 for <barebox@lists.infradead.org>; Sun,  3 Feb 2013 16:35:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun,  3 Feb 2013 16:24:11 +0100
Message-Id: <1359905053-13109-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130203152218.GF18068@game.jcrosoft.org>
 <1359905053-13109-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] at91sam926x_lowlevel_init: use pio macro
To: barebox@lists.infradead.org

this will make the code more readble

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index b62615e..75b080d 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -24,6 +24,9 @@
 #include <init.h>
 #include <sizes.h>
 
+#define __gpio_init inline
+#include "gpio.h"
+
 static void inline access_sdram(void)
 {
 	writel(0x00000000, AT91_SDRAM_BASE);
@@ -59,10 +62,10 @@ void __bare_init at91sam926x_lowlevel_init(void *pio, bool is_pio_asr,
 	__raw_writel(cfg.wdt_mr, AT91_BASE_WDT + AT91_WDT_MR);
 
 	/* configure PIOx as EBI0 D[16-31] */
-	__raw_writel(cfg.ebi_pio_pdr, pio + PIO_PDR);
-	__raw_writel(cfg.ebi_pio_ppudr, pio + PIO_PUDR);
+	at91_mux_gpio_disable(pio, cfg.ebi_pio_pdr);
+	at91_mux_set_pullup(pio, cfg.ebi_pio_ppudr, true);
 	if (is_pio_asr)
-		__raw_writel(cfg.ebi_pio_ppudr, pio + PIO_ASR);
+		at91_mux_set_A_periph(pio, cfg.ebi_pio_ppudr);
 
 	at91_sys_write(matrix_csa, cfg.ebi_csa);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
