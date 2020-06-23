Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnZHQ-0001hy-9n
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 03:07:26 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 23 Jun 2020 12:07:01 +0900
Message-Id: <20200623030702.666462-2-masahiroy@kernel.org>
In-Reply-To: <20200623030702.666462-1-masahiroy@kernel.org>
References: <20200623030702.666462-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/3] kbuild: add infrastructure to build userspace programs
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Import Linux commit 7f3a59db274c3e3d884c785e363a054110f1c266

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile                   | 13 ++++++++---
 scripts/Makefile.build     |  6 +++++
 scripts/Makefile.clean     |  2 +-
 scripts/Makefile.userprogs | 45 ++++++++++++++++++++++++++++++++++++++
 4 files changed, 62 insertions(+), 4 deletions(-)
 create mode 100644 scripts/Makefile.userprogs

diff --git a/Makefile b/Makefile
index a4aac3db4..0da032532 100644
--- a/Makefile
+++ b/Makefile
@@ -363,9 +363,12 @@ HOST_LFS_LIBS := $(shell getconf LFS_LIBS 2>/dev/null)
 
 HOSTCC       = gcc
 HOSTCXX      = g++
-KBUILD_HOSTCFLAGS   := -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 \
-		-fomit-frame-pointer -std=gnu89 $(HOST_LFS_CFLAGS) \
-		$(HOSTCFLAGS)
+
+export KBUILD_USERCFLAGS := -Wall -Wmissing-prototypes -Wstrict-prototypes \
+			      -O2 -fomit-frame-pointer -std=gnu89
+export KBUILD_USERLDFLAGS :=
+
+KBUILD_HOSTCFLAGS   := $(KBUILD_USERCFLAGS) $(HOST_LFS_CFLAGS) $(HOSTCFLAGS)
 KBUILD_HOSTCXXFLAGS := -Wall -O2 $(HOST_LFS_CFLAGS) $(HOSTCXXFLAGS)
 KBUILD_HOSTLDFLAGS  := $(HOST_LFS_LDFLAGS) $(HOSTLDFLAGS)
 KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
@@ -608,6 +611,10 @@ KBUILD_CFLAGS += $(call cc-option, -fno-delete-null-pointer-checks,)
 
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
+# Align the bit size of userspace programs with the kernel
+KBUILD_USERCFLAGS  += $(filter -m32 -m64, $(KBUILD_CFLAGS))
+KBUILD_USERLDFLAGS += $(filter -m32 -m64, $(KBUILD_CFLAGS))
+
 # arch Makefile may override CC so keep this after arch Makefile is included
 NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
 CHECKFLAGS     += $(NOSTDINC_FLAGS)
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 00f627791..a3dfe261a 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -49,6 +49,12 @@ ifneq ($(hostprogs)$(hostprogs-y)$(hostprogs-m),)
 include scripts/Makefile.host
 endif
 
+# Do not include userprogs rules unless needed.
+userprogs := $(sort $(userprogs))
+ifneq ($(userprogs),)
+include scripts/Makefile.userprogs
+endif
+
 ifndef obj
 $(warning kbuild: Makefile.build is included improperly)
 endif
diff --git a/scripts/Makefile.clean b/scripts/Makefile.clean
index 6e6c9ef7c..97fd2ef48 100644
--- a/scripts/Makefile.clean
+++ b/scripts/Makefile.clean
@@ -37,7 +37,7 @@ subdir-ymn	:= $(addprefix $(obj)/,$(subdir-ymn))
 
 __clean-files	:= $(extra-y) $(extra-m) $(extra-)       \
 		   $(always) $(always-y) $(always-m) $(always-) $(targets) $(clean-files)   \
-		   $(hostprogs) $(hostprogs-y) $(hostprogs-m) $(hostprogs-)
+		   $(hostprogs) $(hostprogs-y) $(hostprogs-m) $(hostprogs-) $(userprogs)
 
 # as clean-files is given relative to the current directory, this adds
 # a $(obj) prefix, except for absolute paths
diff --git a/scripts/Makefile.userprogs b/scripts/Makefile.userprogs
new file mode 100644
index 000000000..fb4152973
--- /dev/null
+++ b/scripts/Makefile.userprogs
@@ -0,0 +1,45 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# Build userspace programs for the target system
+#
+
+# Executables compiled from a single .c file
+user-csingle	:= $(foreach m, $(userprogs), $(if $($(m)-objs),,$(m)))
+
+# Executables linked based on several .o files
+user-cmulti	:= $(foreach m, $(userprogs), $(if $($(m)-objs),$(m)))
+
+# Objects compiled from .c files
+user-cobjs	:= $(sort $(foreach m, $(userprogs), $($(m)-objs)))
+
+user-csingle	:= $(addprefix $(obj)/, $(user-csingle))
+user-cmulti	:= $(addprefix $(obj)/, $(user-cmulti))
+user-cobjs	:= $(addprefix $(obj)/, $(user-cobjs))
+
+user_ccflags	= -Wp,-MMD,$(depfile) $(KBUILD_USERCFLAGS) $(userccflags) \
+			$($(target-stem)-userccflags)
+user_ldflags	= $(KBUILD_USERLDFLAGS) $(userldflags) $($(target-stem)-userldflags)
+
+# Create an executable from a single .c file
+quiet_cmd_user_cc_c = CC [U]  $@
+      cmd_user_cc_c = $(CC) $(user_ccflags) $(user_ldflags) -o $@ $< \
+		      $($(target-stem)-userldlibs)
+$(user-csingle): $(obj)/%: $(src)/%.c FORCE
+	$(call if_changed_dep,user_cc_c)
+
+# Link an executable based on list of .o files
+quiet_cmd_user_ld = LD [U]  $@
+      cmd_user_ld = $(CC) $(user_ldflags) -o $@ \
+		    $(addprefix $(obj)/, $($(target-stem)-objs)) \
+		    $($(target-stem)-userldlibs)
+$(user-cmulti): FORCE
+	$(call if_changed,user_ld)
+$(call multi_depend, $(user-cmulti), , -objs)
+
+# Create .o file from a .c file
+quiet_cmd_user_cc_o_c = CC [U]  $@
+      cmd_user_cc_o_c = $(CC) $(user_ccflags) -c -o $@ $<
+$(user-cobjs): $(obj)/%.o: $(src)/%.c FORCE
+	$(call if_changed_dep,user_cc_o_c)
+
+targets += $(user-csingle) $(user-cmulti) $(user-cobjs)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
