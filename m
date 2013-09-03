Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og112.obsmtp.com ([64.18.0.24])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGs15-0001ip-Q1
 for barebox@lists.infradead.org; Tue, 03 Sep 2013 14:55:40 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  3 Sep 2013 15:54:27 +0100
Message-Id: <1378220067-22296-5-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
References: <1378220067-22296-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/4] ppc: P2020RDB configuration update
To: barebox@lists.infradead.org

The P2020rdb defconfig has been updated to include
device tree, environment and boot command support for
booting Linux.

Also the P2020RDB board support defines a flash area to
store its environment for users to configure the boot process.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/env/bin/init |    3 +++
 arch/ppc/boards/freescale-p2020rdb/env/config   |    2 ++
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c   |    7 +++++++
 arch/ppc/configs/p2020rdb_defconfig             |   14 +++++++++++++-
 4 files changed, 25 insertions(+), 1 deletions(-)
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/bin/init
 create mode 100644 arch/ppc/boards/freescale-p2020rdb/env/config

diff --git a/arch/ppc/boards/freescale-p2020rdb/env/bin/init b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
new file mode 100644
index 0000000..6bd125c
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/env/bin/init
@@ -0,0 +1,3 @@
+#!/bin/sh
+export PATH=/env/bin
+source /env/config
diff --git a/arch/ppc/boards/freescale-p2020rdb/env/config b/arch/ppc/boards/freescale-p2020rdb/env/config
new file mode 100644
index 0000000..26b1a9a
--- /dev/null
+++ b/arch/ppc/boards/freescale-p2020rdb/env/config
@@ -0,0 +1,2 @@
+#!/bin/sh
+export bootargs="root=/dev/nfs rw ip=bootp panic=10"
diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 4d2ff22..bc36b28 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -92,6 +92,13 @@ static int devices_init(void)
 	fsl_eth_init(2, &gfar_info[0]);
 	fsl_eth_init(3, &gfar_info[1]);
 
+	/* The env0 offset 0x770000 is from the base address of the alternate
+	 * boot area where barebox boots from. Programming barebox in the
+	 * primary boot area in place of U-Boot may lead to loss of data when
+	 * saving the environment.
+	 */
+	devfs_add_partition("nor0", 0x770000, 0x10000, DEVFS_PARTITION_FIXED,
+			    "env0");
 	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
 			    "self0");
 	return 0;
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index 0f77903..8907511 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -5,10 +5,18 @@ CONFIG_LONGHELP=y
 CONFIG_GLOB=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC=n
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/ppc/boards/freescale-p2020rdb/env"
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_EDIT=y
 CONFIG_FSL_ELBC=y
 CONFIG_DRIVER_CFI=y
 CONFIG_DRIVER_CFI_AMD=y
@@ -17,7 +25,7 @@ CONFIG_DRIVER_CFI_BANK_WIDTH_1=n
 CONFIG_DRIVER_CFI_BANK_WIDTH_2=y
 CONFIG_DRIVER_CFI_BANK_WIDTH_4=n
 CONFIG_MTD=y
-CONFIG_MALLOC_SIZE=0x200000
+CONFIG_MALLOC_SIZE=0x800000
 CONFIG_BAUDRATE=115200
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_RELOCATABLE=y
@@ -32,3 +40,7 @@ CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_CMD_I2C=y
 CONFIG_CMD_MIITOOL=y
+CONFIG_ZLIB=y
+CONFIG_OFTREE=y
+CONFIG_CMD_OFTREE=y
+CONFIG_OFDEVICE=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
