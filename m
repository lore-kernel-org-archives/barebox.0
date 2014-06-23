Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzBnP-0002sj-D6
 for barebox@lists.infradead.org; Mon, 23 Jun 2014 21:29:00 +0000
Received: by mail-lb0-f182.google.com with SMTP id c11so5416684lbj.27
 for <barebox@lists.infradead.org>; Mon, 23 Jun 2014 14:28:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 24 Jun 2014 01:21:13 +0400
Message-Id: <1403558473-26199-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
References: <1403558473-26199-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 7/7] MIPS: qemu-malta_defconfig: enable gpio & i2c stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/configs/qemu-malta_defconfig | 60 ++++++++++++++++++----------------
 1 file changed, 32 insertions(+), 28 deletions(-)

diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index ba5fa96..78f175d 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -4,9 +4,7 @@ CONFIG_PBL_IMAGE=y
 CONFIG_STACK_SIZE=0x7000
 CONFIG_BROKEN=y
 CONFIG_EXPERIMENTAL=y
-CONFIG_LONGHELP=y
 CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMD_GETOPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
 CONFIG_MENU=y
@@ -14,54 +12,60 @@ CONFIG_PARTITION=y
 # CONFIG_DEFAULT_ENVIRONMENT is not set
 CONFIG_POLLER=y
 CONFIG_DEBUG_INFO=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LOADENV=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
 CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
 CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_READLINE=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
 CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_PASSWD=y
-CONFIG_CMD_TIME=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_IOMEM=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CRC=y
 CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA256SUM=y
 CONFIG_CMD_FLASH=y
-CONFIG_CMD_BOOTM_SHOW_TYPE=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_I2C=y
 CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_MTEST=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
 CONFIG_NET=y
-CONFIG_CMD_DHCP=y
 CONFIG_NET_NFS=y
-CONFIG_CMD_PING=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 CONFIG_OFDEVICE=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 # CONFIG_SPI is not set
+CONFIG_I2C=y
+CONFIG_I2C_GPIO=y
 CONFIG_MTD=y
 CONFIG_DRIVER_CFI=y
 # CONFIG_DRIVER_CFI_AMD is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
 # CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
 CONFIG_CFI_BUFFER_WRITE=y
+CONFIG_GPIO_MALTA_FPGA_I2C=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_FAT=y
-- 
1.9.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
