Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDyl4-0003bh-NK
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 16:03:27 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Feb 2014 16:02:54 +0000
Message-Id: <1392307374-22298-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ppc: mpc85xx: fix memory size calculation
To: barebox@lists.infradead.org

Fix the chip select configuration register offset increment and summing
of bank size so that, for chip select index greater than 0, barebox can
determine the total memory size from enabled banks.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/cpu.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/cpu.c b/arch/ppc/mach-mpc85xx/cpu.c
index 17a1c4c..e5c01fc 100644
--- a/arch/ppc/mach-mpc85xx/cpu.c
+++ b/arch/ppc/mach-mpc85xx/cpu.c
@@ -68,14 +68,14 @@ phys_size_t fsl_get_effective_memsize(void)
 	sdram_size = 0;

 	for (ix = 0; ix < CFG_CHIP_SELECTS_PER_CTRL; ix++) {
-		if (in_be32(regs + DDR_OFF(CS0_CONFIG) + (ix * 8)) &
+		if (in_be32(regs + DDR_OFF(CS0_CONFIG) + (ix * 4)) &
 				SDRAM_CFG_MEM_EN) {
 			reg = in_be32(regs + DDR_OFF(CS0_BNDS) + (ix * 8));
 			/* start address */
 			san = (reg & 0x0fff00000) >>  16;
 			/* end address   */
 			ean = (reg & 0x00000fff);
-			sdram_size =  ((ean - san + 1) << 24);
+			sdram_size += ((ean - san + 1) << 24);
 		}
 	}

--
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
