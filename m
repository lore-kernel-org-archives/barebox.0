Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo2.mail-out.ovh.net ([188.165.48.182]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLAWo-0004hZ-QM
 for barebox@lists.infradead.org; Sun, 15 Sep 2013 11:30:12 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A5807DC5EA4
 for <barebox@lists.infradead.org>; Sun, 15 Sep 2013 13:29:49 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Sep 2013 13:30:54 +0200
Message-Id: <1379244654-30716-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130915112850.GC21829@ns203013.ovh.net>
 <1379244654-30716-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] defaultenv-2: add login support
To: barebox@lists.infradead.org

request password to login is a timeout is specified and /env/etc/passwd
present

ensure we have not console access execpt when allowed

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/init | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index ca02ba6..4b132bc 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -16,14 +16,22 @@ global editcmd=sedit
 [ -e /env/config-board ] && /env/config-board
 /env/config
 
+# request password to login is a timeout is specified and /env/etc/passwd present
+[ -n ${global.login.timeout} ] && login_cmd=login
+# allow the input if not
+[ -n ${global.console.input_allow} ] && global.console.input_allow=1
+
 # allow to stop the boot before execute the /env/init/*
 # but without waiting
 timeout -s -a -v key 0
 
 if [ "${key}" = "q" ]; then
+	${login_cmd}
 	exit
 fi
 
+[ -n ${global.login.timeout} ] && global.console.input_allow=0
+
 for i in /env/init/*; do
 	. $i
 done
@@ -34,10 +42,15 @@ else
 	echo -e -n "\nHit any key to stop autoboot: "
 fi
 
+[ -n ${global.login.timeout} ] && global.console.input_allow=1
+
 timeout -a $global.autoboot_timeout -v key
 autoboot="$?"
 
+[ -n ${global.login.timeout} ] && global.console.input_allow=0
+
 if [ "${key}" = "q" ]; then
+	${login_cmd}
 	exit
 fi
 
@@ -46,9 +59,12 @@ if [ "$autoboot" = 0 ]; then
 fi
 
 if [ -e /env/menu ]; then
+	${login_cmd}
 	if [ "${key}" != "m" ]; then
 		echo -e "\ntype exit to get to the menu"
 		sh
 	fi
 	/env/menu/mainmenu
 fi
+
+${login_cmd}
-- 
1.8.4.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
