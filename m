Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawS3-00087R-1f
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:12 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:47 +0900
Message-Id: <20200519071353.395493-3-masahiroy@kernel.org>
In-Reply-To: <20200519071353.395493-1-masahiroy@kernel.org>
References: <20200519071353.395493-1-masahiroy@kernel.org>
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
Subject: [PATCH 3/8] kbuild: resync mkdir code with Linux 5.7-rc6
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Kbuild automatically creates the output directories for O= builds.
Previously it called mkdir too much. Linux optimized this a lot.
Let's import the outcome so it works faster.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 25 ++++++++++++-------------
 scripts/Makefile.host  |  2 --
 scripts/Makefile.lib   |  4 ----
 3 files changed, 12 insertions(+), 19 deletions(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index f4e771980..d94ad488d 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -49,15 +49,6 @@ ifneq ($(hostprogs)$(hostprogs-y)$(hostprogs-m),)
 include scripts/Makefile.host
 endif
 
-ifdef building_out_of_srctree
-# Create output directory if not already present
-_dummy := $(shell [ -d $(obj) ] || mkdir -p $(obj))
-
-# Create directories for object files if directory does not exist
-# Needed when obj-y := dir/file.o syntax is used
-_dummy := $(foreach d,$(obj-dirs), $(shell [ -d $(d) ] || mkdir -p $(d)))
-endif
-
 ifndef obj
 $(warning kbuild: Makefile.build is included improperly)
 endif
@@ -332,11 +323,19 @@ FORCE:
 # optimization, we don't need to read them if the target does not
 # exist, we will rebuild anyway in that case.
 
-targets := $(wildcard $(sort $(targets)))
-cmd_files := $(wildcard $(foreach f,$(targets),$(dir $(f)).$(notdir $(f)).cmd))
+existing-targets := $(wildcard $(sort $(targets)))
 
-ifneq ($(cmd_files),)
-  include $(cmd_files)
+-include $(foreach f,$(existing-targets),$(dir $(f)).$(notdir $(f)).cmd)
+
+ifdef building_out_of_srctree
+# Create directories for object files if they do not exist
+obj-dirs := $(sort $(obj) $(patsubst %/,%, $(dir $(targets))))
+# If targets exist, their directories apparently exist. Skip mkdir.
+existing-dirs := $(sort $(patsubst %/,%, $(dir $(existing-targets))))
+obj-dirs := $(strip $(filter-out $(existing-dirs), $(obj-dirs)))
+ifneq ($(obj-dirs),)
+$(shell mkdir -p $(obj-dirs))
+endif
 endif
 
 .PHONY: $(PHONY)
diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index 55b565ce3..038b3054a 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -76,8 +76,6 @@ host-cxxmulti	:= $(addprefix $(obj)/,$(host-cxxmulti))
 host-cxxobjs	:= $(addprefix $(obj)/,$(host-cxxobjs))
 host-objdirs    := $(addprefix $(obj)/,$(host-objdirs))
 
-obj-dirs += $(host-objdirs)
-
 #####
 # Handle options to gcc. Support building with separate output directory
 
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 604bedfc5..70303adb5 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -77,9 +77,6 @@ __subdir-obj-y := $(filter %/built-in-pbl.o, $(pbl-y))
 subdir-obj-y := $(filter %/built-in.o, $(obj-y))
 subdir-obj-y += $(__subdir-obj-y)
 
-# $(obj-dirs) is a list of directories that contain object files
-obj-dirs := $(dir $(multi-objs) $(obj-y) $(pbl-y))
-
 # Replace multi-part objects by their individual parts, look at local dir only
 real-objs-y := $(foreach m, $(filter-out $(subdir-obj-y), $(obj-y)), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m))) $(extra-y)
 real-objs-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
@@ -104,7 +101,6 @@ multi-used-m	:= $(addprefix $(obj)/,$(multi-used-m))
 multi-objs-y	:= $(addprefix $(obj)/,$(multi-objs-y))
 multi-objs-m	:= $(addprefix $(obj)/,$(multi-objs-m))
 subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
-obj-dirs	:= $(addprefix $(obj)/,$(obj-dirs))
 bbenv-y		:= $(addprefix $(obj)/,$(bbenv-y))
 
 # target with $(obj)/ and its suffix stripped
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
