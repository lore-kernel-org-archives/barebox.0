Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PnDVn-0004e5-49
	for barebox@lists.infradead.org; Wed, 09 Feb 2011 17:07:28 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <rsc@pengutronix.de>) id 1PnDVk-0005n9-H0
	for barebox@lists.infradead.org; Wed, 09 Feb 2011 18:07:24 +0100
Received: from rsc by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <rsc@pengutronix.de>) id 1PnDVk-0000uH-C4
	for barebox@lists.infradead.org; Wed, 09 Feb 2011 18:07:24 +0100
Date: Wed, 9 Feb 2011 18:07:24 +0100
From: Robert Schwebel <robert@schwebel.de>
Message-ID: <20110209170724.GK22009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Subject: [PATCH] tx28: fix kconfig warning
To: barebox@lists.infradead.org

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
---
 arch/arm/mach-mxs/Kconfig |    3 +++
 1 files changed, 3 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-mxs/Kconfig b/arch/arm/mach-mxs/Kconfig
index f9cefaf..3a19a98 100644
--- a/arch/arm/mach-mxs/Kconfig
+++ b/arch/arm/mach-mxs/Kconfig
@@ -61,6 +61,9 @@ config MACH_TX28
 
 endchoice
 
+config ARCH_HAS_FEC_IMX
+	bool
+
 endif
 
 menu "Board specific settings       "
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
