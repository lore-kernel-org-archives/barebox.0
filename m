Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo1.mail-out.ovh.net ([178.32.127.22]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBIaZ-00025E-Vy
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 05:00:45 +0000
Received: from mail425.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 477E5FF9405
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 07:08:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 11 Sep 2012 06:58:05 +0200
Message-Id: <1347339485-16235-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1] genenv: fix files copy
To: barebox@lists.infradead.org

we may specify file in the defconfig

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 scripts/genenv |    6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/scripts/genenv b/scripts/genenv
index c84af0c..ff7972b 100755
--- a/scripts/genenv
+++ b/scripts/genenv
@@ -11,7 +11,11 @@ shift 2
 tempdir=$(mktemp -d tmp.XXXXXX)
 
 for i in $*; do
-	cp -r $i/* $tempdir
+	if [ -d $i ]; then
+		cp -r $i/* $tempdir
+	else
+		cp -a $i $tempdir
+	fi
 done
 
 find $tempdir -name '.svn' -o -name '*~' | xargs --no-run-if-empty rm -r
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
