Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ew0-f49.google.com ([209.85.215.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qlbtp-0001pe-Ba
	for barebox@lists.infradead.org; Tue, 26 Jul 2011 07:17:54 +0000
Received: by ewy3 with SMTP id 3so171431ewy.36
	for <barebox@lists.infradead.org>; Tue, 26 Jul 2011 00:17:51 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 26 Jul 2011 11:17:45 +0400
Message-Id: <1311664665-18050-1-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311655236-6684-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] MIPS: try to select cross-compiler (if not set)
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Makefile     |   15 +++++++++++++++
 scripts/Kbuild.include |   11 +++++++++++
 2 files changed, 26 insertions(+), 0 deletions(-)

diff --git a/arch/mips/Makefile b/arch/mips/Makefile
index 1ec2107..4d635c6 100644
--- a/arch/mips/Makefile
+++ b/arch/mips/Makefile
@@ -17,6 +17,21 @@ else
 64bit-emul		= elf64btsmip
 endif
 
+ifdef CONFIG_32BIT
+tool-archpref		= $(32bit-tool-archpref)
+UTS_MACHINE		:= mips
+endif
+ifdef CONFIG_64BIT
+tool-archpref		= $(64bit-tool-archpref)
+UTS_MACHINE		:= mips64
+endif
+
+ifneq ($(SUBARCH),$(ARCH))
+  ifeq ($(CROSS_COMPILE),)
+    CROSS_COMPILE := $(call cc-cross-prefix, $(tool-archpref)-linux-  $(tool-archpref)-linux-gnu-  $(tool-archpref)-unknown-linux-gnu-)
+  endif
+endif
+
 CPPFLAGS += -D__MIPS__ -fno-strict-aliasing -fno-merge-constants
 
 cflags-y += -G 0 -mno-abicalls -fno-pic -pipe
diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
index 95e7746..0e6e2c7 100644
--- a/scripts/Kbuild.include
+++ b/scripts/Kbuild.include
@@ -56,6 +56,17 @@ endef
 # gcc support functions
 # See documentation in Documentation/kbuild/makefiles.txt
 
+# cc-cross-prefix
+# Usage: CROSS_COMPILE := $(call cc-cross-prefix, m68k-linux-gnu- m68k-linux-)
+# Return first prefix where a prefix$(CC) is found in PATH.
+# If no $(CC) found in PATH with listed prefixes return nothing
+cc-cross-prefix =  \
+	$(word 1, $(foreach c,$(1),                                   \
+		$(shell set -e;                                       \
+		if (which $(strip $(c))$(CC)) > /dev/null 2>&1 ; then \
+			echo $(c);                                    \
+		fi)))
+
 # output directory for tests below
 TMPOUT := $(if $(KBUILD_EXTMOD),$(firstword $(KBUILD_EXTMOD))/)
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
