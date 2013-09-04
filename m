Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo5.mail-out.ovh.net ([46.105.47.167]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VHA1t-0000gP-Lf
 for barebox@lists.infradead.org; Wed, 04 Sep 2013 10:09:43 +0000
Received: from mail434.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 08A2810180CC
 for <barebox@lists.infradead.org>; Wed,  4 Sep 2013 12:09:22 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  4 Sep 2013 12:10:12 +0200
Message-Id: <1378289412-28761-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1378289412-28761-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130904100113.GA21829@ns203013.ovh.net>
 <1378289412-28761-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] defaultenv-2: add login support
To: barebox@lists.infradead.org

request password to login is a timeout is specified and /env/etc/passwd
present

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/init | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index ca02ba6..e696dce 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -16,11 +16,15 @@ global editcmd=sedit
 [ -e /env/config-board ] && /env/config-board
 /env/config
 
+# request password to login is a timeout is specified and /env/etc/passwd present
+[ -n ${global.login.timeout} ] && login_cmd=login
+
 # allow to stop the boot before execute the /env/init/*
 # but without waiting
 timeout -s -a -v key 0
 
 if [ "${key}" = "q" ]; then
+	${login_cmd}
 	exit
 fi
 
@@ -38,6 +42,7 @@ timeout -a $global.autoboot_timeout -v key
 autoboot="$?"
 
 if [ "${key}" = "q" ]; then
+	${login_cmd}
 	exit
 fi
 
@@ -48,7 +53,11 @@ fi
 if [ -e /env/menu ]; then
 	if [ "${key}" != "m" ]; then
 		echo -e "\ntype exit to get to the menu"
+		${login_cmd}
 		sh
 	fi
+	${login_cmd}
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
