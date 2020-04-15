Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jObnc-0003no-W4
 for barebox@lists.infradead.org; Wed, 15 Apr 2020 06:45:30 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 15 Apr 2020 15:45:01 +0900
Message-Id: <20200415064501.47293-1-masahiroy@kernel.org>
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
Subject: [PATCH] ppc,riscv: set something to KBUILD_DEFCONFIG
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

'make ARCH=riscv defconfig' ends up with endless recursion.
Users may get upset with it.

In Linux, every architecture does something for 'make defconfig'.
Set something to KBUILD_DEFCONFIG to make it work for riscv and ppc.

There is only one file in arch/riscv/configs/, so there is no choice
but erizo_generic_defconfig for riscv.

There are some choices for ppc, but I am not sure what is appropriate.
I just picked something.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/ppc/Makefile   | 1 +
 arch/riscv/Makefile | 2 ++
 2 files changed, 3 insertions(+)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 2fb9b1442..ebf60eded 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,3 +1,4 @@
+KBUILD_DEFCONFIG := p2020rdb_defconfig
 
 CPPFLAGS += -ffixed-r14 -m32 	\
 	-meabi -D __PPC__ -D CONFIG_PPC \
diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
index 643c0bc8e..fa8a173d8 100644
--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -1,3 +1,5 @@
+KBUILD_DEFCONFIG := erizo_generic_defconfig
+
 CPPFLAGS += -fno-strict-aliasing
 
 ifeq ($(CONFIG_ARCH_RV32I),y)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
