Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og117.obsmtp.com ([64.18.0.149])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vb7Qa-0000RW-UH
 for barebox@lists.infradead.org; Tue, 29 Oct 2013 11:25:42 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 29 Oct 2013 11:24:30 +0000
Message-Id: <1383045874-7641-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
References: <1383045874-7641-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/6] ppc: mpc85xx: define Ethernet port count
To: barebox@lists.infradead.org

Because the port count is different between the MPC8544 and
existing CPU support, the Ethernet port count is defined on
a per CPU basis.
Accordingly, the TBI PHY initialisation code is updated.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/eth-devices.c                 | 2 +-
 arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index 611a578..efebe11 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -40,7 +40,7 @@ static int fsl_phy_init(void)
 	add_generic_device("gfar-mdio", 0, NULL, MDIO_BASE_ADDR,
 			0x1000, IORESOURCE_MEM, NULL);
 
-	for (i = 1; i < 3; i++) {
+	for (i = 1; i < FSL_NUM_TSEC; i++) {
 		out_be32(base + (i * 0x1000), GFAR_TBIPA_END - i);
 		/* Use "gfar-tbiphy" devices to access internal PHY. */
 		add_generic_device("gfar-tbiphy", i, NULL,
diff --git a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
index 7cdb37f..7d606d1 100644
--- a/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
+++ b/arch/ppc/mach-mpc85xx/include/mach/config_mpc85xx.h
@@ -28,10 +28,12 @@
 #define MAX_CPUS	2
 #define FSL_NUM_LAWS	12
 #define FSL_SEC_COMPAT	2
+#define FSL_NUM_TSEC	3
 
 #elif defined(CONFIG_MPC8544)
 #define MAX_CPUS	1
 #define FSL_NUM_LAWS	10
+#define FSL_NUM_TSEC	2
 
 #else
 #error Processor type not defined for this platform
-- 
1.8.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
