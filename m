Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ahuZr-000806-TA
 for barebox@lists.infradead.org; Mon, 21 Mar 2016 07:48:41 +0000
Received: from imapserver.systec-electronic.com (unknown [212.185.67.146])
 by webbox1416.server-home.net (Postfix) with ESMTPA id 2521B27A5F0
 for <barebox@lists.infradead.org>; Mon, 21 Mar 2016 08:48:06 +0100 (CET)
From: Alexander Stein <alexander.stein@systec-electronic.com>
Date: Mon, 21 Mar 2016 08:47:56 +0100
Message-Id: <1458546476-20624-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: [PATCH 1/1] ARM i.MX35: Read reset source from CCM
To: barebox@lists.infradead.org
Cc: Alexander Stein <alexander.stein@systec-electronic.com>

CCM has reset status bits with more detailed information than the
watchdog. Set reset source with higher priority.

Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
---
 arch/arm/mach-imx/clk-imx35.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-imx/clk-imx35.c b/arch/arm/mach-imx/clk-imx35.c
index 2433d73..af6c405 100644
--- a/arch/arm/mach-imx/clk-imx35.c
+++ b/arch/arm/mach-imx/clk-imx35.c
@@ -14,6 +14,7 @@
 #include <linux/clkdev.h>
 #include <linux/err.h>
 #include <mach/imx35-regs.h>
+#include <reset_source.h>
 
 #include "clk.h"
 
@@ -95,12 +96,31 @@ static int imx35_ccm_probe(struct device_d *dev)
 	struct arm_ahb_div *aad;
 	unsigned char *hsp_div;
 	void __iomem *base;
+	u32 reg;
 
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
 	base = IOMEM(iores->start);
 
+	/* Check reset source */
+	reg = readl(base + CCM_RCSR);
+
+	switch (reg & 0x0F) {
+	case 0x00:
+		reset_source_set_priority(RESET_POR, 200);
+		break;
+	case 0x02:
+		reset_source_set_priority(RESET_JTAG, 200);
+		break;
+	case 0x04:
+		reset_source_set_priority(RESET_RST, 200);
+		break;
+	case 0x08:
+		reset_source_set_priority(RESET_WDG, 200);
+		break;
+	}
+
 	writel(0xffffffff, base + CCM_CGR0);
 	writel(0xffffffff, base + CCM_CGR1);
 	writel(0xfbffffff, base + CCM_CGR2);
-- 
2.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
