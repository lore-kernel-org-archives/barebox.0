Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2m.mail.yandex.net ([37.140.138.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeb-0007d0-Sg
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:28 +0000
Received: from smtp3m.mail.yandex.net (smtp3m.mail.yandex.net [77.88.61.130])
 by forward2m.mail.yandex.net (Yandex) with ESMTP id 062895CA0348
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:01 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:29 +0300
Message-Id: <1425499906-32125-2-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 01/18] lib: Add gcd() function
To: barebox@lists.infradead.org

It calculates greatest common divisor.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 include/linux/gcd.h    |  8 ++++++++
 include/linux/kernel.h |  5 +++++
 lib/Makefile           |  1 +
 lib/gcd.c              | 18 ++++++++++++++++++
 4 files changed, 32 insertions(+)
 create mode 100644 include/linux/gcd.h
 create mode 100644 lib/gcd.c

diff --git a/include/linux/gcd.h b/include/linux/gcd.h
new file mode 100644
index 0000000..0ac2621
--- /dev/null
+++ b/include/linux/gcd.h
@@ -0,0 +1,8 @@
+#ifndef _GCD_H
+#define _GCD_H
+
+#include <linux/kernel.h>
+
+unsigned long gcd(unsigned long a, unsigned long b) __attribute_const__;
+
+#endif /* _GCD_H */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index 3f2644c..5b6b448 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -257,5 +257,10 @@ static inline char *hex_byte_pack_upper(char *buf, u8 byte)
 	const typeof( ((type *)0)->member ) *__mptr = (ptr);	\
 	(type *)( (char *)__mptr - offsetof(type,member) );})
 
+/*
+ * swap - swap value of @a and @b
+ */
+#define swap(a, b) \
+	do { typeof(a) __tmp = (a); (a) = (b); (b) = __tmp; } while (0)
 
 #endif /* _LINUX_KERNEL_H */
diff --git a/lib/Makefile b/lib/Makefile
index b97e52d..f08ac59 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -52,3 +52,4 @@ obj-$(CONFIG_STMP_DEVICE) += stmp-device.o
 obj-y			+= wchar.o
 obj-y			+= libfile.o
 obj-y			+= bitmap.o
+obj-y			+= gcd.o
diff --git a/lib/gcd.c b/lib/gcd.c
new file mode 100644
index 0000000..86bdba9
--- /dev/null
+++ b/lib/gcd.c
@@ -0,0 +1,18 @@
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
