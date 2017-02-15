Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cduSy-0003Pq-Nx
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 07:57:35 +0000
Date: Wed, 15 Feb 2017 08:57:06 +0100
From: "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>
Message-ID: <20170215075706.xgofq6glj34cfvpq@pengutronix.de>
References: <4bcf7de3-5ced-3575-9495-c1f4f20ce60c@phytec.de>
 <20170213192247.gjld5b33genwav2a@pengutronix.de>
 <a28cc10e07874a53bd28dabd35a558a8@srred1mail01.kymeta.local>
 <20170214072704.7erbpueegfqmjqus@pengutronix.de>
 <1487096017.20042.316.camel@kymetacorp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1487096017.20042.316.camel@kymetacorp.com>
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
Subject: Re: barebox PBL question
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, Feb 14, 2017 at 06:12:15PM +0000, Trent Piepho wrote:
> On Tue, 2017-02-14 at 08:27 +0100, Sascha Hauer wrote:
> > > > You should use PBL_MULTI_IMAGES instead. In fact, the existing Rockchip
> > > > port already does this.
> > > 
> > > Is there any advantage to the single image pbl system?  It seems like multi image
> > > with one image achieves the same result.
> > 
> > The advantage is that the same config and only one build step is used
> > to build images for multiple boards/projects. This greatly increases the
> > chance that the existing configs are actually tested. Also it makes it
> > easy to test the same software on different boards. Another thing is
> > that I can currently built test every commit in every defconfig,
> > something I couldn't do if every board had its own defconfig, possibly
> > in a xload and a regular variant. Defconfig files also have the tendency
> > to bitrot very fast. Most defconfigs are committed once and never
> > touched again which means you never get the new features and whenever
> > you change the board you possibly find a defconfig that needs many
> > adjustments before you feel home.
> 
> These all sounds like advantages for the multi-pbl system.  I was asking
> if the single pbl system had an advantage.  It seems to be mostly a
> duplication of multi-pbl that can't do as much.  I wondered if there was
> a reason, besides inertia, to keeping it around.

I would love to remove it, but grepping through the defconfigs there are
more than 50 boards using it, most of them I cannot test.
Besides this, yes, there's inertia. I just played it through for an AT91
board, see below. We would have to do this 50 times...

Sascha

-------------------------8<---------------------

From 4e81bc5db51c7d91d9fc5c1666e961be7143e09b Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2017 08:49:18 +0100
Subject: [PATCH] wip

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                           |  2 +-
 arch/arm/boards/sama5d3xek/Makefile        |  1 +
 arch/arm/boards/sama5d3xek/lowlevel.c      | 10 ++++++++++
 arch/arm/mach-at91/Kconfig                 |  1 +
 arch/arm/mach-at91/sama5d3_lowlevel_init.c |  4 ++++
 images/Makefile                            |  1 +
 images/Makefile.at91                       |  4 ++++
 7 files changed, 22 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/sama5d3xek/lowlevel.c
 create mode 100644 images/Makefile.at91

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e4663ea268..a5e431d296 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -52,7 +52,7 @@ config ARCH_AT91
 	select GPIOLIB
 	select CLKDEV_LOOKUP
 	select HAS_DEBUG_LL
-	select HAVE_MACH_ARM_HEAD
+	select HAVE_MACH_ARM_HEAD if !HAVE_PBL_MULTI_IMAGES
 	select HAVE_CLK
 	select PINCTRL_AT91
 
diff --git a/arch/arm/boards/sama5d3xek/Makefile b/arch/arm/boards/sama5d3xek/Makefile
index 32dcb4283c..55772623a5 100644
--- a/arch/arm/boards/sama5d3xek/Makefile
+++ b/arch/arm/boards/sama5d3xek/Makefile
@@ -1,3 +1,4 @@
 obj-y += init.o
 obj-$(CONFIG_W1) += hw_version.o
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-sama5d3xek
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/sama5d3xek/lowlevel.c b/arch/arm/boards/sama5d3xek/lowlevel.c
new file mode 100644
index 0000000000..1d52882caf
--- /dev/null
+++ b/arch/arm/boards/sama5d3xek/lowlevel.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+
+void __naked sama5d3_barebox_entry(void);
+
+ENTRY_FUNCTION(start_sama5d3xek, r0, r1, r2)
+{
+	sama5d3_barebox_entry();
+}
diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
index c45fc4d6b8..66cfb2aaae 100644
--- a/arch/arm/mach-at91/Kconfig
+++ b/arch/arm/mach-at91/Kconfig
@@ -472,6 +472,7 @@ choice
 
 config MACH_SAMA5D3XEK
 	bool "Atmel SAMA5D3X Evaluation Kit"
+	select HAVE_PBL_MULTI_IMAGES
 	help
 	  Select this if you are using Atmel's SAMA5D3X-EK Evaluation Kit.
 
diff --git a/arch/arm/mach-at91/sama5d3_lowlevel_init.c b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
index 01d28514d1..aaff9b8b04 100644
--- a/arch/arm/mach-at91/sama5d3_lowlevel_init.c
+++ b/arch/arm/mach-at91/sama5d3_lowlevel_init.c
@@ -15,7 +15,11 @@
 #include <mach/hardware.h>
 #include <mach/at91sam9_ddrsdr.h>
 
+#ifdef CONFIG_PBL_MULTI_IMAGES
+void __naked sama5d3_barebox_entry(void)
+#else
 void __naked __bare_init barebox_arm_reset_vector(void)
+#endif
 {
 	arm_cpu_lowlevel_init();
 
diff --git a/images/Makefile b/images/Makefile
index 0537af1f6d..f8cd93c365 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -103,6 +103,7 @@ board = $(srctree)/arch/$(ARCH)/boards
 objboard = $(objtree)/arch/$(ARCH)/boards
 
 include $(srctree)/images/Makefile.am33xx
+include $(srctree)/images/Makefile.at91
 include $(srctree)/images/Makefile.imx
 include $(srctree)/images/Makefile.mvebu
 include $(srctree)/images/Makefile.mxs
diff --git a/images/Makefile.at91 b/images/Makefile.at91
new file mode 100644
index 0000000000..ccb9fef832
--- /dev/null
+++ b/images/Makefile.at91
@@ -0,0 +1,4 @@
+
+pblx-$(CONFIG_MACH_SAMA5D3XEK) += start_sama5d3xek
+FILE_barebox-sama5d3xek.img = start_sama5d3xek.pblx
+image-$(CONFIG_MACH_SAMA5D3XEK) += barebox-sama5d3xek.img
-- 
2.11.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
