Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WTSsa-0006KE-Bm
 for barebox@lists.infradead.org; Fri, 28 Mar 2014 09:15:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Mar 2014 10:14:43 +0100
Message-Id: <1395998083-18979-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
References: <1395998083-18979-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] defenv-2: replace menu with menutree
To: barebox@lists.infradead.org

This makes the menu easier to extend and to maintain.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                                      |  2 +-
 .../defaultenv-2-menu/menu/00-boot-default/action   |  5 +++++
 .../defaultenv-2-menu/menu/00-boot-default/title    |  1 +
 .../defaultenv-2-menu/menu/10-boot-all/action       |  3 +++
 .../defaultenv-2-menu/menu/10-boot-all/net/action   |  5 +++++
 .../defaultenv-2-menu/menu/10-boot-all/net/title    |  1 +
 defaultenv/defaultenv-2-menu/menu/10-boot-all/title |  1 +
 .../menu/20-settings/config/action                  |  5 +++++
 .../defaultenv-2-menu/menu/20-settings/config/title |  1 +
 .../menu/20-settings/network/action                 |  3 +++
 .../menu/20-settings/network/title                  |  1 +
 defaultenv/defaultenv-2-menu/menu/20-settings/title |  1 +
 defaultenv/defaultenv-2-menu/menu/30-saveenv/action |  8 ++++++++
 defaultenv/defaultenv-2-menu/menu/30-saveenv/title  |  1 +
 defaultenv/defaultenv-2-menu/menu/40-shell/action   |  5 +++++
 defaultenv/defaultenv-2-menu/menu/40-shell/title    |  1 +
 defaultenv/defaultenv-2-menu/menu/50-reset/action   |  3 +++
 defaultenv/defaultenv-2-menu/menu/50-reset/title    |  1 +
 .../defaultenv-2-menu/menu/boot-entries-collect     | 13 -------------
 defaultenv/defaultenv-2-menu/menu/boot-entries-edit | 20 --------------------
 .../defaultenv-2-menu/menu/boot-entries-remove      | 18 ------------------
 .../defaultenv-2-menu/menu/boot-menu-add-entry      |  5 -----
 .../defaultenv-2-menu/menu/boot-menu-new-boot-entry | 21 ---------------------
 .../defaultenv-2-menu/menu/init-entries-collect     |  9 ---------
 defaultenv/defaultenv-2-menu/menu/init-entries-edit | 20 --------------------
 .../defaultenv-2-menu/menu/init-menu-add-entry      |  3 ---
 defaultenv/defaultenv-2-menu/menu/mainmenu          | 20 +-------------------
 defaultenv/defaultenv-2-menu/menu/settings          | 21 ---------------------
 defaultenv/defaultenv-2-menu/menu/title             |  1 +
 29 files changed, 49 insertions(+), 150 deletions(-)
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/00-boot-default/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/10-boot-all/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/config/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/network/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/20-settings/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/30-saveenv/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/40-shell/title
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/action
 create mode 100644 defaultenv/defaultenv-2-menu/menu/50-reset/title
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-entries-remove
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-collect
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-entries-edit
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
 delete mode 100644 defaultenv/defaultenv-2-menu/menu/settings
 create mode 100644 defaultenv/defaultenv-2-menu/menu/title

diff --git a/common/Kconfig b/common/Kconfig
index bc54e97..0031cc8 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -605,7 +605,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
 	bool
 	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
-	depends on CMD_MENU_MANAGEMENT
+	depends on CMD_MENUTREE
 	default y
 
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
diff --git a/defaultenv/defaultenv-2-menu/menu/00-boot-default/action b/defaultenv/defaultenv-2-menu/menu/00-boot-default/action
new file mode 100644
index 0000000..3d72ff6
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/00-boot-default/action
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+boot
+
+readline "Booting failed. Press any key to continue" ignore
diff --git a/defaultenv/defaultenv-2-menu/menu/00-boot-default/title b/defaultenv/defaultenv-2-menu/menu/00-boot-default/title
new file mode 100644
index 0000000..ef8c3dd
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/00-boot-default/title
@@ -0,0 +1 @@
+Boot default
diff --git a/defaultenv/defaultenv-2-menu/menu/10-boot-all/action b/defaultenv/defaultenv-2-menu/menu/10-boot-all/action
new file mode 100644
index 0000000..a890ffe
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/10-boot-all/action
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+boot -m
diff --git a/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action b/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action
new file mode 100644
index 0000000..b31b0e4
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/action
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+echo "Boot from Network...."
+
+sleep 3
diff --git a/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title b/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title
new file mode 100644
index 0000000..79a6d8f
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/10-boot-all/net/title
@@ -0,0 +1 @@
+Boot from network
diff --git a/defaultenv/defaultenv-2-menu/menu/10-boot-all/title b/defaultenv/defaultenv-2-menu/menu/10-boot-all/title
new file mode 100644
index 0000000..0f05e98
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/10-boot-all/title
@@ -0,0 +1 @@
+Detect bootsources
diff --git a/defaultenv/defaultenv-2-menu/menu/20-settings/config/action b/defaultenv/defaultenv-2-menu/menu/20-settings/config/action
new file mode 100644
index 0000000..9a993af
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/20-settings/config/action
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+edit /env/config
+
+/env/config
diff --git a/defaultenv/defaultenv-2-menu/menu/20-settings/config/title b/defaultenv/defaultenv-2-menu/menu/20-settings/config/title
new file mode 100644
index 0000000..a8955a9
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/20-settings/config/title
@@ -0,0 +1 @@
+Config settings
diff --git a/defaultenv/defaultenv-2-menu/menu/20-settings/network/action b/defaultenv/defaultenv-2-menu/menu/20-settings/network/action
new file mode 100644
index 0000000..d27a77f
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/20-settings/network/action
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+edit /env/network/eth0
diff --git a/defaultenv/defaultenv-2-menu/menu/20-settings/network/title b/defaultenv/defaultenv-2-menu/menu/20-settings/network/title
new file mode 100644
index 0000000..4641d48
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/20-settings/network/title
@@ -0,0 +1 @@
+Network settings
diff --git a/defaultenv/defaultenv-2-menu/menu/20-settings/title b/defaultenv/defaultenv-2-menu/menu/20-settings/title
new file mode 100644
index 0000000..163d304
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/20-settings/title
@@ -0,0 +1 @@
+Settings
diff --git a/defaultenv/defaultenv-2-menu/menu/30-saveenv/action b/defaultenv/defaultenv-2-menu/menu/30-saveenv/action
new file mode 100644
index 0000000..c6aed70
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/30-saveenv/action
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+saveenv
+if [ $? != 0 ]; then
+	echo "saving environment failed"
+fi
+
+sleep 2
diff --git a/defaultenv/defaultenv-2-menu/menu/30-saveenv/title b/defaultenv/defaultenv-2-menu/menu/30-saveenv/title
new file mode 100644
index 0000000..8ae292d
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/30-saveenv/title
@@ -0,0 +1 @@
+Save environment
diff --git a/defaultenv/defaultenv-2-menu/menu/40-shell/action b/defaultenv/defaultenv-2-menu/menu/40-shell/action
new file mode 100644
index 0000000..fd5bc2b
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/40-shell/action
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+echo "Enter 'exit' to get back to the menu"
+
+sh
diff --git a/defaultenv/defaultenv-2-menu/menu/40-shell/title b/defaultenv/defaultenv-2-menu/menu/40-shell/title
new file mode 100644
index 0000000..6567bb2
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/40-shell/title
@@ -0,0 +1 @@
+Shell
diff --git a/defaultenv/defaultenv-2-menu/menu/50-reset/action b/defaultenv/defaultenv-2-menu/menu/50-reset/action
new file mode 100644
index 0000000..61d5c9a
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/50-reset/action
@@ -0,0 +1,3 @@
+#!/bin/sh
+
+reset
diff --git a/defaultenv/defaultenv-2-menu/menu/50-reset/title b/defaultenv/defaultenv-2-menu/menu/50-reset/title
new file mode 100644
index 0000000..6d9fd4d
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/50-reset/title
@@ -0,0 +1 @@
+Reset
diff --git a/defaultenv/defaultenv-2-menu/menu/boot-entries-collect b/defaultenv/defaultenv-2-menu/menu/boot-entries-collect
deleted file mode 100644
index c066c93..0000000
--- a/defaultenv/defaultenv-2-menu/menu/boot-entries-collect
+++ /dev/null
@@ -1,13 +0,0 @@
-#!/bin/sh
-
-cd /env/boot
-
-./$global.boot.default menu
-
-for i in *; do
-	if [ "$i" != "$global.boot.default" ]; then
-		./$i menu
-	fi
-done
-
-cd /
diff --git a/defaultenv/defaultenv-2-menu/menu/boot-entries-edit b/defaultenv/defaultenv-2-menu/menu/boot-entries-edit
deleted file mode 100644
index c4e1c3d..0000000
--- a/defaultenv/defaultenv-2-menu/menu/boot-entries-edit
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-export menu_exit=false
-
-while true; do
-	menu -a -m boot_entries_edit -d "\e[1;36mEdit boot entries\e[0m"
-
-	boot-entries-collect
-
-	menu -e -a -m boot_entries_edit -c "boot-menu-new-boot-entry" -d "Add a new entry"
-	menu -e -a -m boot_entries_edit -c "boot-entries-remove" -d "Remove an entry"
-	menu -e -a -m boot_entries_edit -c "menu_exit=true" -d "back"
-
-	menu -s -m boot_entries_edit
-	menu -r -m boot_entries_edit
-
-	if [ $menu_exit = true ]; then
-		exit
-	fi
-done
diff --git a/defaultenv/defaultenv-2-menu/menu/boot-entries-remove b/defaultenv/defaultenv-2-menu/menu/boot-entries-remove
deleted file mode 100644
index 566be9d..0000000
--- a/defaultenv/defaultenv-2-menu/menu/boot-entries-remove
+++ /dev/null
@@ -1,18 +0,0 @@
-#!/bin/sh
-
-export menu_exit=false
-
-while true; do
-	menu -a -m boot_entries_remove -d "\e[1;36mRemove Boot entry\e[0m"
-
-	boot-entries-collect
-
-	menu -e -a -m boot_entries_remove -c "menu_exit=true" -d "back"
-
-	menu -s -m boot_entries_remove
-	menu -r -m boot_entries_remove
-
-	if [ $menu_exit = true ]; then
-		exit
-	fi
-done
diff --git a/defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry b/defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
deleted file mode 100644
index f06c524..0000000
--- a/defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-menu -e -a -m boot -c "boot -v $1; echo; readline \"press enter to continue\" a " -d "Boot: ${GREEN}$2${NC}"
-menu -e -a -m boot_entries_edit -c "$global.editcmd /env/boot/$1" -d "${GREEN}$2${NC}"
-menu -e -a -m boot_entries_remove -c "rm /env/boot/$1" -d "${GREEN}$2${NC}"
diff --git a/defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry b/defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
deleted file mode 100644
index c5e982c..0000000
--- a/defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/bin/sh
-
-name=
-
-readline "Name of the new entry: " name
-
-if [ -z "$name" ]; then
-	exit 1
-fi
-
-if [ -e "/env/boot/$name" ]; then
-	echo "entry $name already exists"
-	readline "<enter>" unused
-	exit 1
-fi
-
-cp /env/data/boot-template /env/boot/$name
-
-edit /env/boot/$name
-
-boot-menu-show rebuild
diff --git a/defaultenv/defaultenv-2-menu/menu/init-entries-collect b/defaultenv/defaultenv-2-menu/menu/init-entries-collect
deleted file mode 100644
index dbb7757..0000000
--- a/defaultenv/defaultenv-2-menu/menu/init-entries-collect
+++ /dev/null
@@ -1,9 +0,0 @@
-#!/bin/sh
-
-cd /env/init
-
-for i in *; do
-	./$i menu
-done
-
-cd /
diff --git a/defaultenv/defaultenv-2-menu/menu/init-entries-edit b/defaultenv/defaultenv-2-menu/menu/init-entries-edit
deleted file mode 100644
index fc02b32..0000000
--- a/defaultenv/defaultenv-2-menu/menu/init-entries-edit
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-export menu_exit=false
-
-while true; do
-	menu -a -m init_entries_edit -d "\e[1;36mEdit init entries\e[0m"
-
-	menu -e -a -m init_entries_edit -R -c "true" -d ">> Reset board to let changes here take effect <<"
-
-	init-entries-collect
-
-	menu -e -a -m init_entries_edit -c "menu_exit=true" -d "back"
-
-	menu -s -m init_entries_edit
-	menu -r -m init_entries_edit
-
-	if [ $menu_exit = true ]; then
-		exit
-	fi
-done
diff --git a/defaultenv/defaultenv-2-menu/menu/init-menu-add-entry b/defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
deleted file mode 100644
index 7cb5686..0000000
--- a/defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
+++ /dev/null
@@ -1,3 +0,0 @@
-#!/bin/sh
-
-menu -e -a -m init_entries_edit -c "$global.editcmd /env/init/$1" -d "\e[1;32m$2\e[0m"
diff --git a/defaultenv/defaultenv-2-menu/menu/mainmenu b/defaultenv/defaultenv-2-menu/menu/mainmenu
index f10f67a..9803947 100644
--- a/defaultenv/defaultenv-2-menu/menu/mainmenu
+++ b/defaultenv/defaultenv-2-menu/menu/mainmenu
@@ -1,23 +1,5 @@
 #!/bin/sh
 
-savepath=$PATH
-export menupath=$PATH:/env/menu
-
 . /env/data/ansi-colors
 
-while true; do
-	export PATH=${menupath}
-
-	echo $PATH
-
-	menu -a -m boot -d "${CYAN}Welcome to Barebox${NC}"
-
-	boot-entries-collect
-
-	menu -e -a -m boot -c "settings" -d "Settings"
-	menu -e -a -m boot -c 'PATH=$savepath; echo "enter exit to return to menu"; sh' -d "${DARK_YELLOW}Shell${NC}"
-	menu -e -a -m boot -c reset -d "${RED}Reset${NC}"
-
-	menu -s -m boot
-	menu -r -m boot
-done
+menutree
diff --git a/defaultenv/defaultenv-2-menu/menu/settings b/defaultenv/defaultenv-2-menu/menu/settings
deleted file mode 100644
index db619af..0000000
--- a/defaultenv/defaultenv-2-menu/menu/settings
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/bin/sh
-
-export menu_exit=false
-
-while true; do
-	menu -a -m settings -d "${CYAN}Settings${NC}"
-
-	menu -e -a -R -m settings -c "$global.editcmd /env/network/eth0" -d "Network settings"
-	menu -e -a -R -m settings -c "$global.editcmd /env/config" -d "Config settings"
-	menu -e -a -m settings -c "boot-entries-edit" -d "Edit boot entries"
-	menu -e -a -m settings -c "init-entries-edit" -d "Edit init entries"
-	menu -e -a -R -m settings -c "saveenv || echo \"failed to save environment\" && sleep 2" -d "Save settings"
-	menu -e -a -m settings -c "menu_exit=true" -d "back"
-
-	menu -s -m settings
-	menu -r -m settings
-
-	if [ $menu_exit = true ]; then
-		exit
-	fi
-done
diff --git a/defaultenv/defaultenv-2-menu/menu/title b/defaultenv/defaultenv-2-menu/menu/title
new file mode 100644
index 0000000..f3c47b5
--- /dev/null
+++ b/defaultenv/defaultenv-2-menu/menu/title
@@ -0,0 +1 @@
+${RED}Main menu${NC}
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
