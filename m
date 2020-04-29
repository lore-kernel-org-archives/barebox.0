Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTqbm-0000Vg-8M
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 17:34:57 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 02:34:16 +0900
Message-Id: <20200429173419.681074-3-masahiroy@kernel.org>
In-Reply-To: <20200429173419.681074-1-masahiroy@kernel.org>
References: <20200429173419.681074-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/5] ppc: pass -mno-spe and -mspe=no to cc-option
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

My compiler does not understand -mno-spe or -msped=n.

powerpc-linux-gcc: error: unrecognized command line option '-mno-spe'; did you mean '-fno-see'?
powerpc-linux-gcc: error: unrecognized command line option '-mspe=no'

Pass them to cc-option becasue this is what Linux does.

Also, assign the compiler flags to CFLAGS, AFLAGS, and CPPFLAGS properly.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/ppc/Makefile | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index 276b1f6bf..3d8ddf377 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -1,8 +1,10 @@
 KBUILD_DEFCONFIG := p2020rdb_defconfig
 
-KBUILD_CPPFLAGS += -ffixed-r14 -m32 	\
-	-meabi -D __PPC__ \
-	-fno-strict-aliasing -mno-spe -mspe=no
+KBUILD_CFLAGS += -ffixed-r14 -m32 -meabi -fno-strict-aliasing
+KBUILD_CFLAGS += $(call cc-option,-mno-spe)
+KBUILD_CFLAGS += $(call cc-option,-mspe=no)
+KBUILD_AFLAGS += -m32
+KBUILD_CPPFLAGS += -D __PPC__
 
 ifdef CONFIG_RELOCATABLE
 KBUILD_CPPFLAGS += -fPIC -mrelocatable
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
