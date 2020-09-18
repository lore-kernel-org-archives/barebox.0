Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kJC1P-0004Ma-GT
 for barebox@lists.infradead.org; Fri, 18 Sep 2020 08:45:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Sep 2020 10:45:30 +0200
Message-Id: <20200918084532.2794-8-s.hauer@pengutronix.de>
In-Reply-To: <20200918084532.2794-1-s.hauer@pengutronix.de>
References: <20200918084532.2794-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] sandbox: rename KASan to ASan
To: Barebox List <barebox@lists.infradead.org>

sandbox really has ASan support, that is address sanitizer with the help
of the userspace library libasan. In contrast KASan is used on real
hardware where we have to implement our own support code. Rename sandbox
KASan to ASan to not clash with upcoming KASan support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/Kconfig     |  4 ++--
 arch/sandbox/Makefile    |  2 +-
 arch/sandbox/os/Makefile |  4 ----
 arch/sandbox/os/common.c |  2 +-
 common/Kconfig           | 10 +++++-----
 5 files changed, 9 insertions(+), 13 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 40e04919d2..81f7a96bd6 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -5,7 +5,7 @@ config SANDBOX
 	select OFTREE
 	select GPIOLIB
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
-	select HAVE_ARCH_KASAN
+	select HAVE_ARCH_ASAN
 	select HAS_DMA
 	default y
 
@@ -22,7 +22,7 @@ config SANDBOX_UNWIND
 	bool
 	default y
 	select ARCH_HAS_STACK_DUMP
-	depends on UBSAN || KASAN
+	depends on UBSAN || ASAN
 
 config PHYS_ADDR_T_64BIT
 	bool
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 27021222dc..ce1fe3b672 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -44,7 +44,7 @@ ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
 FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
 endif
 
-ifeq ($(CONFIG_KASAN),y)
+ifeq ($(CONFIG_ASAN),y)
 KBUILD_CPPFLAGS += -fsanitize=address
 SANITIZER_LIBS += -fsanitize=address
 endif
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index b2bd768bcb..15d688bfdd 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -8,10 +8,6 @@ KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
 KBUILD_CFLAGS := -Wall
 
-ifeq ($(CONFIG_KASAN),y)
-KBUILD_CPPFLAGS += -DCONFIG_KASAN=1
-endif
-
 NOSTDINC_FLAGS :=
 
 ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 69fadb3b47..9fb5faf41d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -347,7 +347,7 @@ int main(int argc, char *argv[])
 	int fdno = 0, envno = 0, option_index = 0;
 	char *aux;
 
-#ifdef CONFIG_KASAN
+#ifdef CONFIG_ASAN
 	__sanitizer_set_death_callback(cookmode);
 #endif
 
diff --git a/common/Kconfig b/common/Kconfig
index b350f5c355..3626eb2f29 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1375,11 +1375,11 @@ config PBL_BREAK
 
 source "lib/Kconfig.ubsan"
 
-config KASAN
-	bool "KASAN: runtime memory debugger"
-	depends on HAVE_ARCH_KASAN
+config ASAN
+	bool "ASAN: runtime memory debugger"
+	depends on HAVE_ARCH_ASAN
 	help
-	  Enables KASAN (KernelAddressSANitizer) - runtime memory debugger,
+	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
 
 config COMPILE_TEST
@@ -1404,5 +1404,5 @@ config DDR_SPD
 	bool
 	select CRC_ITU_T
 
-config HAVE_ARCH_KASAN
+config HAVE_ARCH_ASAN
 	bool
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
