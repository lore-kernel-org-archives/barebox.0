Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo68.mail-out.ovh.net ([46.105.74.219])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YXRBU-0005Ot-Lv
 for barebox@lists.infradead.org; Mon, 16 Mar 2015 09:19:42 +0000
Received: from mail189.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id CC6F5FF93FC
 for <barebox@lists.infradead.org>; Mon, 16 Mar 2015 10:19:17 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 16 Mar 2015 10:18:59 +0100
Message-Id: <1426497545-24175-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1426497545-24175-1-git-send-email-plagnioj@jcrosoft.com>
References: <20150316091710.GE24510@ns203013.ovh.net>
 <1426497545-24175-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/8] command: rename digest.c to hashsum.c
To: barebox@lists.infradead.org

as I'll add a new generic command named digest

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/Kconfig                 | 14 +++++++-------
 commands/Makefile                |  2 +-
 commands/{digest.c => hashsum.c} |  0
 3 files changed, 8 insertions(+), 8 deletions(-)
 rename commands/{digest.c => hashsum.c} (100%)

diff --git a/commands/Kconfig b/commands/Kconfig
index 286e9ce..7e3e8b7 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -12,7 +12,7 @@ config HAS_POWEROFF
 
 if COMMAND_SUPPORT
 
-config COMPILE_DIGEST
+config COMPILE_HASH
 	tristate
 	select DIGEST
 	help
@@ -917,7 +917,7 @@ config CMD_LS
 
 config CMD_MD5SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select MD5
 	prompt "md5sum"
 	help
@@ -982,7 +982,7 @@ config CMD_RMDIR
 
 config CMD_SHA1SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select SHA1
 	prompt "sha1sum"
 	help
@@ -994,7 +994,7 @@ config CMD_SHA1SUM
 
 config CMD_SHA224SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select SHA224
 	prompt "sha224sum"
 	help
@@ -1006,7 +1006,7 @@ config CMD_SHA224SUM
 
 config CMD_SHA256SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select SHA256
 	prompt "sha256sum"
 	help
@@ -1018,7 +1018,7 @@ config CMD_SHA256SUM
 
 config CMD_SHA384SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select SHA384
 	prompt "sha384sum"
 	help
@@ -1030,7 +1030,7 @@ config CMD_SHA384SUM
 
 config CMD_SHA512SUM
 	tristate
-	select COMPILE_DIGEST
+	select COMPILE_HASH
 	select SHA512
 	prompt "sha512sum"
 	help
diff --git a/commands/Makefile b/commands/Makefile
index 7344e01..e42662f 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -1,5 +1,5 @@
 obj-$(CONFIG_STDDEV)		+= stddev.o
-obj-$(CONFIG_COMPILE_DIGEST)	+= digest.o
+obj-$(CONFIG_COMPILE_HASH)	+= hashsum.o
 obj-$(CONFIG_COMPILE_MEMORY)	+= mem.o
 obj-$(CONFIG_CMD_BOOTM)		+= bootm.o
 obj-$(CONFIG_CMD_UIMAGE)	+= uimage.o
diff --git a/commands/digest.c b/commands/hashsum.c
similarity index 100%
rename from commands/digest.c
rename to commands/hashsum.c
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
