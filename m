Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TvDWJ-0005CY-20
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 20:54:09 +0000
Received: from mail626.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 3F681DC2891
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 21:54:31 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 15 Jan 2013 21:43:32 +0100
Message-Id: <1358282612-3140-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv-2: execute init/* before timeout
To: barebox@lists.infradead.org

so we can have splash, usb serial, etc...

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/init |   12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index 2a1f6a1..b606b63 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -21,8 +21,9 @@ else
 	echo -e -n "\nHit any key to stop autoboot: "
 fi
 
-timeout -a $global.autoboot_timeout -v key
-autoboot="$?"
+# allow to stop the boot before execute the /env/init/*
+# but without waiting
+timeout -s -a -v key 0
 
 if [ "${key}" = "q" ]; then
 	exit
@@ -32,6 +33,13 @@ for i in /env/init/*; do
 	. $i
 done
 
+timeout -a $global.autoboot_timeout -v key
+autoboot="$?"
+
+if [ "${key}" = "q" ]; then
+	exit
+fi
+
 if [ "$autoboot" = 0 ]; then
 	boot
 fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
