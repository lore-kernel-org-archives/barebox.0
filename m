Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYRZy-00045u-4b
 for barebox@lists.infradead.org; Thu, 28 Jun 2018 07:44:06 +0000
Received: by mail-lf0-x241.google.com with SMTP id m13-v6so3440063lfb.12
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 00:42:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 28 Jun 2018 10:39:42 +0300
Message-Id: <20180628073953.15384-2-antonynpavlov@gmail.com>
In-Reply-To: <20180628073953.15384-1-antonynpavlov@gmail.com>
References: <20180628073953.15384-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 01/12] lib: Add shared copies of some GCC library routines
To: barebox@lists.infradead.org

This commit is based on these linux kernel commits:

| commit b35cd9884fa5d81c9d5e7f57c9d03264ae2bd835
| Author: Palmer Dabbelt <palmer@dabbelt.com>
| Date:   Tue May 23 10:28:26 2017 -0700
|
|     lib: Add shared copies of some GCC library routines
|
| commit e3d5980568fdf83c15a5a3c8ddca1590551ab7a2
| Author: Matt Redfearn <matt.redfearn@mips.com>
| Date:   Wed Apr 11 08:50:17 2018 +0100
|
|     lib: Rename compiler intrinsic selects to GENERIC_LIB_*

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/lib/libgcc.h | 47 ++++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig          |  9 +++++++++
 lib/Makefile         |  7 +++++++
 lib/ashldi3.c        | 44 +++++++++++++++++++++++++++++++++++++++++
 lib/ashrdi3.c        | 46 +++++++++++++++++++++++++++++++++++++++++++
 lib/lshrdi3.c        | 45 ++++++++++++++++++++++++++++++++++++++++++
 6 files changed, 198 insertions(+)

diff --git a/include/lib/libgcc.h b/include/lib/libgcc.h
new file mode 100644
index 0000000000..adad27704a
--- /dev/null
+++ b/include/lib/libgcc.h
@@ -0,0 +1,47 @@
+/*
+ * include/lib/libgcc.h
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see the file COPYING, or write
+ * to the Free Software Foundation, Inc.
+ */
+
+#ifndef __LIB_LIBGCC_H
+#define __LIB_LIBGCC_H
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
+long long __lshrdi3(long long u, word_type b);
+long long __ashldi3(long long u, word_type b);
+long long __ashrdi3(long long u, word_type b);
+
+#endif /* __ASM_LIBGCC_H */
diff --git a/lib/Kconfig b/lib/Kconfig
index 3d06655707..860d471de9 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -129,4 +129,13 @@ source lib/bootstrap/Kconfig
 config PRINTF_UUID
 	bool
 
+config GENERIC_LIB_ASHLDI3
+	bool
+
+config GENERIC_LIB_ASHRDI3
+	bool
+
+config GENERIC_LIB_LSHRDI3
+	bool
+
 endmenu
diff --git a/lib/Makefile b/lib/Makefile
index a7498288af..693945fb2c 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -65,3 +65,10 @@ obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
+
+# GCC library routines
+obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
+obj-$(CONFIG_GENERIC_LIB_ASHRDI3) += ashrdi3.o
+obj-$(CONFIG_GENERIC_LIB_LSHRDI3) += lshrdi3.o
+
+pbl-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
diff --git a/lib/ashldi3.c b/lib/ashldi3.c
new file mode 100644
index 0000000000..308464a788
--- /dev/null
+++ b/lib/ashldi3.c
@@ -0,0 +1,44 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see the file COPYING, or write
+ * to the Free Software Foundation, Inc.
+ */
+
+#include <module.h>
+
+#include <lib/libgcc.h>
+
+long long notrace __ashldi3(long long u, word_type b)
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
+EXPORT_SYMBOL(__ashldi3);
diff --git a/lib/ashrdi3.c b/lib/ashrdi3.c
new file mode 100644
index 0000000000..a55ad5289d
--- /dev/null
+++ b/lib/ashrdi3.c
@@ -0,0 +1,46 @@
+/*
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see the file COPYING, or write
+ * to the Free Software Foundation, Inc.
+ */
+
+#include <module.h>
+
+#include <lib/libgcc.h>
+
+long long notrace __ashrdi3(long long u, word_type b)
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
+EXPORT_SYMBOL(__ashrdi3);
diff --git a/lib/lshrdi3.c b/lib/lshrdi3.c
new file mode 100644
index 0000000000..2ca812ae73
--- /dev/null
+++ b/lib/lshrdi3.c
@@ -0,0 +1,45 @@
+/*
+ * lib/lshrdi3.c
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License as published by
+ * the Free Software Foundation; either version 2 of the License, or
+ * (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, see the file COPYING, or write
+ * to the Free Software Foundation, Inc.
+ */
+
+#include <module.h>
+#include <lib/libgcc.h>
+
+long long notrace __lshrdi3(long long u, word_type b)
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
+EXPORT_SYMBOL(__lshrdi3);
-- 
2.18.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
