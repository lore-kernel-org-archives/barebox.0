Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WNPxZ-00058z-LW
 for barebox@lists.infradead.org; Tue, 11 Mar 2014 16:55:22 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 11 Mar 2014 16:54:18 +0000
Message-Id: <1394556858-27282-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH] ppc: P2020RDB: add persistent configuration support
To: barebox@lists.infradead.org

Add an environment partition and support commands to have persistent
boot configuration for Linux.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/env/bin/init |  2 ++
 arch/ppc/boards/freescale-p2020rdb/env/config   |  2 ++
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |  9 +++++----
 arch/ppc/configs/p2020rdb_defconfig             | 21 ++++++++++++++++++++-
 4 files changed, 29 insertions(+), 5 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config

diff --git a/arch/ppc/boards/freescale-p2020rdb/env/bin/init b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
new file mode 100644
index 0000000..4d7b03e
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
@@ -0,0 +1,2 @@
+#!/bin/sh
+source /env/config
\ No newline at end of file
diff --git a/arch/ppc/boards/freescale-p2020rdb/env/config b/arch/ppc/boards/freescale-p2020rdb/env/config
new file mode 100644
index 0000000..23e0ba2
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/env/config
@@ -0,0 +1,2 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp"
\ No newline at end of file
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 4d2ff22..229ae41 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -83,7 +83,10 @@ struct i2c_platform_data i2cplat = {
 static int devices_init(void)
 {
 	add_cfi_flash_device(DEVICE_ID_DYNAMIC, CFG_FLASH_BASE, 16 << 20, 0);
-
+	devfs_add_partition("nor0", 0xf60000, 0x8000, DEVFS_PARTITION_FIXED,
+			"env0");
+	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
+			"self0");
 	add_generic_device("i2c-fsl", 0, NULL, I2C1_BASE_ADDR,
 			0x100, IORESOURCE_MEM, &i2cplat);
 	add_generic_device("i2c-fsl", 1, NULL, I2C2_BASE_ADDR,
@@ -92,8 +95,6 @@ static int devices_init(void)
 	fsl_eth_init(2, &gfar_info[0]);
 	fsl_eth_init(3, &gfar_info[1]);
 
-	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
-			    "self0");
 	return 0;
 }
 
@@ -106,7 +107,7 @@ static struct NS16550_plat serial_plat = {
 
 static int p2020_console_init(void)
 {
-	barebox_set_model("Freescale P2020 RDB");
+	barebox_set_model("Freescale P2020RDB");
 	barebox_set_hostname("p2020rdb");
 
 	serial_plat.clock = fsl_get_bus_freq(0);
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index 868c060..c34e48d 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -6,10 +6,25 @@ CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_BOOTM_ZLIB=y
+CONFIG_CMD_BOOTM_BZLIB=y
+CONFIG_ZLIB=y
+CONFIG_BZLIB=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_EXPORT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p2020rdb/env/"
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_READLINK=y
 CONFIG_FSL_ELBC=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_AMD=y
 CONFIG_DRIVER_CFI_INTEL=n
@@ -17,7 +32,7 @@ CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
 CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
 CONFIG_MTD=y
-CONFIG_MALLOC_SIZE=0x200000
+CONFIG_MALLOC_SIZE=0x2800000
 CONFIG_BAUDRATE=115200
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_RELOCATABLE=y
@@ -34,3 +49,7 @@ CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
 CONFIG_CMD_MEMTEST=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_VERSION=n
+CONFIG_OFTREE=y
+CONFIG_CMD_OFTREE_PROBE=y
+CONFIG_CMD_OFTREE=y
\ No newline at end of file
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
