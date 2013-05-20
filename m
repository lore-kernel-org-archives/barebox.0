Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R2-S4
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:14 +0200
Message-Id: <1369059260-28872-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/8] ARM: build dtbs during build process using extra-y
To: barebox@lists.infradead.org

When using a builtin dtb the builtin dtb is built twice, once
from as a dependency of the 'dtbs' target and once as a dependency
of the corresponding dtb.o target. This can happen in parallel
with parallel make which results in build corruption when two
processes try to generate the dtb at the same time. Typical errors
include:

fixdep: error opening depfile: arch/arm/dts/.imx51-babbage.dtb.d: No such file or directory
make[1]: *** [arch/arm/dts/imx51-babbage.dtb] Error 2

fixdep: arch/arm/dts/.imx51-babbage.dtb.d is empty
mv: cannot stat `arch/arm/dts/.imx51-babbage.dtb.tmp': No such file or directory
make[1]: *** [arch/arm/dts/imx51-babbage.dtb] Error 1

To fix this build the devicetree blobs using extra-y instead of
a separate target.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile     | 5 -----
 arch/arm/dts/Makefile | 2 +-
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index d506b12..5da0a8f 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -274,11 +274,6 @@ dts := arch/arm/dts
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
 
-dtbs: scripts
-	$(Q)$(MAKE) $(build)=$(dts) dtbs
-
-KBUILD_DTBS := dtbs
-
 KBUILD_IMAGE ?= $(KBUILD_BINARY)
 
 archprepare: maketools
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 45a3304..4569e3d 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -7,6 +7,6 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 targets += dtbs
 targets += $(dtb-y)
 
-dtbs: $(addprefix $(obj)/, $(dtb-y))
+extra-y += $(dtb-y)
 
 clean-files := *.dtb *.dtb.S
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
