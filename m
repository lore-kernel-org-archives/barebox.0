Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkyO8-0004cR-O4
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 13:38:50 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 4A4AB100032D
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 14:40:07 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 14:31:52 +0100
Message-Id: <1326288716-1342-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/6] uncompress: add config to disable it
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig |    1 +
 lib/Kconfig      |    5 +++++
 lib/Makefile     |    2 +-
 lib/lzo/Kconfig  |    2 +-
 4 files changed, 8 insertions(+), 2 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index 1d080e3..b003786 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -310,6 +310,7 @@ config CMD_BOOTM
 	tristate
 	default y
 	select CRC32
+	select UNCOMPRESS
 	prompt "bootm"
 
 config CMD_BOOTM_SHOW_TYPE
diff --git a/lib/Kconfig b/lib/Kconfig
index 3339a9a..0bbd206 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -1,9 +1,14 @@
 menu "Library routines"
+config UNCOMPRESS
+	bool
+
 config ZLIB
 	bool "include gzip uncompression support"
+	select UNCOMPRESS
 
 config BZLIB
 	bool "include bzip2 uncompression support"
+	select UNCOMPRESS
 
 config GENERIC_FIND_NEXT_BIT
 	def_bool n
diff --git a/lib/Makefile b/lib/Makefile
index 7799e69..c273c58 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -30,6 +30,6 @@ obj-y			+= show_progress.o
 obj-$(CONFIG_LZO_DECOMPRESS)		+= decompress_unlzo.o
 obj-$(CONFIG_PROCESS_ESCAPE_SEQUENCE)	+= process_escape_sequence.o
 obj-$(CONFIG_FDT)	+= fdt/
-obj-y			+= uncompress.o
+obj-$(CONFIG_UNCOMPRESS)	+= uncompress.o
 obj-$(CONFIG_BCH)	+= bch.o
 obj-$(CONFIG_BITREV)	+= bitrev.o
diff --git a/lib/lzo/Kconfig b/lib/lzo/Kconfig
index 03c3350..9276b21 100644
--- a/lib/lzo/Kconfig
+++ b/lib/lzo/Kconfig
@@ -1,6 +1,6 @@
 config LZO_DECOMPRESS
 	bool "include lzo uncompression support"
-	bool
+	select UNCOMPRESS
 
 config LZO_COMPRESS
 	bool
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
