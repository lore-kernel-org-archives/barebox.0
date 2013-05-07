Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZkrV-0008NI-28
 for barebox@lists.infradead.org; Tue, 07 May 2013 16:35:34 +0000
Received: by mail-la0-f50.google.com with SMTP id fl20so770699lab.23
 for <barebox@lists.infradead.org>; Tue, 07 May 2013 09:35:10 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 May 2013 20:34:12 +0400
Message-Id: <1367944452-20946-5-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
References: <1367944452-20946-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 4/4] MIPS: qemu-malta_defconfig: enable OF support
To: barebox@lists.infradead.org

Also enable iomem.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig |   17 +++++++++++------
 1 file changed, 11 insertions(+), 6 deletions(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index 7dab969..18c840d 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -1,3 +1,5 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="qemu-malta"
 CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_BROKEN=y
@@ -23,22 +25,25 @@ CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
 CONFIG_CMD_TIME=y
+CONFIG_CMD_TFTP=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_IOMEM=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
 CONFIG_CMD_MD5SUM=y
 CONFIG_CMD_SHA1SUM=y
 CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_MTEST=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_ZLIB=y
-CONFIG_CMD_BOOTM_BZLIB=y
 CONFIG_CMD_BOOTM_SHOW_TYPE=y
 CONFIG_CMD_RESET=y
 CONFIG_CMD_GO=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_MTEST=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_PARTITION=y
 CONFIG_CMD_UNCOMPRESS=y
@@ -46,18 +51,18 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_NFS=y
 CONFIG_NET_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_FS_TFTP=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
+CONFIG_OFDEVICE=y
 # CONFIG_SPI is not set
+CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_MTD=y
 CONFIG_FS_CRAMFS=y
+CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
 CONFIG_FS_FAT_LFN=y
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
