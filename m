Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pem92-0003Oo-N3
	for barebox@lists.infradead.org; Mon, 17 Jan 2011 10:17:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Jan 2011 11:16:56 +0100
Message-Id: <1295259421-26338-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
References: <1295259421-26338-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/9] add sections.h header file
To: barebox@lists.infradead.org

The file location and variable names from the Linux Kernel have been
used here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/include/asm/sections.h      |    1 +
 arch/blackfin/include/asm/sections.h |    1 +
 arch/ppc/include/asm/sections.h      |    1 +
 arch/sandbox/include/asm/sections.h  |    1 +
 arch/x86/include/asm/sections.h      |    1 +
 include/asm-generic/sections.h       |    8 ++++++++
 6 files changed, 13 insertions(+), 0 deletions(-)
 create mode 100644 arch/arm/include/asm/sections.h
 create mode 100644 arch/blackfin/include/asm/sections.h
 create mode 100644 arch/ppc/include/asm/sections.h
 create mode 100644 arch/sandbox/include/asm/sections.h
 create mode 100644 arch/x86/include/asm/sections.h
 create mode 100644 include/asm-generic/sections.h

diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/arm/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/blackfin/include/asm/sections.h b/arch/blackfin/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/blackfin/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/ppc/include/asm/sections.h b/arch/ppc/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/ppc/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/sandbox/include/asm/sections.h b/arch/sandbox/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/sandbox/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/arch/x86/include/asm/sections.h b/arch/x86/include/asm/sections.h
new file mode 100644
index 0000000..2b8c516
--- /dev/null
+++ b/arch/x86/include/asm/sections.h
@@ -0,0 +1 @@
+#include <asm-generic/sections.h>
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
new file mode 100644
index 0000000..c5d60a9
--- /dev/null
+++ b/include/asm-generic/sections.h
@@ -0,0 +1,8 @@
+#ifndef _ASM_GENERIC_SECTIONS_H_
+#define _ASM_GENERIC_SECTIONS_H_
+
+extern char _text[], _stext[], _etext[];
+extern char __bss_start[], __bss_stop[];
+extern char _end[];
+
+#endif /* _ASM_GENERIC_SECTIONS_H_ */
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
