Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnQoL-0001aF-Q3
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 07:19:30 +0000
Date: Thu, 10 Feb 2011 08:19:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110210071927.GQ9041@pengutronix.de>
References: <20110209170724.GK22009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110209170724.GK22009@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] tx28: fix kconfig warning
To: Robert Schwebel <robert@schwebel.de>
Cc: barebox@lists.infradead.org


Hi Robert,

I would go with the following instead which moves the ARCH_HAS_FEC_IMX
to drivers/net where it's accessible for all archs which need it.

Sascha

8<------------------------------------

Without this patch (against next) I get this:

rsc@thebe:barebox$ make ARCH=arm CROSS_COMPILE=<path>/arm-v5te-linux-gnueabi- menuconfig
  HOSTCC  scripts/kconfig/lxdialog/checklist.o
  HOSTCC  scripts/kconfig/lxdialog/inputbox.o
  HOSTCC  scripts/kconfig/lxdialog/menubox.o
  HOSTCC  scripts/kconfig/lxdialog/textbox.o
  HOSTCC  scripts/kconfig/lxdialog/util.o
  HOSTCC  scripts/kconfig/lxdialog/yesno.o
  HOSTCC  scripts/kconfig/mconf.o
  HOSTLD  scripts/kconfig/mconf
scripts/kconfig/mconf Kconfig
warning: (ARCH_IMX25 && ARCH_IMX27 && ARCH_IMX35 && ARCH_IMX51 && ARCH_IMX28) selects ARCH_HAS_FEC_IMX which has unmet direct dependencies (ARCH_IMX)
warning: (ARCH_IMX25 && ARCH_IMX27 && ARCH_IMX35 && ARCH_IMX51 && ARCH_IMX28) selects ARCH_HAS_FEC_IMX which has unmet direct dependencies (ARCH_IMX)

Add the option for the FEC on MX28 as well.

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |    3 ---
 drivers/net/Kconfig       |    3 +++
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c9f55b5..5b8ac89 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -37,9 +37,6 @@ config BOARDINFO
 	default "Freescale i.MX51 PDK" if MACH_FREESCALE_MX51_PDK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 
-config ARCH_HAS_FEC_IMX
-	bool
-
 config ARCH_IMX_INTERNAL_BOOT
 	bool "support internal boot mode"
 	depends on ARCH_IMX25 || ARCH_IMX35 || ARCH_IMX51
diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
index 69f3352..6479417 100644
--- a/drivers/net/Kconfig
+++ b/drivers/net/Kconfig
@@ -13,6 +13,9 @@ config HAS_AT91_ETHER
 config HAS_NETX_ETHER
 	bool
 
+config ARCH_HAS_FEC_IMX
+	bool
+
 config MIIDEV
 	bool
 
-- 
1.7.2.3

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
