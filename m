Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-08.nifty.com ([210.131.2.75])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadpz-0001Q4-H8
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 10:17:09 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 11 Jun 2019 19:16:35 +0900
Message-Id: <20190611101635.22422-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kbuild: do not drop -I without parameter
To: barebox@lists.infradead.org

Linux commit 48f6e3cf5bc6dd0ee00405342ff310c3b1fedb35
[ Adjusted for barebox for some missing commits ]

The comment line for addtree says "skip if -I has no parameter".

What it actually does is "drop if -I has no parameter".  For example,
if you have the compiler flag '-I foo' (a space between), it will be
converted to 'foo'.  This completely changes the meaning.

What we want is, "do nothing" for -I without parameter so that
'-I foo' is kept as-is.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Please insert this before the kconfig resync.

 scripts/Kbuild.include | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 5e7255db3..a2dbbd8a0 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -161,7 +161,7 @@ clean := -f $(if $(KBUILD_SRC),$(srctree)/)scripts/Makefile.clean obj
 # Prefix -I with $(srctree) if it is not an absolute path.
 # skip if -I has no parameter
 addtree = $(if $(patsubst -I%,%,$(1)), \
-$(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1))
+$(if $(filter-out -I/%,$(1)),$(patsubst -I%,-I$(srctree)/%,$(1))) $(1),$(1))
 
 # Find all -I options and call addtree
 flags = $(foreach o,$($(1)),$(if $(filter -I%,$(o)),$(call addtree,$(o)),$(o)))
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
