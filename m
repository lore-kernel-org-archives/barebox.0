Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x232.google.com ([2607:f8b0:400e:c00::232])
 by casper.infradead.org with esmtps (Exim 4.85 #2 (Red Hat Linux))
 id 1ag2EN-00058K-Kj
 for barebox@lists.infradead.org; Wed, 16 Mar 2016 03:34:45 +0000
Received: by mail-pf0-x232.google.com with SMTP id u190so56153853pfb.3
 for <barebox@lists.infradead.org>; Tue, 15 Mar 2016 20:34:23 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Mar 2016 20:33:50 -0700
Message-Id: <1458099232-9050-15-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/16] i.MX6: PL310: Adjust settings for performance
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

According to commit f6b6f3c7b2bb7d6277801882afdced6f2b10fc17 from
git://git.freescale.com/imx/uboot-imx.git:

	Also set Prefetch offset to 15, since it improves
	memcpy performance by 35%. Don't enable Incr double
	Linefill enable since it adversely affects memcpy
	performance by about 32MB/s and reads by 90MB/s. Tested
	with 4K to 16MB sized src and dst aligned buffer.

This commit ports those chagnes from U-Boot.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx6.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 0c7338d..ba8fb89 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -223,8 +223,11 @@ static int imx6_mmu_init(void)
 	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
 	val |=  L2X0_DOUBLE_LINEFILL_EN |
 		L2X0_INSTRUCTION_PREFETCH_EN |
-		L2X0_DATA_PREFETCH_EN |
-		L2X0_INCR_DOUBLE_LINEFILL_EN;
+		L2X0_DATA_PREFETCH_EN;
+	/*
+	 * set prefetch offset to 15
+	 */
+	val |= 15;
 	/*
 	 * The L2 cache controller(PL310) version on the i.MX6D/Q is r3p1-50rel0
 	 * The L2 cache controller(PL310) version on the i.MX6DL/SOLO/SL is r3p2
@@ -236,8 +239,7 @@ static int imx6_mmu_init(void)
 	 */
 	if (cache_part == L2X0_CACHE_ID_PART_L310 &&
 	    cache_rtl < L2X0_CACHE_ID_RTL_R3P2)
-		val &= ~(L2X0_DOUBLE_LINEFILL_EN |
-			 L2X0_INCR_DOUBLE_LINEFILL_EN);
+		val &= ~L2X0_DOUBLE_LINEFILL_EN;
 
 	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
 
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
