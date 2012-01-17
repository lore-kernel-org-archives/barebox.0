Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnALz-00069u-L9
 for barebox@lists.infradead.org; Tue, 17 Jan 2012 14:49:40 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id E327EFFC001
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2012 15:51:10 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 17 Jan 2012 15:48:31 +0100
Message-Id: <1326811712-29567-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2 v3] add config to check if the size of barebox exceed the
 target size
To: barebox@lists.infradead.org

CONFIG_BAREBOX_MAX_IMAGE_SIZE will allow to detected silent oversize result

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
v3:

	use cmd mecanism

Best Regards,
J.
 Makefile       |   11 +++++++++++
 common/Kconfig |    7 +++++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/Makefile b/Makefile
index d8e685e..0a94f24 100644
--- a/Makefile
+++ b/Makefile
@@ -532,6 +532,16 @@ quiet_cmd_barebox_version = GEN     .version
 	  expr 0$$(cat .old_version) + 1 >.version;	\
 	fi;						\
 
+# Check size of a file
+quiet_cmd_check_file_size = CHKSIZE $@
+      cmd_check_file_size = set -e;					\
+	size=`stat -c%s $@`;						\
+	max_size=`printf "%d" $2`;					\
+	if [ $$size -gt $$max_size ] ;					\
+	then								\
+		echo "$@ size $$size > of the maximum size $$max_size";	\
+		exit 1 ;						\
+	fi;
 
 # Generate System.map
 quiet_cmd_sysmap = SYSMAP
@@ -659,6 +669,7 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
+	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
 ifdef CONFIG_X86
 barebox.S: barebox
diff --git a/common/Kconfig b/common/Kconfig
index 382e591..8089061 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -104,6 +104,13 @@ config TEXT_BASE
 	help
 	  The Address barebox gets linked at.
 
+config BAREBOX_MAX_IMAGE_SIZE
+	prompt "Maximum size of barebox"
+	hex
+	default 0xffffffff
+	help
+	  Define the maximum size of barebox
+
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
