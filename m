Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V4Sx8-0000rd-Oo
 for barebox@lists.infradead.org; Wed, 31 Jul 2013 09:44:19 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 31 Jul 2013 10:43:15 +0100
Message-Id: <1375263795-5348-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1375263795-5348-1-git-send-email-renaud.barbier@ge.com>
References: <1375263795-5348-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] P2020RDB: map boot flash.
To: barebox@lists.infradead.org

The chip select 0 (boot flash) registers are updated by the board
specific code as it is not done by the cpu early initialisation
any more.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/config.h   |    4 ----
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |    4 ++++
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/config.h b/arch/ppc/boards/freescale-p2020rdb/config.h
index 3b2bb5e..c6d3216 100644
--- a/arch/ppc/boards/freescale-p2020rdb/config.h
+++ b/arch/ppc/boards/freescale-p2020rdb/config.h
@@ -87,8 +87,4 @@ extern unsigned long get_board_sys_clk(unsigned long dummy);
 /* Leave 256 bytes for global data */
 #define CFG_INIT_SP_OFFSET	(0x00004000 - 256)
 
-#define CFG_BR0_PRELIM	(BR_PHYS_ADDR(CFG_FLASH_BASE_PHYS) |	\
-			 BR_PS_16 | BR_V)	/* NOR Base Address */
-#define CFG_OR0_PRELIM  0xff000ff7		/* NOR Options      */
-
 #endif	/* __CONFIG_H */
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 6426bd3..537565d 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -235,6 +235,10 @@ static int board_init_r(void)
 
 	checkboard();
 
+	/* Map the whole boot flash */
+	fsl_set_lbc_br(0, BR_PHYS_ADDR(CFG_FLASH_BASE_PHYS) | BR_PS_16 | BR_V);
+	fsl_set_lbc_or(0, 0xff000ff7);
+
 	/* Flush d-cache and invalidate i-cache of any FLASH data */
 	flush_dcache();
 	invalidate_icache();
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
