Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp2-g21.free.fr ([2a01:e0c:1:1599::11])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFhXj-0005e3-Dc
 for barebox@lists.infradead.org; Wed, 13 Mar 2013 09:00:16 +0000
From: Gwenhael Goavec-Merou <gwenhael.goavec-merou@armadeus.com>
Date: Wed, 13 Mar 2013 09:58:58 +0100
Message-Id: <1363165138-3085-1-git-send-email-gwenhael.goavec-merou@armadeus.com>
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
Subject: [PATCH] [ARM] imx1: add #define to configure frequency for the clk32
To: barebox <barebox@lists.infradead.org>
Cc: gwenhael <gwenhael.goavec-merou@armadeus.com>

From: gwenhael <gwenhael.goavec-merou@armadeus.com>

i.MX1 allows to use a 32kHz or a 32.768kHz quartz for the 32kHz clock source
(MC9328MXLRM p.177).
This patch adds the ability for the developer to change the default value for
the 32kHz clock source.

Signed-off-by: Gwenhael Goavec-Merou <gwenhael.goavec-merou@armadeus.com>
---
 arch/arm/mach-imx/clk-imx1.c |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/clk-imx1.c b/arch/arm/mach-imx/clk-imx1.c
index 0d04a92..b779ab2 100644
--- a/arch/arm/mach-imx/clk-imx1.c
+++ b/arch/arm/mach-imx/clk-imx1.c
@@ -26,6 +26,10 @@
 
 #include "clk.h"
 
+#ifndef MX1_CLK32_FREQ
+#define MX1_CLK32_FREQ 32000
+#endif
+
 #define CCM_CSCR	0x0
 #define CCM_MPCTL0	0x4
 #define CCM_SPCTL0	0xc
@@ -91,7 +95,7 @@ static int imx1_ccm_probe(struct device_d *dev)
 
 	regs = dev_request_mem_region(dev, 0);
 
-	mx1_clocks_init(regs, 32000);
+	mx1_clocks_init(regs, MX1_CLK32_FREQ);
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
