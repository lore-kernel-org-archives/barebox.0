Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og102.obsmtp.com ([64.18.0.143])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Su41c-0001LE-Qr
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 16:01:28 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 25 Jul 2012 17:00:59 +0100
Message-Id: <1343232061-1789-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
References: <1343232061-1789-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 1/3] ppc: GIANFAR base address definition
To: barebox@lists.infradead.org

In view of the introduction of the GIANFAR Ethernet driver,
the mdio and gianfar base address are defined.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    7 +++++++
 1 files changed, 7 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
index b802249..bf0f7f5 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h
@@ -39,6 +39,11 @@
 
 #define MPC85xx_GPIO_OFFSET	0xf000
 #define MPC85xx_L2_OFFSET	0x20000
+#ifdef CONFIG_TSECV2
+#define TSEC1_OFFSET		0xB0000
+#else
+#define TSEC1_OFFSET		0x24000
+#endif
 
 #define MPC85xx_PIC_OFFSET	0x40000
 #define MPC85xx_GUTS_OFFSET	0xe0000
@@ -129,4 +134,6 @@
 #define		MPC85xx_DEVDISR_TB1	0x00001000
 #define MPC85xx_GUTS_RSTCR_OFFSET	0xb0
 
+#define GFAR_BASE_ADDR		(CFG_IMMR + TSEC1_OFFSET)
+#define MDIO_BASE_ADDR		(CFG_IMMR + 0x24000)
 #endif /*__IMMAP_85xx__*/
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
