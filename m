Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vjs2v-0008G3-I1
 for barebox@lists.infradead.org; Fri, 22 Nov 2013 14:49:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Nov 2013 15:48:57 +0100
Message-Id: <1385131741-28280-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
References: <1385131741-28280-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/17] omap: gpmc: some refactoring
To: barebox@lists.infradead.org

- make debug messages more meaningful
- calculate value once and use it to print and configure instead
  of calculating it twice

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/gpmc.c | 25 ++++++++++++++-----------
 1 file changed, 14 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index bb84b38..dae7630 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -111,7 +111,10 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 {
 	void __iomem *reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
 	unsigned char x = 0;
-	debug("gpmccs=0x%x cfg=0x%p\n", cs, config);
+	uint32_t config7;
+
+	debug("%s: cs=%d base=0x%08x size=0x%08x\n", __func__,
+			cs, config->base, config->size);
 
 	/* Disable the CS before reconfiguring */
 	writel(0x0, GPMC_REG(CONFIG7_0) + (cs * GPMC_CONFIG_CS_SIZE));
@@ -119,22 +122,22 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 
 	/* Write the CFG1-6 regs */
 	while (x < 6) {
-		debug("gpmccfg%d Reg:0x%p <-0x%08x\n",
-				x, reg, config->cfg[x]);
+		debug("gpmccfg%d Reg:0x%p <-0x%08x, old 0x%08x\n",
+				x, reg, config->cfg[x], readl(reg));
 		writel(config->cfg[x], reg);
 		reg += GPMC_CONFIG_REG_OFF;
 		x++;
 	}
-	/* reg now points to CFG7 */
-	debug("gpmccfg%d Reg:0x%p <-0x%08x\n",
-			x, reg, (0x1 << 6) |		/* CS enable */
-		     ((config->size & 0xF) << 8) |	/* Size */
-		     ((config->base >> 24) & 0x3F));
 
-	writel((0x1 << 6) |			/* CS enable */
+	config7 = (0x1 << 6) | /* CS enable */
 		     ((config->size & 0xF) << 8) |	/* Size */
-		     ((config->base >> 24) & 0x3F),	/* Address */
-		     reg);
+		     ((config->base >> 24) & 0x3F);
+
+	debug("gpmccfg%d Reg:0x%p <-0x%08x, old 0x%08x\n",
+			x, reg, config7, readl(reg));
+
+	writel(config7, reg);
+
 	mdelay(1);		/* Settling time */
 }
 EXPORT_SYMBOL(gpmc_cs_config);
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
