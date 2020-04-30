Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-07.nifty.com ([210.131.2.74])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU14V-0002DY-LA
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 04:45:18 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 13:44:48 +0900
Message-Id: <20200430044449.762595-1-masahiroy@kernel.org>
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
Subject: [PATCH 1/2] mips: remove unused INCDIR and BOARD variables in Makefile
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The variable INCDIR is not used by anyone.

The variable BOARD is not set by anyone, so $(BOARD) is always empty.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 arch/mips/Makefile | 13 -------------
 1 file changed, 13 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 4717f49a4..abfa82504 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -88,25 +88,12 @@ else
 KBUILD_CPPFLAGS += $(patsubst %,-I$(srctree)/%include,$(machdirs))
 endif
 
-ifeq ($(incdir-y),)
-incdir-y := $(machine-y)
-endif
-INCDIR   := arch-$(incdir-y)
-
-ifeq ($(KBUILD_SRC),)
-KBUILD_CPPFLAGS += -I$(BOARD)/include
-else
-KBUILD_CPPFLAGS += -I$(srctree)/$(BOARD)/include
-endif
-
 ifneq ($(machine-y),)
 MACH  := arch/mips/mach-$(machine-y)/
 else
 MACH  :=
 endif
 
-common-y += $(BOARD)
-
 common-y += $(MACH)
 common-y += arch/mips/lib/
 common-y += arch/mips/boot/
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
