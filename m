Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuc7w-0004A0-QZ
 for barebox@lists.infradead.org; Wed, 11 Jun 2014 06:35:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Jun 2014 08:34:53 +0200
Message-Id: <1402468493-14647-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] mips: Fix dtb build rules
To: barebox@lists.infradead.org

Add intermediate .S files to .SECONDARY. Otherwise make deletes them
and regenerates them each build.
Also remove KBUILD_DTBS since the make system descends in dts/ anyway.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/mips/Makefile     | 5 -----
 arch/mips/dts/Makefile | 5 ++++-
 2 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index b3bacf3..a3cf112 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -146,11 +146,6 @@ dts := arch/mips/dts
 %.dtb: scripts
 	$(Q)$(MAKE) $(build)=$(dts) $(dts)/$@
 
-dtbs: scripts
-	$(Q)$(MAKE) $(build)=$(dts) dtbs
-
-KBUILD_DTBS := dtbs
-
 KBUILD_IMAGE ?= $(KBUILD_BINARY)
 
 #####
diff --git a/arch/mips/dts/Makefile b/arch/mips/dts/Makefile
index 348b814..7ccb2f8 100644
--- a/arch/mips/dts/Makefile
+++ b/arch/mips/dts/Makefile
@@ -4,9 +4,12 @@ obj-$(CONFIG_BUILTIN_DTB) += $(BUILTIN_DTB).dtb.o
 
 dtb-y += ${BUILTIN_DTB}.dtb
 
+.SECONDARY: $(obj)/$(BUILTIN_DTB).dtb.S
+.SECONDARY: $(patsubst %,$(obj)/%.S,$(dtb-y))
+
 targets += dtbs
 targets += $(dtb-y)
 
-dtbs: $(addprefix $(obj)/, $(dtb-y))
+extra-y += $(dtb-y)
 
 clean-files := *.dtb *.dtb.S
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
