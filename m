Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyO8-0004cQ-CX
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:50 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 80444FFB023
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:53 +0100
Message-Id: <1326288716-1342-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120111132914.GB958@game.jcrosoft.org>
References: <20120111132914.GB958@game.jcrosoft.org>
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
Subject: [PATCH 3/6] filetype: add config to disable it
To: barebox@lists.infradead.org

remove 160 bytes

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 +
 common/Kconfig   |    3 +++
 common/Makefile  |    2 +-
 lib/Kconfig      |    1 +
 4 files changed, 6 insertions(+), 1 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index b003786..fad3281 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -311,6 +311,7 @@ config CMD_BOOTM
 	default y
 	select CRC32
 	select UNCOMPRESS
+	select FILETYPE
 	prompt "bootm"
 
 config CMD_BOOTM_SHOW_TYPE
diff --git a/common/Kconfig b/common/Kconfig
index d184d9e..20e4050 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -40,6 +40,9 @@ config BLOCK_WRITE
 config HAVE_NOSHELL
 	bool
 
+config FILETYPE
+	bool
+
 menu "General Settings              "
 
 config LOCALVERSION
diff --git a/common/Makefile b/common/Makefile
index eaf74a6..76fe407 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -28,7 +28,7 @@ obj-$(CONFIG_CMD_BOOTM) += uimage.o
 obj-y += startup.o
 obj-y += misc.o
 obj-y += memsize.o
-obj-y += filetype.o
+obj-$(CONFIG_FILETYPE) += filetype.o
 obj-y += resource.o
 obj-$(CONFIG_MENU) += menu.o
 obj-$(CONFIG_PASSWORD) += password.o
diff --git a/lib/Kconfig b/lib/Kconfig
index 0bbd206..6b4063d 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,6 +1,7 @@
 menu "Library routines"
 config UNCOMPRESS
 	bool
+	select FILETYPE
 
 config ZLIB
 	bool "include gzip uncompression support"
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
