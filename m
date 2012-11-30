Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeNZ6-00022s-JZ
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 10:11:26 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Fri, 30 Nov 2012 11:11:12 +0100
Message-Id: <1354270272-6626-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] omap: gpmc: mark hex debug values as such
To: barebox@lists.infradead.org

Also use %p for pointers.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-omap/gpmc.c |   10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
index ff8b58b..73d8c44 100644
--- a/arch/arm/mach-omap/gpmc.c
+++ b/arch/arm/mach-omap/gpmc.c
@@ -50,7 +50,7 @@ void gpmc_generic_init(unsigned int cfg)
 	unsigned int reg = GPMC_REG(CONFIG7_0);
 	char x = 0;
 
-	debug("gpmccfg=%x\n", cfg);
+	debug("gpmccfg=0x%x\n", cfg);
 	/* Generic Configurations */
 	/* reset gpmc */
 	start = get_time_ns();
@@ -73,7 +73,7 @@ void gpmc_generic_init(unsigned int cfg)
 	 * But NEVER run me in XIP mode! I will Die!
 	 */
 	while (x < GPMC_NUM_CS) {
-		debug("gpmccs=%d Reg:%x <-0x0\n", x, reg);
+		debug("gpmccs=%d Reg:0x%x <-0x0\n", x, reg);
 		writel(0x0, reg);
 		reg += GPMC_CONFIG_CS_SIZE;
 		x++;
@@ -95,7 +95,7 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 {
 	unsigned int reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
 	unsigned char x = 0;
-	debug("gpmccs=%x cfg=%x\n", cs, (unsigned int)config);
+	debug("gpmccs=0x%x cfg=0x%p\n", cs, config);
 
 	/* Disable the CS before reconfiguring */
 	writel(0x0, GPMC_REG(CONFIG7_0) + (cs * GPMC_CONFIG_CS_SIZE));
@@ -103,14 +103,14 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
 
 	/* Write the CFG1-6 regs */
 	while (x < 6) {
-		debug("gpmccfg=%d Reg:%x <-0x%x\n",
+		debug("gpmccfg%d Reg:0x%x <-0x%08x\n",
 				x, reg, config->cfg[x]);
 		writel(config->cfg[x], reg);
 		reg += GPMC_CONFIG_REG_OFF;
 		x++;
 	}
 	/* reg now points to CFG7 */
-	debug("gpmccfg=%d Reg:%x <-0x%x\n",
+	debug("gpmccfg%d Reg:0x%x <-0x%08x\n",
 			x, reg, (0x1 << 6) |		/* CS enable */
 		     ((config->size & 0xF) << 8) |	/* Size */
 		     ((config->base >> 24) & 0x3F));
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
