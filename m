Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward1h.mail.yandex.net ([2a02:6b8:0:f05::10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrP-0005xL-Tr
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:42 +0000
Received: from smtp1h.mail.yandex.net (smtp1h.mail.yandex.net [84.201.187.144])
 by forward1h.mail.yandex.net (Yandex) with ESMTP id 76E909E1994
 for <barebox@lists.infradead.org>; Mon,  2 Mar 2015 23:22:13 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:45 +0300
Message-Id: <1425327722-28232-2-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 01/18] lib: Add gcd() function.
To: barebox@lists.infradead.org

    It calculates greatest common divisor and is
    compiled in only if CONFIG_GCD is selected.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 include/linux/gcd.h | 12 ++++++++++++
 lib/Kconfig         |  3 +++
 lib/Makefile        |  1 +
 lib/gcd.c           | 19 +++++++++++++++++++
 4 files changed, 35 insertions(+)
 create mode 100644 include/linux/gcd.h
 create mode 100644 lib/gcd.c

diff --git a/include/linux/gcd.h b/include/linux/gcd.h
new file mode 100644
index 0000000..6405b27
--- /dev/null
+++ b/include/linux/gcd.h
@@ -0,0 +1,12 @@
+#ifndef _GCD_H
+#define _GCD_H
+
+#include <linux/compiler.h>
+
+#if !defined(swap)
+#define swap(x, y) do { typeof(x) z = x; x = y; y = z; } while (0)
+#endif
+
+unsigned long gcd(unsigned long a, unsigned long b) __attribute_const__;
+
+#endif /* _GCD_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 62695f1..4b9b472 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -55,6 +55,9 @@ config LIBMTD
 config STMP_DEVICE
 	bool
 
+config GCD
+	bool
+
 source lib/gui/Kconfig
 
 source lib/bootstrap/Kconfig
diff --git a/lib/Makefile b/lib/Makefile
index b97e52d..6f70f01 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -52,3 +52,4 @@ obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
 obj-y			+= wchar.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
+obj-$(CONFIG_GCD)	+= gcd.o
diff --git a/lib/gcd.c b/lib/gcd.c
new file mode 100644
index 0000000..dde8c9e
--- /dev/null
+++ b/lib/gcd.c
@@ -0,0 +1,19 @@
+#include <linux/kernel.h>
+#include <linux/gcd.h>
+
+/* Greatest common divisor */
+unsigned long gcd(unsigned long a, unsigned long b)
+{
+	unsigned long r;
+
+	if (a < b)
+		swap(a, b);
+
+	if (!b)
+		return a;
+	while ((r = a % b) != 0) {
+		a = b;
+		b = r;
+	}
+	return b;
+}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
