Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-x234.google.com ([2607:f8b0:400e:c02::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Yojcf-0004jA-Mz
 for barebox@lists.infradead.org; Sun, 03 May 2015 02:27:14 +0000
Received: by pdbnk13 with SMTP id nk13so130840441pdb.0
 for <barebox@lists.infradead.org>; Sat, 02 May 2015 19:26:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  2 May 2015 19:26:20 -0700
Message-Id: <1430619980-26243-9-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
References: <1430619980-26243-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 8/8] Makefile.lib: Make 'check_file_size' more flexible
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make 'check_file_size' more flexible by not hardcoding the file whose
size is going to be checked to '$@'. This way it is possible to use
this subroutine to check the size of files other than the target of
the rule.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 Makefile               | 2 +-
 arch/arm/pbl/Makefile  | 2 +-
 arch/mips/pbl/Makefile | 2 +-
 scripts/Makefile.lib   | 6 +++---
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Makefile b/Makefile
index 372d18a..9ed0a1d 100644
--- a/Makefile
+++ b/Makefile
@@ -700,7 +700,7 @@ OBJCOPYFLAGS_barebox.bin = -O binary
 barebox.bin: barebox FORCE
 	$(call if_changed,objcopy)
 ifndef CONFIG_PBL_IMAGE
-	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 endif

 # By default the uImage load address is 2MB below CONFIG_TEXT_BASE,
diff --git a/arch/arm/pbl/Makefile b/arch/arm/pbl/Makefile
index 4c1788d..1ff39db 100644
--- a/arch/arm/pbl/Makefile
+++ b/arch/arm/pbl/Makefile
@@ -22,7 +22,7 @@ endif

 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 	$(Q)$(kecho) '  Barebox: fix size'
 	$(Q)$(objtree)/scripts/fix_size -i -f $(objtree)/$@ $(FIX_SIZE)
 	$(Q)$(kecho) '  Barebox: $@ is ready'
diff --git a/arch/mips/pbl/Makefile b/arch/mips/pbl/Makefile
index fea1f24..b03bca1 100644
--- a/arch/mips/pbl/Makefile
+++ b/arch/mips/pbl/Makefile
@@ -15,7 +15,7 @@ extra-y       += piggy.gzip piggy.lz4 piggy.lzo piggy.lzma piggy.xzkern piggy.sh

 $(obj)/zbarebox.bin:	$(obj)/zbarebox FORCE
 	$(call if_changed,objcopy)
-	$(call cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
+	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 	$(Q)$(kecho) '  Barebox: $@ is ready'

 $(obj)/zbarebox.S: $(obj)/zbarebox FORCE
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 57426d0..e991f33 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -388,10 +388,10 @@ quiet_cmd_ln = LN      $@
 cmd_ln = ln -sf $< $@

 # Check size of a file
-quiet_cmd_check_file_size = CHKSIZE $@
+quiet_cmd_check_file_size = CHKSIZE $2
       cmd_check_file_size = set -e;					\
-	size=`stat -c%s $@`;						\
-	max_size=`printf "%d" $2`;					\
+	size=`stat -c%s $2`;						\
+	max_size=`printf "%d" $3`;					\
 	if [ $$size -gt $$max_size ] ;					\
 	then								\
 		echo "$@ size $$size > of the maximum size $$max_size" >&2;	\
--
2.1.4

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
