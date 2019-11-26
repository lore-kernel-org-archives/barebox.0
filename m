Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.loongson.cn ([114.242.206.163] helo=loongson.cn)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZZwp-0006tz-Ui
 for barebox@lists.infradead.org; Tue, 26 Nov 2019 12:28:07 +0000
From: Du Huanpeng <duhuanpeng@loongson.cn>
Date: Tue, 26 Nov 2019 20:27:56 +0800
Message-Id: <1574771276-27996-1-git-send-email-duhuanpeng@loongson.cn>
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
Subject: [PATCH] MIPS: loongson: rename CPU_LOONGSON1 to CPU_GS232
To: barebox@lists.infradead.org
Cc: Du Huanpeng <duhuanpeng@loongson.cn>

The CPU in the loongson 1b SoC is called GS232.
Here is some active chips and it's core:

NAME              CPU       Core(s)
The loongson 3 series/server & desktop
  3A3000/3B3000     GS464E    64bit x4
  3A2000/3B2000     GS464E    64bit x4
  3B1500            GS464     64bit x8
  3A1000            GS464     64bit x4

The loongson 2 series/low power
  2K1000            GS264     64bit x2
  2F                GS464     64bit x1
  2H                GS464     64bit x1

The loongson 1 series/embeded
  1C101             GS132R    32bit ?
  1D                GS132     32bit ?
  1C                GS232     32bit x1
  1B                GS232     32bit x1
  1A                GS232     32bit x1

see:
[1] http://www.loongson.cn/product/

Signed-off-by: Du Huanpeng <duhuanpeng@loongson.cn>
---
 arch/mips/Kconfig           | 4 ++--
 arch/mips/Makefile          | 2 +-
 arch/mips/include/asm/cpu.h | 4 ++--
 arch/mips/lib/cpu-probe.c   | 4 ++--
 4 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 1395ad4..7a8f010 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -174,7 +174,7 @@ choice
 config CPU_LOONGSON1B
 	bool "Loongson 1B"
 	depends on SYS_HAS_CPU_LOONGSON1B
-	select CPU_LOONGSON1
+	select CPU_GS232
 	help
 	  The Loongson 1B is a 32-bit SoC, which implements the MIPS32
 	  release 2 instruction set.
@@ -235,7 +235,7 @@ config CPU_MIPS64_R2
 
 endchoice
 
-config CPU_LOONGSON1
+config CPU_GS232
 	bool
 	select CPU_MIPS32
 	select CPU_MIPSR2
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 1c10db5..72b77ad 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -52,7 +52,7 @@ cflags-$(CONFIG_CPU_MIPS32_R1) += $(call cc-option,-march=mips32,-mips32 -U_MIPS
 cflags-$(CONFIG_CPU_MIPS32_R2) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R1) += $(call cc-option,-march=mips64,-mips64 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64 -Wa,--trap
 cflags-$(CONFIG_CPU_MIPS64_R2) += $(call cc-option,-march=mips64r2,-mips64r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS64) -Wa,-mips64r2 -Wa,--trap
-cflags-$(CONFIG_CPU_LOONGSON1) += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
+cflags-$(CONFIG_CPU_GS232)     += $(call cc-option,-march=mips32r2,-mips32r2 -U_MIPS_ISA -D_MIPS_ISA=_MIPS_ISA_MIPS32) -Wa,-mips32r2 -Wa,--trap
 
 CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
diff --git a/arch/mips/include/asm/cpu.h b/arch/mips/include/asm/cpu.h
index e0bb78e..9d94eb3 100644
--- a/arch/mips/include/asm/cpu.h
+++ b/arch/mips/include/asm/cpu.h
@@ -41,7 +41,7 @@
  * These are valid when 23:16 == PRID_COMP_LEGACY
  */
 
-#define PRID_IMP_LOONGSON1	0x4200
+#define PRID_IMP_GS232	0x4200
 
 #define PRID_IMP_UNKNOWN	0xff00
 
@@ -109,7 +109,7 @@ enum cpu_type_enum {
 	CPU_74K,
 	CPU_BMIPS3300,
 	CPU_JZRISC,
-	CPU_LOONGSON1,
+	CPU_GS232,
 
 	CPU_LAST
 };
diff --git a/arch/mips/lib/cpu-probe.c b/arch/mips/lib/cpu-probe.c
index ddabddd..cbde43a 100644
--- a/arch/mips/lib/cpu-probe.c
+++ b/arch/mips/lib/cpu-probe.c
@@ -83,10 +83,10 @@ static void decode_configs(struct cpuinfo_mips *c)
 static inline void cpu_probe_legacy(struct cpuinfo_mips *c)
 {
 	switch (c->processor_id & PRID_IMP_MASK) {
-	case PRID_IMP_LOONGSON1:
+	case PRID_IMP_GS232:
 		decode_configs(c);
 
-		c->cputype = CPU_LOONGSON1;
+		c->cputype = CPU_GS232;
 
 		switch (c->processor_id & PRID_REV_MASK) {
 		case PRID_REV_LOONGSON1B:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
