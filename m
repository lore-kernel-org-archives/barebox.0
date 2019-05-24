Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU4M9-0001vv-Ji
 for barebox@lists.infradead.org; Fri, 24 May 2019 07:11:11 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Fri, 24 May 2019 16:10:51 +0900
Message-Id: <20190524071051.32285-1-yamada.masahiro@socionext.com>
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
Subject: [PATCH] kbuild: remove unneeded patterns from distclean
To: barebox@lists.infradead.org

Drop the following patterns based on Linux.

[1] -size 0
   Linux commit f4b129f519f1bbd191dca2bf17d1137edf941fd1

[2] '.*.cmd'
   Linux commit a03fcb50e816a69acffb13b5e56db75063aeba8a

[3] (second) '.*.orig' '.*.rej'
   Linux commit f78271dfb77353c4d045f9735deebe21839fb2ed

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 Makefile | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Makefile b/Makefile
index 29347b678..1027ceceb 100644
--- a/Makefile
+++ b/Makefile
@@ -1020,9 +1020,8 @@ PHONY += distclean
 distclean: mrproper
 	@find $(srctree) $(RCS_FIND_IGNORE) \
 		\( -name '*.orig' -o -name '*.rej' -o -name '*~' \
-		-o -name '*.bak' -o -name '#*#' -o -name '.*.orig' \
-		-o -name '.*.rej' -o -size 0 \
-		-o -name '*%' -o -name '.*.cmd' -o -name 'core' \) \
+		-o -name '*.bak' -o -name '#*#' -o -name '*%' \
+		-o -name 'core' \) \
 		-type f -print | xargs rm -f
 
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
