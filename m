Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSKXB-0003iz-W6
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 11:31:12 +0000
Received: from unicorn.hi.pengutronix.de
 ([2001:67c:670:100:a61f:72ff:fe69:16d] helo=unicorn)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWz-0001xG-1j
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:53 +0100
Received: from str by unicorn with local (Exim 4.89)
 (envelope-from <str@pengutronix.de>) id 1gSKWy-0000Ak-CW
 for barebox@lists.infradead.org; Thu, 29 Nov 2018 12:30:52 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 29 Nov 2018 12:30:43 +0100
Message-Id: <20181129113048.31857-11-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 10/15] scripts: link-barebox: allow architectures to use thin
 archives instead of ld -r
To: Barebox List <barebox@lists.infradead.org>

Based on linux v4.8 patch: a5967db9af51a84f5e181600954714a9e4c69f1f

    kbuild: allow architectures to use thin archives instead of ld -r

    ld -r is an incremental link used to create built-in.o files in build
    subdirectories. It produces relocatable object files containing all
    its input files, and these are are then pulled together and relocated
    in the final link. Aside from the bloat, this constrains the final
    link relocations, which has bitten large powerpc builds with
    unresolvable relocations in the final link.

    Alan Modra has recommended the kernel use thin archives for linking.
    This is an alternative and means that the linker has more information
    available to it when it links the kernel.

    This patch enables a config option architectures can select, which
    causes all built-in.o files to be built as thin archives. built-in.o
    files in subdirectories do not get symbol table or index attached,
    which improves speed and size. The final link pass creates a
    built-in.o archive in the root output directory which includes the
    symbol table and index. The linker then uses takes this file to link.

    The --whole-archive linker option is required, because the linker now
    has visibility to every individual object file, and it will otherwise
    just completely avoid including those without external references
    (consider a file with EXPORT_SYMBOL or initcall or hardware exceptions
    as its only entry points). The traditional built works "by luck" as
    built-in.o files are large enough that they're going to get external
    references. However this optimisation is unpredictable for the kernel
    (due to above external references), ineffective at culling unused, and
    costly because the .o files have to be searched for references.
    Superior alternatives for link-time culling should be used instead.

    Build characteristics for inclink vs thinarc, on a small powerpc64le
    pseries VM with a modest .config:

                                      inclink       thinarc
    sizes
    vmlinux                        15 618 680    15 625 028
    sum of all built-in.o          56 091 808     1 054 334
    sum excluding root built-in.o                   151 430

    find -name built-in.o | xargs rm ; time make vmlinux
    real                              22.772s       21.143s
    user                              13.280s       13.430s
    sys                                4.310s        2.750s

    - Final kernel pulled in only about 6K more, which shows how
      ineffective the object file culling is.
    - Build performance looks improved due to less pagecache activity.
      On IO constrained systems it could be a bigger win.
    - Build size saving is significant.

    Side note, the toochain understands archives, so there's some tricks,
    $ ar t built-in.o          # list all files you linked with
    $ size built-in.o          # and their sizes
    $ objdump -d built-in.o    # disassembly (unrelocated) with filenames

    Implementation by sfr, minor tweaks by npiggin.

    Signed-off-by: Stephen Rothwell <sfr@canb.auug.org.au>
    Signed-off-by: Nicholas Piggin <npiggin@gmail.com>
    Signed-off-by: Michal Marek <mmarek@suse.com>

For barebox using the *_defconfig

    sizes
    barebox-socfpga-de0_nano_soc.img                 225087        225045
    barebox-socfpga-sockit.img                       226239        226197
    barebox-socfpga-socrates.img                     225247        225205
    barebox-solidrun-hummingboard2-microsom-i4.img   635596        635109
    barebox-tq-mba53-512mib.img                      618856        618445

With socfpga_defconfig build times speed up a little, too:

    time make barebox
    real                                             32.22s        29.42s
    user                                             28.47s        26.33s
    sys                                               4.10s         3.94s

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Makefile                |  1 +
 common/Kconfig          |  6 ++++++
 scripts/Makefile.build  | 30 ++++++++++++++++++++++++------
 scripts/link-barebox.sh | 14 +++++++++++++-
 4 files changed, 44 insertions(+), 7 deletions(-)

diff --git a/Makefile b/Makefile
index 8b8fb9caa887..4688ee7c126b 100644
--- a/Makefile
+++ b/Makefile
@@ -632,6 +632,7 @@ quiet_cmd_link-barebox = LINK    $@
 
 export BAREBOX_LDS := $(barebox-lds)
 export BAREBOX_COMMON := $(barebox-common)
+export BAREBOX_PBL_COMMON := $(barebox-pbl-common)
 export KALLSYMS
 
 barebox: scripts/link-barebox.sh $(barebox-deps) FORCE
diff --git a/common/Kconfig b/common/Kconfig
index c97beea81513..ed7a03246495 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -365,6 +365,12 @@ config RELOCATABLE
 	  allowing it to relocate to the end of the available RAM. This
 	  way you have the whole memory in a single piece.
 
+config THIN_ARCHIVES
+       bool
+       help
+         Select this if the architecture wants to use thin archives
+	 instead of ld -r to create the built-in.o files.
+
 config PANIC_HANG
 	bool "hang the system in case of a fatal error"
 	help
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 56ee07206516..a46e073f8250 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -311,11 +311,24 @@ $(sort $(subdir-obj-y)): $(subdir-ym) ;
 # Rule to compile a set of .o files into one .o file
 #
 ifdef builtin-target
-quiet_cmd_link_o_target = LD      $@
+
+ifdef CONFIG_THIN_ARCHIVES
+  # FIXME: it should be possible to use 's' instead of 'S' here, but this breaks the
+  # pbl build process, with a missing index. Usage of 's' *can* speed up the build,
+  # but as the buildtime of barebox is rather short, keep the 's' for the time being
+  cmd_make_builtin = rm -f $@; $(AR) rcsT$(ARFLAGS)
+  cmd_make_empty_builtin = rm -f $@; $(AR) rcST$(ARFLAGS)
+  quiet_cmd_link_o_target = AR      $@
+else
+  cmd_make_builtin = $(LD) $(ld_flags) -r -o
+  cmd_make_empty_builtin = rm -f $@; $(AR) rcs$(ARFLAGS)
+  quiet_cmd_link_o_target = LD      $@
+endif
+
 # If the list of objects to link is empty, just create an empty built-in.o
 cmd_link_o_target = $(if $(strip $(obj-y)),\
-		      $(LD) $(ld_flags) -r -o $@ $(filter $(obj-y), $^),\
-		      rm -f $@; $(AR) rcs $@)
+		      $(cmd_make_builtin) $@ $(filter $(obj-y), $^),\
+		      $(cmd_make_empty_builtin) $@)
 
 $(builtin-target): $(obj-y) FORCE
 	$(call if_changed,link_o_target)
@@ -327,8 +340,8 @@ ifdef pbl-target
 quiet_cmd_pbl_link_o_target = PBLLD   $@
 # If the list of objects to link is empty, just create an empty built-in-pbl.o
 cmd_pbl_link_o_target = $(if $(strip $(pbl-y)),\
-		      $(LD) $(ld_flags) -r -o $@ $(filter $(pbl-y), $^),\
-		      rm -f $@; $(AR) rcs $@)
+		      $(cmd_make_builtin) $@ $(filter $(pbl-y), $^),\
+		      $(cmd_make_empty_builtin) $@)
 
 $(pbl-target): $(pbl-y) FORCE
 	$(call if_changed,pbl_link_o_target)
@@ -341,7 +354,12 @@ endif # pbl-target
 #
 ifdef lib-target
 quiet_cmd_link_l_target = AR      $@
-cmd_link_l_target = rm -f $@; $(AR) $(EXTRA_ARFLAGS) rcs $@ $(lib-y)
+
+ifdef CONFIG_THIN_ARCHIVES
+  cmd_link_l_target = rm -f $@; $(AR) rcsT$(ARFLAGS) $@ $(lib-y)
+else
+  cmd_link_l_target = rm -f $@; $(AR) rcs$(ARFLAGS) $@ $(lib-y)
+endif
 
 $(lib-target): $(lib-y) FORCE
 	$(call if_changed,link_l_target)
diff --git a/scripts/link-barebox.sh b/scripts/link-barebox.sh
index 20375792a7f7..a783dd6d5532 100755
--- a/scripts/link-barebox.sh
+++ b/scripts/link-barebox.sh
@@ -77,8 +77,16 @@ archive_builtin_pbl()
 # ${2} - output file
 barebox_link()
 {
+	local objects
+
+	if [ -n "${CONFIG_THIN_ARCHIVES}" ]; then
+		objects="--whole-archive built-in.o ${1}"
+	else
+		objects="--start-group ${BAREBOX_COMMON} --end-group ${1}"
+	fi
+
 	${LD} ${LDFLAGS} ${LDFLAGS_barebox} -o ${2}                \
-		-T ${BAREBOX_LDS} --start-group ${BAREBOX_COMMON} --end-group ${1}
+		-T ${BAREBOX_LDS} ${objects}
 }
 
 # Create ${2} .o file with all symbols from the ${1} object file
@@ -116,6 +124,7 @@ cleanup()
 	rm -f .tmp_kallsyms*
 	rm -f .tmp_version
 	rm -f .tmp_barebox*
+	rm -f built-in.o
 	rm -f System.map
 	rm -f barebox.S
 	rm -f barebox.bin
@@ -160,6 +169,9 @@ case "${KCONFIG_CONFIG}" in
 		. "./${KCONFIG_CONFIG}"
 esac
 
+archive_builtin
+archive_builtin_pbl
+
 # Update version
 info GEN .version
 if [ ! -r .version ]; then
-- 
2.19.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
