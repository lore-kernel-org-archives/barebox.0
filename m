Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo5.mail-out.ovh.net ([87.98.173.103]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGKE5-0003IO-Kf
 for barebox@lists.infradead.org; Tue, 25 Sep 2012 01:46:18 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 1B51DFFA9FE
 for <barebox@lists.infradead.org>; Tue, 25 Sep 2012 03:52:14 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 25 Sep 2012 03:43:44 +0200
Message-Id: <1348537424-9859-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv-2: move settings in a submenu
To: barebox@lists.infradead.org

To be more clear

so on the mainmenu we will just have
 - the boot option
 - settings
 - shell
 - reset

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/menu/menu/mainmenu |    5 +----
 defaultenv-2/menu/menu/settings |   21 +++++++++++++++++++++
 2 files changed, 22 insertions(+), 4 deletions(-)
 create mode 100644 defaultenv-2/menu/menu/settings

diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
index 5bd7027..f10f67a 100644
--- a/defaultenv-2/menu/menu/mainmenu
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -14,10 +14,7 @@ while true; do
 
 	boot-entries-collect
 
-	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
-	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
-	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
-	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
+	menu -e -a -m boot -c "settings" -d "Settings"
 	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
 	menu -e -a -m boot -c reset -d "${RED}Reset${NC}"
 
diff --git a/defaultenv-2/menu/menu/settings b/defaultenv-2/menu/menu/settings
new file mode 100644
index 0000000..3f84b03
--- /dev/null
+++ b/defaultenv-2/menu/menu/settings
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+export menu_exit=false
+
+while true; do
+	menu -a -m settings -d "${CYAN}Settings${NC}"
+
+	menu -e -a -R -m settings -c "$global.editcmd /env/network/eth0" -d "Network settings"
+
+	menu -e -a -m settings -c "boot-entries-edit" -d "Edit boot entries"
+	menu -e -a -m settings -c "init-entries-edit" -d "Edit init entries"
+	menu -e -a -R -m settings -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
+	menu -e -a -m settings -c "menu_exit=true" -d "back"
+
+	menu -s -m settings
+	menu -r -m settings
+
+	if [ $menu_exit = true ]; then
+		exit
+	fi
+done
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
