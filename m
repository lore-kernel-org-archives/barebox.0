Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R4-S9
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:16 +0200
Message-Id: <1369059260-28872-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] kbuild: always run gcc -E on *.dts, remove cmd_dtc_cpp
To: barebox@lists.infradead.org

Based on the same Linux commit from Stephen Warren:

commit b40b25fff8205dd18124d8fc87b2c9c57f269b5f
Author: Stephen Warren <swarren@nvidia.com>
Date:   Wed Mar 6 10:58:37 2013 -0700

    kbuild: always run gcc -E on *.dts, remove cmd_dtc_cpp

    Replace cmd_dtc with cmd_dtc_cpp, and delete the latter.

    Previously, a special file extension (.dtsp) was required to trigger
    the C pre-processor to run on device tree files. This was ugly. Now that
    previous changes have enhanced cmd_dtc_cpp to collect dependency
    information from both gcc -E and dtc, we can transparently run the pre-
    processor on all device tree files, irrespective of whether they
    use /include/ or #include syntax to include *.dtsi.

    Signed-off-by: Stephen Warren <swarren@nvidia.com>
    Acked-by: Rob Herring <rob.herring@calxeda.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile.lib | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index bbfd4cd..c50bb4e 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -141,10 +141,10 @@ cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
 ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
 
-dtc_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc		\
-      -I$(srctree)/arch/$(SRCARCH)/dts			\
-      -I$(srctree)/arch/$(SRCARCH)/include/dts		\
-      -undef -D__DTS__
+dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
+		 -I$(srctree)/arch/$(SRCARCH)/dts                        \
+		 -I$(srctree)/arch/$(SRCARCH)/dts/include                \
+		 -undef -D__DTS__
 
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
@@ -212,20 +212,17 @@ $(obj)/%.dtb.S: $(obj)/%.dtb
 	$(call cmd,dt_S_dtb)
 
 quiet_cmd_dtc = DTC     $@
-cmd_dtc = $(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 $(DTC_FLAGS) -d $(depfile) $<
+cmd_dtc = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
+	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 \
+		-i $(srctree)/arch/$(SRCARCH)/dts $(DTC_FLAGS) \
+		-d $(depfile).dtc $(dtc-tmp) ; \
+	cat $(depfile).pre $(depfile).dtc > $(depfile)
 
 $(obj)/%.dtb: $(src)/%.dts FORCE
 	$(call if_changed_dep,dtc)
 
 dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
 
-quiet_cmd_dtc_cpp = DTC+CPP $@
-cmd_dtc_cpp = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) $< ; \
-	$(objtree)/scripts/dtc/dtc -O dtb -o $@ -b 0 $(DTC_FLAGS) $(dtc-tmp)
-
-$(obj)/%.dtb: $(src)/%.dtsp FORCE
-	$(call if_changed_dep,dtc_cpp)
-
 # Bzip2
 # ---------------------------------------------------------------------------
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
