Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOITm-0005ju-Kn
 for barebox@lists.infradead.org; Wed, 08 May 2019 09:03:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  8 May 2019 11:03:00 +0200
Message-Id: <20190508090307.17729-4-s.hauer@pengutronix.de>
In-Reply-To: <20190508090307.17729-1-s.hauer@pengutronix.de>
References: <20190508090307.17729-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] ddr: fsl: move fsl_ddr_set_memctl_regs prototype to
 include/
To: Barebox List <barebox@lists.infradead.org>

fsl_ddr_set_memctl_regs() is not only used internally in the DDR
controller driver, but can also be called by the boards to configure
a static setting. Move the prototype to include/ where it can be
used by board code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/ddr/fsl/fsl_ddr.h       | 2 --
 include/soc/fsl/fsl_ddr_sdram.h | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/ddr/fsl/fsl_ddr.h b/drivers/ddr/fsl/fsl_ddr.h
index ee6069d812..ab991a5bf4 100644
--- a/drivers/ddr/fsl/fsl_ddr.h
+++ b/drivers/ddr/fsl/fsl_ddr.h
@@ -227,8 +227,6 @@ unsigned int mclk_to_picos(struct fsl_ddr_controller *c, unsigned int mclk);
 unsigned int get_memory_clk_period_ps(struct fsl_ddr_controller *c);
 unsigned int picos_to_mclk(struct fsl_ddr_controller *c, unsigned int picos);
 
-void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step);
-
 void erratum_a009942_check_cpo(void);
 
 #endif
diff --git a/include/soc/fsl/fsl_ddr_sdram.h b/include/soc/fsl/fsl_ddr_sdram.h
index 07d0af96fc..80508ef5d5 100644
--- a/include/soc/fsl/fsl_ddr_sdram.h
+++ b/include/soc/fsl/fsl_ddr_sdram.h
@@ -540,6 +540,7 @@ struct fsl_ddr_info {
 };
 
 phys_size_t fsl_ddr_sdram(struct fsl_ddr_info *pinfo);
+void fsl_ddr_set_memctl_regs(struct fsl_ddr_controller *c, int step);
 
 #ifdef CONFIG_SYS_FSL_DDR_LE
 #define ddr_in32(a)	in_le32(a)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
