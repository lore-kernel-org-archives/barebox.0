Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003iy-Tg
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:12 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0001x7-SK
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000Aa-6z
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:40 +0100
Message-Id: <20181129113048.31857-8-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 07/15] Makefile: link of barebox moved to script
To: Barebox List <barebox@lists.infradead.org>

Adoption of the linux v3.4 patch: 1f2bfbd00e466ff3489b2ca5cc75b1cccd14c123

    Move the final link of vmlinux to a script to improve
    readability and maintainability of the code.

    The Makefile fragments used to link vmlinux has over the
    years seen far too many changes and the logic had become
    hard to follow.

    As the process by nature is serialized there was
    nothing gained including this in the Makefile.

    "um" has special link requirments - and the
    only way to handle this was to hard-code the linking
    of "um" in the script.
    This was better than trying to modularize it only for the
    benefit of "um" anyway.

    The shell script has been improved after input from:
    Arnaud Lacombe <lacombar@gmail.com>
    Nick Bowler <nbowler@elliptictech.com>

    Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
    Cc: Arnaud Lacombe <lacombar@gmail.com>
    Cc: Nick Bowler <nbowler@elliptictech.com>
    Cc: Richard Weinberger <richard@nod.at>
    Signed-off-by: Michal Marek <mmarek@suse.cz>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile                | 187 ++++-----------------------------
 scripts/link-barebox.sh | 223 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 242 insertions(+), 168 deletions(-)
 create mode 100755 scripts/link-barebox.sh

diff --git a/Makefile b/Makefile
index ca9ee925cbef..8b8fb9caa887 100644
--- a/Makefile
+++ b/Makefile
@@ -217,6 +217,7 @@ endif
 
 export KBUILD_MODULES KBUILD_BUILTIN
 export KBUILD_CHECKSRC KBUILD_SRC
+export KCONFIG_CONFIG
 
 # Beautify output
 # ---------------------------------------------------------------------------
@@ -326,6 +327,7 @@ export HOSTCXX HOSTCXXFLAGS HOSTLDFLAGS HOST_LOADLIBES LDFLAGS_MODULE CHECK CHEC
 
 export CPPFLAGS NOSTDINC_FLAGS BAREBOXINCLUDE OBJCOPYFLAGS LDFLAGS
 export CFLAGS CFLAGS_KERNEL
+
 export AFLAGS AFLAGS_KERNEL
 export LDFLAGS_barebox
 
@@ -551,164 +553,11 @@ DEFAULT_COMPRESSION_SUFFIX :=
 endif
 export DEFAULT_COMPRESSION_SUFFIX
 
-# Build barebox
-# ---------------------------------------------------------------------------
-# barebox is built from the objects selected by $(barebox-init) and
-# $(barebox-main). Most are built-in.o files from top-level directories
-# in the kernel tree, others are specified in arch/$(ARCH)Makefile.
-# Ordering when linking is important, and $(barebox-init) must be first.
-#
-# FIXME: This picture is wrong for barebox. We have no init, driver, mm
-#
-# barebox
-#   ^
-#   |
-#   +-< $(barebox-init)
-#   |   +--< init/version.o + more
-#   |
-#   +--< $(barebox-main)
-#   |    +--< driver/built-in.o mm/built-in.o + more
-#   |
-#   +-< kallsyms.o (see description in CONFIG_KALLSYMS section)
-#
-# barebox version cannot be updated during normal
-# descending-into-subdirs phase since we do not yet know if we need to
-# update barebox.
-#
-# System.map is generated to document addresses of all kernel symbols
-
 barebox-common := $(common-y)
 barebox-pbl-common := $(pbl-common-y)
 export barebox-pbl-common
-barebox-all    := $(barebox-common)
-barebox-lds    := $(lds-y)
-
-# Rule to link barebox
-# May be overridden by arch/$(ARCH)/Makefile
-quiet_cmd_barebox__ ?= LD      $@
-      cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
-      -T $(barebox-lds)                         \
-      --start-group $(barebox-common) --end-group                  \
-      $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
-
-# Generate new barebox version
-quiet_cmd_barebox_version = GEN     .version
-      cmd_barebox_version = set -e;                     \
-	if [ ! -r .version ]; then			\
-	  rm -f .version;				\
-	  echo 1 >.version;				\
-	else						\
-	  mv .version .old_version;			\
-	  expr 0$$(cat .old_version) + 1 >.version;	\
-	fi;						\
-	$(MAKE) $(build)=common
-
-# Generate System.map
-quiet_cmd_sysmap = SYSMAP
-      cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap
-
-# Link of barebox
-# If CONFIG_KALLSYMS is set .version is already updated
-# Generate System.map and verify that the content is consistent
-# Use + in front of the barebox_version rule to silent warning with make -j2
-# First command is ':' to allow us to use + in front of the rule
-define rule_barebox__
-	:
-	$(if $(CONFIG_KALLSYMS),,+$(call cmd,barebox_version))
-	$(call cmd,barebox__)
-
-	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
-
-	$(Q)$(if $($(quiet)cmd_sysmap),                                      \
-	  echo '  $($(quiet)cmd_sysmap)  System.map' &&)                     \
-	$(cmd_sysmap) $@ System.map;                                         \
-	if [ $$? -ne 0 ]; then                                               \
-		rm -f $@;                                                    \
-		false;                                                       \
-	fi;
-endef
-
-ifdef CONFIG_KALLSYMS
-# Generate section listing all symbols and add it into barebox $(kallsyms.o)
-# It's a three stage process:
-# o .tmp_barebox1 has all symbols and sections, but __kallsyms is
-#   empty
-#   Running kallsyms on that gives us .tmp_kallsyms1.o with
-#   the right size - barebox version is updated during this step
-# o .tmp_barebox2 now has a __kallsyms section of the right size,
-#   but due to the added section, some addresses have shifted.
-#   From here, we generate a correct .tmp_kallsyms2.o
-# o The correct .tmp_kallsyms2.o is linked into the final barebox.
-# o Verify that the System.map from barebox matches the map from
-#   .tmp_barebox2, just in case we did not generate kallsyms correctly.
-# o If CONFIG_KALLSYMS_EXTRA_PASS is set, do an extra pass using
-#   .tmp_barebox3 and .tmp_kallsyms3.o.  This is only meant as a
-#   temporary bypass to allow the kernel to be built while the
-#   maintainers work out what went wrong with kallsyms.
-
-ifdef CONFIG_KALLSYMS_EXTRA_PASS
-last_kallsyms := 3
-else
-last_kallsyms := 2
-endif
-
-kallsyms.o := .tmp_kallsyms$(last_kallsyms).o
-
-define verify_kallsyms
-	$(Q)$(if $($(quiet)cmd_sysmap),                                      \
-	  echo '  $($(quiet)cmd_sysmap)  .tmp_System.map' &&)                \
-	  $(cmd_sysmap) .tmp_barebox$(last_kallsyms) .tmp_System.map
-	$(Q)cmp -s System.map .tmp_System.map ||                             \
-		(echo Inconsistent kallsyms data;                            \
-		 echo Try setting CONFIG_KALLSYMS_EXTRA_PASS;                \
-		 rm .tmp_kallsyms* ; false )
-endef
-
-# Update barebox version before link
-# Use + in front of this rule to silent warning about make -j1
-# First command is ':' to allow us to use + in front of this rule
-cmd_ksym_ld = $(cmd_barebox__)
-define rule_ksym_ld
-	:
-	+$(call cmd,barebox_version)
-	$(call cmd,barebox__)
-	$(Q)echo 'cmd_$@ := $(cmd_barebox__)' > $(@D)/.$(@F).cmd
-endef
-
-# Generate .S file with all kernel symbols
-quiet_cmd_kallsyms = KSYM    $@
-      cmd_kallsyms = $(NM) -n $< | $(KALLSYMS) --all-symbols > $@
-
-.tmp_kallsyms1.o .tmp_kallsyms2.o .tmp_kallsyms3.o: %.o: %.S scripts FORCE
-	$(call if_changed_dep,as_o_S)
-
-.tmp_kallsyms%.S: .tmp_barebox% $(KALLSYMS)
-	$(call cmd,kallsyms)
-
-# .tmp_barebox1 must be complete except kallsyms, so update barebox version
-.tmp_barebox1: $(barebox-lds) $(barebox-all) FORCE
-	$(call if_changed_rule,ksym_ld)
-
-.tmp_barebox2: $(barebox-lds) $(barebox-all) .tmp_kallsyms1.o FORCE
-	$(call if_changed,barebox__)
-
-.tmp_barebox3: $(barebox-lds) $(barebox-all) .tmp_kallsyms2.o FORCE
-	$(call if_changed,barebox__)
-
-# Needs to visit scripts/ before $(KALLSYMS) can be used.
-$(KALLSYMS): scripts ;
-
-# Generate some data for debugging strange kallsyms problems
-debug_kallsyms: .tmp_map$(last_kallsyms)
-
-.tmp_map%: .tmp_barebox% FORCE
-	($(OBJDUMP) -h $< | $(AWK) '/^ +[0-9]/{print $$4 " 0 " $$2}'; $(NM) $<) | sort > $@
-
-.tmp_map3: .tmp_map2
-
-.tmp_map2: .tmp_map1
-
-endif # ifdef CONFIG_KALLSYMS
+barebox-all := $(barebox-common)
+barebox-lds := $(lds-y)
 
 # Do modpost on a prelinked vmlinux. The finally linked vmlinux has
 # relevant sections renamed as per the linker script.
@@ -775,10 +624,20 @@ barebox.S barebox.s: barebox FORCE
 endif
 
 # barebox image
-barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
+export barebox-deps := $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o)
+
+# Final link of barebox
+      cmd_link-barebox = $(CONFIG_SHELL) $< $(LD) $(LDFLAGS) $(LDFLAGS_barebox)
+quiet_cmd_link-barebox = LINK    $@
+
+export BAREBOX_LDS := $(barebox-lds)
+export BAREBOX_COMMON := $(barebox-common)
+export KALLSYMS
+
+barebox: scripts/link-barebox.sh $(barebox-deps) FORCE
 	$(call barebox-modpost)
-	$(call if_changed_rule,barebox__)
-	$(Q)rm -f .old_version
+	+$(call if_changed,link-barebox)
+
 
 barebox.srec: barebox
 	$(OBJCOPY) -O srec $< $@
@@ -979,9 +838,7 @@ endif # CONFIG_MODULES
 
 # Directories & files removed with 'make clean'
 CLEAN_DIRS  += $(MODVERDIR)
-CLEAN_FILES +=	barebox System.map include/generated/barebox_default_env.h \
-                .tmp_version .tmp_barebox* barebox.bin barebox.map barebox.S \
-		.tmp_kallsyms* barebox.ldr \
+CLEAN_FILES +=	include/generated/barebox_default_env.h \
 		scripts/bareboxenv-target barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
@@ -1005,6 +862,7 @@ $(clean-dirs):
 	$(Q)$(MAKE) $(clean)=$(patsubst _clean_%,%,$@)
 
 clean: archclean $(clean-dirs)
+	$(Q)$(CONFIG_SHELL) $(srctree)/scripts/link-barebox.sh clean
 	$(call cmd,rmdirs)
 	$(call cmd,rmfiles)
 	@find . $(RCS_FIND_IGNORE) \
@@ -1169,13 +1027,6 @@ quiet_cmd_rmfiles = $(if $(wildcard $(rm-files)),CLEAN   $(wildcard $(rm-files))
       cmd_rmfiles = rm -f $(rm-files)
 
 
-a_flags = -Wp,-MD,$(depfile) $(AFLAGS) $(AFLAGS_KERNEL) \
-	  $(NOSTDINC_FLAGS) $(CPPFLAGS) \
-	  $(modkern_aflags) $(EXTRA_AFLAGS) $(AFLAGS_$(basetarget).o)
-
-quiet_cmd_as_o_S = AS      $@
-cmd_as_o_S       = $(CC) $(a_flags) -c -o $@ $<
-
 # read all saved command lines
 
 targets := $(wildcard $(sort $(targets)))
diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
new file mode 100755
index 000000000000..2d920bc44b8e
--- /dev/null
+++ b/scripts/link-barebox.sh
@@ -0,0 +1,223 @@
+#!/bin/sh
+#
+# Link barebox
+# ---------------------------------------------------------------------------
+# barebox is built from the objects selected by $(barebox-init) and
+# $(barebox-main). Most are built-in.o files from top-level directories
+# in the kernel tree, others are specified in arch/$(ARCH)Makefile.
+# Ordering when linking is important, and $(barebox-init) must be first.
+#
+# FIXME: This picture is wrong for barebox. We have no init, driver, mm
+#
+# barebox
+#   ^
+#   |
+#   +-< $(barebox-init)
+#   |   +--< init/version.o + more
+#   |
+#   +--< $(barebox-main)
+#   |    +--< driver/built-in.o mm/built-in.o + more
+#   |
+#   +-< kallsyms.o (see description in CONFIG_KALLSYMS section)
+#
+# barebox version cannot be updated during normal
+# descending-into-subdirs phase since we do not yet know if we need to
+# update barebox.
+#
+# System.map is generated to document addresses of all kernel symbols
+
+# Error out on error
+set -e
+
+# Nice output in kbuild format
+# Will be supressed by "make -s"
+info()
+{
+	if [ "${quiet}" != "silent_" ]; then
+		printf "  %-7s %s\n" ${1} ${2}
+	fi
+}
+
+# Thin archive build here makes a final archive with
+# symbol table and indexes from barebox objects, which can be
+# used as input to linker.
+#
+# Traditional incremental style of link does not require this step
+#
+# built-in.o output file
+#
+archive_builtin()
+{
+	if [ -n "${CONFIG_THIN_ARCHIVES}" ]; then
+		info AR built-in.o
+		rm -f built-in.o;
+		${AR} rcsT built-in.o ${BAREBOX_COMMON}
+	fi
+}
+
+# Thin archive build here makes a final archive with
+# symbol table and indexes from barebox objects, which can be
+# used as input to linker.
+#
+# Traditional incremental style of link does not require this step
+#
+# built-in-pbl.o output file
+#
+archive_builtin_pbl()
+{
+	if [ -n "${CONFIG_THIN_ARCHIVES}" ] &&  [ -n "${CONFIG_PBL_IMAGE}" ]; then
+		info PBLAR built-in-pbl.o
+		rm -f built-in-pbl.o;
+		${AR} rcsT built-in-pbl.o ${BAREBOX_PBL_COMMON}
+	fi
+}
+
+# Link of barebox
+# ${1} - optional extra .o files
+# ${2} - output file
+barebox_link()
+{
+	${LD} ${LDFLAGS} ${LDFLAGS_barebox} -o ${2}                \
+		-T ${BAREBOX_LDS} --start-group ${BAREBOX_COMMON} --end-group ${1}
+}
+
+# Create ${2} .o file with all symbols from the ${1} object file
+kallsyms()
+{
+	info KSYM ${2}
+	local kallsymopt;
+
+	if [ -n "${CONFIG_KALLSYMS}" ]; then
+		kallsymopt=--all-symbols
+	fi
+
+	local aflags="${AFLAGS} ${AFLAGS_KERNEL}			\
+		      ${NOSTDINC_FLAGS} ${BAREBOXINCLUDE} ${CPPFLAGS}"
+
+	${NM} -n ${1} | \
+		${KALLSYMS} ${kallsymopt} | \
+		${CC} ${aflags} -c -o ${2} -x assembler-with-cpp -
+}
+
+# Create map file with all symbols from ${1}
+# See mksymap for additional details
+mksysmap()
+{
+	${CONFIG_SHELL} "${srctree}/scripts/mksysmap" ${1} ${2}
+}
+
+# Delete output files in case of error
+trap cleanup SIGHUP SIGINT SIGQUIT SIGTERM ERR
+cleanup()
+{
+	rm -f include/generated/barebox_default_env.h
+	rm -f .old_version
+	rm -f .tmp_System.map
+	rm -f .tmp_kallsyms*
+	rm -f .tmp_version
+	rm -f .tmp_barebox*
+	rm -f System.map
+	rm -f barebox.S
+	rm -f barebox.bin
+	rm -f barebox
+}
+
+#
+#
+# Use "make V=1" to debug this script
+case "${KBUILD_VERBOSE}" in
+	*1*)
+		set -x
+		;;
+esac
+
+if [ "$1" = "clean" ]; then
+	cleanup
+	exit 0
+fi
+
+# We need access to CONFIG_ symbols
+case "${KCONFIG_CONFIG}" in
+	*/*)
+		. "${KCONFIG_CONFIG}"
+		;;
+	*)
+		# Force using a file from the current directory
+		. "./${KCONFIG_CONFIG}"
+esac
+
+# Update version
+info GEN .version
+if [ ! -r .version ]; then
+	rm -f .version;
+	echo 1 >.version;
+else
+	mv .version .old_version;
+	expr 0$(cat .old_version) + 1 >.version;
+fi;
+
+kallsymso=""
+kallsyms_barebox=""
+if [ -n "${CONFIG_KALLSYMS}" ]; then
+
+	# kallsyms support
+	# Generate section listing all symbols and add it into vmlinux
+	# It's a three step process:
+	# 1)  Link .tmp_barebo1 so it has all symbols and sections,
+	#     but __kallsyms is empty.
+	#     Running kallsyms on that gives us .tmp_kallsyms1.o with
+	#     the right size
+	# 2)  Link .tmp_barebox2 so it now has a __kallsyms section of
+	#     the right size, but due to the added section, some
+	#     addresses have shifted.
+	#     From here, we generate a correct .tmp_barebox2.o
+	# 2a) We may use an extra pass as this has been necessary to
+	#     woraround some alignment related bugs.
+	#     KALLSYMS_EXTRA_PASS=1 is used to trigger this.
+	# 3)  The correct ${kallsymso} is linked into the final barebox.
+	#
+	# a)  Verify that the System.map from barebox matches the map from
+	#     ${kallsymso}.
+
+	kallsymso=.tmp_kallsyms2.o
+	kallsyms_barebox=.tmp_barebox2
+
+	# step 1
+	barebox_link "" .tmp_barebox1
+	kallsyms .tmp_barebox1 .tmp_kallsyms1.o
+
+	# step 2
+	barebox_link .tmp_kallsyms1.o .tmp_barebox2
+	kallsyms .tmp_barebox2 .tmp_kallsyms2.o
+
+	# step 2a
+	if [ -n "${CONFIG_KALLSYMS_EXTRA_PASS}" ]; then
+		kallsymso=.tmp_kallsyms3.o
+		kallsyms_barebox=.tmp_barebox3
+
+		barebox_link .tmp_kallsyms2.o .tmp_barebox3
+
+		kallsyms .tmp_barebox3 .tmp_kallsyms3.o
+	fi
+fi
+
+info LD barebox
+barebox_link "${kallsymso}" barebox
+
+info SYSMAP System.map
+mksysmap barebox System.map
+
+# step a (see comment above)
+if [ -n "${CONFIG_KALLSYMS}" ]; then
+	mksysmap ${kallsyms_barebox} .tmp_System.map
+
+	if ! cmp -s System.map .tmp_System.map; then
+		echo Inconsistent kallsyms data
+		echo echo Try "make KALLSYMS_EXTRA_PASS=1" as a workaround
+		cleanup
+		exit 1
+	fi
+fi
+
+# We made a new barebox - delete old version file
+rm -f .old_version
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
