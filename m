Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdf-0007gW-GV
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:30 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:20 +0900
Message-Id: <1546178368-26182-4-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH 03/11] kbuild: add .SECONDARY special target
To: barebox@lists.infradead.org

Based on the following Linux commits:

 - 54a702f70589 ("kbuild: mark $(targets) as .SECONDARY and remove
   .PRECIOUS markers")

 - 8e9b61b293d9 ("kbuild: move .SECONDARY special target to
   Kbuild.include")

This consolidates those two commits and adjusts commit log for barebox.

GNU Make automatically deletes intermediate files that are updated
in a chain of pattern rules.

Example 1) %.dtb.o <- %.dtb.S <- %.dtb <- %.dts
Example 2) %.o <- %.c <- %.c_shipped

arch/arm/crypto/Makefile marks such targets as .PRECIOUS to prevent Make
from deleting them, but the correct way is to use .SECONDARY.

  .SECONDARY
    Prerequisites of this special target are treated as intermediate
    files but are never automatically deleted.

  .PRECIOUS
    When make is interrupted during execution, it may delete the target
    file it is updating if the file was modified since make started.
    If you mark the file as precious, make will never delete the file
    if interrupted.

Both can avoid deletion of intermediate files, but the difference is
the behavior when Make is interrupted; .SECONDARY deletes the target,
but .PRECIOUS does not.

The use of .PRECIOUS is relatively rare since we do not want to keep
partially constructed (possibly corrupted) targets.

.SECONDARY with no prerequisites causes all targets to be treated as
secondary. This agrees the policy of Kbuild.

scripts/Kbuild.include seems a suitable place to add it because it is
included from almost all sub-makes.

I deleted 'SECONDARY' (no dot) from images/Makefile, which I guess
a typo.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/crypto/Makefile | 2 --
 images/Makefile          | 2 --
 scripts/Kbuild.include   | 3 +++
 3 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/arch/arm/crypto/Makefile b/arch/arm/crypto/Makefile
index 372bf8d..fda4eea 100644
--- a/arch/arm/crypto/Makefile
+++ b/arch/arm/crypto/Makefile
@@ -13,5 +13,3 @@ quiet_cmd_perl = PERL    $@
 
 $(src)/sha256-core.S_shipped: $(src)/sha256-armv4.pl
 	$(call cmd,perl)
-
-.PRECIOUS: $(obj)/sha256-core.S
diff --git a/images/Makefile b/images/Makefile
index 41509aa..e8d1b60 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -112,8 +112,6 @@ targets += $(patsubst %,%.pbl,$(pblb-y))
 targets += $(patsubst %,%.s,$(pblb-y))
 targets += $(foreach m, $(image-y), $(FILE_$(m)))
 
-SECONDARY: $(addprefix $(obj)/,$(targets))
-
 # Images with full paths
 image-y-path := $(addprefix $(obj)/,$(image-y))
 # File will have a list of images generated
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 3b71949..edfe27e 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -282,3 +282,6 @@ endif
 
 # delete partially updated (i.e. corrupted) files on error
 .DELETE_ON_ERROR:
+
+# do not delete intermediate files automatically
+.SECONDARY:
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
