Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhEbq-0006iJ-8U
 for barebox@lists.infradead.org; Tue, 28 May 2013 07:46:18 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Tue, 28 May 2013 09:45:46 +0200
Message-Id: <1369727146-15275-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] scripts: genenv: remove empty files from tempdir
To: barebox@lists.infradead.org

This allows leaving out default files from the environment by overriding
them with empty files in the board or BSP.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 scripts/genenv | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/genenv b/scripts/genenv
index 374db6d..3e91062 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -24,7 +24,7 @@ for i in $*; do
 done
 )
 
-find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
+find $tempdir -name '.svn' -o -name '*~' -o -size 0 | xargs --no-run-if-empty rm -r
 
 $objtree/scripts/bareboxenv -s $tempdir $target
 
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
