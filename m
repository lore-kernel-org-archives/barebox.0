Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TB23b-0005kH-Cv
 for barebox@lists.infradead.org; Mon, 10 Sep 2012 11:21:36 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Mon, 10 Sep 2012 12:21:24 +0100
Message-Id: <1347276084-20145-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] fsl TSEC: register map boundary
To: barebox@lists.infradead.org

The end boundary of each registers set may overlap with the start
of the next register set. Subtract 1 to the end boundary.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/mach-mpc85xx/eth-devices.c |    6 +++---
 1 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/mach-mpc85xx/eth-devices.c b/arch/ppc/mach-mpc85xx/eth-devices.c
index 02a3722..c6e8f36 100644
--- a/arch/ppc/mach-mpc85xx/eth-devices.c
+++ b/arch/ppc/mach-mpc85xx/eth-devices.c
@@ -32,15 +32,15 @@ int fsl_eth_init(int num, struct gfar_info_struct *gf)
 	res = xzalloc(3 * sizeof(struct resource));
 	/* TSEC interface registers */
 	res[0].start = GFAR_BASE_ADDR + ((num - 1) * 0x1000);
-	res[0].end = res[0].start + 0x1000;
+	res[0].end = res[0].start + 0x1000 - 1;
 	res[0].flags = IORESOURCE_MEM;
 	/* External PHY access always through eTSEC1 */
 	res[1].start = MDIO_BASE_ADDR;
-	res[1].end = res[1].start + 0x1000;
+	res[1].end = res[1].start + 0x1000 - 1;
 	res[1].flags = IORESOURCE_MEM;
 	/* Access to TBI/RTBI interface. */
 	res[2].start = MDIO_BASE_ADDR + ((num - 1) * 0x1000);
-	res[2].end = res[2].start + 0x1000;
+	res[2].end = res[2].start + 0x1000 - 1;
 	res[2].flags = IORESOURCE_MEM;
 
 	add_generic_device_res("gfar", DEVICE_ID_DYNAMIC, res, 3, gf);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
