Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjpGO-00063K-Vf
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 17:46:15 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gjpGL-0006gd-IT
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:01 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC4)
 (envelope-from <afa@pengutronix.de>) id 1gjpGK-0007rL-Tl
 for barebox@lists.infradead.org; Wed, 16 Jan 2019 18:46:00 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 16 Jan 2019 18:45:59 +0100
Message-Id: <20190116174559.17416-12-a.fatoum@pengutronix.de>
In-Reply-To: <20190116174559.17416-1-a.fatoum@pengutronix.de>
References: <20190116174559.17416-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 11/11] ARM: at91: microchip-ksz9477-evb: add first stage MMC
 defconfig
To: barebox@lists.infradead.org

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 ...chip_ksz9477_evb_first_stage_mmc_defconfig | 22 +++++++++++++++++++
 1 file changed, 22 insertions(+)
 create mode 100644 arch/arm/configs/microchip_ksz9477_evb_first_stage_mmc_defconfig

diff --git a/arch/arm/configs/microchip_ksz9477_evb_first_stage_mmc_defconfig b/arch/arm/configs/microchip_ksz9477_evb_first_stage_mmc_defconfig
new file mode 100644
index 000000000000..b20d4094159b
--- /dev/null
+++ b/arch/arm/configs/microchip_ksz9477_evb_first_stage_mmc_defconfig
@@ -0,0 +1,22 @@
+CONFIG_ARCH_SAMA5D3=y
+CONFIG_AT91_MULTI_BOARDS=y
+CONFIG_MACH_MICROCHIP_KSZ9477_EVB=y
+CONFIG_AT91_BOOTSTRAP=y
+CONFIG_BAREBOX_MAX_PBLX_SIZE=0x10000
+CONFIG_RELOCATABLE=y
+CONFIG_PROMPT="BOOT.BIN:"
+CONFIG_SHELL_NONE=y
+# CONFIG_TIMESTAMP is not set
+CONFIG_PBL_CONSOLE=y
+CONFIG_DEFAULT_LOGLEVEL=6
+CONFIG_MCI=y
+CONFIG_MCI_STARTUP=y
+# CONFIG_MCI_WRITE is not set
+CONFIG_MCI_ATMEL=y
+CONFIG_MFD_SYSCON=y
+# CONFIG_FS_RAMFS is not set
+# CONFIG_FS_DEVFS is not set
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_LFN=y
+CONFIG_BOOTSTRAP_DEVFS=y
+CONFIG_BOOTSTRAP_DISK=y
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
