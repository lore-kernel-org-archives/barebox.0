Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YAvFO-0002Jn-GS
 for barebox@lists.infradead.org; Tue, 13 Jan 2015 06:46:39 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile11) with ESMTP id
 t0D6kF77002605
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:46:15 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili14) with ESMTP id t0D6kFL30852
 for <barebox@lists.infradead.org>; Tue, 13 Jan 2015 15:46:15 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Tue, 13 Jan 2015 15:46:10 +0900
Message-Id: <1421131570-7450-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] kbuild: add KBUILD_DEFCONFIG
To: barebox@lists.infradead.org

This allows "make ARCH=... defconfig".

Fox example, you can type "make defconfig" instead of
"make sandbox_defconfig".

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

 arch/arm/Makefile      | 1 +
 arch/blackfin/Makefile | 1 +
 arch/efi/Makefile      | 2 ++
 arch/nios2/Makefile    | 2 ++
 arch/openrisc/Makefile | 2 ++
 arch/sandbox/Makefile  | 1 +
 arch/x86/Makefile      | 2 ++
 7 files changed, 11 insertions(+)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index f06e2a0..9dd983b 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := versatilepb_defconfig
 
 CPPFLAGS	+= -D__ARM__ -fno-strict-aliasing
 # Explicitly specifiy 32-bit ARM ISA since toolchain default can be -mthumb:
diff --git a/arch/blackfin/Makefile b/arch/blackfin/Makefile
index 381c6a9..5c43bf7 100644
--- a/arch/blackfin/Makefile
+++ b/arch/blackfin/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := ipe337_defconfig
 
 CPPFLAGS += -fno-strict-aliasing
 
diff --git a/arch/efi/Makefile b/arch/efi/Makefile
index 85cb655..b078bd0 100644
--- a/arch/efi/Makefile
+++ b/arch/efi/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := efi_defconfig
+
 CFLAGS += -fpic -fshort-wchar -mno-sse -mno-mmx
 
 ifeq ($(CONFIG_X86_32),y)
diff --git a/arch/nios2/Makefile b/arch/nios2/Makefile
index 681944f..d079190 100644
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
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index ed5d3a3..e3fb039 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := sandbox_defconfig
 
 CPPFLAGS += -D__SANDBOX__ -fno-strict-aliasing
 
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index a78fa22..da17d70 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := generic_defconfig
+
 CPPFLAGS += -D__X86__ -fno-strict-aliasing
 
 board-y := x86_generic
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
