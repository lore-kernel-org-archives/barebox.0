Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qe2JY-0003Z4-IR
	for barebox@lists.infradead.org; Tue, 05 Jul 2011 09:53:11 +0000
Received: by bwf12 with SMTP id 12so5981855bwf.36
	for <barebox@lists.infradead.org>; Tue, 05 Jul 2011 02:53:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Jul 2011 13:52:39 +0400
Message-Id: <1309859569-11119-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
References: <1309859569-11119-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 02/12 v4-draft] MIPS: import libgcc-related files from
	linux-2.6.39
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/ashldi3.c |   29 +++++++++++++++++++++++++++++
 arch/mips/lib/ashrdi3.c |   31 +++++++++++++++++++++++++++++++
 arch/mips/lib/libgcc.h  |   25 +++++++++++++++++++++++++
 arch/mips/lib/lshrdi3.c |   29 +++++++++++++++++++++++++++++
 4 files changed, 114 insertions(+), 0 deletions(-)
 create mode 100644 arch/mips/lib/ashldi3.c
 create mode 100644 arch/mips/lib/ashrdi3.c
 create mode 100644 arch/mips/lib/libgcc.h
 create mode 100644 arch/mips/lib/lshrdi3.c

diff --git a/arch/mips/lib/ashldi3.c b/arch/mips/lib/ashldi3.c
new file mode 100644
index 0000000..beb80f3
--- /dev/null
+++ b/arch/mips/lib/ashldi3.c
@@ -0,0 +1,29 @@
+#include <linux/module.h>
+
+#include "libgcc.h"
+
+long long __ashldi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		w.s.low = 0;
+		w.s.high = (unsigned int) uu.s.low << -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.low >> bm;
+
+		w.s.low = (unsigned int) uu.s.low << b;
+		w.s.high = ((unsigned int) uu.s.high << b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__ashldi3);
diff --git a/arch/mips/lib/ashrdi3.c b/arch/mips/lib/ashrdi3.c
new file mode 100644
index 0000000..c884a91
--- /dev/null
+++ b/arch/mips/lib/ashrdi3.c
@@ -0,0 +1,31 @@
+#include <linux/module.h>
+
+#include "libgcc.h"
+
+long long __ashrdi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		/* w.s.high = 1..1 or 0..0 */
+		w.s.high =
+		    uu.s.high >> 31;
+		w.s.low = uu.s.high >> -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.high << bm;
+
+		w.s.high = uu.s.high >> b;
+		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__ashrdi3);
diff --git a/arch/mips/lib/libgcc.h b/arch/mips/lib/libgcc.h
new file mode 100644
index 0000000..05909d5
--- /dev/null
+++ b/arch/mips/lib/libgcc.h
@@ -0,0 +1,25 @@
+#ifndef __ASM_LIBGCC_H
+#define __ASM_LIBGCC_H
+
+#include <asm/byteorder.h>
+
+typedef int word_type __attribute__ ((mode (__word__)));
+
+#ifdef __BIG_ENDIAN
+struct DWstruct {
+	int high, low;
+};
+#elif defined(__LITTLE_ENDIAN)
+struct DWstruct {
+	int low, high;
+};
+#else
+#error I feel sick.
+#endif
+
+typedef union {
+	struct DWstruct s;
+	long long ll;
+} DWunion;
+
+#endif /* __ASM_LIBGCC_H */
diff --git a/arch/mips/lib/lshrdi3.c b/arch/mips/lib/lshrdi3.c
new file mode 100644
index 0000000..dcf8d68
--- /dev/null
+++ b/arch/mips/lib/lshrdi3.c
@@ -0,0 +1,29 @@
+#include <linux/module.h>
+
+#include "libgcc.h"
+
+long long __lshrdi3(long long u, word_type b)
+{
+	DWunion uu, w;
+	word_type bm;
+
+	if (b == 0)
+		return u;
+
+	uu.ll = u;
+	bm = 32 - b;
+
+	if (bm <= 0) {
+		w.s.high = 0;
+		w.s.low = (unsigned int) uu.s.high >> -bm;
+	} else {
+		const unsigned int carries = (unsigned int) uu.s.high << bm;
+
+		w.s.high = (unsigned int) uu.s.high >> b;
+		w.s.low = ((unsigned int) uu.s.low >> b) | carries;
+	}
+
+	return w.ll;
+}
+
+EXPORT_SYMBOL(__lshrdi3);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
