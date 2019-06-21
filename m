Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heBza-0006rR-Ui
 for barebox@lists.infradead.org; Fri, 21 Jun 2019 05:21:44 +0000
Received: by mail-lj1-x242.google.com with SMTP id v18so4808868ljh.6
 for <barebox@lists.infradead.org>; Thu, 20 Jun 2019 22:21:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 21 Jun 2019 08:21:35 +0300
Message-Id: <20190621052138.12246-2-antonynpavlov@gmail.com>
In-Reply-To: <20190621052138.12246-1-antonynpavlov@gmail.com>
References: <20190621052138.12246-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/4] MIPS: Kconfig: move ARCH_TEXT_BASE to top mips Kconfig
 file
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig               | 4 ++++
 arch/mips/mach-ar231x/Kconfig   | 4 ----
 arch/mips/mach-ath79/Kconfig    | 4 ----
 arch/mips/mach-bcm47xx/Kconfig  | 4 ----
 arch/mips/mach-loongson/Kconfig | 4 ----
 arch/mips/mach-malta/Kconfig    | 4 ----
 arch/mips/mach-xburst/Kconfig   | 4 ----
 7 files changed, 4 insertions(+), 24 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 936e56fa27..728295d486 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -29,6 +29,10 @@ config GENERIC_LINKER_SCRIPT
 config PHYS_ADDR_T_64BIT
 	bool
 
+config ARCH_TEXT_BASE
+	hex
+	default 0xa0800000
+
 menu "Machine selection"
 
 config MIPS_RELOCATION_TABLE_SIZE
diff --git a/arch/mips/mach-ar231x/Kconfig b/arch/mips/mach-ar231x/Kconfig
index 5f9e24377f..f920f300bd 100644
--- a/arch/mips/mach-ar231x/Kconfig
+++ b/arch/mips/mach-ar231x/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_AR231X
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 choice
 	prompt "Board type"
 
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 4bc1d88b4e..b1b49b0005 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_ATH79
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 config SOC_QCA_AR9331
 	bool
 
diff --git a/arch/mips/mach-bcm47xx/Kconfig b/arch/mips/mach-bcm47xx/Kconfig
index f7522b79d6..c4791901af 100644
--- a/arch/mips/mach-bcm47xx/Kconfig
+++ b/arch/mips/mach-bcm47xx/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_BCM47XX
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 choice
 	prompt "Board type"
 
diff --git a/arch/mips/mach-loongson/Kconfig b/arch/mips/mach-loongson/Kconfig
index c9f19025eb..ab7ccd0cb5 100644
--- a/arch/mips/mach-loongson/Kconfig
+++ b/arch/mips/mach-loongson/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_LOONGSON
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 choice
 	prompt "Board type"
 
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 70799808f9..4671075140 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_MALTA
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 config BOARD_QEMU_MALTA
 	bool "qemu malta"
 	select HAVE_PBL_IMAGE
diff --git a/arch/mips/mach-xburst/Kconfig b/arch/mips/mach-xburst/Kconfig
index b3790210dd..ae8093d1a3 100644
--- a/arch/mips/mach-xburst/Kconfig
+++ b/arch/mips/mach-xburst/Kconfig
@@ -1,9 +1,5 @@
 if MACH_MIPS_XBURST
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa0800000
-
 config CPU_JZ4755
 	bool
 	select SYS_HAS_CPU_MIPS32_R1
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
