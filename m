Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.15.18])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dfUE4-0001C6-Vd
 for barebox@lists.infradead.org; Wed, 09 Aug 2017 16:52:59 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed,  9 Aug 2017 18:52:16 +0200
Message-Id: <20170809165217.11865-3-linux@rempel-privat.de>
In-Reply-To: <20170809165217.11865-1-linux@rempel-privat.de>
References: <20170809165217.11865-1-linux@rempel-privat.de>
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
Subject: [PATCH v1 3/4] MIPS: tplink-mr3020_defconfig: enable more options
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 arch/mips/configs/tplink-mr3020_defconfig | 40 +++++++++++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/mips/configs/tplink-mr3020_defconfig b/arch/mips/configs/tplink-mr3020_defconfig
index 93fb10ddd..4193bd628 100644
--- a/arch/mips/configs/tplink-mr3020_defconfig
+++ b/arch/mips/configs/tplink-mr3020_defconfig
@@ -6,33 +6,67 @@ CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_TEXT_BASE=0x81000000
 CONFIG_MALLOC_TLSF=y
+CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
 CONFIG_AUTO_COMPLETE=y
+CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
+CONFIG_CMD_DMESG=y
 CONFIG_LONGHELP=y
 CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
 CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
 CONFIG_CMD_GO=y
 CONFIG_CMD_LOADB=y
 CONFIG_CMD_LOADY=y
 CONFIG_CMD_RESET=y
-CONFIG_CMD_GLOBAL=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_DEFAULTENV=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_MAGICVAR=y
+CONFIG_CMD_MAGICVAR_HELP=y
+CONFIG_CMD_SAVEENV=y
 CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_UNCOMPRESS=y
 CONFIG_CMD_LET=y
+CONFIG_CMD_MSLEEP=y
+CONFIG_CMD_READF=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_HOST=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
+CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_MEMTEST=y
 CONFIG_CMD_MM=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_GPIO=y
 CONFIG_CMD_LED=y
+CONFIG_CMD_POWEROFF=y
 CONFIG_CMD_SPI=y
 CONFIG_CMD_LED_TRIGGER=y
+CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_NET_NFS=y
+CONFIG_NET_NETCONSOLE=y
+CONFIG_NET_SNTP=y
 CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+CONFIG_OF_BAREBOX_ENV_IN_FS=y
 CONFIG_DRIVER_SERIAL_AR933X=y
+CONFIG_DRIVER_NET_AG71XX=y
+CONFIG_AT803X_PHY=y
+CONFIG_MDIO_BITBANG=y
+CONFIG_MDIO_GPIO=y
 CONFIG_DRIVER_SPI_ATH79=y
 CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
@@ -41,5 +75,7 @@ CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_LED_TRIGGERS=y
+CONFIG_FS_TFTP=y
+CONFIG_FS_NFS=y
 CONFIG_DIGEST_SHA224_GENERIC=y
 CONFIG_DIGEST_SHA256_GENERIC=y
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
