Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og109.obsmtp.com ([64.18.0.188])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TCDQQ-0000Oo-4j
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:42:02 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 13 Sep 2012 18:41:51 +0100
Message-Id: <1347558111-1633-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
References: <1347558111-1633-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] P2020rdb: eTSEC2 support
To: barebox@lists.infradead.org

This patch defines the parameters to configure the eTSEC2 Ethernet port.
It also sets the TBI physical address of port eTSEC1 to eTSEC3 to prevent
the eTSEC2 PHY(address 0) from going into an undefined state.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   24 ++++++++++++++++++++++--
 1 files changed, 22 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 2431cb5..64170f8 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -63,9 +63,14 @@
 #define SYSCLK_50	50000000
 #define SYSCLK_100	100000000
 
-/* Ethernet. Use eTSEC3 */
+/* eTSEC2 and eTSEC 3 Ethernet port parameters */
 static struct gfar_info_struct gfar_info[] = {
 	{
+		.phyaddr = 0,
+		.tbiana = 0x1a0,
+		.tbicr = 0x9140,
+	},
+	{
 		.phyaddr = 1,
 		.tbiana = 0,
 		.tbicr = 0,
@@ -79,6 +84,9 @@ struct i2c_platform_data i2cplat = {
 
 static int devices_init(void)
 {
+	void __iomem *tsecregs;
+	int ix;
+
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
 
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR,
@@ -86,8 +94,20 @@ static int devices_init(void)
 	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR,
 			0x100, IORESOURCE_MEM, &i2cplat);
 
+	/*
+	 * Assign TBI physical address early because eTSEC2 has a PHY address
+	 * of 0. Otherwise, the PHY on eTSEC2 goes into a bad state since
+	 * the miidev driver does the first access.
+	 */
+	for (ix = 0; ix < 3; ix++) {
+		tsecregs = (void __iomem *)(GFAR_BASE_ADDR + (ix * 0x1000));
+		out_be32(tsecregs + 0x30, 0x1f);
+	}
+
+	/* eTSEC2 */
+	fsl_eth_init(2, &gfar_info[0]);
 	/* eTSEC3 */
-	fsl_eth_init(3, &gfar_info[0]);
+	fsl_eth_init(3, &gfar_info[1]);
 
 	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
 			    "self0");
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
