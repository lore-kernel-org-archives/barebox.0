Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo5.mail-out.ovh.net ([46.105.52.148]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TBNd9-0004BB-VT
 for barebox@lists.infradead.org; Tue, 11 Sep 2012 10:23:45 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id A136EFFA268
 for <barebox@lists.infradead.org>; Tue, 11 Sep 2012 12:29:13 +0200 (CEST)
Date: Tue, 11 Sep 2012 12:21:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120911102103.GH31207@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/1 v2] genenv: Allow to also specify files for the
 environment instead of only directories
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
