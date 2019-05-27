Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVCO5-0001my-Mo
 for barebox@lists.infradead.org; Mon, 27 May 2019 09:57:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1hVCO3-00021w-9r
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hVCO2-0003Ca-PU
 for barebox@lists.infradead.org; Mon, 27 May 2019 11:57:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 May 2019 11:57:28 +0200
Message-Id: <20190527095744.5923-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190527095744.5923-1-a.fatoum@pengutronix.de>
References: <20190527095744.5923-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 02/18] kbuild: Use ls(1) instead of stat(1) to obtain file size
To: barebox@lists.infradead.org

From: Michael Forney <forney@google.com>

stat(1) is not standardized and different implementations have their own
(conflicting) flags for querying the size of a file.

ls(1) provides the same information (value of st.st_size) in the 5th
column, except when the file is a character or block device. This output
is standardized[0]. The -n option turns on -l, which writes lines
formatted like

  "%s %u %s %s %u %s %s\n", <file mode>, <number of links>,
      <owner name>, <group name>, <size>, <date and time>,
      <pathname>

but instead of writing the <owner name> and <group name>, it writes the
numeric owner and group IDs (this avoids /etc/passwd and /etc/group
lookups as well as potential field splitting issues).

The <size> field is specified as "the value that would be returned for
the file in the st_size field of struct stat".

To avoid duplicating logic in several locations in the tree, create
scripts/file-size.sh and update callers to use that instead of stat(1).

[0] http://pubs.opengroup.org/onlinepubs/9699919799/utilities/ls.html#tag_20_73_10

Signed-off-by: Michael Forney <forney@google.com>
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
[afa: imported script and adjusted barebox stat(1) callsites]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/Makefile  | 3 ++-
 scripts/Makefile.lib | 4 ++--
 scripts/file-size.sh | 4 ++++
 scripts/gen-dtb-s    | 4 ++--
 4 files changed, 10 insertions(+), 5 deletions(-)
 create mode 100755 scripts/file-size.sh

diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index 950ac29a3cee..e030355a4052 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -20,7 +20,8 @@ $(obj)/barebox_default_env: FORCE
 
 quiet_cmd_env_h = ENVH    $@
 cmd_env_h = cat $< | (cd $(obj) && $(objtree)/scripts/bin2c "__aligned(4) default_environment") > $@; \
-	echo "static const int default_environment_uncompress_size=`stat -c%s $(obj)/barebox_default_env`;" >> $@
+	echo "static const int default_environment_uncompress_size=`${CONFIG_SHELL} \"${srctree}/scripts/file-size.sh\" $(obj)/barebox_default_env`;" >> $@
+
 
 $(obj)/barebox_default_env.h: $(obj)/barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX) FORCE
 	$(call if_changed,env_h)
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 95eaf522abc9..87bff2d296e3 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -341,7 +341,7 @@ cmd_env=$(srctree)/scripts/genenv $(srctree) $(objtree) $@ $<
 size_append = printf $(shell						\
 dec_size=0;								\
 for F in $1; do								\
-	fsize=$$(stat -c "%s" $$F);					\
+	fsize=$$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $$F);\
 	dec_size=$$(expr $$dec_size + $$fsize);				\
 done;									\
 printf "%08x\n" $$dec_size |						\
@@ -446,7 +446,7 @@ quiet_cmd_check_size = CHKSIZE $2
 # Check size of a file
 quiet_cmd_check_file_size = CHKFILESIZE $2
       cmd_check_file_size = set -e;					\
-	size=`stat -c%s $2`;						\
+	size=`${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $2`;	\
 	max_size=`printf "%d" $3`;					\
 	if [ $$size -gt $$max_size ] ;					\
 	then								\
diff --git a/scripts/file-size.sh b/scripts/file-size.sh
new file mode 100755
index 000000000000..7eb7423416b5
--- /dev/null
+++ b/scripts/file-size.sh
@@ -0,0 +1,4 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+set -- $(ls -dn "$1")
+printf '%s\n' "$5"
diff --git a/scripts/gen-dtb-s b/scripts/gen-dtb-s
index 307b1f68667e..b2dd253c274f 100755
--- a/scripts/gen-dtb-s
+++ b/scripts/gen-dtb-s
@@ -55,8 +55,8 @@ lzop -f -9 $dtb -o $dtb.lzo
 if [ $? != 0 ]; then
 	exit 1
 fi
-compressed=$(stat $dtb.lzo -c "%s")
-uncompressed=$(stat $dtb -c "%s")
+compressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb.lzo)
+uncompressed=$(${CONFIG_SHELL} "${srctree}/scripts/file-size.sh" $dtb)
 
 echo ".section .dtbz.rodata.${name},\"a\""
 echo ".balign STRUCT_ALIGNMENT"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
