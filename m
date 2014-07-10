Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X59na-0001E5-KO
 for barebox@lists.infradead.org; Thu, 10 Jul 2014 08:33:51 +0000
Received: by mail-la0-f52.google.com with SMTP id gl10so477692lab.39
 for <barebox@lists.infradead.org>; Thu, 10 Jul 2014 01:33:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 Jul 2014 12:33:15 +0400
Message-Id: <1404981199-21293-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
References: <1404981199-21293-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 1/5] lib: import 'bcd' from linux-3.15
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/linux/bcd.h | 22 ++++++++++++++++++++++
 lib/Makefile        |  1 +
 lib/bcd.c           | 14 ++++++++++++++
 3 files changed, 37 insertions(+)

diff --git a/include/linux/bcd.h b/include/linux/bcd.h
new file mode 100644
index 0000000..18fff11
--- /dev/null
+++ b/include/linux/bcd.h
@@ -0,0 +1,22 @@
+#ifndef _BCD_H
+#define _BCD_H
+
+#include <linux/compiler.h>
+
+#define bcd2bin(x)					\
+		(__builtin_constant_p((u8 )(x)) ?	\
+		const_bcd2bin(x) :			\
+		_bcd2bin(x))
+
+#define bin2bcd(x)					\
+		(__builtin_constant_p((u8 )(x)) ?	\
+		const_bin2bcd(x) :			\
+		_bin2bcd(x))
+
+#define const_bcd2bin(x)	(((x) & 0x0f) + ((x) >> 4) * 10)
+#define const_bin2bcd(x)	((((x) / 10) << 4) + (x) % 10)
+
+unsigned _bcd2bin(unsigned char val) __attribute_const__;
+unsigned char _bin2bcd(unsigned val) __attribute_const__;
+
+#endif /* _BCD_H */
diff --git a/lib/Makefile b/lib/Makefile
index e8769a9..14442a7 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -1,3 +1,4 @@
+obj-y			+= bcd.o
 obj-$(CONFIG_BOOTSTRAP)	+= bootstrap/
 obj-y			+= ctype.o
 obj-y			+= rbtree.o
diff --git a/lib/bcd.c b/lib/bcd.c
new file mode 100644
index 0000000..b072d50
--- /dev/null
+++ b/lib/bcd.c
@@ -0,0 +1,14 @@
+#include <linux/bcd.h>
+#include <module.h>
+
+unsigned _bcd2bin(unsigned char val)
+{
+	return (val & 0x0f) + (val >> 4) * 10;
+}
+EXPORT_SYMBOL(_bcd2bin);
+
+unsigned char _bin2bcd(unsigned val)
+{
+	return ((val / 10) << 4) + val % 10;
+}
+EXPORT_SYMBOL(_bin2bcd);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
