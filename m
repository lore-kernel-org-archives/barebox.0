Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XuMY8-0000VD-3F
 for barebox@lists.infradead.org; Fri, 28 Nov 2014 14:29:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Nov 2014 15:28:54 +0100
Message-Id: <1417184946-16128-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/14] ARM: ep93xx: Fix typo
To: barebox@lists.infradead.org

Initialize 4th RAM bank with CONFIG_EP93XX_SDRAM_BANK3_SIZE,
not CONFIG_EP93XX_SDRAM_BANK2_SIZE.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/edb93xx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index d83980d..c314320 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -45,7 +45,7 @@ static int ep93xx_mem_init(void)
 #endif
 #if (CONFIG_EP93XX_SDRAM_NUM_BANKS == 4)
 	arm_add_mem_device("ram3", CONFIG_EP93XX_SDRAM_BANK3_BASE,
-				   CONFIG_EP93XX_SDRAM_BANK2_SIZE);
+				   CONFIG_EP93XX_SDRAM_BANK3_SIZE);
 #endif
 
 	return 0;
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
