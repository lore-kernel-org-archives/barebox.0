Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo1.mail-out.ovh.net ([87.98.179.142]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1StwY2-0003r4-DX
 for barebox@lists.infradead.org; Wed, 25 Jul 2012 08:02:36 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id C854DFF983D
 for <barebox@lists.infradead.org>; Wed, 25 Jul 2012 10:08:07 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 25 Jul 2012 10:02:51 +0200
Message-Id: <1343203373-18641-9-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120725075730.GT22657@game.jcrosoft.org>
 <1343203373-18641-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/11] kbuild: add comp-y target
To: barebox@lists.infradead.org

This will allow to link compiled object to the built-comp.o across the source
tree that will be finally link to the decompressor.

Limitation:

if the object is present in both decompressor and barebox the object is
generated once only

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile               |    6 +++++-
 scripts/Makefile.build |   22 ++++++++++++++++++++--
 scripts/Makefile.lib   |    3 +++
 3 files changed, 28 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 46c9491..277f7da 100644
--- a/Makefile
+++ b/Makefile
@@ -481,6 +481,8 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(core-n) $(core-) $(drivers-n) $(drivers-) \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
+comp-common-y	:= $(common-y)
+comp-common-y	:= $(patsubst %/, %/built-comp.o, $(common-y))
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 
 # Build barebox
@@ -510,6 +512,8 @@ common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 # System.map is generated to document addresses of all kernel symbols
 
 barebox-common := $(common-y)
+barebox-common-comp := $(comp-common-y)
+export barebox-common-comp
 barebox-all    := $(barebox-common)
 barebox-lds    := $(lds-y)
 
@@ -715,7 +719,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds): $(barebox-dirs) ;
+$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds) $(barebox-common-comp): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 1a82c44..7b3f711 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -13,6 +13,7 @@ __build:
 obj-y :=
 obj-m :=
 lib-y :=
+comp-y :=
 lib-m :=
 always :=
 targets :=
@@ -97,13 +98,17 @@ ifneq ($(strip $(lib-y) $(lib-m) $(lib-n) $(lib-)),)
 lib-target := $(obj)/lib.a
 endif
 
-ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target)),)
+ifneq ($(strip $(obj-y) $(obj-m) $(obj-n) $(obj-) $(lib-target) $(comp-y)),)
 builtin-target := $(obj)/built-in.o
 endif
 
+ifneq ($(strip $(comp-y) $(builtin-target)),)
+comp-target := $(obj)/built-comp.o
+endif
+
 # We keep a list of all modules in $(MODVERDIR)
 
-__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(extra-y)) \
+__build: $(if $(KBUILD_BUILTIN),$(builtin-target) $(lib-target) $(comp-target) $(extra-y)) \
 	 $(if $(KBUILD_MODULES),$(obj-m)) \
 	 $(subdir-ym) $(always)
 	@:
@@ -294,6 +299,19 @@ $(builtin-target): $(obj-y) FORCE
 targets += $(builtin-target)
 endif # builtin-target
 
+ifdef comp-target
+quiet_cmd_link_comp_o_target = COMPLD  $@
+# If the list of objects to link is empty, just create an empty built-comp.o
+cmd_link_comp_o_target = $(if $(strip $(comp-y)),\
+		      $(LD) $(ld_flags) -r -o $@ $(filter $(comp-y), $^),\
+		      rm -f $@; $(AR) rcs $@)
+
+$(comp-target): $(comp-y) FORCE
+	$(call if_changed,link_comp_o_target)
+
+targets += $(comp-target)
+endif # comp-target
+
 #
 # Rule to compile a set of .o files into one .a file
 #
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b842c48..f0ea147 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -28,6 +28,8 @@ subdir-m	+= $(__subdir-m)
 obj-y		:= $(patsubst %/, %/built-in.o, $(obj-y))
 obj-m		:= $(filter-out %/, $(obj-m))
 
+comp-y		:= $(patsubst %/, %/built-comp.o, $(comp-y))
+
 # Subdirectories we need to descend into
 
 subdir-ym	:= $(sort $(subdir-y) $(subdir-m))
@@ -63,6 +65,7 @@ targets		:= $(addprefix $(obj)/,$(targets))
 obj-y		:= $(addprefix $(obj)/,$(obj-y))
 obj-m		:= $(addprefix $(obj)/,$(obj-m))
 lib-y		:= $(addprefix $(obj)/,$(lib-y))
+comp-y		:= $(addprefix $(obj)/,$(comp-y))
 subdir-obj-y	:= $(addprefix $(obj)/,$(subdir-obj-y))
 real-objs-y	:= $(addprefix $(obj)/,$(real-objs-y))
 real-objs-m	:= $(addprefix $(obj)/,$(real-objs-m))
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
