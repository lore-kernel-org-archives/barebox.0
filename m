Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kOIjx-0006QH-By
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 10:56:42 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOIju-0000U9-SQ
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 12:56:38 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1kOIju-0001jM-K6
 for barebox@lists.infradead.org; Fri, 02 Oct 2020 12:56:38 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Fri,  2 Oct 2020 12:56:35 +0200
Message-Id: <20201002105635.4662-3-m.felsch@pengutronix.de>
In-Reply-To: <20201002105635.4662-1-m.felsch@pengutronix.de>
References: <20201002105635.4662-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 3/3] ARCH: i.MX6: add support for OFDEVICE
To: barebox@lists.infradead.org

The imx23_defconfig, imx_v8_defconfig and imx_defconfig already
selecting this config except for the imx_v7_defconfig. The
imx_v7_defconfig selects MACH_ZII_VF610_DEV which selects ARCH_VF610
which select OFDEVICE. So it will be never selected if the
MACH_ZII_VF610_DEV board support is dropped.

Selecting the option here seems to be the better place instead of adding
it to the imx_v7_defconfig because there are possible no i.MX6 boards not
using the device tree.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index a1127e3707..a4b0f99e96 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -146,7 +146,7 @@ config ARCH_IMX6
 	select ARCH_HAS_IMX_GPT
 	select CPU_V7
 	select PINCTRL_IMX_IOMUX_V3
-	select OFTREE
+	select OFDEVICE
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
