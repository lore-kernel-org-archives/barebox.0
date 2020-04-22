Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR91J-0000Ty-5V
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:38:06 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 15:37:31 +0900
Message-Id: <20200422063732.1584550-3-masahiroy@kernel.org>
In-Reply-To: <20200422063732.1584550-1-masahiroy@kernel.org>
References: <20200422063732.1584550-1-masahiroy@kernel.org>
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
Subject: [PATCH v2 3/4] kbuild: support ccflags-y, asflags-y, cppflags-y,
 and ldflags-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Some Makefiles use ccflags-y, but it is not actually supported.
Support ccflags-y, asflags-y, cppflags-y, and ldflags-y like Linux.

Remove the workaround in drivers/pci/Makefile.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - add ldflags-y

 drivers/pci/Makefile |  2 --
 scripts/Makefile.lib | 12 ++++++++----
 2 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/Makefile b/drivers/pci/Makefile
index 3ca670865..d227619ed 100644
--- a/drivers/pci/Makefile
+++ b/drivers/pci/Makefile
@@ -5,8 +5,6 @@ obj-y		+= pci.o bus.o pci_iomap.o
 
 ccflags-$(CONFIG_PCI_DEBUG) := -DDEBUG
 
-CPPFLAGS += $(ccflags-y)
-
 obj-$(CONFIG_PCI_MVEBU)	+= pci-mvebu.o pci-mvebu-phy.o
 obj-$(CONFIG_PCI_TEGRA) += pci-tegra.o
 obj-$(CONFIG_PCIE_DW) += pcie-designware.o pcie-designware-host.o
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index d4c2ed15b..5a5d6a3a6 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -1,5 +1,9 @@
 # SPDX-License-Identifier: GPL-2.0
 # Backward compatibility
+asflags-y  += $(EXTRA_AFLAGS)
+ccflags-y  += $(EXTRA_CFLAGS)
+cppflags-y += $(EXTRA_CPPFLAGS)
+ldflags-y  += $(EXTRA_LDFLAGS)
 always-y   += $(always)
 hostprogs  += $(hostprogs-y) $(hostprogs-m)
 
@@ -128,9 +132,9 @@ basename_flags = -D"KBUILD_BASENAME=KBUILD_STR($(call name-fix,$(basetarget)))"
 modname_flags  = $(if $(filter 1,$(words $(modname))),\
                  -D"KBUILD_MODNAME=KBUILD_STR($(call name-fix,$(modname)))")
 
-_c_flags       = $(CFLAGS) $(EXTRA_CFLAGS) $(CFLAGS_$(target-stem).o)
-_a_flags       = $(AFLAGS) $(EXTRA_AFLAGS) $(AFLAGS_$(target-stem).o)
-_cpp_flags     = $(CPPFLAGS) $(EXTRA_CPPFLAGS) $(CPPFLAGS_$(target-stem).lds)
+_c_flags       = $(CFLAGS) $(ccflags-y) $(CFLAGS_$(target-stem).o)
+_a_flags       = $(AFLAGS) $(asflags-y) $(AFLAGS_$(target-stem).o)
+_cpp_flags     = $(CPPFLAGS) $(cppflags-y) $(CPPFLAGS_$(target-stem).lds)
 
 ifeq ($(CONFIG_UBSAN),y)
 _CFLAGS_UBSAN   = $(eval _CFLAGS_UBSAN := $(CFLAGS_UBSAN))$(_CFLAGS_UBSAN)
@@ -167,7 +171,7 @@ a_flags        = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(CPPFLAGS) \
 
 cpp_flags      = -Wp,-MD,$(depfile) $(NOSTDINC_FLAGS) $(__cpp_flags)
 
-ld_flags       = $(LDFLAGS) $(EXTRA_LDFLAGS)
+ld_flags       = $(LDFLAGS) $(ldflags-y)
 
 dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/arch/$(SRCARCH)/dts/include		 \
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
