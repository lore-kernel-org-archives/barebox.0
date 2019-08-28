Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2v7W-0002jI-Js
 for barebox@lists.infradead.org; Wed, 28 Aug 2019 10:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 Aug 2019 12:23:57 +0200
Message-Id: <20190828102402.18332-2-s.hauer@pengutronix.de>
In-Reply-To: <20190828102402.18332-1-s.hauer@pengutronix.de>
References: <20190828102402.18332-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: omap: am35xx_emif4: Fix bit polling
To: Barebox List <barebox@lists.infradead.org>

((x & (1 << 10)) == 0x1) can never be true as the compiler mourns about.
Fix this to actually do what the comment says: Wait till bit 10 is
cleared. Looking at the corresponding U-Boot code also suggests that
this is the right thing to do.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am35xx_emif4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am35xx_emif4.c b/arch/arm/mach-omap/am35xx_emif4.c
index 38fc0f02d2..678a338fd6 100644
--- a/arch/arm/mach-omap/am35xx_emif4.c
+++ b/arch/arm/mach-omap/am35xx_emif4.c
@@ -37,7 +37,7 @@ void am35xx_emif4_init(void)
 	writel(regval, &emif4_base->sdram_iodft_tlgc);
 
 	/* Wait till that bit clears*/
-	while ((readl(&emif4_base->sdram_iodft_tlgc) & (1 << 10)) == 0x1);
+	while (readl(&emif4_base->sdram_iodft_tlgc) & (1 << 10));
 
 	/* Re-verify the DDR PHY status*/
 	while ((readl(&emif4_base->sdram_sts) & (1 << 2)) == 0x0);
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
