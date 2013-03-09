Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4L-0005U0-NW
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:53 +0000
Received: by mail-wi0-f174.google.com with SMTP id hi8so325188wib.7
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:47 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:40 +0100
Message-Id: <1362871182-25726-8-git-send-email-vicencb@gmail.com>
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 7/9] menu: avoid errors when building submenus
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

boot-menu-add-entry should not add menu entries to non-existent menus
to solve the issue a new parameter is passed indicating the current menu

Signed-off-by: Vicente Bergas <vicencb@gmail.com>
---
 arch/arm/boards/at91sam9m10ihd/env/boot/android         | 2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc             | 2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net             | 2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb         | 2 +-
 arch/arm/boards/beagle/env/boot/mmc                     | 2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi                | 2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi-dt             | 2 +-
 arch/arm/boards/beaglebone/env/boot/sd                  | 2 +-
 arch/arm/boards/clep7212/env/boot/nor                   | 2 +-
 arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 | 2 +-
 arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal | 2 +-
 arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left    | 2 +-
 arch/arm/boards/guf-vincell/env/boot/nand-ubi           | 2 +-
 arch/arm/boards/karo-tx25/env/boot/nand-ubi             | 2 +-
 arch/arm/boards/panda/env/boot/mmc                      | 2 +-
 arch/arm/boards/pcm037/env/boot/nand-ubi                | 2 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi                | 2 +-
 arch/arm/boards/pcm043/env/boot/nand-ubi                | 2 +-
 arch/arm/boards/pcm051/env/boot/sd                      | 2 +-
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi        | 2 +-
 defaultenv-2/base/boot/net                              | 2 +-
 defaultenv-2/base/data/boot-template                    | 2 +-
 defaultenv-2/menu/menu/boot-entries-collect             | 4 ++--
 defaultenv-2/menu/menu/boot-entries-edit                | 2 +-
 defaultenv-2/menu/menu/boot-entries-remove              | 2 +-
 defaultenv-2/menu/menu/boot-menu-add-entry              | 6 +++---
 defaultenv-2/menu/menu/mainmenu                         | 2 +-
 27 files changed, 30 insertions(+), 30 deletions(-)

diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/android b/arch/arm/boards/at91sam9m10ihd/env/boot/android
index e440f18..e7387c5 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/android
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/android
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "android (nand)"
+	boot-menu-add-entry "$0" "android (nand)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/mmc b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
index 89c66ee..1ed98e3 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/mmc
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC slot"
+	boot-menu-add-entry "$0" "MMC slot" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net b/arch/arm/boards/at91sam9m10ihd/env/boot/net
index cdb2520..35f0a54 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/net
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (macb)"
+	boot-menu-add-entry "$0" "network (tftp, nfs) (macb)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
index 6e341a0..c4c01c3 100644
--- a/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
+++ b/arch/arm/boards/at91sam9m10ihd/env/boot/net-usb
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs) (usb ethernet)"
+	boot-menu-add-entry "$0" "network (tftp, nfs) (usb ethernet)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/beagle/env/boot/mmc b/arch/arm/boards/beagle/env/boot/mmc
index 58bd557..d1a5486 100644
--- a/arch/arm/boards/beagle/env/boot/mmc
+++ b/arch/arm/boards/beagle/env/boot/mmc
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext3)"
+	boot-menu-add-entry "$0" "MMC (ext3)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi b/arch/arm/boards/beagle/env/boot/nand-ubi
index 3037fd4..f0e932b 100644
--- a/arch/arm/boards/beagle/env/boot/nand-ubi
+++ b/arch/arm/boards/beagle/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/beagle/env/boot/nand-ubi-dt b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
index b7a1f19..e7539b8 100644
--- a/arch/arm/boards/beagle/env/boot/nand-ubi-dt
+++ b/arch/arm/boards/beagle/env/boot/nand-ubi-dt
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/beaglebone/env/boot/sd b/arch/arm/boards/beaglebone/env/boot/sd
index dce0605..6315e08 100644
--- a/arch/arm/boards/beaglebone/env/boot/sd
+++ b/arch/arm/boards/beaglebone/env/boot/sd
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
+	boot-menu-add-entry "$0" "kernel & rootfs on SD card" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/clep7212/env/boot/nor b/arch/arm/boards/clep7212/env/boot/nor
index df8c983..cca2bfa 100644
--- a/arch/arm/boards/clep7212/env/boot/nor
+++ b/arch/arm/boards/clep7212/env/boot/nor
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "NOR Flash"
+	boot-menu-add-entry "$0" "NOR Flash" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 4d830ed..b600a56 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext)"
+	boot-menu-add-entry "$0" "MMC (ext)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
index ccd0f69..564f10e 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/hd-internal
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "internal harddisk"
+	boot-menu-add-entry "$0" "internal harddisk" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
index 21935c6..6bba754 100644
--- a/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
+++ b/arch/arm/boards/efika-mx-smartbook/env/boot/mmc-left
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "left MMC slot"
+	boot-menu-add-entry "$0" "left MMC slot" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/guf-vincell/env/boot/nand-ubi b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
index a3f748e..1745e58 100644
--- a/arch/arm/boards/guf-vincell/env/boot/nand-ubi
+++ b/arch/arm/boards/guf-vincell/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/karo-tx25/env/boot/nand-ubi b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
index 67b0cb4..a6f6d7a 100644
--- a/arch/arm/boards/karo-tx25/env/boot/nand-ubi
+++ b/arch/arm/boards/karo-tx25/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/panda/env/boot/mmc b/arch/arm/boards/panda/env/boot/mmc
index 58bd557..d1a5486 100644
--- a/arch/arm/boards/panda/env/boot/mmc
+++ b/arch/arm/boards/panda/env/boot/mmc
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "MMC (ext3)"
+	boot-menu-add-entry "$0" "MMC (ext3)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/pcm037/env/boot/nand-ubi b/arch/arm/boards/pcm037/env/boot/nand-ubi
index 67b0cb4..a6f6d7a 100644
--- a/arch/arm/boards/pcm037/env/boot/nand-ubi
+++ b/arch/arm/boards/pcm037/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/pcm038/env/boot/nand-ubi b/arch/arm/boards/pcm038/env/boot/nand-ubi
index 67b0cb4..a6f6d7a 100644
--- a/arch/arm/boards/pcm038/env/boot/nand-ubi
+++ b/arch/arm/boards/pcm038/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/pcm043/env/boot/nand-ubi b/arch/arm/boards/pcm043/env/boot/nand-ubi
index 67b0cb4..a6f6d7a 100644
--- a/arch/arm/boards/pcm043/env/boot/nand-ubi
+++ b/arch/arm/boards/pcm043/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/pcm051/env/boot/sd b/arch/arm/boards/pcm051/env/boot/sd
index f303c10..9debd73 100644
--- a/arch/arm/boards/pcm051/env/boot/sd
+++ b/arch/arm/boards/pcm051/env/boot/sd
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel & rootfs on SD card"
+	boot-menu-add-entry "$0" "kernel & rootfs on SD card" "$2"
 	exit
 fi
 
diff --git a/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
index 1987492..ffc64f1 100644
--- a/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
+++ b/arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "nand (UBI)"
+	boot-menu-add-entry "$0" "nand (UBI)" "$2"
 	exit
 fi
 
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 90c25aa..25d2d12 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "network (tftp, nfs)"
+	boot-menu-add-entry "$0" "network (tftp, nfs)" "$2"
 	exit
 fi
 
diff --git a/defaultenv-2/base/data/boot-template b/defaultenv-2/base/data/boot-template
index 9297499..2b3e018 100644
--- a/defaultenv-2/base/data/boot-template
+++ b/defaultenv-2/base/data/boot-template
@@ -1,7 +1,7 @@
 #!/bin/sh
 
 if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "<menu text here>"
+	boot-menu-add-entry "$0" "<menu text here>" "$2"
 	exit
 fi
 
diff --git a/defaultenv-2/menu/menu/boot-entries-collect b/defaultenv-2/menu/menu/boot-entries-collect
index c066c93..ba82bf1 100644
--- a/defaultenv-2/menu/menu/boot-entries-collect
+++ b/defaultenv-2/menu/menu/boot-entries-collect
@@ -2,11 +2,11 @@
 
 cd /env/boot
 
-./$global.boot.default menu
+./$global.boot.default menu $1
 
 for i in *; do
 	if [ "$i" != "$global.boot.default" ]; then
-		./$i menu
+		./$i menu $1
 	fi
 done
 
diff --git a/defaultenv-2/menu/menu/boot-entries-edit b/defaultenv-2/menu/menu/boot-entries-edit
index c4e1c3d..16586be 100644
--- a/defaultenv-2/menu/menu/boot-entries-edit
+++ b/defaultenv-2/menu/menu/boot-entries-edit
@@ -5,7 +5,7 @@ export menu_exit=false
 while true; do
 	menu -a -m boot_entries_edit -d "\e[1;36mEdit boot entries\e[0m"
 
-	boot-entries-collect
+	boot-entries-collect boot_entries_edit
 
 	menu -e -a -m boot_entries_edit -c "boot-menu-new-boot-entry" -d "Add a new entry"
 	menu -e -a -m boot_entries_edit -c "boot-entries-remove" -d "Remove an entry"
diff --git a/defaultenv-2/menu/menu/boot-entries-remove b/defaultenv-2/menu/menu/boot-entries-remove
index 566be9d..2fe8265 100644
--- a/defaultenv-2/menu/menu/boot-entries-remove
+++ b/defaultenv-2/menu/menu/boot-entries-remove
@@ -5,7 +5,7 @@ export menu_exit=false
 while true; do
 	menu -a -m boot_entries_remove -d "\e[1;36mRemove Boot entry\e[0m"
 
-	boot-entries-collect
+	boot-entries-collect boot_entries_remove
 
 	menu -e -a -m boot_entries_remove -c "menu_exit=true" -d "back"
 
diff --git a/defaultenv-2/menu/menu/boot-menu-add-entry b/defaultenv-2/menu/menu/boot-menu-add-entry
index f06c524..f634b5c 100644
--- a/defaultenv-2/menu/menu/boot-menu-add-entry
+++ b/defaultenv-2/menu/menu/boot-menu-add-entry
@@ -1,5 +1,5 @@
 #!/bin/sh
 
-menu -e -a -m boot -c "boot -v $1; echo; readline \"press enter to continue\" a " -d "Boot: ${GREEN}$2${NC}"
-menu -e -a -m boot_entries_edit -c "$global.editcmd /env/boot/$1" -d "${GREEN}$2${NC}"
-menu -e -a -m boot_entries_remove -c "rm /env/boot/$1" -d "${GREEN}$2${NC}"
+[ "$3" = boot                ] && menu -e -a -m "$3" -c "boot -v $1; echo; readline \"press enter to continue\" a " -d "Boot: ${GREEN}$2${NC}"
+[ "$3" = boot_entries_edit   ] && menu -e -a -m "$3" -c "$global.editcmd /env/boot/$1" -d "${GREEN}$2${NC}"
+[ "$3" = boot_entries_remove ] && menu -e -a -m "$3" -c "rm /env/boot/$1" -d "${GREEN}$2${NC}"
diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv-2/menu/menu/mainmenu
index c74cc9c..aa7626b 100644
--- a/defaultenv-2/menu/menu/mainmenu
+++ b/defaultenv-2/menu/menu/mainmenu
@@ -12,7 +12,7 @@ while true; do
 
 	menu -a -m boot -d "${CYAN}Welcome to Barebox${NC}"
 
-	boot-entries-collect
+	boot-entries-collect boot
 
 	menu -e -a -R -m boot -c "$global.editcmd /env/network/eth0" -d "Network settings"
 	menu -e -a -R -m boot -c "$global.editcmd /env/config" -d "Config settings"
-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
