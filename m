Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og106.obsmtp.com ([64.18.0.182])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T4CYN-0007ye-1a
 for barebox@lists.infradead.org; Wed, 22 Aug 2012 15:09:10 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 22 Aug 2012 16:08:53 +0100
Message-Id: <1345648133-31721-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
References: <1345648133-31721-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 3/3] ppc: p2020rdb i2c support
To: barebox@lists.infradead.org

Support for both i2c busses on the p2020rdb board is added and the
configuration file is updated to add the I2C driver and commands.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   20 +++++++++++++++++++-
 arch/ppc/configs/p2020rdb_defconfig           |    3 +++
 2 files changed, 22 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 734fef9..f9bc946 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -29,6 +29,7 @@
 #include <partition.h>
 #include <memory.h>
 #include <asm/cache.h>
+#include <asm/fsl_i2c.h>
 #include <asm/fsl_ddr_sdram.h>
 #include <asm/fsl_law.h>
 #include <mach/mpc85xx.h>
@@ -62,6 +63,19 @@
 #define SYSCLK_50	50000000
 #define SYSCLK_100	100000000
 
+/* I2C busses. */
+static struct fsl_i2c_plat i2c1plat = {
+	.bus_num = 0,
+	.slaveaddr =  0x7f,
+	.speed =  400000,
+};
+
+static struct fsl_i2c_plat i2c2plat = {
+	.bus_num = 1,
+	.slaveaddr =  0x7f,
+	.speed =  400000,
+};
+
 /* Ethernet. Use eTSEC3 */
 static struct gfar_info_struct gfar_info[] = {
 	{
@@ -71,11 +85,15 @@ static struct gfar_info_struct gfar_info[] = {
 	},
 };
 
-
 static int devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
 
+	add_generic_device("fsl_i2c", DEVICE_ID_DYNAMIC, NULL, I2C1_BASE_ADDR,
+			0x100, IORESOURCE_MEM, &i2c1plat);
+	add_generic_device("fsl_i2c", DEVICE_ID_DYNAMIC, NULL, I2C2_BASE_ADDR,
+			0x100, IORESOURCE_MEM, &i2c2plat);
+
 	/* eTSEC3 */
 	fsl_eth_init(3, &gfar_info[0]);
 
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index d025a40..4a1a61f 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -27,3 +27,6 @@ CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_PING=y
 CONFIG_TFTP=y
+CONFIG_I2C=y
+CONFIG_I2C_FSL=y
+CONFIG_CMD_I2C=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
