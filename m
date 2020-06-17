Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOH8-0006uN-6s
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 02:58:07 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Jun 2020 11:57:36 +0900
Message-Id: <20200617025736.33666-1-masahiroy@kernel.org>
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
Subject: [PATCH] kbuild: remove AS variable
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The assembler files in the barebox are *.S instead of *.s, so they must
be preprocessed. Since 'as' of GNU binutils is not able to preprocess,
we always use $(CC) as an assembler driver.

Remove AS variable.

Linux also removed AS. See Linux commits:

 aa824e0c962b ("kbuild: remove AS variable")
 1ca0c2f61211 ("kbuild: remove unused AS assignment")

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile          | 3 +--
 arch/arm/Makefile | 2 --
 2 files changed, 1 insertion(+), 4 deletions(-)

diff --git a/Makefile b/Makefile
index d483302fe..efb5fc9ee 100644
--- a/Makefile
+++ b/Makefile
@@ -372,7 +372,6 @@ KBUILD_HOSTLDLIBS   := $(HOST_LFS_LIBS) $(HOSTLDLIBS)
 
 # Make variables (CC, etc...)
 
-AS		= $(CROSS_COMPILE)as
 LD		= $(CROSS_COMPILE)ld
 CC		= $(CROSS_COMPILE)gcc
 CPP		= $(CC) -E
@@ -425,7 +424,7 @@ LDFLAGS_barebox	:= -Map barebox.map
 LDFLAGS_barebox += $(call ld-option, --no-dynamic-linker)
 LDFLAGS_pbl += $(call ld-option, --no-dynamic-linker)
 
-export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE AS LD CC
+export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
 export CPP AR NM STRIP OBJCOPY OBJDUMP MAKE AWK GENKSYMS PERL PYTHON3 UTS_MACHINE
 export LEX YACC
 export HOSTCXX CHECK CHECKFLAGS
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 6c7373c20..46dfe1f62 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -10,11 +10,9 @@ endif
 
 ifeq ($(CONFIG_CPU_BIG_ENDIAN),y)
 KBUILD_CPPFLAGS	+= -mbig-endian
-AS		+= -EB
 LD		+= -EB
 else
 KBUILD_CPPFLAGS	+= -mlittle-endian
-AS		+= -EL
 LD		+= -EL
 endif
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
