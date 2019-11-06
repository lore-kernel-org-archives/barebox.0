Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFTy-000268-Qk
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:12:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:11:54 +0100
Message-Id: <20191106071155.26389-9-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071155.26389-1-a.fatoum@pengutronix.de>
References: <20191106071155.26389-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/10] ARM: stm32mp: enable STPMIC1 MFD and cell drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, mgr@pengutronix.de

The STPMIC1 is the ST Microelectronics PMIC designed for use with
STM32MP. Enable it and its cell drivers by default in the defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 292d7751e112..f69f9f966a2d 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -97,16 +97,19 @@ CONFIG_I2C_STM32=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_STM32_SDMMC2=y
+CONFIG_MFD_STPMIC1=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_POLLER=y
 CONFIG_STM32_IWDG_WATCHDOG=y
+CONFIG_STPMIC1_WATCHDOG=y
 CONFIG_NVMEM=y
 CONFIG_STM32_BSEC=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_STPMIC1=y
 CONFIG_RESET_STM32=y
 CONFIG_FS_EXT4=y
 CONFIG_FS_TFTP=y
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
