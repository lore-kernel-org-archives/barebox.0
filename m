Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-12.nifty.com ([210.131.2.79])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jR91J-0000Tx-5X
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 06:38:07 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 22 Apr 2020 15:37:30 +0900
Message-Id: <20200422063732.1584550-2-masahiroy@kernel.org>
In-Reply-To: <20200422063732.1584550-1-masahiroy@kernel.org>
References: <20200422063732.1584550-1-masahiroy@kernel.org>
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
Subject: [PATCH v2 2/4] mips: rename ldflags-y to mips-ldflags-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The next commit will add ldflags-y to scripts/Makefile.lib like Linux,
but barebox includes scripts/Makefile.lib from the top Makefile.

arch/mips/Makefile uses ldflags-y for a different meaning.

To avoid unpleasant side-effect, this commit rename it.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

Changes in v2:
  - new patch

 arch/mips/Makefile | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index ee3364d27..932fdab0a 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -34,17 +34,17 @@ predef-le += -DMIPSEL -D_MIPSEL -D__MIPSEL -D__MIPSEL__
 
 ifdef CONFIG_CPU_BIG_ENDIAN
 cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB $(undef-all) $(predef-be))
-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB )
+mips-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' && echo -EB )
 endif
 
 ifdef CONFIG_CPU_LITTLE_ENDIAN
 cflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL $(undef-all) $(predef-le))
-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL )
+mips-ldflags-y += $(shell $(CC) -dumpmachine |grep -q 'mips.*el-.*' || echo -EL )
 endif
 
-LDFLAGS += $(ldflags-y) -m $(ld-emul)
-LDFLAGS_barebox += $(ldflags-y)
-LDFLAGS_pbl += $(ldflags-y)
+LDFLAGS += $(mips-ldflags-y) -m $(ld-emul)
+LDFLAGS_barebox += $(mips-ldflags-y)
+LDFLAGS_pbl += $(mips-ldflags-y)
 
 #
 # CPU-dependent compiler/assembler options for optimization.
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
