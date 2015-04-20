Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x231.google.com ([2a00:1450:400c:c00::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YkI30-0003BQ-Ni
 for barebox@lists.infradead.org; Mon, 20 Apr 2015 20:12:07 +0000
Received: by wgso17 with SMTP id o17so191791569wgs.1
 for <barebox@lists.infradead.org>; Mon, 20 Apr 2015 13:11:40 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Mon, 20 Apr 2015 22:11:26 +0200
Message-Id: <1429560686-11391-15-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1429560686-11391-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 14/14] ARM: Add Lenovo ix4 and related drivers to
 mvebu_defconfig
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Update mvebu_defconfig to cover recently introduced Lenovo ix4 and
its related drivers.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 arch/arm/configs/mvebu_defconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/configs/mvebu_defconfig b/arch/arm/configs/mvebu_defconfig
index 9309084cdc05..6d1b021768df 100644
--- a/arch/arm/configs/mvebu_defconfig
+++ b/arch/arm/configs/mvebu_defconfig
@@ -1,7 +1,8 @@
 CONFIG_ARCH_MVEBU=y
 CONFIG_MACH_GLOBALSCALE_MIRABOX=y
-CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3=y
+CONFIG_MACH_LENOVO_IX4_300D=y
 CONFIG_MACH_MARVELL_ARMADA_XP_GP=y
+CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3=y
 CONFIG_MACH_SOLIDRUN_CUBOX=y
 CONFIG_MACH_GLOBALSCALE_GURUPLUG=y
 CONFIG_MACH_USI_TOPKICK=y
@@ -90,6 +91,7 @@ CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_NET_ORION=y
 CONFIG_MARVELL_PHY=y
+CONFIG_DRIVER_SPI_GPIO=y
 CONFIG_DRIVER_SPI_MVEBU=y
 CONFIG_I2C=y
 CONFIG_I2C_MV64XXX=y
@@ -111,6 +113,7 @@ CONFIG_LED_TRIGGERS=y
 CONFIG_EEPROM_AT25=y
 CONFIG_KEYBOARD_GPIO=y
 CONFIG_WATCHDOG=y
+CONFIG_GPIO_74164=y
 CONFIG_GPIO_ORION=y
 CONFIG_PCI_MVEBU=y
 CONFIG_FS_CRAMFS=y
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
