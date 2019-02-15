Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gucqR-0002st-10
 for barebox@lists.infradead.org; Fri, 15 Feb 2019 12:43:58 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 15 Feb 2019 13:43:50 +0100
Message-Id: <20190215124351.30374-4-o.rempel@pengutronix.de>
In-Reply-To: <20190215124351.30374-1-o.rempel@pengutronix.de>
References: <20190215124351.30374-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 3/4] efi_defconfig: enable watchdog support
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/x86/configs/efi_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index fdf092e9ba..f489770eba 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -56,6 +56,7 @@ CONFIG_CMD_MM=y
 CONFIG_CMD_DETECT=y
 CONFIG_CMD_FLASH=y
 CONFIG_CMD_POWEROFF=y
+CONFIG_CMD_WD=y
 CONFIG_CMD_2048=y
 CONFIG_CMD_BAREBOX_UPDATE=y
 CONFIG_CMD_OF_NODE=y
@@ -71,6 +72,8 @@ CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_EFI_SNP=y
 # CONFIG_SPI is not set
 CONFIG_DISK=y
+CONFIG_WATCHDOG=y
+CONFIG_WATCHDOG_EFI=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
