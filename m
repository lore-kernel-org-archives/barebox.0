Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOHe-000725-0K
 for barebox@lists.infradead.org; Wed, 17 Jun 2020 02:58:39 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Wed, 17 Jun 2020 11:58:16 +0900
Message-Id: <20200617025816.33834-1-masahiroy@kernel.org>
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
Subject: [PATCH] kbuild: remove package targets
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

This hunk is already out of sync from upstream Linux.

Barebox does not support package targets, so let's delete this
rotten code.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile | 12 ------------
 1 file changed, 12 deletions(-)

diff --git a/Makefile b/Makefile
index efb5fc9ee..da01ca5b0 100644
--- a/Makefile
+++ b/Makefile
@@ -1123,18 +1123,6 @@ distclean: mrproper
 		-o -name 'core' \) \
 		-type f -print | xargs rm -f
 
-
-# Packaging of the kernel to various formats
-# ---------------------------------------------------------------------------
-# rpm target kept for backward compatibility
-package-dir	:= $(srctree)/scripts/package
-
-%pkg: include/config/kernel.release FORCE
-	$(Q)$(MAKE) $(build)=$(package-dir) $@
-rpm: include/config/kernel.release FORCE
-	$(Q)$(MAKE) $(build)=$(package-dir) $@
-
-
 # Brief documentation of the typical targets used
 # ---------------------------------------------------------------------------
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
