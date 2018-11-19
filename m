Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfBL-0004Wm-He
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:44 +0100
Message-Id: <20181119084454.17599-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] ARM: samsung: remove unused function
To: Barebox List <barebox@lists.infradead.org>

s3c24_get_uclk() is unused, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-samsung/clocks-s3c24xx.c | 9 ---------
 1 file changed, 9 deletions(-)

diff --git a/arch/arm/mach-samsung/clocks-s3c24xx.c b/arch/arm/mach-samsung/clocks-s3c24xx.c
index 13e68678e1..a958352556 100644
--- a/arch/arm/mach-samsung/clocks-s3c24xx.c
+++ b/arch/arm/mach-samsung/clocks-s3c24xx.c
@@ -108,15 +108,6 @@ uint32_t s3c_get_pclk(void)
 	return p_clk;
 }
 
-/**
- * Calculate the UCLK frequency used by the USB host device
- * @return Current frequency in Hz
- */
-uint32_t s3c24_get_uclk(void)
-{
-	return s3c_get_upllclk();
-}
-
 /**
  * Return correct UART frequency based on the UCON register
  */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
