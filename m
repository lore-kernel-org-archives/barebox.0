Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P3tVP-0000eS-0C
	for barebox@lists.infradead.org; Thu, 07 Oct 2010 16:39:44 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  7 Oct 2010 18:37:37 +0200
Message-Id: <1286469458-11362-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
References: <1286469458-11362-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/5] defaultenv: add update_barebox to update barebox easly
	for tftp or xmodem
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig              |    1 +
 defaultenv/bin/init           |    1 +
 defaultenv/bin/update_barebox |   21 +++++++++++++++++++++
 3 files changed, 23 insertions(+), 0 deletions(-)
 create mode 100644 defaultenv/bin/update_barebox

diff --git a/commands/Kconfig b/commands/Kconfig
index 5416073..151758b 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -204,6 +204,7 @@ config CMD_CRC
 
 config CMD_CRC_CMP
 	tristate
+	default y if DEFAULT_ENVIRONMENT_GENERIC
 	depends on CMD_CRC
 	prompt "compare 2 files crc"
 
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index db2b525..18a0c95 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -28,6 +28,7 @@ if [ $? != 0 ]; then
 	echo "default mode is net"
 	echo "type update_kernel nand|nor [<imagename>] [net|xmodem] to update kernel into flash"
 	echo "type update_rootfs nand|nor [<imagename>] [net|xmodem] to update rootfs into flash"
+	echo "type update_barebox nand|nor [<imagename>] [net|xmodem] to update barebox into flash"
 	echo
 	exit
 fi
diff --git a/defaultenv/bin/update_barebox b/defaultenv/bin/update_barebox
new file mode 100644
index 0000000..2f3b1d9
--- /dev/null
+++ b/defaultenv/bin/update_barebox
@@ -0,0 +1,21 @@
+#!/bin/sh
+
+. /env/config
+image=barebox.bin
+mode=net
+
+if [ x$1 = xnand ]; then
+	part=/dev/nand0.barebox.bb
+elif [ x$1 = xnor ]; then
+	part=/dev/nor0.barebox
+else
+	echo "usage: $0 nor|nand [imagename] [net|xmodem]"
+	exit 1
+fi
+
+if [ x$3 != x ]; then
+	mode=$3
+fi
+
+. /env/bin/_update $2
+crc32 -f $image -F $part
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
