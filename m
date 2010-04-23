Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O5Enw-0000Qb-0V
	for barebox@lists.infradead.org; Fri, 23 Apr 2010 09:04:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Apr 2010 11:04:00 +0200
Message-Id: <1272013443-29196-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/14] i.MX: remove __REG from esd controller regs. use
	readl/writel instead
To: barebox@lists.infradead.org

So far these registers are unused in C, so we can remove the __REG without
harm.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/esdctl.h |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index 7f3c66f..d15f52b 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -1,10 +1,10 @@
 
 /* SDRAM Controller registers */
-#define ESDCTL0 __REG(IMX_ESD_BASE + 0x00) /* Enhanced SDRAM Control Register 0       */
-#define ESDCFG0 __REG(IMX_ESD_BASE + 0x04) /* Enhanced SDRAM Configuration Register 0 */
-#define ESDCTL1 __REG(IMX_ESD_BASE + 0x08) /* Enhanced SDRAM Control Register 1       */
-#define ESDCFG1 __REG(IMX_ESD_BASE + 0x0C) /* Enhanced SDRAM Configuration Register 1 */
-#define ESDMISC __REG(IMX_ESD_BASE + 0x10) /* Enhanced SDRAM Miscellanious Register   */
+#define ESDCTL0 (IMX_ESD_BASE + 0x00) /* Enhanced SDRAM Control Register 0       */
+#define ESDCFG0 (IMX_ESD_BASE + 0x04) /* Enhanced SDRAM Configuration Register 0 */
+#define ESDCTL1 (IMX_ESD_BASE + 0x08) /* Enhanced SDRAM Control Register 1       */
+#define ESDCFG1 (IMX_ESD_BASE + 0x0C) /* Enhanced SDRAM Configuration Register 1 */
+#define ESDMISC (IMX_ESD_BASE + 0x10) /* Enhanced SDRAM Miscellanious Register   */
 
 #define ESDCTL0_SDE				(1 << 31)
 #define ESDCTL0_SMODE_NORMAL			(0 << 28)
-- 
1.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
