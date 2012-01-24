Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og107.obsmtp.com ([64.18.0.184])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RpfZm-0004iL-UZ
 for barebox@lists.infradead.org; Tue, 24 Jan 2012 12:34:15 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Tue, 24 Jan 2012 12:33:55 +0000
Message-Id: <1327408443-3519-2-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
References: <1327408443-3519-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/9] Preparation stage to support multiple PPC architectures.
To: barebox@lists.infradead.org

Rework arch/ppc/Kconfig to select processor types.
Move MPC5200 configuration to architecture sub-directory.
pcm030 configuration file is updated to reflect changes.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/Kconfig                  |   48 +++++++++---------------------------
 arch/ppc/configs/pcm030_defconfig |    3 ++
 arch/ppc/mach-mpc5xxx/Kconfig     |   46 +++++++++++++++++++++++++++++++++++
 3 files changed, 61 insertions(+), 36 deletions(-)

diff --git a/arch/ppc/Kconfig b/arch/ppc/Kconfig
index 4c7b7cd..ea38af6 100644
--- a/arch/ppc/Kconfig
+++ b/arch/ppc/Kconfig
@@ -1,53 +1,29 @@
-
-config BOARDINFO
-	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
-	
-config ARCH_TEXT_BASE
-	hex
-	default 0x00000000 if RELOCATABLE
-	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
-
+#
+#
+#
 config PPC
 	bool
 	select HAVE_CONFIGURABLE_TEXT_BASE
 	select HAS_KALLSYMS
 	select HAS_MODULES
 	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
-	select HAVE_CONFIGURABLE_TEXT_BASE
 	default y
 
-# Uh, we should decide which one we want to use
-config ARCH_MPC5200
-	bool
-
-config MPC5200
-	bool
-
-config MPC5xxx
-	bool
+menu "Architecture Type"
 
-config CACHELINE_SIZE
-	int
-	default 32 if ARCH_MPC5200
+choice
+	prompt "PPC Architecture type"
 
-config HAS_REGINFO
-	bool
-	default y if ARCH_MPC5200
+config ARCH_MPC8XXX
+	bool "Freescale MPC85xx"
 
-choice
-	prompt "Select your board"
+config ARCH_MPC5XXX
+	bool "Freescale MPC5xxx"
 
-config MACH_PHYCORE_MPC5200B_TINY
-	bool "Phycore mpc5200b tiny"
-	select ARCH_MPC5200
-	select MPC5200
-	select MPC5xxx
-	select HAS_CFI
-	help
-	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
-	  board aka pcm030
 endchoice
 
+endmenu
+
 source arch/ppc/mach-mpc5xxx/Kconfig
 source common/Kconfig
 source commands/Kconfig
diff --git a/arch/ppc/configs/pcm030_defconfig b/arch/ppc/configs/pcm030_defconfig
index 5de1c75..c037502 100644
--- a/arch/ppc/configs/pcm030_defconfig
+++ b/arch/ppc/configs/pcm030_defconfig
@@ -32,6 +32,9 @@ CONFIG_NET=y
 CONFIG_NET_DHCP=y
 CONFIG_NET_PING=y
 CONFIG_NET_TFTP=y
+CONFIG_ARCH_MPC5XXX=y
+CONFIG_MACH_PHYCORE_MPC5200B_TINY=y
+CONFIG_DRIVER_NET_MPC5200=y
 CONFIG_DRIVER_CFI=y
 CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_ZLIB=y
diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 632fb85..1473211 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -1,3 +1,47 @@
+if ARCH_MPC5XXX
+
+config BOARDINFO
+	default "Phytec Phycore mpc5200b tiny" if MACH_PHYCORE_MPC5200B_TINY
+
+config ARCH_TEXT_BASE
+	hex
+	default 0x00000000 if RELOCATABLE
+	default 0x01000000 if MACH_PHYCORE_MPC5200B_TINY
+
+config HAS_REGINFO
+	bool
+	default y if ARCH_MPC5200
+
+config CACHELINE_SIZE
+	int
+	default 32 if ARCH_MPC5200
+
+choice
+	prompt "Select your board"
+
+config MACH_PHYCORE_MPC5200B_TINY
+	bool "Phycore mpc5200b tiny"
+	select HAS_CFI
+	help
+	  Say Y here if you are using the Phytec Phycore MPC5200B Tiny
+	  board aka pcm030
+endchoice
+
+config MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+    default y
+
+config ARCH_MPC5200
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+    default y
+
+config MPC5xxx
+	bool
+	depends on MACH_PHYCORE_MPC5200B_TINY
+    default y
+
 menu "Board specific settings       "
 
 config MACH_PHYCORE_MPC5200B_TINY_REV
@@ -10,3 +54,5 @@ config MACH_PHYCORE_MPC5200B_TINY_REV
 	  old board you should set this option to 1
 
 endmenu
+
+endif
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
