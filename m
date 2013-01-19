Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TwWGm-0005Xx-9s
 for barebox@lists.infradead.org; Sat, 19 Jan 2013 11:07:29 +0000
Received: from mail405.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 9DDB8FF9126
 for <barebox@lists.infradead.org>; Sat, 19 Jan 2013 12:21:34 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 19 Jan 2013 12:06:00 +0100
Message-Id: <1358593560-6307-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [For master PATCH 1/1] Makefile: move cmd_check_file_size to
 Makefile.lib
To: barebox@lists.infradead.org

so we can use to check pbl

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile             |   11 -----------
 scripts/Makefile.lib |   11 +++++++++++
 2 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/Makefile b/Makefile
index 0c07463..8e15c03 100644
--- a/Makefile
+++ b/Makefile
@@ -547,17 +547,6 @@ quiet_cmd_barebox_version = GEN     .version
 	fi;						\
 	$(MAKE) $(build)=common
 
-# Check size of a file
-quiet_cmd_check_file_size = CHKSIZE $@
-      cmd_check_file_size = set -e;					\
-	size=`stat -c%s $@`;						\
-	max_size=`printf "%d" $2`;					\
-	if [ $$size -gt $$max_size ] ;					\
-	then								\
-		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
-		exit 1 ;						\
-	fi;
-
 # Generate System.map
 quiet_cmd_sysmap = SYSMAP
       cmd_sysmap = $(CONFIG_SHELL) $(srctree)/scripts/mksysmap
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 14e471d..f7d6721 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -248,3 +248,14 @@ cmd_disasm = $(OBJDUMP) -d $< > $@
 
 quiet_cmd_ln = LN      $@
 cmd_ln = ln -sf $< $@
+
+# Check size of a file
+quiet_cmd_check_file_size = CHKSIZE $@
+      cmd_check_file_size = set -e;					\
+	size=`stat -c%s $@`;						\
+	max_size=`printf "%d" $2`;					\
+	if [ $$size -gt $$max_size ] ;					\
+	then								\
+		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
+		exit 1 ;						\
+	fi;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
