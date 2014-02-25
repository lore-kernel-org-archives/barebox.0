Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIIq4-0003C3-PK
 for barebox@lists.infradead.org; Tue, 25 Feb 2014 14:18:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 25 Feb 2014 15:18:03 +0100
Message-Id: <1393337884-17282-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
References: <1393337884-17282-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] move defaultenv-2 to defaultenv/defaultenv-2-*
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Makefile                                                       | 4 ++--
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/bootargs-ip   | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/ifup          | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/init          | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/mtdparts-add  | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/boot/net          | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/config            | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/data/ansi-colors  | 0
 .../base => defaultenv/defaultenv-2-base}/data/boot-template          | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/automount    | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/ps1          | 0
 {defaultenv-2/base => defaultenv/defaultenv-2-base}/network/eth0      | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-collect   | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-edit      | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-remove    | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/boot-menu-add-entry    | 0
 .../defaultenv-2-menu}/menu/boot-menu-new-boot-entry                  | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/init-entries-collect   | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/init-entries-edit      | 0
 .../menu => defaultenv/defaultenv-2-menu}/menu/init-menu-add-entry    | 0
 {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/mainmenu     | 0
 {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/settings     | 0
 22 files changed, 2 insertions(+), 2 deletions(-)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/bootargs-ip (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/ifup (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/init (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/bin/mtdparts-add (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/boot/net (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/config (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/data/ansi-colors (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/data/boot-template (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/automount (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/init/ps1 (100%)
 rename {defaultenv-2/base => defaultenv/defaultenv-2-base}/network/eth0 (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-collect (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-edit (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-entries-remove (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-menu-add-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/boot-menu-new-boot-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-entries-collect (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-entries-edit (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/init-menu-add-entry (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/mainmenu (100%)
 rename {defaultenv-2/menu => defaultenv/defaultenv-2-menu}/menu/settings (100%)

diff --git a/common/Makefile b/common/Makefile
index c88d1c6..9c68f7b 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -51,9 +51,9 @@ $(obj)/startup.o: $(obj)/barebox_default_env.h
 $(obj)/env.o: $(obj)/barebox_default_env.h
 
 ifeq ($(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW),y)
-DEFAULT_ENVIRONMENT_PATH = "defaultenv-2/base"
+DEFAULT_ENVIRONMENT_PATH = "defaultenv/defaultenv-2-base"
 ifeq ($(CONFIG_CMD_MENU_MANAGEMENT),y)
-DEFAULT_ENVIRONMENT_PATH += "defaultenv-2/menu"
+DEFAULT_ENVIRONMENT_PATH += "defaultenv/defaultenv-2-menu"
 endif
 endif
 
diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv/defaultenv-2-base/bin/bootargs-ip
similarity index 100%
rename from defaultenv-2/base/bin/bootargs-ip
rename to defaultenv/defaultenv-2-base/bin/bootargs-ip
diff --git a/defaultenv-2/base/bin/ifup b/defaultenv/defaultenv-2-base/bin/ifup
similarity index 100%
rename from defaultenv-2/base/bin/ifup
rename to defaultenv/defaultenv-2-base/bin/ifup
diff --git a/defaultenv-2/base/bin/init b/defaultenv/defaultenv-2-base/bin/init
similarity index 100%
rename from defaultenv-2/base/bin/init
rename to defaultenv/defaultenv-2-base/bin/init
diff --git a/defaultenv-2/base/bin/mtdparts-add b/defaultenv/defaultenv-2-base/bin/mtdparts-add
similarity index 100%
rename from defaultenv-2/base/bin/mtdparts-add
rename to defaultenv/defaultenv-2-base/bin/mtdparts-add
diff --git a/defaultenv-2/base/boot/net b/defaultenv/defaultenv-2-base/boot/net
similarity index 100%
rename from defaultenv-2/base/boot/net
rename to defaultenv/defaultenv-2-base/boot/net
diff --git a/defaultenv-2/base/config b/defaultenv/defaultenv-2-base/config
similarity index 100%
rename from defaultenv-2/base/config
rename to defaultenv/defaultenv-2-base/config
diff --git a/defaultenv-2/base/data/ansi-colors b/defaultenv/defaultenv-2-base/data/ansi-colors
similarity index 100%
rename from defaultenv-2/base/data/ansi-colors
rename to defaultenv/defaultenv-2-base/data/ansi-colors
diff --git a/defaultenv-2/base/data/boot-template b/defaultenv/defaultenv-2-base/data/boot-template
similarity index 100%
rename from defaultenv-2/base/data/boot-template
rename to defaultenv/defaultenv-2-base/data/boot-template
diff --git a/defaultenv-2/base/init/automount b/defaultenv/defaultenv-2-base/init/automount
similarity index 100%
rename from defaultenv-2/base/init/automount
rename to defaultenv/defaultenv-2-base/init/automount
diff --git a/defaultenv-2/base/init/ps1 b/defaultenv/defaultenv-2-base/init/ps1
similarity index 100%
rename from defaultenv-2/base/init/ps1
rename to defaultenv/defaultenv-2-base/init/ps1
diff --git a/defaultenv-2/base/network/eth0 b/defaultenv/defaultenv-2-base/network/eth0
similarity index 100%
rename from defaultenv-2/base/network/eth0
rename to defaultenv/defaultenv-2-base/network/eth0
diff --git a/defaultenv-2/menu/menu/boot-entries-collect b/defaultenv/defaultenv-2-menu/menu/boot-entries-collect
similarity index 100%
rename from defaultenv-2/menu/menu/boot-entries-collect
rename to defaultenv/defaultenv-2-menu/menu/boot-entries-collect
diff --git a/defaultenv-2/menu/menu/boot-entries-edit b/defaultenv/defaultenv-2-menu/menu/boot-entries-edit
similarity index 100%
rename from defaultenv-2/menu/menu/boot-entries-edit
rename to defaultenv/defaultenv-2-menu/menu/boot-entries-edit
diff --git a/defaultenv-2/menu/menu/boot-entries-remove b/defaultenv/defaultenv-2-menu/menu/boot-entries-remove
similarity index 100%
rename from defaultenv-2/menu/menu/boot-entries-remove
rename to defaultenv/defaultenv-2-menu/menu/boot-entries-remove
diff --git a/defaultenv-2/menu/menu/boot-menu-add-entry b/defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
similarity index 100%
rename from defaultenv-2/menu/menu/boot-menu-add-entry
rename to defaultenv/defaultenv-2-menu/menu/boot-menu-add-entry
diff --git a/defaultenv-2/menu/menu/boot-menu-new-boot-entry b/defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
similarity index 100%
rename from defaultenv-2/menu/menu/boot-menu-new-boot-entry
rename to defaultenv/defaultenv-2-menu/menu/boot-menu-new-boot-entry
diff --git a/defaultenv-2/menu/menu/init-entries-collect b/defaultenv/defaultenv-2-menu/menu/init-entries-collect
similarity index 100%
rename from defaultenv-2/menu/menu/init-entries-collect
rename to defaultenv/defaultenv-2-menu/menu/init-entries-collect
diff --git a/defaultenv-2/menu/menu/init-entries-edit b/defaultenv/defaultenv-2-menu/menu/init-entries-edit
similarity index 100%
rename from defaultenv-2/menu/menu/init-entries-edit
rename to defaultenv/defaultenv-2-menu/menu/init-entries-edit
diff --git a/defaultenv-2/menu/menu/init-menu-add-entry b/defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
similarity index 100%
rename from defaultenv-2/menu/menu/init-menu-add-entry
rename to defaultenv/defaultenv-2-menu/menu/init-menu-add-entry
diff --git a/defaultenv-2/menu/menu/mainmenu b/defaultenv/defaultenv-2-menu/menu/mainmenu
similarity index 100%
rename from defaultenv-2/menu/menu/mainmenu
rename to defaultenv/defaultenv-2-menu/menu/mainmenu
diff --git a/defaultenv-2/menu/menu/settings b/defaultenv/defaultenv-2-menu/menu/settings
similarity index 100%
rename from defaultenv-2/menu/menu/settings
rename to defaultenv/defaultenv-2-menu/menu/settings
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
