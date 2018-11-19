Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003iT-27
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:45 +0100
Message-Id: <20181119084454.17599-4-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 03/12] ARM: samsung: make locally used function static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-samsung/clocks-s3c24xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-samsung/clocks-s3c24xx.c b/arch/arm/mach-samsung/clocks-s3c24xx.c
index a958352556..34b38f345c 100644
--- a/arch/arm/mach-samsung/clocks-s3c24xx.c
+++ b/arch/arm/mach-samsung/clocks-s3c24xx.c
@@ -128,7 +128,7 @@ unsigned s3c_get_uart_clk(unsigned src)
 /**
  * Show the user the current clock settings
  */
-int s3c24xx_dump_clocks(void)
+static int s3c24xx_dump_clocks(void)
 {
 	printf("refclk:  %7d kHz\n", S3C24XX_CLOCK_REFERENCE / 1000);
 	printf("mpll:    %7d kHz\n", s3c_get_mpllclk() / 1000);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
