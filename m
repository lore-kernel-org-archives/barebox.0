Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22d.google.com ([2a00:1450:4010:c04::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W4XaZ-0006IP-SN
 for barebox@lists.infradead.org; Sat, 18 Jan 2014 15:13:37 +0000
Received: by mail-lb0-f173.google.com with SMTP id y6so3794181lbh.18
 for <barebox@lists.infradead.org>; Sat, 18 Jan 2014 07:13:13 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sat, 18 Jan 2014 19:12:53 +0400
Message-Id: <1390057983-17921-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
References: <1390057983-17921-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 03/13] MIPS: add Loongson-1B CPU Kbuild stuff
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig  | 17 +++++++++++++++++
 arch/mips/Makefile |  3 +++
 2 files changed, 20 insertions(+)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 8cea076..b819b49 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -118,6 +118,14 @@ choice
 	prompt "CPU type"
 	default CPU_MIPS32_R2
 
+config CPU_LOONGSON1B
+	bool "Loongson 1B"
+	depends on SYS_HAS_CPU_LOONGSON1B
+	select CPU_LOONGSON1
+	help
+	  The Loongson 1B is a 32-bit SoC, which implements the MIPS32
+	  release 2 instruction set.
+
 config CPU_MIPS32_R1
 	bool "MIPS32 Release 1"
 	depends on SYS_HAS_CPU_MIPS32_R1
@@ -174,6 +182,15 @@ config CPU_MIPS64_R2
 
 endchoice
 
+config CPU_LOONGSON1
+	bool
+	select CPU_MIPS32
+	select CPU_MIPSR2
+	select CPU_SUPPORTS_32BIT_KERNEL
+
+config SYS_HAS_CPU_LOONGSON1B
+	bool
+
 config SYS_HAS_CPU_MIPS32_R1
 	bool
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 7a6d6c0..b4c0e7a 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -49,6 +49,9 @@ cflags-$(CONFIG_CPU_MIPS32_R1) += $(call cc-option,-march=mips32,-mips32 -U_MIPS
 cflags-$(CONFIG_CPU_MIPS32_R2) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
+cflags-$(CONFIG_CPU_LOONGSON1)	+= \
+	$(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) \
+	-Wa,-mips32r2 -Wa,--trap
 
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
