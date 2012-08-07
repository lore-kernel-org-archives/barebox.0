Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SykoY-0005ZA-Vn
 for barebox@lists.infradead.org; Tue, 07 Aug 2012 14:31:19 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue,  7 Aug 2012 15:30:58 +0100
Message-Id: <1344349858-6068-5-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 4/4] ppc: P2020RDB Ethernet configuration
To: barebox@lists.infradead.org

Minimal support of the Ethernet interface on the P2020RDB board. Only
the eTSEC3 interface is supported.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |   14 ++++++++++++++
 arch/ppc/configs/p2020rdb_defconfig           |    6 ++++++
 2 files changed, 20 insertions(+), 0 deletions(-)

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 20897cb..4cebf79 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -35,6 +35,7 @@
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
 #include <mach/clocks.h>
+#include <mach/gianfar.h>
 #include <mach/early_udelay.h>
 
 #define VSC7385_RST_SET		0x00080000
@@ -61,10 +62,23 @@
 #define SYSCLK_50	50000000
 #define SYSCLK_100	100000000
 
+/* Ethernet. Use eTSEC3 */
+static struct gfar_info_struct gfar_info[] = {
+	{
+		.phyaddr = 1,
+		.tbiana = 0,
+		.tbicr = 0,
+	},
+};
+
+
 static int devices_init(void)
 {
 	add_cfi_flash_device(-1, CFG_FLASH_BASE, 16 << 20, 0);
 
+	/* eTSEC3 */
+	fsl_eth_init(3, &gfar_info[0]);
+
 	devfs_add_partition("nor0", 0xf80000, 0x80000, DEVFS_PARTITION_FIXED,
 			    "self0");
 	return 0;
diff --git a/arch/ppc/configs/p2020rdb_defconfig b/arch/ppc/configs/p2020rdb_defconfig
index f8a0687..d025a40 100644
--- a/arch/ppc/configs/p2020rdb_defconfig
+++ b/arch/ppc/configs/p2020rdb_defconfig
@@ -21,3 +21,9 @@ CONFIG_MALLOC_SIZE=0x200000
 CONFIG_BAUDRATE=115200
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_RELOCATABLE=y
+CONFIG_DRIVER_NET_GIANFAR=y
+CONFIG_NET=y
+CONFIG_NET_PING=y
+CONFIG_NET_TFTP=y
+CONFIG_PING=y
+CONFIG_TFTP=y
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
