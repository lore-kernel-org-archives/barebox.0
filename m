Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIIq4-0003C1-PN
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 14:18:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2014 15:18:01 +0100
Message-Id: <1393337884-17282-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
References: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] make: Add bbenv-y target to generate default environment
 files
To: barebox@lists.infradead.org

This adds a target to generate environment files from directories.
These are compiled into the barebox binary.

use it as:

bbenv-$(CONFIG_SOMETHING) += my-environment

The directory containing the files to compile into the binary
should be named my-environment.

This can be accessed in C code later as:

extern unsigned char __bbenv_my_environment_start[];
extern unsigned char __bbenv_my_environment_end[];

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Makefile             |  2 +-
 scripts/Makefile.lib | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/Makefile b/Makefile
index b48240a..779ad74 100644
--- a/Makefile
+++ b/Makefile
@@ -1022,7 +1022,7 @@ clean: archclean $(clean-dirs)
 	@find . $(RCS_FIND_IGNORE) \
 		\( -name '*.[oas]' -o -name '*.ko' -o -name '.*.cmd' \
 		-o -name '.*.d' -o -name '.*.tmp' -o -name '*.mod.c' \
-		-o -name '*.symtypes' \) \
+		-o -name '*.symtypes' -o -name '*.bbenv.S' -o -name "*.bbenv" \) \
 		-type f -print | xargs rm -f
 
 # mrproper - Delete all generated files, including .config
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e87e401..f71c3b7 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -98,6 +98,7 @@ multi-objs-y	:= $(addprefix $(obj)/,$(multi-objs-y))
 multi-objs-m	:= $(addprefix $(obj)/,$(multi-objs-m))
 subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
 obj-dirs	:= $(addprefix $(obj)/,$(obj-dirs))
+bbenv-y		:= $(addprefix $(obj)/,$(bbenv-y))
 
 # These flags are needed for modversions and compiling, so we define them here
 # already
@@ -229,6 +230,34 @@ $(obj)/%.dtb: $(src)/%.dts FORCE
 
 dtc-tmp = $(subst $(comma),_,$(dot-target).dts)
 
+obj-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX),$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S,$(bbenv-y))
+extra-y += $(patsubst %,%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).o,$(bbenv-y))
+
+quiet_cmd_env_S = ENV.S   $@
+cmd_env_S =							\
+(								\
+	echo '\#include <asm-generic/barebox.lds.h>';		\
+	echo '.section .bbenv.rodata.$(subst -,_,$(*F)),"a"';	\
+	echo '.balign STRUCT_ALIGNMENT';			\
+	echo '.global __bbenv_$(subst -,_,$(*F))_start';	\
+	echo '__bbenv_$(subst -,_,$(*F))_start:';		\
+	echo '.incbin "$<" ';					\
+	echo '__bbenv_$(subst -,_,$(*F))_end:';			\
+	echo '.global __bbenv_$(subst -,_,$(*F))_end';		\
+	echo '.balign STRUCT_ALIGNMENT';			\
+) > $@
+
+$(obj)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX).S: $(src)/%.bbenv$(DEFAULT_COMPRESSION_SUFFIX) FORCE
+	$(call if_changed,env_S)
+
+quiet_cmd_env = ENV     $@
+cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
+
+%.bbenv$(DEFAULT_COMPRESSION_SUFFIX): % FORCE
+	$(call cmd,env)
+
 # Bzip2
 # ---------------------------------------------------------------------------
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
