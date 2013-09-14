Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VKsc3-0005ug-KF
 for barebox@lists.infradead.org; Sat, 14 Sep 2013 16:22:25 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id F2B211000039
 for <barebox@lists.infradead.org>; Sat, 14 Sep 2013 18:21:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 14 Sep 2013 18:23:05 +0200
Message-Id: <1379175785-6885-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] genenv: ignore *.orig file too
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/genenv | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/genenv b/scripts/genenv
index 374db6d..02af767 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -24,7 +24,7 @@ for i in $*; do
 done
 )
 
-find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
+find $tempdir -name '*.orig' -o -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
 
 $objtree/scripts/bareboxenv -s $tempdir $target
 
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
