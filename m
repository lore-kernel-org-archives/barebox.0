Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY2lC-0001Ot-SW
 for barebox@lists.infradead.org; Mon, 11 May 2020 07:22:01 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 May 2020 09:21:19 +0200
Message-Id: <20200511072140.29610-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 02/23] sandbox: define CONFIG_64BIT as appropriate
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>, Ahmad Fatoum <a.fatoum@pengutronix.de>

From: Ahmad Fatoum <ahmad@a3f.at>

All 64-bit architectures are supposed to define CONFIG_64BIT to support
the relevant 64-bit MMIO accessors. The sandbox architecture is a bit
of a special case, because barebox uses the toolchain default and
doesn't force a bitness. Add 64BIT as promptless symbol, which reflects
the pointer size of the target platform.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig    | 9 +++++++++
 scripts/gcc-64bitptr.sh | 9 +++++++++
 2 files changed, 18 insertions(+)
 create mode 100755 scripts/gcc-64bitptr.sh

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 6ec71a99e53f..46cfe8b4b1c8 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -1,3 +1,5 @@
+source "scripts/Kconfig.include"
+
 config SANDBOX
 	bool
 	select OFTREE
@@ -20,3 +22,10 @@ config SANDBOX_UNWIND
 	default y
 	select ARCH_HAS_STACK_DUMP
 	depends on UBSAN || KASAN
+
+config CC_IS_64BIT
+	def_bool $(success,$(srctree)/scripts/gcc-64bitptr.sh $(CC))
+
+config 64BIT
+	bool
+	default CC_IS_64BIT
diff --git a/scripts/gcc-64bitptr.sh b/scripts/gcc-64bitptr.sh
new file mode 100755
index 000000000000..7fb05703b813
--- /dev/null
+++ b/scripts/gcc-64bitptr.sh
@@ -0,0 +1,9 @@
+#!/bin/sh
+# SPDX-License-Identifier: GPL-2.0-only
+
+cat << "END" | $@ -x c - -c -o /dev/null
+int main(void)
+{
+	return sizeof(struct { int:-!(sizeof(void *) == 8); });
+}
+END
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
