Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGzZH-0001Iv-T5
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 06:31:13 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 25 Mar 2020 15:30:19 +0900
Message-Id: <20200325063019.27369-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH 2/3] kbuild: change *FLAGS_<basetarget>.o to take the path
 relative to $(obj)
To: barebox@lists.infradead.org

[ Linux commit 54b8ae66ae1a3454a7645d159a482c31cd89ab33 ]

Kbuild provides per-file compiler flag addition/removal:

  CFLAGS_<basetarget>.o
  CFLAGS_REMOVE_<basetarget>.o
  AFLAGS_<basetarget>.o
  AFLAGS_REMOVE_<basetarget>.o
  CPPFLAGS_<basetarget>.lds
  HOSTCFLAGS_<basetarget>.o
  HOSTCXXFLAGS_<basetarget>.o

The <basetarget> is the filename of the target with its directory and
suffix stripped.

This syntax comes into a trouble when two files with the same basename
appear in one Makefile, for example:

  obj-y += foo.o
  obj-y += dir/foo.o
  CFLAGS_foo.o := <some-flags>

Here, the <some-flags> applies to both foo.o and dir/foo.o

The real world problem is:

  scripts/kconfig/util.c
  scripts/kconfig/lxdialog/util.c

Both files are compiled into scripts/kconfig/mconf, but only the
latter should be given with the ncurses flags.

It is more sensible to use the relative path to the Makefile, like this:

  obj-y += foo.o
  CFLAGS_foo.o := <some-flags>
  obj-y += dir/foo.o
  CFLAGS_dir/foo.o := <other-flags>

At first, I attempted to replace $(basetarget) with $*. The $* variable
is replaced with the stem ('%') part in a pattern rule. This works with
most of cases, but does not for explicit rules.

For example, arch/ia64/lib/Makefile reuses rule_as_o_S in its own
explicit rules, so $* will be empty, resulting in ignoring the per-file
AFLAGS.

I introduced a new variable, target-stem, which can be used also from
explicit rules.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---
 scripts/Makefile.host    | 14 +++++++-------
 scripts/Makefile.lib     |  9 ++++++---
 scripts/kconfig/Makefile |  8 ++++----
 3 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index 8a88cbc9aec9..170952f6885a 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -64,9 +64,9 @@ obj-dirs += $(host-objdirs)
 # Handle options to gcc. Support building with separate output directory
 
 _hostc_flags   = $(HOSTCFLAGS)   $(HOST_EXTRACFLAGS)   \
-                 $(HOSTCFLAGS_$(basetarget).o)
+                 $(HOSTCFLAGS_$(target-stem).o)
 _hostcxx_flags = $(HOSTCXXFLAGS) $(HOST_EXTRACXXFLAGS) \
-                 $(HOSTCXXFLAGS_$(basetarget).o)
+                 $(HOSTCXXFLAGS_$(target-stem).o)
 
 ifeq ($(KBUILD_SRC),)
 __hostc_flags	= $(_hostc_flags)
@@ -86,7 +86,7 @@ hostcxx_flags  = -Wp,-MD,$(depfile) $(__hostcxx_flags)
 # host-csingle -> Executable
 quiet_cmd_host-csingle 	= HOSTCC  $@
       cmd_host-csingle	= $(HOSTCC) $(hostc_flags) $(HOSTLDFLAGS) -o $@ $< \
-		$(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
+		$(HOST_LOADLIBES) $(HOSTLDLIBS_$(target-stem))
 $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 	$(call if_changed_dep,host-csingle)
 
@@ -94,8 +94,8 @@ $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 # host-cmulti -> executable
 quiet_cmd_host-cmulti	= HOSTLD  $@
       cmd_host-cmulti	= $(HOSTCC) $(HOSTLDFLAGS) -o $@ \
-			  $(addprefix $(obj)/,$($(@F)-objs)) \
-			  $(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
+			  $(addprefix $(obj)/, $($(target-stem)-objs)) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(target-stem))
 $(host-cmulti): FORCE
 	$(call if_changed,host-cmulti)
 $(call multi_depend, $(host-cmulti), , -objs)
@@ -112,8 +112,8 @@ $(host-cobjs): $(obj)/%.o: $(src)/%.c FORCE
 quiet_cmd_host-cxxmulti	= HOSTLD  $@
       cmd_host-cxxmulti	= $(HOSTCXX) $(HOSTLDFLAGS) -o $@ \
 			  $(foreach o,objs cxxobjs,\
-			  $(addprefix $(obj)/,$($(@F)-$(o)))) \
-			  $(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
+			  $(addprefix $(obj)/, $($(target-stem)-$(o)))) \
+			  $(KBUILD_HOSTLDLIBS) $(HOSTLDLIBS_$(target-stem))
 $(host-cxxmulti): FORCE
 	$(call if_changed,host-cxxmulti)
 $(call multi_depend, $(host-cxxmulti), , -objs -cxxobjs)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 9aa8be535f30..a94e16fe017f 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -106,6 +106,9 @@ subdir-ym	:= $(addprefix $(obj)/,$(subdir-ym))
 obj-dirs	:= $(addprefix $(obj)/,$(obj-dirs))
 bbenv-y		:= $(addprefix $(obj)/,$(bbenv-y))
 
+# target with $(obj)/ and its suffix stripped
+target-stem = $(basename $(patsubst $(obj)/%,%,$@))
+
 # These flags are needed for modversions and compiling, so we define them here
 # already
 # $(modname_flags) #defines KBUILD_MODNAME as the name of the module it will
@@ -118,9 +121,9 @@ basename_flags = -D"KBUILD_BASENAME=KBUILD_STR($(call name-fix,$(basetarget)))"
 modname_flags  = $(if $(filter 1,$(words $(modname))),\
                  -D"KBUILD_MODNAME=KBUILD_STR($(call name-fix,$(modname)))")
 
-_c_flags       = $(CFLAGS) $(EXTRA_CFLAGS) $(CFLAGS_$(basetarget).o)
-_a_flags       = $(AFLAGS) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
-_cpp_flags     = $(CPPFLAGS) $(EXTRA_CPPFLAGS) $(CPPFLAGS_$(@F))
+_c_flags       = $(CFLAGS) $(EXTRA_CFLAGS) $(CFLAGS_$(target-stem).o)
+_a_flags       = $(AFLAGS) $(EXTRA_AFLAGS) $(AFLAGS_$(target-stem).o)
+_cpp_flags     = $(CPPFLAGS) $(EXTRA_CPPFLAGS) $(CPPFLAGS_$(target-stem).lds)
 
 ifeq ($(CONFIG_UBSAN),y)
 _CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index bed7a5a2fbe9..ef2f2336c469 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -166,15 +166,15 @@ $(obj)/nconf.o $(obj)/nconf.gui.o: $(obj)/nconf-cfg
 
 # mconf: Used for the menuconfig target based on lxdialog
 hostprogs-y	+= mconf
-lxdialog	:= checklist.o inputbox.o menubox.o textbox.o util.o yesno.o
-mconf-objs	:= mconf.o $(addprefix lxdialog/, $(lxdialog)) $(common-objs)
+lxdialog	:= $(addprefix lxdialog/, \
+		     checklist.o inputbox.o menubox.o textbox.o util.o yesno.o)
+mconf-objs	:= mconf.o $(lxdialog) $(common-objs)
 
 HOSTLDLIBS_mconf = $(shell . $(obj)/mconf-cfg && echo $$libs)
 $(foreach f, mconf.o $(lxdialog), \
   $(eval HOSTCFLAGS_$f = $$(shell . $(obj)/mconf-cfg && echo $$$$cflags)))
 
-$(obj)/mconf.o: $(obj)/mconf-cfg
-$(addprefix $(obj)/lxdialog/, $(lxdialog)): $(obj)/mconf-cfg
+$(addprefix $(obj)/, mconf.o $(lxdialog)): $(obj)/mconf-cfg
 
 # qconf: Used for the xconfig target based on Qt
 hostprogs-y	+= qconf
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
