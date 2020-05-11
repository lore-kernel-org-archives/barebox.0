Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2kz-0008R2-07
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:21:46 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:18 +0200
Message-Id: <20200511072140.29610-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200511072140.29610-1-a.fatoum@pengutronix.de>
References: <20200511072140.29610-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 01/23] scripts: import Linux Kconfig.include
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With this include, we can have goodies like $(cc-option ...) and
$(success ...) inside our Kconfig files.

gcc-version also now becomes available. While unused for now, it can
allow us to selectively turn on warnings on new GCC versions, which
were previously disabled because of their too high false positive rate.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/Kconfig.include | 53 +++++++++++++++++++++++++++++++++++++++++
 scripts/gcc-version.sh  | 20 ++++++++++++++++
 2 files changed, 73 insertions(+)
 create mode 100644 scripts/Kconfig.include
 create mode 100755 scripts/gcc-version.sh

diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
new file mode 100644
index 000000000000..496d11c92c97
--- /dev/null
+++ b/scripts/Kconfig.include
@@ -0,0 +1,53 @@
+# SPDX-License-Identifier: GPL-2.0-only
+# Kconfig helper macros
+
+# Convenient variables
+comma       := ,
+quote       := "
+squote      := '
+empty       :=
+space       := $(empty) $(empty)
+dollar      := $
+right_paren := )
+left_paren  := (
+
+# $(if-success,<command>,<then>,<else>)
+# Return <then> if <command> exits with 0, <else> otherwise.
+if-success = $(shell,{ $(1); } >/dev/null 2>&1 && echo "$(2)" || echo "$(3)")
+
+# $(success,<command>)
+# Return y if <command> exits with 0, n otherwise
+success = $(if-success,$(1),y,n)
+
+# $(failure,<command>)
+# Return n if <command> exits with 0, y otherwise
+failure = $(if-success,$(1),n,y)
+
+# $(cc-option,<flag>)
+# Return y if the compiler supports <flag>, n otherwise
+cc-option = $(success,$(CC) -Werror $(CLANG_FLAGS) $(1) -S -x c /dev/null -o /dev/null)
+
+# $(ld-option,<flag>)
+# Return y if the linker supports <flag>, n otherwise
+ld-option = $(success,$(LD) -v $(1))
+
+# $(as-instr,<instr>)
+# Return y if the assembler supports <instr>, n otherwise
+as-instr = $(success,printf "%b\n" "$(1)" | $(CC) $(CLANG_FLAGS) -c -x assembler -o /dev/null -)
+
+# check if $(CC) and $(LD) exist
+$(error-if,$(failure,command -v $(CC)),compiler '$(CC)' not found)
+$(error-if,$(failure,command -v $(LD)),linker '$(LD)' not found)
+
+# Fail if the linker is gold as it's not capable of linking the kernel proper
+$(error-if,$(success, $(LD) -v | grep -q gold), gold linker '$(LD)' not supported)
+
+# gcc version including patch level
+gcc-version := $(shell,$(srctree)/scripts/gcc-version.sh $(CC))
+
+# machine bit flags
+#  $(m32-flag): -m32 if the compiler supports it, or an empty string otherwise.
+#  $(m64-flag): -m64 if the compiler supports it, or an empty string otherwise.
+cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
+m32-flag := $(cc-option-bit,-m32)
+m64-flag := $(cc-option-bit,-m64)
diff --git a/scripts/gcc-version.sh b/scripts/gcc-version.sh
new file mode 100755
index 000000000000..ae353432539b
--- /dev/null
+++ b/scripts/gcc-version.sh
@@ -0,0 +1,20 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0
+#
+# gcc-version gcc-command
+#
+# Print the gcc version of `gcc-command' in a 5 or 6-digit form
+# such as `29503' for gcc-2.95.3, `30301' for gcc-3.3.1, etc.
+
+compiler="$*"
+
+if [ ${#compiler} -eq 0 ]; then
+	echo "Error: No compiler specified." >&2
+	printf "Usage:\n\t$0 <gcc-command>\n" >&2
+	exit 1
+fi
+
+MAJOR=$(echo __GNUC__ | $compiler -E -x c - | tail -n 1)
+MINOR=$(echo __GNUC_MINOR__ | $compiler -E -x c - | tail -n 1)
+PATCHLEVEL=$(echo __GNUC_PATCHLEVEL__ | $compiler -E -x c - | tail -n 1)
+printf "%d%02d%02d\\n" $MAJOR $MINOR $PATCHLEVEL
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
