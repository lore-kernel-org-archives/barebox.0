Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZbnc-0007nK-Ck
 for barebox@lists.infradead.org; Fri, 15 May 2020 14:59:00 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 15 May 2020 23:58:25 +0900
Message-Id: <20200515145825.145665-1-masahiroy@kernel.org>
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
Subject: [PATCH] .gitignore: drop stale ignore pattern include/asm
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

In old days, Linux created a symlink include/asm -> include/asm-*,
but all the asm headers were moved to arch/*/include/asm, which
is the same for Barebox too.

Remove the bitrotten ignore pattern.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 include/.gitignore | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/.gitignore b/include/.gitignore
index f28372a3d..18e58a752 100644
--- a/include/.gitignore
+++ b/include/.gitignore
@@ -1,2 +1 @@
-asm
 /config.h
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
