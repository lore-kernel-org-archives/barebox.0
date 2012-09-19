Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo5.mail-out.ovh.net ([178.33.109.111]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEGxy-0007hp-Vy
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 09:53:11 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id D86CAFF81FC
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 11:58:56 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 19 Sep 2012 11:50:35 +0200
Message-Id: <1348048235-14431-1-git-send-email-plagnioj@jcrosoft.com>
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

so we can have splah, usb serial, etc...

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/init |    8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index 3cac41c..5524710 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -12,7 +12,9 @@ global linux.bootargs.dyn.ip
 global linux.bootargs.dyn.root
 global editcmd=sedit
 
-/env/init/general
+for i in /env/init/*; do
+	. $i
+done
 
 if [ -e /env/menu ]; then
 	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
@@ -27,10 +29,6 @@ if [ "${key}" = "q" ]; then
 	exit
 fi
 
-for i in /env/init/*; do
-	. $i
-done
-
 if [ "$autoboot" = 0 ]; then
 	boot
 fi
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
