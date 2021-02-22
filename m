Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay8-d.mail.gandi.net ([217.70.183.201])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lE5IS-0005Lb-5B
 for barebox@lists.infradead.org; Mon, 22 Feb 2021 07:06:25 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Feb 2021 08:06:03 +0100
Message-Id: <20210222070605.589180-8-ahmad@a3f.at>
In-Reply-To: <20210222070605.589180-1-ahmad@a3f.at>
References: <20210222070605.589180-1-ahmad@a3f.at>
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
Subject: [PATCH 7/8] ARM: vexpress: config: update for VirtIO support
To: barebox@lists.infradead.org
Cc: rcz@pengutronix.de

We have now support for VirtIO block, console and HWRNG. Check the boxes
to get them enabled and usable. While at it, add some more useful options:

  - CONFIG_CMD_POWEROFF: So Qemu can be exited from the barebox shell
  - CONFIG_CMD_FILETYPE: For debugging

CONFIG_OF_OVERLAY=y is now selected on machine level, so it's dropped
from the file.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/configs/vexpress_defconfig | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/configs/vexpress_defconfig b/arch/arm/configs/vexpress_defconfig
index 760e39b44070..d58ca7ebd0ec 100644
--- a/arch/arm/configs/vexpress_defconfig
+++ b/arch/arm/configs/vexpress_defconfig
@@ -1,6 +1,6 @@
 CONFIG_ARCH_VEXPRESS=y
-CONFIG_MACH_VIRT=y
 CONFIG_MACH_VEXPRESS=y
+CONFIG_MACH_VIRT=y
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_MALLOC_SIZE=0x0
@@ -14,6 +14,9 @@ CONFIG_MENU=y
 CONFIG_BOOTM_SHOW_TYPE=y
 CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
+CONFIG_CONSOLE_ACTIVATE_ALL=y
+CONFIG_CONSOLE_ALLOW_COLOR=y
+CONFIG_PARTITION_DISK_EFI=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
@@ -28,6 +31,7 @@ CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
 CONFIG_CMD_PRINTENV=y
 CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_FILETYPE=y
 CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_SLEEP=y
 CONFIG_CMD_DHCP=y
@@ -45,21 +49,28 @@ CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_CLK=y
 CONFIG_CMD_DETECT=y
+CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_OFTREE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
-CONFIG_OF_OVERLAY=y
 CONFIG_SERIAL_AMBA_PL011=y
+CONFIG_VIRTIO_CONSOLE=y
 CONFIG_DRIVER_NET_SMC91111=y
 # CONFIG_SPI is not set
 CONFIG_MTD=y
 CONFIG_MTD_CONCAT=y
 CONFIG_DRIVER_CFI=y
+CONFIG_VIRTIO_BLK=y
 CONFIG_MCI=y
 CONFIG_MCI_MMCI=y
+CONFIG_HWRNG=y
+CONFIG_HW_RANDOM_VIRTIO=y
 # CONFIG_PINCTRL is not set
+CONFIG_VIRTIO_MMIO=y
+CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
+CONFIG_FS_FAT=y
 CONFIG_DIGEST_SHA1_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
