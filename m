Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU12n-0007vr-Tq
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 04:43:31 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 13:42:51 +0900
Message-Id: <20200430044252.762041-1-masahiroy@kernel.org>
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
Subject: [PATCH] kbuild: add $(always-y) to 'targets'
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

I missed to sync this line in commit 421108c51da4 ("kbuild: rename
hostprogs-y/always to hostprogs/always-y").

Since then, the files in always(-y) are needlessly rebuilt.

Fixes: 421108c51da4 ("kbuild: rename hostprogs-y/always to hostprogs/always-y")
Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile.build | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index 8c28ccb8e..acb0d68b8 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -243,7 +243,7 @@ pbl-%.o: %.S FORCE
 	$(call if_changed_dep,as_o_S)
 
 targets += $(real-objs-y) $(real-objs-m) $(lib-y) $(pbl-y)
-targets += $(extra-y) $(MAKECMDGOALS) $(always)
+targets += $(extra-y) $(always-y) $(MAKECMDGOALS)
 
 # Linker scripts preprocessor (.lds.S -> .lds)
 # ---------------------------------------------------------------------------
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
