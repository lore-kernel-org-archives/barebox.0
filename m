Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jqv4D-0005ax-LL
 for barebox@lists.infradead.org; Thu, 02 Jul 2020 08:59:38 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  2 Jul 2020 10:59:34 +0200
Message-Id: <20200702085934.5827-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] kbuild: add dtbs target for building all dtbs of an ARCH
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

As described in the documentation, upstream device trees extended by
barebox should take care to cause compile errors, not runtime errors,
when the paths they extend disappear. This way, breakage can be easily
detected when synchronizing the dts/ directory and fixed right then.

Make this process easier by providing a dtbs target that builds all
device trees in arch/$(SRCARCH)/dts/ if available.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Makefile | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Makefile b/Makefile
index 0da032532712..9fa741966c00 100644
--- a/Makefile
+++ b/Makefile
@@ -990,6 +990,20 @@ include/generated/version.h: FORCE
 include/generated/utsrelease.h: include/config/kernel.release FORCE
 	$(call filechk,utsrelease.h)
 
+# ---------------------------------------------------------------------------
+# Devicetree files
+
+ifneq ($(wildcard $(srctree)/arch/$(SRCARCH)/dts/),)
+dtstree := arch/$(SRCARCH)/dts
+endif
+
+ifneq ($(dtstree),)
+
+PHONY += dtbs
+dtbs: $(patsubst $(srctree)/%.dts,$(objtree)/%.dtb,$(wildcard $(srctree)/$(dtstree)/*.dts))
+
+endif
+
 # ---------------------------------------------------------------------------
 # Modules
 
@@ -1165,6 +1179,10 @@ help:
 	@$(if $(archhelp),$(archhelp),\
 		echo '  No architecture specific help defined for $(SRCARCH)')
 	@echo  ''
+	@$(if $(dtstree), \
+		echo '  Devicetree:'; \
+		echo '    * dtbs             - Build device tree blobs for all boards'; \
+		echo '')
 	@$(if $(boards), \
 		$(foreach b, $(boards), \
 		printf "  %-24s - Build for %s\\n" $(b) $(subst _defconfig,,$(b));) \
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
