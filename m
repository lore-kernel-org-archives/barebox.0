Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pb9nl-00026H-Eh
	for barebox@lists.infradead.org; Fri, 07 Jan 2011 10:44:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  7 Jan 2011 11:43:41 +0100
Message-Id: <1294397044-5008-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
References: <1294397044-5008-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/24] i.MX: fix printf compiler warnings
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/speed-imx27.c |   20 ++++++++++----------
 1 files changed, 10 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx27.c b/arch/arm/mach-imx/speed-imx27.c
index 0a92d29..aba5097 100644
--- a/arch/arm/mach-imx/speed-imx27.c
+++ b/arch/arm/mach-imx/speed-imx27.c
@@ -172,16 +172,16 @@ void imx_dump_clocks(void)
 	       (cid >> 28) & 0xf, (cid >> 16) & 0xfff,
 	       (cid >> 12) & 0xf, (cid >>  0) & 0xfff);
 
-	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
-	printf("spll:    %10d Hz\n", imx_get_spllclk());
-	printf("arm:     %10d Hz\n", imx_get_armclk());
-	printf("perclk1: %10d Hz\n", imx_get_perclk1());
-	printf("perclk2: %10d Hz\n", imx_get_perclk2());
-	printf("perclk3: %10d Hz\n", imx_get_perclk3());
-	printf("perclk4: %10d Hz\n", imx_get_perclk4());
-	printf("clkin26: %10d Hz\n", clk_in_26m());
-	printf("ahb:     %10d Hz\n", imx_get_ahbclk());
-	printf("ipg:     %10d Hz\n", imx_get_ipgclk());
+	printf("mpll:    %10ld Hz\n", imx_get_mpllclk());
+	printf("spll:    %10ld Hz\n", imx_get_spllclk());
+	printf("arm:     %10ld Hz\n", imx_get_armclk());
+	printf("perclk1: %10ld Hz\n", imx_get_perclk1());
+	printf("perclk2: %10ld Hz\n", imx_get_perclk2());
+	printf("perclk3: %10ld Hz\n", imx_get_perclk3());
+	printf("perclk4: %10ld Hz\n", imx_get_perclk4());
+	printf("clkin26: %10ld Hz\n", clk_in_26m());
+	printf("ahb:     %10ld Hz\n", imx_get_ahbclk());
+	printf("ipg:     %10ld Hz\n", imx_get_ipgclk());
 }
 
 /*
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
