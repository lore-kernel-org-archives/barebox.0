Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc7TO-0004zP-I8
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 13:44:43 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  9 Nov 2020 14:44:30 +0100
Message-Id: <20201109134430.21156-9-r.czerwinski@pengutronix.de>
In-Reply-To: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
References: <20201109134430.21156-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 8/8] ARM: vexpress: enable VIRT board, MMU and cmds
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Enable the new qemu virt board, the MMU, ofdiff and mmuinfo.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/configs/vexpress_defconfig | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index caa9f512d6..b8dc2686da 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -1,4 +1,6 @@
 CONFIG_ARCH_VEXPRESS=y
+CONFIG_MACH_VEXPRESS=y
+CONFIG_MACH_VIRT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_SIZE=0x0
@@ -36,6 +38,7 @@ CONFIG_CMD_EDIT=y
 CONFIG_CMD_LOGIN=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_ARM_MMUINFO=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
@@ -44,6 +47,7 @@ CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_DIFF=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
@@ -52,6 +56,7 @@ CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
+CONFIG_MMU=y
 CONFIG_MTD_CONCAT=y
 CONFIG_DRIVER_CFI=y
 CONFIG_MCI=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
