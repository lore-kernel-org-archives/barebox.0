Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOmxM-0002Gd-Kh
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 18:40:20 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 16 Apr 2020 03:39:45 +0900
Message-Id: <20200415183946.274194-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/2] kbuild: support ccflags-y, asflags-y, and cppflags-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Some Makefiles use ccflags-y, but it is not actually supported.
Support ccflags-y, asflags-y, and cppflags-y now.

Remove the workaround in drivers/pci/Makefile.

I did not add ldflags-y for now because arch/mips/Makefile is using
it for a different meaning.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 drivers/pci/Makefile | 2 --
 scripts/Makefile.lib | 9 ++++++---
 2 files changed, 6 insertions(+), 5 deletions(-)

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
index d4c2ed15b..6ab30c486 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -1,5 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0
 # Backward compatibility
+asflags-y  += $(EXTRA_AFLAGS)
+ccflags-y  += $(EXTRA_CFLAGS)
+cppflags-y += $(EXTRA_CPPFLAGS)
 always-y   += $(always)
 hostprogs  += $(hostprogs-y) $(hostprogs-m)
 
@@ -128,9 +131,9 @@ basename_flags = -D"KBUILD_BASENAME=KBUILD_STR($(call name-fix,$(basetarget)))"
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
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
