Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFSn-0001YM-NS
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:10:47 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:10:33 +0100
Message-Id: <20191106071034.24452-6-a.fatoum@pengutronix.de>
In-Reply-To: <20191106071034.24452-1-a.fatoum@pengutronix.de>
References: <20191106071034.24452-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 6/7] ARM: stm32mp: select ARM_USE_COMPRESSED_DTB for the whole
 arch
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We'll probably be using compressed DTBs for all new boards as well, thus
move the ARM_USE_COMPRESSED_DTB, so it's always selected for STM32MP.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig              | 1 +
 arch/arm/mach-stm32mp/Kconfig | 1 -
 2 files changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index f4a244ca0628..d0099113f6f4 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -202,6 +202,7 @@ config ARCH_STM32MP
 	select ARCH_HAS_RESET_CONTROLLER
 	select ARM_AMBA
 	select ARM_SMCCC
+	select ARM_USE_COMPRESSED_DTB
 
 config ARCH_VERSATILE
 	bool "ARM Versatile boards (ARM926EJ-S)"
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 6bf950b23f0f..b30439735e17 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -9,7 +9,6 @@ config ARCH_STM32MP157
 
 config MACH_STM32MP157C_DK2
 	select ARCH_STM32MP157
-	select ARM_USE_COMPRESSED_DTB
 	bool "STM32MP157C-DK2 board"
 
 endif
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
