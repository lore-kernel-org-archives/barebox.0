Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQ5DM-000571-UE
 for barebox@lists.infradead.org; Tue, 05 Jun 2018 06:13:06 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue,  5 Jun 2018 08:12:48 +0200
Message-Id: <20180605061248.24343-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] defaultenv-2: make abort key to stop autoboot configurable
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

currently supported only two options: any key and ctrl-c
"any kay" is default option.
To configure it, use:
nv autoboot_abort_key=any
or
nv autoboot_abort_key=ctrl-c

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 Documentation/user/defaultenv-2.rst   |  3 +++
 defaultenv/defaultenv-2-base/bin/init | 17 ++++++++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index db74176b0..7502d3de1 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -93,6 +93,9 @@ the :ref:`command_edit` command. Typical content:
   # timeout in seconds before the default boot entry is started
   #global.autoboot_timeout=3
 
+  # key to abort autoboot. Supported options are: "any" and "ctrl-c"
+  #global.autoboot_abort_key=any
+
   # list of boot entries. These are executed in order until one
   # succeeds. An entry can be:
   # - a filename in /env/boot/
diff --git a/defaultenv/defaultenv-2-base/bin/init b/defaultenv/defaultenv-2-base/bin/init
index 6f3a34dba..d75f8e08a 100644
--- a/defaultenv/defaultenv-2-base/bin/init
+++ b/defaultenv/defaultenv-2-base/bin/init
@@ -5,6 +5,7 @@ export PATH=/env/bin
 global hostname
 global user
 global autoboot_timeout
+global autoboot_abort_key
 global boot.default
 global linux.bootargs.base
 global linux.bootargs.console
@@ -18,6 +19,8 @@ global editcmd
 magicvar -a global.user "username (used in network filenames)"
 [ -z "${global.autoboot_timeout}" ] && global.autoboot_timeout=3
 magicvar -a global.autoboot_timeout "timeout in seconds before automatic booting"
+[ -z "${global.autoboot_abort_key}" ] && global.autoboot_abort_key=any
+magicvar -a global.autoboot_abort_key "key to abort automatic booting"
 [ -z "${global.boot.default}" ] && global.boot.default=net
 [ -z "${global.editcmd}" ] && global.editcmd=sedit
 
@@ -38,14 +41,22 @@ for i in /env/init/*; do
 	. $i
 done
 
+if [ "${global.autoboot_abort_key}" = "ctrl-c" ]; then
+	abort_string="ctrl-c"
+	abort_args="-c"
+else
+	abort_string="any key"
+	abort_args="-a"
+fi
+
 if [ -e /env/menu ]; then
-	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
+	echo -e -n "\nHit m for menu or $abort_string to stop autoboot: "
 else
-	echo -e -n "\nHit any key to stop autoboot: "
+	echo -e -n "\nHit $abort_string to stop autoboot: "
 fi
 
 if [ "$autoboot" = 0 ]; then
-	timeout -a $global.autoboot_timeout -v key
+	timeout $abort_args $global.autoboot_timeout -v key
 	autoboot="$?"
 fi
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
