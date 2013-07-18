Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og116.obsmtp.com ([64.18.0.147])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UzlKd-0006gl-6R
 for barebox@lists.infradead.org; Thu, 18 Jul 2013 10:21:08 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 18 Jul 2013 11:16:51 +0100
Message-Id: <1374142611-10384-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ppc ddr-8xxx: misplaced parenthesis
To: barebox@lists.infradead.org

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/ddr-8xxx/ctrl_regs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/ddr-8xxx/ctrl_regs.c b/arch/ppc/ddr-8xxx/ctrl_regs.c
index 3f8ecf7..1abc826 100644
--- a/arch/ppc/ddr-8xxx/ctrl_regs.c
+++ b/arch/ppc/ddr-8xxx/ctrl_regs.c
@@ -314,7 +314,7 @@ static void set_ddr_sdram_mode(struct fsl_ddr_cfg_regs_s *ddr,
 		   | ((rtt & 0x1) << 2));
 
 	/* Write recovery */
-	wr = (dimm->tWR_ps + mclk_ps - 1) / (mclk_ps - 1);
+	wr = ((dimm->tWR_ps + mclk_ps - 1) / mclk_ps) - 1;
 
 	switch (popts->burst_length) {
 	case DDR_BL4:
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
