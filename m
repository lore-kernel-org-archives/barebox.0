Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.mars-solutions.de ([213.239.212.107])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZSrD-0005HP-2Y
 for barebox@lists.infradead.org; Mon, 06 May 2013 21:22:04 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.mars-solutions.de (Postfix) with ESMTP id 0FB19A0458A
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:35 +0200 (CEST)
Received: from mail.mars-solutions.de ([127.0.0.1])
 by localhost (mars-solutions.de [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qRgKxF63dQES for <barebox@lists.infradead.org>;
 Mon,  6 May 2013 23:21:34 +0200 (CEST)
Received: from ASSP.nospam (mars [213.239.212.107])
 by mail.mars-solutions.de (Postfix) with ESMTP id 37E63A0458A
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 23:21:34 +0200 (CEST)
From: Andreas Pretzsch <apr@cn-eng.de>
Date: Mon,  6 May 2013 23:21:27 +0200
Message-Id: <1367875288-29066-2-git-send-email-apr@cn-eng.de>
In-Reply-To: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
References: <1367875288-29066-1-git-send-email-apr@cn-eng.de>
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
Subject: [PATCH 1/2] ARM i.MX31: cleanup MX31_ prefix: fix leftover
 IOMUXC_BASE defines
To: barebox@lists.infradead.org

The prefix/cleanup series
	ad09b59f8bb58c27e3872b41f41beb1b9eb1aeb1
	a8c6359667704ffc3bd2249dd76f3fbbb2134b55
	4c53af062b38f15f6bc40c586e5760e640f5b8b1
missed a few unprefixed IOMUXC_BASE define users. Fix these.

Signed-off-by: Andreas Pretzsch <apr@cn-eng.de>
---
 arch/arm/mach-imx/include/mach/imx31-regs.h |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx31-regs.h b/arch/arm/mach-imx/include/mach/imx31-regs.h
index be3e4c1..599f800 100644
--- a/arch/arm/mach-imx/include/mach/imx31-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx31-regs.h
@@ -162,9 +162,9 @@
 #define MX31_PDR0_MAX_PODF(x)	(((x) & 0x7) << 3)
 #define MX31_PDR0_MCU_PODF(x)	((x) & 0x7)
 
-#define MX31_IOMUXC_GPR	(IOMUXC_BASE + 0x8)
-#define MX31_IOMUXC_SW_MUX_CTL(x)	(IOMUXC_BASE + 0xc + (x) * 4)
-#define MX31_IOMUXC_SW_PAD_CTL(x)	(IOMUXC_BASE + 0x154 + (x) * 4)
+#define MX31_IOMUXC_GPR	(MX31_IOMUXC_BASE_ADDR + 0x8)
+#define MX31_IOMUXC_SW_MUX_CTL(x)	(MX31_IOMUXC_BASE_ADDR + 0xc + (x) * 4)
+#define MX31_IOMUXC_SW_PAD_CTL(x)	(MX31_IOMUXC_BASE_ADDR + 0x154 + (x) * 4)
 
 /*
  * Signal Multiplexing (IOMUX)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
