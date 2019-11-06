Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSFSi-0001VS-Kq
 for barebox@lists.infradead.org; Wed, 06 Nov 2019 07:10:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Nov 2019 08:10:34 +0100
Message-Id: <20191106071034.24452-7-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/7] ARM: dts: stm32mp: report psci v0.2 at least
To: barebox@lists.infradead.org
Cc: Michael Olbrich <mol@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

ARM TF-A reports compatibility with PSCI v1.1 since v1.5. Upstream
ARM TF-A support for STM32MP was introduced with v1.6.
It's thus safe to assume that the STM32MP barebox will never have to
interact with a secure monitor implementing PSCI v0.1.

Overwrite the psci device tree compatible to specify v0.2. This is the
first version that implements PSCI_VERSION, which allows the barebox
psci client driver selected in this commit to query the actual PSCI
version and fix it up into the device tree.

This fixes an issue where resetting via PSCI fails in Linux because the
upstream device tree compatible:

  reboot: Restarting system
  Reboot failed -- System halted

Reported-by: Michael Olbrich <mol@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157c.dtsi | 4 ++++
 arch/arm/mach-stm32mp/Kconfig | 1 +
 2 files changed, 5 insertions(+)

diff --git a/arch/arm/dts/stm32mp157c.dtsi b/arch/arm/dts/stm32mp157c.dtsi
index 771139c28af0..97c075a020f8 100644
--- a/arch/arm/dts/stm32mp157c.dtsi
+++ b/arch/arm/dts/stm32mp157c.dtsi
@@ -19,6 +19,10 @@
 		gpio10 = &gpiok;
 		gpio25 = &gpioz;
 	};
+
+	psci {
+		compatible = "arm,psci-0.2";
+	};
 };
 
 &bsec {
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index b30439735e17..e74029158223 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -5,6 +5,7 @@ config ARCH_NR_GPIO
 	default 416
 
 config ARCH_STM32MP157
+	select PSCI_CLIENT
 	bool
 
 config MACH_STM32MP157C_DK2
-- 
2.24.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
