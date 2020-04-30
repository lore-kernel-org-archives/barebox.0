Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU1Wt-0002Nt-Dy
 for barebox@lists.infradead.org; Thu, 30 Apr 2020 05:14:37 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 30 Apr 2020 14:13:55 +0900
Message-Id: <20200430051357.766084-2-masahiroy@kernel.org>
In-Reply-To: <20200430051357.766084-1-masahiroy@kernel.org>
References: <20200430051357.766084-1-masahiroy@kernel.org>
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
Subject: [PATCH 2/4] kbuild: sync filechk rule with Linux 5.7-rc2
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

The 'filechk' in the latest Linux works more simply, reliably.

- Do not show CHK every time
- Delete the *.tmp file when the filechk_$(1) fails
- Do not open the first prerequisite. This is unneeded in most cases.

I deleted pointeless dependency on Makefile.

Also delete the meaningless assignment to 'targets' because filechk
does not generate .cmd file.

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 Makefile               | 10 +++++-----
 common/Makefile        |  4 +---
 scripts/Kbuild.include | 24 +++++++++++-------------
 3 files changed, 17 insertions(+), 21 deletions(-)

diff --git a/Makefile b/Makefile
index 967c27909..59e041fed 100644
--- a/Makefile
+++ b/Makefile
@@ -883,16 +883,16 @@ define filechk_utsrelease.h
 	  echo '"$(KERNELRELEASE)" exceeds $(uts_len) characters' >&2;    \
 	  exit 1;                                                         \
 	fi;                                                               \
-	(echo \#define UTS_RELEASE \"$(KERNELRELEASE)\";)
+	echo \#define UTS_RELEASE \"$(KERNELRELEASE)\"
 endef
 
 define filechk_version.h
-	(echo \#define LINUX_VERSION_CODE $(shell                             \
-	expr $(VERSION) \* 65536 + $(PATCHLEVEL) \* 256 + $(SUBLEVEL));     \
-	echo '#define KERNEL_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))';)
+	echo \#define LINUX_VERSION_CODE $(shell                         \
+	expr $(VERSION) \* 65536 + 0$(PATCHLEVEL) \* 256 + 0$(SUBLEVEL)); \
+	echo '#define KERNEL_VERSION(a,b,c) (((a) << 16) + ((b) << 8) + (c))'
 endef
 
-include/generated/version.h: $(srctree)/Makefile FORCE
+include/generated/version.h: FORCE
 	$(call filechk,version.h)
 
 include/generated/utsrelease.h: include/config/kernel.release FORCE
diff --git a/common/Makefile b/common/Makefile
index 84463b4d4..c14af692f 100644
--- a/common/Makefile
+++ b/common/Makefile
@@ -86,11 +86,9 @@ echo "\";"						\
 endef
 endif
 
-include/generated/passwd.h: $(srctree)/$(src)/Makefile FORCE
+include/generated/passwd.h: FORCE
 	$(call filechk,passwd)
 
-targets += include/generated/passwd.h
-
 $(obj)/password.o: include/generated/passwd.h
 endif # CONFIG_PASSWORD
 
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 227a022b4..983329e40 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -37,11 +37,11 @@ kecho := $($(quiet)kecho)
 ###
 # filechk is used to check if the content of a generated file is updated.
 # Sample usage:
-# define filechk_sample
-#	echo $KERNELRELEASE
-# endef
-# version.h : Makefile
+#
+# filechk_sample = echo $(KERNELRELEASE)
+# version.h: FORCE
 #	$(call filechk,sample)
+#
 # The rule defined shall write to stdout the content of the new file.
 # The existing file will be compared with the new one.
 # - If no file exist it is created
@@ -50,15 +50,13 @@ kecho := $($(quiet)kecho)
 # - stdin is piped in from the first prerequisite ($<) so one has
 #   to specify a valid file as first prerequisite (often the kbuild file)
 define filechk
-	$(Q)set -e;				\
-	$(kecho) '  CHK     $@';		\
-	mkdir -p $(dir $@);			\
-	$(filechk_$(1)) < $< > $@.tmp;		\
-	if [ -r $@ ] && cmp -s $@ $@.tmp; then	\
-		rm -f $@.tmp;			\
-	else					\
-		$(kecho) '  UPD     $@';	\
-		mv -f $@.tmp $@;		\
+	$(Q)set -e;						\
+	mkdir -p $(dir $@);					\
+	trap "rm -f $(dot-target).tmp" EXIT;			\
+	{ $(filechk_$(1)); } > $(dot-target).tmp;		\
+	if [ ! -r $@ ] || ! cmp -s $@ $(dot-target).tmp; then	\
+		$(kecho) '  UPD     $@';			\
+		mv -f $(dot-target).tmp $@;			\
 	fi
 endef
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
