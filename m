Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75IN-0004km-Rn
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:00:33 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 Aug 2012 15:00:17 +0100
Message-Id: <1346335217-9686-6-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 5/5] ppc: p2020rdb i2c support
To: barebox@lists.infradead.org

Support for both i2c busses on the p2020rdb board is added and the
configuration file is updated to add the I2C driver and commands.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   12 +++++++++++-
 arch/ppc/configs/p2020rdb_defconfig           |    3 +++
 2 files changed, 14 insertions(+), 1 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 2de6cc4..59a9d12 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -26,6 +26,7 @@
 #include <driver.h>
 #include <ns16550.h>
 #include <types.h>
+#include <i2c/i2c.h>
 #include <partition.h>
 #include <memory.h>
 #include <asm/cache.h>
@@ -62,6 +63,11 @@
 #define SYSCLK_50	50000000
 #define SYSCLK_100	100000000
 
+/* I2C busses. */
+struct i2c_platform_data i2cplat = {
+	.bitrate = 400000,
+};
+
 /* Ethernet. Use eTSEC3 */
 static struct gfar_info_struct gfar_info[] = {
 	{
@@ -71,11 +77,15 @@ static struct gfar_info_struct gfar_info[] = {
 	},
 };
 
-
 static int devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
 
+	add_generic_device("i2c-mpc", 0, NULL, I2C1_BASE_ADDR,
+			0x100, IORESOURCE_MEM, &i2cplat);
+	add_generic_device("i2c-mpc", 1, NULL, I2C2_BASE_ADDR,
+			0x100, IORESOURCE_MEM, &i2cplat);
+
 	/* eTSEC3 */
 	fsl_eth_init(3, &gfar_info[0]);
 
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index d025a40..7690327 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -27,3 +27,6 @@ CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
 CONFIG_PING=y
 CONFIG_TFTP=y
+CONFIG_I2C=y
+CONFIG_I2C_IMX=y
+CONFIG_CMD_I2C=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
