Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnZHq-0001qP-Bg
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 03:07:52 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 23 Jun 2020 12:07:02 +0900
Message-Id: <20200623030702.666462-3-masahiroy@kernel.org>
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
Subject: [PATCH 3/3] scripts: use 'userprogs' to build programs for target
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Use 'userprogs' syntax to build standalone programs for the target
architecture (i.e. the same architecture as the barebox).

This changes the compiler flags passed to the target programs.

Previously, it used $(KBUILD_CFLAGS), which contains the same compiler
flags as used for the barebox space.

Going forward, it will use $(KBUILD_USERCFLAGS), which contains smaller
set of compiler flags because there is no need to add low-level options
for userspace builds.

The shortlog will be annotated with [U].

  CC [U]  scripts/bareboxenv-target
  CC [U]  scripts/kernel-install-target
  CC [U]  scripts/bareboxcrc32-target
  CC [U]  scripts/bareboximd-target

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile                | 29 ++++++++++-------------------
 scripts/bareboxcrc32-target.c   |  1 +
 scripts/bareboxenv-target.c     |  1 +
 scripts/bareboximd-target.c     |  1 +
 scripts/kernel-install-target.c |  1 +
 5 files changed, 14 insertions(+), 19 deletions(-)
 create mode 100644 scripts/bareboxcrc32-target.c
 create mode 100644 scripts/bareboxenv-target.c
 create mode 100644 scripts/bareboximd-target.c
 create mode 100644 scripts/kernel-install-target.c

diff --git a/scripts/Makefile b/scripts/Makefile
index f3b9aece9..75e68822d 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -35,30 +35,21 @@ HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
 hostprogs-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT) += omap4_usbboot
 
+userprogs-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
+userprogs-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
+userprogs-$(CONFIG_BAREBOXCRC32_TARGET)		+= bareboxcrc32-target
+userprogs-$(CONFIG_IMD_TARGET)			+= bareboximd-target
+
+userccflags += -I $(srctree)/$(src)/include
+
+userprogs	:= $(userprogs-y)
+always-y	:= $(hostprogs-y) $(hostprogs-m) $(userprogs-y)
+
 subdir-y			+= mod
 subdir-y			+= imx
 subdir-$(CONFIG_X86)		+= setupmbr
 subdir-$(CONFIG_DTC)		+= dtc
 subdir-$(CONFIG_ARCH_TEGRA)	+= tegra
 
-targetprogs-$(CONFIG_BAREBOXENV_TARGET) += bareboxenv-target
-targetprogs-$(CONFIG_KERNEL_INSTALL_TARGET) += kernel-install-target
-targetprogs-$(CONFIG_BAREBOXCRC32_TARGET) += bareboxcrc32-target
-targetprogs-$(CONFIG_IMD_TARGET) += bareboximd-target
-
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
-
-quiet_cmd_csingle	= CC      $@
-      cmd_csingle	= $(CC) -Wp,-MD,$(depfile) $(TARGETCFLAGS) $(KBUILD_CFLAGS) -o $@ $<
-
-__targetprogs	:= $(sort $(targetprogs-y) $(targetprogs-m))
-target-csingle	:= $(foreach m,$(__targetprogs),$(if $($(m)-objs),,$(m)))
-__targetprogs	:= $(addprefix $(obj)/,$(__targetprogs))
-target-csingle	:= $(addprefix $(obj)/,$(target-csingle))
-TARGETCFLAGS += -I$(srctree)/scripts/include/
-
-always		:= $(hostprogs-y) $(hostprogs-m) $(targetprogs-y)
-
-$(target-csingle): %-target: %.c FORCE
-	$(call if_changed_dep,csingle)
diff --git a/scripts/bareboxcrc32-target.c b/scripts/bareboxcrc32-target.c
new file mode 100644
index 000000000..6c09c9f76
--- /dev/null
+++ b/scripts/bareboxcrc32-target.c
@@ -0,0 +1 @@
+#include "bareboxcrc32.c"
diff --git a/scripts/bareboxenv-target.c b/scripts/bareboxenv-target.c
new file mode 100644
index 000000000..caf175920
--- /dev/null
+++ b/scripts/bareboxenv-target.c
@@ -0,0 +1 @@
+#include "bareboxenv.c"
diff --git a/scripts/bareboximd-target.c b/scripts/bareboximd-target.c
new file mode 100644
index 000000000..903adee53
--- /dev/null
+++ b/scripts/bareboximd-target.c
@@ -0,0 +1 @@
+#include "bareboximd.c"
diff --git a/scripts/kernel-install-target.c b/scripts/kernel-install-target.c
new file mode 100644
index 000000000..845a96d29
--- /dev/null
+++ b/scripts/kernel-install-target.c
@@ -0,0 +1 @@
+#include "kernel-install.c"
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
