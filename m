Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPHOM-0006Yb-Vk
 for barebox@lists.infradead.org; Sat, 11 May 2019 02:05:42 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sat, 11 May 2019 11:05:08 +0900
Message-Id: <1557540308-10843-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] arch: add KBUILD_DEFCONFIG to allow "make defconfig"
To: barebox@lists.infradead.org

Currently, "make defconfig" is only supported for sandbox and x86.

I set KBUILD_DEFCONFIG to support "make defconfig" where I was able
to find a suitable one.

nios2 and openrisc have a single generic_defconfig, so it is definitely
good for KBUILD_DEFCONFIG.

For arm, mips, I assume qemu is a preferred choice over a real board.

blackfin has only one defconfig. Since it is inactive (it is gone in
Linux), so no more defconfig will come in.

I am not sure about ppc and riscv, so I did not touch them.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/Makefile      | 1 +
 arch/blackfin/Makefile | 1 +
 arch/mips/Makefile     | 2 ++
 arch/nios2/Makefile    | 2 ++
 arch/openrisc/Makefile | 2 ++
 5 files changed, 8 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 0fd6310..5d92a54 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := qemu_virt64_defconfig
 
 CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
diff --git a/arch/blackfin/Makefile b/arch/blackfin/Makefile
index 381c6a9..5c43bf7 100644
--- a/arch/blackfin/Makefile
+++ b/arch/blackfin/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := ipe337_defconfig
 
 CPPFLAGS += -fno-strict-aliasing
 
diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 5fbd51c..72bf92d 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := qemu-malta_defconfig
+
 #
 # Select the object file format to substitute into the linker script.
 #
diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
index 3e97155..0dff0be 100644
--- a/arch/nios2/Makefile
+++ b/arch/nios2/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := generic_defconfig
+
 CPPFLAGS += -fno-strict-aliasing -mno-hw-mul
 
 board-$(CONFIG_GENERIC) := generic
diff --git a/arch/openrisc/Makefile b/arch/openrisc/Makefile
index b0c8566..5394afb 100644
--- a/arch/openrisc/Makefile
+++ b/arch/openrisc/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := generic_defconfig
+
 CPPFLAGS += -D__OR1K__ -ffixed-r10 -mhard-mul -mhard-div
 
 board-$(CONFIG_GENERIC) := generic
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
