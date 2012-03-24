Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp20.mail.ru ([94.100.176.173])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SBNeu-0002Nb-Eq
 for barebox@lists.infradead.org; Sat, 24 Mar 2012 09:53:17 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 24 Mar 2012 13:53:05 +0400
Message-Id: <1332582785-17242-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] ARM i.MX51 babbage: Remove clock raise from power_init.
To: barebox@lists.infradead.org

Because CPU frequency setup called after power initialization,
this call now is not necessary.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/freescale-mx51-pdk/board.c |    3 ---
 1 files changed, 0 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-pdk/board.c
index 108af93..2ca4339 100644
--- a/arch/arm/boards/freescale-mx51-pdk/board.c
+++ b/arch/arm/boards/freescale-mx51-pdk/board.c
@@ -159,9 +159,6 @@ static void babbage_power_init(void)
 		val &= ~0x1f;
 		val |= 0x1a;
 		mc13892_reg_write(mc13892, MC13892_REG_SW_2, val);
-		udelay(50);
-		/* Raise the core frequency to 800MHz */
-		writel(0x0, MX51_CCM_BASE_ADDR + MX51_CCM_CACRR);
 	} else {
 		/* Setup VCC (SW2) to 1.225 */
 		mc13892_reg_read(mc13892, MC13892_REG_SW_1, &val);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
