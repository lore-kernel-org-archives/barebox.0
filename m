Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22c.google.com ([2607:f8b0:400e:c00::22c])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ag2EM-00058I-7o
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:43 +0000
Received: by mail-pf0-x22c.google.com with SMTP id n5so56136233pfn.2
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:21 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:48 -0700
Message-Id: <1458099232-9050-13-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
References: <1458099232-9050-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 13/16] L2x0: i.MX6: Replace magic numbers with constants
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Use constants instead of magic numbers for PL301 registers bits in
imx6_mmu_init()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/include/asm/cache-l2x0.h | 8 ++++++++
 arch/arm/mach-imx/imx6.c          | 9 ++++++---
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/arch/arm/include/asm/cache-l2x0.h b/arch/arm/include/asm/cache-l2x0.h
index 963dd99..9bb245b 100644
--- a/arch/arm/include/asm/cache-l2x0.h
+++ b/arch/arm/include/asm/cache-l2x0.h
@@ -56,6 +56,14 @@
 #define L2X0_LINE_TAG			0xF30
 #define L2X0_DEBUG_CTRL			0xF40
 #define L2X0_PREFETCH_CTRL		0xF60
+#define   L2X0_DOUBLE_LINEFILL_EN			(1 << 30)
+#define   L2X0_INSTRUCTION_PREFETCH_EN			(1 << 29)
+#define   L2X0_DATA_PREFETCH_EN				(1 << 28)
+#define   L2X0_DOUBLE_LINEFILL_ON_WRAP_READ_DIS		(1 << 27)
+#define   L2X0_PREFETCH_DROP_EN				(1 << 24)
+#define   L2X0_INCR_DOUBLE_LINEFILL_EN			(1 << 23)
+#define   L2X0_ESCLUSIVE_SEQUENCE_EN			(1 << 21)
+
 #define L2X0_POWER_CTRL			0xF80
 #define   L2X0_DYNAMIC_CLK_GATING_EN	(1 << 1)
 #define   L2X0_STNDBY_MODE_EN		(1 << 0)
diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index f80334d..db1530c 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -217,8 +217,10 @@ static int imx6_mmu_init(void)
 
 	/* configure the PREFETCH register */
 	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
-	val |= 0x70800000;
-
+	val |=  L2X0_DOUBLE_LINEFILL_EN |
+		L2X0_INSTRUCTION_PREFETCH_EN |
+		L2X0_DATA_PREFETCH_EN |
+		L2X0_INCR_DOUBLE_LINEFILL_EN;
 	/*
 	 * The L2 cache controller(PL310) version on the i.MX6D/Q is r3p1-50rel0
 	 * The L2 cache controller(PL310) version on the i.MX6DL/SOLO/SL is r3p2
@@ -229,7 +231,8 @@ static int imx6_mmu_init(void)
 	 * double linefill feature. This is the default behavior.
 	 */
 	if (cpu_is_mx6q())
-		val &= ~(1 << 30 | 1 << 23);
+		val &= ~(L2X0_DOUBLE_LINEFILL_EN |
+			 L2X0_INCR_DOUBLE_LINEFILL_EN);
 
 	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
