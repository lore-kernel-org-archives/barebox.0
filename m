Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2l7-000073-2H
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:55 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:33 +0200
Message-Id: <20200511072140.29610-17-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 16/23] sandbox: support forcing 32-bit x86
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

If gcc supports multiple architectures, barebox uses only the default
when compiling for ARCH=sandbox, this is e.g. the case with compilers
that generate borth 32- and 64-bit x86 exectuables.

There can be good reasons to force 32-bit though, e.g. to reduce memory
consumption while fuzzing or to temporarily avoid 32-to-64-bit warnings,
while running the static analyzer. Add an option for this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig     |  7 +++++++
 arch/sandbox/Makefile    | 12 +++++++++++-
 arch/sandbox/os/Makefile |  2 +-
 3 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index e116fe2deb0b..3f10709021a7 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -27,6 +27,13 @@ config SANDBOX_UNWIND
 config CC_IS_64BIT
 	def_bool $(success,$(srctree)/scripts/gcc-64bitptr.sh $(CC))
 
+config CC_HAS_LINUX_I386_SUPPORT
+	def_bool $(cc-option,-m32) && $(ld-option,-m elf_i386)
+
 config 64BIT
 	bool
+	default n if SANDBOX_LINUX_I386
 	default CC_IS_64BIT
+
+config SANDBOX_LINUX_I386
+	bool "32-bit x86 barebox" if CC_HAS_LINUX_I386_SUPPORT
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c205f47ff491..34162948185a 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -56,11 +56,21 @@ ifeq ($(CONFIG_UBSAN),y)
 SANITIZER_LIBS += -fsanitize=undefined
 endif
 
-cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(BAREBOX_LDS) \
+ifeq ($(CONFIG_SANDBOX_LINUX_I386),y)
+KBUILD_CFLAGS += -m32
+KBUILD_LDFLAGS += -m elf_i386
+KBUILD_AFLAGS += -m32
+BAREBOX_LDFLAGS += -m32
+endif
+
+BAREBOX_LDFLAGS += \
+	-Wl,-T,$(BAREBOX_LDS) \
 	-Wl,--start-group $(BAREBOX_OBJS) -Wl,--end-group \
 	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS) \
 	$(SANITIZER_LIBS)
 
+cmd_barebox__ = $(CC) -o $@ $(BAREBOX_LDFLAGS)
+
 common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index 40306b5ffed8..8c294dae1bd8 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -10,7 +10,7 @@ endif
 
 KBUILD_CPPFLAGS += -DCONFIG_MALLOC_SIZE=$(CONFIG_MALLOC_SIZE)
 
-KBUILD_CFLAGS := -Wall
+KBUILD_CFLAGS += -Wall
 NOSTDINC_FLAGS :=
 
 obj-y = common.o tap.o
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
