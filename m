Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJjgR-0006BF-Mg
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 18:33:11 +0000
Received: by mail-pf1-x441.google.com with SMTP id v68-v6so1244017pfk.0
 for <barebox@lists.infradead.org>; Mon, 05 Nov 2018 10:32:57 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  5 Nov 2018 10:32:19 -0800
Message-Id: <20181105183222.25637-2-andrew.smirnov@gmail.com>
In-Reply-To: <20181105183222.25637-1-andrew.smirnov@gmail.com>
References: <20181105183222.25637-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/4] lib: Port CRC8 implementation from Linux kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 include/linux/crc8.h | 101 +++++++++++++++++++++++++++++++++++++++++++
 lib/Kconfig          |   7 +++
 lib/Makefile         |   1 +
 lib/crc8.c           |  82 +++++++++++++++++++++++++++++++++++
 4 files changed, 191 insertions(+)
 create mode 100644 include/linux/crc8.h
 create mode 100644 lib/crc8.c

diff --git a/include/linux/crc8.h b/include/linux/crc8.h
new file mode 100644
index 000000000..13c8dabb0
--- /dev/null
+++ b/include/linux/crc8.h
@@ -0,0 +1,101 @@
+/*
+ * Copyright (c) 2011 Broadcom Corporation
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
+ * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ */
+#ifndef __CRC8_H_
+#define __CRC8_H_
+
+#include <linux/types.h>
+
+/* see usage of this value in crc8() description */
+#define CRC8_INIT_VALUE		0xFF
+
+/*
+ * Return value of crc8() indicating valid message+crc. This is true
+ * if a CRC is inverted before transmission. The CRC computed over the
+ * whole received bitstream is _table[x], where x is the bit pattern
+ * of the modification (almost always 0xff).
+ */
+#define CRC8_GOOD_VALUE(_table)	(_table[0xFF])
+
+/* required table size for crc8 algorithm */
+#define CRC8_TABLE_SIZE			256
+
+/* helper macro assuring right table size is used */
+#define DECLARE_CRC8_TABLE(_table) \
+	static u8 _table[CRC8_TABLE_SIZE]
+
+/**
+ * crc8_populate_lsb - fill crc table for given polynomial in regular bit order.
+ *
+ * @table:	table to be filled.
+ * @polynomial:	polynomial for which table is to be filled.
+ *
+ * This function fills the provided table according the polynomial provided for
+ * regular bit order (lsb first). Polynomials in CRC algorithms are typically
+ * represented as shown below.
+ *
+ *	poly = x^8 + x^7 + x^6 + x^4 + x^2 + 1
+ *
+ * For lsb first direction x^7 maps to the lsb. So the polynomial is as below.
+ *
+ * - lsb first: poly = 10101011(1) = 0xAB
+ */
+void crc8_populate_lsb(u8 table[CRC8_TABLE_SIZE], u8 polynomial);
+
+/**
+ * crc8_populate_msb - fill crc table for given polynomial in reverse bit order.
+ *
+ * @table:	table to be filled.
+ * @polynomial:	polynomial for which table is to be filled.
+ *
+ * This function fills the provided table according the polynomial provided for
+ * reverse bit order (msb first). Polynomials in CRC algorithms are typically
+ * represented as shown below.
+ *
+ *	poly = x^8 + x^7 + x^6 + x^4 + x^2 + 1
+ *
+ * For msb first direction x^7 maps to the msb. So the polynomial is as below.
+ *
+ * - msb first: poly = (1)11010101 = 0xD5
+ */
+void crc8_populate_msb(u8 table[CRC8_TABLE_SIZE], u8 polynomial);
+
+/**
+ * crc8() - calculate a crc8 over the given input data.
+ *
+ * @table:	crc table used for calculation.
+ * @pdata:	pointer to data buffer.
+ * @nbytes:	number of bytes in data buffer.
+ * @crc:	previous returned crc8 value.
+ *
+ * The CRC8 is calculated using the polynomial given in crc8_populate_msb()
+ * or crc8_populate_lsb().
+ *
+ * The caller provides the initial value (either %CRC8_INIT_VALUE
+ * or the previous returned value) to allow for processing of
+ * discontiguous blocks of data.  When generating the CRC the
+ * caller is responsible for complementing the final return value
+ * and inserting it into the byte stream.  When validating a byte
+ * stream (including CRC8), a final return value of %CRC8_GOOD_VALUE
+ * indicates the byte stream data can be considered valid.
+ *
+ * Reference:
+ * "A Painless Guide to CRC Error Detection Algorithms", ver 3, Aug 1993
+ * Williams, Ross N., ross<at>ross.net
+ * (see URL http://www.ross.net/crc/download/crc_v3.txt).
+ */
+u8 crc8(const u8 table[CRC8_TABLE_SIZE], u8 *pdata, size_t nbytes, u8 crc);
+
+#endif /* __CRC8_H_ */
diff --git a/lib/Kconfig b/lib/Kconfig
index 860d471de..67680adbb 100644
--- a/lib/Kconfig
+++ b/lib/Kconfig
@@ -118,6 +118,13 @@ config CRC_CCITT
 	  the kernel tree does. Such modules that use library CRC-CCITT
 	  functions require M here.
 
+config CRC8
+        bool "CRC8 function"
+	help
+	  This option provides CRC8 function. Drivers may select this
+	  when they need to do cyclic redundancy check according CRC8
+	  algorithm. Module will be called crc8.
+
 source lib/gui/Kconfig
 
 source lib/fonts/Kconfig
diff --git a/lib/Makefile b/lib/Makefile
index 24dc3d9ee..8ece2c284 100644
--- a/lib/Makefile
+++ b/lib/Makefile
@@ -66,6 +66,7 @@ obj-y			+= int_sqrt.o
 obj-y			+= parseopt.o
 obj-y			+= clz_ctz.o
 obj-$(CONFIG_CRC_CCITT) += crc-ccitt.o
+obj-$(CONFIG_CRC8)	+= crc8.o
 
 # GCC library routines
 obj-$(CONFIG_GENERIC_LIB_ASHLDI3) += ashldi3.o
diff --git a/lib/crc8.c b/lib/crc8.c
new file mode 100644
index 000000000..a89160bde
--- /dev/null
+++ b/lib/crc8.c
@@ -0,0 +1,82 @@
+/*
+ * Copyright (c) 2011 Broadcom Corporation
+ *
+ * Permission to use, copy, modify, and/or distribute this software for any
+ * purpose with or without fee is hereby granted, provided that the above
+ * copyright notice and this permission notice appear in all copies.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
+ * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
+ * SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
+ * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION
+ * OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR IN
+ * CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
+ */
+#include <module.h>
+#include <linux/crc8.h>
+
+/**
+ * crc8_populate_msb - fill crc table for given polynomial in reverse bit order.
+ *
+ * @table:	table to be filled.
+ * @polynomial:	polynomial for which table is to be filled.
+ */
+void crc8_populate_msb(u8 table[CRC8_TABLE_SIZE], u8 polynomial)
+{
+	int i, j;
+	const u8 msbit = 0x80;
+	u8 t = msbit;
+
+	table[0] = 0;
+
+	for (i = 1; i < CRC8_TABLE_SIZE; i *= 2) {
+		t = (t << 1) ^ (t & msbit ? polynomial : 0);
+		for (j = 0; j < i; j++)
+			table[i+j] = table[j] ^ t;
+	}
+}
+EXPORT_SYMBOL(crc8_populate_msb);
+
+/**
+ * crc8_populate_lsb - fill crc table for given polynomial in regular bit order.
+ *
+ * @table:	table to be filled.
+ * @polynomial:	polynomial for which table is to be filled.
+ */
+void crc8_populate_lsb(u8 table[CRC8_TABLE_SIZE], u8 polynomial)
+{
+	int i, j;
+	u8 t = 1;
+
+	table[0] = 0;
+
+	for (i = (CRC8_TABLE_SIZE >> 1); i; i >>= 1) {
+		t = (t >> 1) ^ (t & 1 ? polynomial : 0);
+		for (j = 0; j < CRC8_TABLE_SIZE; j += 2*i)
+			table[i+j] = table[j] ^ t;
+	}
+}
+EXPORT_SYMBOL(crc8_populate_lsb);
+
+/**
+ * crc8 - calculate a crc8 over the given input data.
+ *
+ * @table: crc table used for calculation.
+ * @pdata: pointer to data buffer.
+ * @nbytes: number of bytes in data buffer.
+ * @crc: previous returned crc8 value.
+ */
+u8 crc8(const u8 table[CRC8_TABLE_SIZE], u8 *pdata, size_t nbytes, u8 crc)
+{
+	/* loop over the buffer data */
+	while (nbytes-- > 0)
+		crc = table[(crc ^ *pdata++) & 0xff];
+
+	return crc;
+}
+EXPORT_SYMBOL(crc8);
+
+MODULE_DESCRIPTION("CRC8 (by Williams, Ross N.) function");
+MODULE_AUTHOR("Broadcom Corporation");
+MODULE_LICENSE("Dual BSD/GPL");
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
