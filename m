Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jawS3-00087T-1e
 for barebox@lists.infradead.org; Tue, 19 May 2020 07:14:14 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 19 May 2020 16:13:48 +0900
Message-Id: <20200519071353.395493-4-masahiroy@kernel.org>
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
Subject: [PATCH 4/8] kbuild: append $(bbenv-y) to obj-y earlier
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

You can save one line.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.lib | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 70303adb5..ef723c0ca 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -77,6 +77,11 @@ __subdir-obj-y := $(filter %/built-in-pbl.o, $(pbl-y))
 subdir-obj-y := $(filter %/built-in.o, $(obj-y))
 subdir-obj-y += $(__subdir-obj-y)
 
+obj-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX),$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S,$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
+
 # Replace multi-part objects by their individual parts, look at local dir only
 real-objs-y := $(foreach m, $(filter-out $(subdir-obj-y), $(obj-y)), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m))) $(extra-y)
 real-objs-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))),$($(m:.o=-objs)) $($(m:.o=-y)),$(m)))
@@ -101,7 +106,6 @@ multi-used-m	:= $(addprefix $(obj)/,$(multi-used-m))
 multi-objs-y	:= $(addprefix $(obj)/,$(multi-objs-y))
 multi-objs-m	:= $(addprefix $(obj)/,$(multi-objs-m))
 subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
-bbenv-y		:= $(addprefix $(obj)/,$(bbenv-y))
 
 # target with $(obj)/ and its suffix stripped
 target-stem = $(basename $(patsubst $(obj)/%,%,$@))
@@ -295,11 +299,6 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
 
 dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
 
-obj-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
-extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX),$(bbenv-y))
-extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S,$(bbenv-y))
-extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
-
 quiet_cmd_env_S = ENV.S   $@
 cmd_env_S =							\
 (								\
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
