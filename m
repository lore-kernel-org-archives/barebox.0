Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj7-0005rU-76
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:07 +0200
Message-Id: <1287492930-15716-20-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 19/42] imx_dump_clocks: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/clock.h |    2 ++
 arch/arm/mach-imx/speed-imx25.c        |    3 +--
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/clock.h b/arch/arm/mach-imx/include/mach/clock.h
index bbe7a60..5b590a2 100644
--- a/arch/arm/mach-imx/include/mach/clock.h
+++ b/arch/arm/mach-imx/include/mach/clock.h
@@ -33,4 +33,6 @@ ulong imx_get_mmcclk(void);
 int imx_clko_set_div(int div);
 void imx_clko_set_src(int src);
 
+void imx_dump_clocks(void);
+
 #endif /* __ASM_ARCH_CLOCK_H */
diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index e8feb6b..cb28e9f 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -87,7 +87,7 @@ unsigned long imx_get_mmcclk(void)
 	return imx_get_perclk(3);
 }
 
-int imx_dump_clocks(void)
+void imx_dump_clocks(void)
 {
 	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
 	printf("upll:    %10d Hz\n", imx_get_upllclk());
@@ -99,7 +99,6 @@ int imx_dump_clocks(void)
 	printf("lcd:     %10d Hz\n", imx_get_perclk(7));
 	printf("i2c:     %10d Hz\n", imx_get_perclk(6));
 	printf("sdhc1:   %10d Hz\n", imx_get_perclk(3));
-	return 0;
 }
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
