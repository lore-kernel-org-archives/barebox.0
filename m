Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x242.google.com ([2a00:1450:4864:20::242])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3DvJ-0001mA-SB
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 07:33:18 +0000
Received: by mail-lj1-x242.google.com with SMTP id g6so33888028ljn.11
 for <barebox@lists.infradead.org>; Wed, 05 Aug 2020 00:33:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Aug 2020 10:32:58 +0300
Message-Id: <20200805073258.10973-2-antonynpavlov@gmail.com>
In-Reply-To: <20200805073258.10973-1-antonynpavlov@gmail.com>
References: <20200805073258.10973-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] riscv: Makefile: make it possible to use riscv64 compiler
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

At the moment riscv64 toolchain can't be used to build
barebox for riscv32, e.g.

  barebox$ make erizo_generic_defconfig
  ...
  barebox$ make
  ...
  riscv64-zephyr-elf-ld:
  common/memory.o: ABI is incompatible with that of the selected
  emulation:
    target emulation `elf32-littleriscv' does not match `elf64-littleriscv'

The patch fixes the problem by explicit riscv32 target options selection.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>
---
 arch/riscv/Makefile | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index c71319507c..8cd5f51e30 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -3,7 +3,8 @@ KBUILD_DEFCONFIG := erizo_generic_defconfig
 KBUILD_CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
-	cflags-y += -march=rv32im
+	cflags-y += -march=rv32im -mabi=ilp32
+	riscv-ldflags-y += -melf32lriscv
 endif
 
 cflags-y += -fno-pic -pipe
@@ -14,6 +15,8 @@ LDFLAGS_barebox += -nostdlib
 
 machine-$(CONFIG_MACH_ERIZO)	:= erizo
 
+LDFLAGS_barebox += $(riscv-ldflags-y)
+
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 KBUILD_CPPFLAGS += -DTEXT_BASE=$(CONFIG_TEXT_BASE)
 
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
