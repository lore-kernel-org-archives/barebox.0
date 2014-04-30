Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfZv3-000477-H1
 for barebox@lists.infradead.org; Wed, 30 Apr 2014 19:11:50 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2D323BF095
 for <barebox@lists.infradead.org>; Wed, 30 Apr 2014 21:11:12 +0200 (CEST)
From: Christian Hemp <c.hemp@phytec.de>
Date: Wed, 30 Apr 2014 21:11:09 +0200
Message-Id: <1398885069-4078-1-git-send-email-c.hemp@phytec.de>
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
Subject: [PATCH] imx:mmdc:Move imx6-reg include to imx6-mmdc header
To: barebox@lists.infradead.org

Move the imx6-reg.h include to the imx6-mmdc header.

Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/mach-imx/imx6-mmdc.c              |    1 -
 arch/arm/mach-imx/include/mach/imx6-mmdc.h |    1 +
 2 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/imx6-mmdc.c b/arch/arm/mach-imx/imx6-mmdc.c
index 9686bee..0e706ce 100644
--- a/arch/arm/mach-imx/imx6-mmdc.c
+++ b/arch/arm/mach-imx/imx6-mmdc.c
@@ -17,7 +17,6 @@
  */
 #include <common.h>
 #include <io.h>
-#include <mach/imx6-regs.h>
 #include <mach/imx6-mmdc.h>
 
 int mmdc_do_write_level_calibration(void)
diff --git a/arch/arm/mach-imx/include/mach/imx6-mmdc.h b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
index 0017174..d07950d 100644
--- a/arch/arm/mach-imx/include/mach/imx6-mmdc.h
+++ b/arch/arm/mach-imx/include/mach/imx6-mmdc.h
@@ -1,6 +1,7 @@
 #ifndef __MACH_MMDC_H
 #define __MACH_MMDC_H
 
+#include <mach/imx6-regs.h>
 
 #define P0_IPS (void __iomem *)MX6_MMDC_P0_BASE_ADDR
 #define P1_IPS (void __iomem *)MX6_MMDC_P1_BASE_ADDR
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
