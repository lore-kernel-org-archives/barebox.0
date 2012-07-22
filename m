Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo1.mail-out.ovh.net ([178.32.97.215]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SswkR-0001lw-0L
 for barebox@lists.infradead.org; Sun, 22 Jul 2012 14:03:14 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id DBEE4FF91A8
 for <barebox@lists.infradead.org>; Sun, 22 Jul 2012 16:07:55 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 22 Jul 2012 16:02:47 +0200
Message-Id: <1342965768-3796-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1342965768-3796-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120722130301.GI22657@game.jcrosoft.org>
 <1342965768-3796-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/7] compressed: allow to link only what is needed
To: barebox@lists.infradead.org

Today we link to whole barebox and rely on gcc to cleanup via it's garbage
collector.

Now we specify only what is needed and introduce a new directory with source
only related to the compressed target.

The architecture will have to specify the needed file for the link via comp-arch-y.

Import string functions from linux 3.4 (arch/arm/boot/compressed/string.c) and
implement a dummy panic.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Makefile            |   16 ++++---
 arch/arm/Makefile   |    7 +++
 compressed/Makefile |    5 ++
 compressed/misc.c   |   10 ++++
 compressed/string.c |  127 +++++++++++++++++++++++++++++++++++++++++++++++++++
 5 files changed, 159 insertions(+), 6 deletions(-)
 create mode 100644 compressed/Makefile
 create mode 100644 compressed/misc.c
 create mode 100644 compressed/string.c

diff --git a/Makefile b/Makefile
index 0b3da03..d6a3ae5 100644
--- a/Makefile
+++ b/Makefile
@@ -412,6 +412,7 @@ scripts: scripts_basic include/config/auto.conf
 
 # Objects we will link into barebox / subdirs we need to visit
 common-y		:= common/ drivers/ commands/ lib/ crypto/ net/ fs/
+comp-y			:= compressed/
 
 ifeq ($(dot-config),1)
 # Read in config
@@ -474,7 +475,7 @@ CFLAGS += $(call cc-option,-Wno-pointer-sign,)
 # this default value
 export KBUILD_IMAGE ?= barebox
 
-barebox-dirs	:= $(patsubst %/,%,$(filter %/, $(common-y)))
+barebox-dirs	:= $(patsubst %/,%,$(filter %/, $(common-y) $(comp-y)))
 
 barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(common-n) $(common-) \
@@ -482,6 +483,8 @@ barebox-alldirs	:= $(sort $(barebox-dirs) $(patsubst %/,%,$(filter %/, \
 		     $(net-n)  $(net-)  $(libs-n)    $(libs-))))
 
 common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
+comp-y		:= $(patsubst %/, %/built-in.o, $(comp-y))
+comp-arch-y	:= $(patsubst %/, %/built-in.o, $(comp-arch-y))
 
 # Build barebox
 # ---------------------------------------------------------------------------
@@ -509,8 +512,9 @@ common-y	:= $(patsubst %/, %/built-in.o, $(common-y))
 #
 # System.map is generated to document addresses of all kernel symbols
 
+barebox-comp := $(comp-y)
 barebox-common := $(common-y)
-barebox-all    := $(barebox-common)
+barebox-all    := $(barebox-common) $(barebox-comp)
 barebox-lds    := $(lds-y)
 barebox-compressed-lds    := $(lds-compressed-y)
 
@@ -726,11 +730,11 @@ piggy.$(suffix_y).o: barebox-uncompressed.bin.$(suffix_y) $(src)/piggy.$(suffix_
 	$(Q)$(CC) $(CFLAGS) $(CPPFLAGS) -c $(src)/piggy.$(suffix_y).S -o $@
 
 ifdef CONFIG_IMAGE_COMPRESSION
-barebox: piggy.$(suffix_y).o
-	@echo "  LD     " $@
+barebox: piggy.$(suffix_y).o $(barebox-comp)
+	@echo "  LD     " $@ $(barebox-comp)
 	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
 		-T $(barebox-compressed-lds) \
-		--start-group $(barebox-common) piggy.$(suffix_y).o --end-group
+		--start-group $(barebox-comp) $(comp-arch-y) piggy.$(suffix_y).o --end-group
 else
 barebox: $(barebox-lds) $(barebox-head) $(barebox-common) $(kallsyms.o) FORCE
 	$(call barebox-modpost)
@@ -743,7 +747,7 @@ barebox.srec: barebox
 
 # The actual objects are generated when descending,
 # make sure no implicit rule kicks in
-$(sort $(barebox-head) $(barebox-common) ) $(barebox-lds): $(barebox-dirs) ;
+$(sort $(barebox-head) $(barebox-common) $(barebox-comp) ) $(barebox-lds): $(barebox-dirs) ;
 
 # Handle descending into subdirectories listed in $(barebox-dirs)
 # Preset locale variables to speed up the build process. Limit locale
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index a93c4d5..0c666dc 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -207,6 +207,13 @@ endif
 common-y += $(BOARD) $(MACH)
 common-y += arch/arm/lib/ arch/arm/cpu/
 
+# those file will not be recompibled
+# we assume they are already compiled
+# for the normal barebox
+comp-arch-y += arch/arm/lib/lib1funcs.o
+comp-arch-y += arch/arm/lib/div0.o
+comp-arch-y += arch/arm/cpu/start.o
+
 lds-y	:= arch/arm/lib/barebox.lds
 lds-compressed-y := arch/arm/lib/barebox-compressed.lds
 
diff --git a/compressed/Makefile b/compressed/Makefile
new file mode 100644
index 0000000..720a0cb
--- /dev/null
+++ b/compressed/Makefile
@@ -0,0 +1,5 @@
+#
+# only unsed by the decompressor
+#
+obj-y += misc.o
+obj-y += string.o
diff --git a/compressed/misc.c b/compressed/misc.c
new file mode 100644
index 0000000..7bb0f50
--- /dev/null
+++ b/compressed/misc.c
@@ -0,0 +1,10 @@
+#include <common.h>
+#include <init.h>
+#include <linux/types.h>
+#include <linux/string.h>
+#include <linux/ctype.h>
+
+void __noreturn panic(const char *fmt, ...)
+{
+	while(1);
+}
diff --git a/compressed/string.c b/compressed/string.c
new file mode 100644
index 0000000..6787e82
--- /dev/null
+++ b/compressed/string.c
@@ -0,0 +1,127 @@
+/*
+ * arch/arm/boot/compressed/string.c
+ *
+ * Small subset of simple string routines
+ */
+
+#include <linux/types.h>
+
+void *memcpy(void *__dest, __const void *__src, size_t __n)
+{
+	int i = 0;
+	unsigned char *d = (unsigned char *)__dest, *s = (unsigned char *)__src;
+
+	for (i = __n >> 3; i > 0; i--) {
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1 << 2) {
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1 << 1) {
+		*d++ = *s++;
+		*d++ = *s++;
+	}
+
+	if (__n & 1)
+		*d++ = *s++;
+
+	return __dest;
+}
+
+void *memmove(void *__dest, __const void *__src, size_t count)
+{
+	unsigned char *d = __dest;
+	const unsigned char *s = __src;
+
+	if (__dest == __src)
+		return __dest;
+
+	if (__dest < __src)
+		return memcpy(__dest, __src, count);
+
+	while (count--)
+		d[count] = s[count];
+	return __dest;
+}
+
+size_t strlen(const char *s)
+{
+	const char *sc = s;
+
+	while (*sc != '\0')
+		sc++;
+	return sc - s;
+}
+
+int memcmp(const void *cs, const void *ct, size_t count)
+{
+	const unsigned char *su1 = cs, *su2 = ct, *end = su1 + count;
+	int res = 0;
+
+	while (su1 < end) {
+		res = *su1++ - *su2++;
+		if (res)
+			break;
+	}
+	return res;
+}
+
+int strcmp(const char *cs, const char *ct)
+{
+	unsigned char c1, c2;
+	int res = 0;
+
+	do {
+		c1 = *cs++;
+		c2 = *ct++;
+		res = c1 - c2;
+		if (res)
+			break;
+	} while (c1);
+	return res;
+}
+
+void *memchr(const void *s, int c, size_t count)
+{
+	const unsigned char *p = s;
+
+	while (count--)
+		if ((unsigned char)c == *p++)
+			return (void *)(p - 1);
+	return NULL;
+}
+
+char *strchr(const char *s, int c)
+{
+	while (*s != (char)c)
+		if (*s++ == '\0')
+			return NULL;
+	return (char *)s;
+}
+
+#undef memset
+
+void *memset(void *s, int c, size_t count)
+{
+	char *xs = s;
+	while (count--)
+		*xs++ = c;
+	return s;
+}
+
+void __memzero(void *s, size_t count)
+{
+	memset(s, 0, count);
+}
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
