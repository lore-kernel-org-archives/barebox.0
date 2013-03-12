Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFWBu-0006ad-Kt
 for barebox@lists.infradead.org; Tue, 12 Mar 2013 20:52:59 +0000
Received: from mail428.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 39843104E254
 for <barebox@lists.infradead.org>; Tue, 12 Mar 2013 22:04:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 12 Mar 2013 21:48:39 +0100
Message-Id: <1363121319-23894-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv-2: move settings in a submenu
To: barebox@lists.infradead.org

To be more clear

so on the mainmenu we will just have
 - the boot option
 - settings
 - shell
 - reset

when starting to have a long list of boot option the menu start to be big

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/menu/menu/mainmenu |    6 +-----
 defaultenv-2/menu/menu/settings |   21 +++++++++++++++++++++
 2 files changed, 22 insertions(+), 5 deletions(-)
 create mode 100644 defaultenv-2/menu/menu/settings

diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
index abd6c46..12c5554 100644
--- a/defaultenv-2/menu/menu/mainmenu
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -18,11 +18,7 @@ while true; do
 
 	boot-entries-collect
 
-	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
-	menu -e -a -R -m boot -c "$global.editcmd /env/config" -d "Config settings"
-	menu -e -a -m boot -c "boot-entries-edit" -d "Edit boot entries"
-	menu -e -a -m boot -c "init-entries-edit" -d "Edit init entries"
-	menu -e -a -R -m boot -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
+	menu -e -a -m boot -c "settings" -d "Settings"
 	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
 	menu -e -a -m boot -c reset -d "${RED}Reset${NC}"
 
diff --git a/defaultenv-2/menu/menu/settings b/defaultenv-2/menu/menu/settings
new file mode 100644
index 0000000..3b95d4c
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
+	menu -e -a -R -m settings -c "$global.editcmd /env/config" -d "Config settings"
+	menu -e -a -m settings -c "settings-entries-edit" -d "Edit settings entries"
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
