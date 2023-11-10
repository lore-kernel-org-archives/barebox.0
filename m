Delivery-date: Fri, 10 Nov 2023 22:46:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZKE-006U2U-1I
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 22:46:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZKD-0004tK-Mz
	for lore@pengutronix.de; Fri, 10 Nov 2023 22:46:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Mdl0TxMBTsJCB/SHeFVIrs0BZFHQIeiYEKqdEk/jApM=; b=1xb7Brg3NLr765DnsAPj1kUFLA
	zrJG5gkGvA0wdsLn3PN/1alOr1BeZawh6g7wd+x//b9lEaVInF5UsJ0Vu8uEz9QdcL3zSrPIl0tr8
	6yNsCuVv6fqNu/Q5XCkfmdv5e9/FJJwyMXJ2H3ULjKr+/ZX5YOIyKXf1VLUVbb3JEfJo2oFE95p1w
	tjlA9qGlQtnt18ECXeShN8lXv3jZeZvD2v3v9S3Nz8Pa8CNu57OtJyw/4TVt5fizdpvFF6I3VaW5/
	WniWYV8WGSpnLN9QNyWflbjKF5orEIP0TW9wm6IUV6P5xnwoPjXSEyAlaPQd4ubSUZvuWhrNEvbFd
	GUuQ5qbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIx-009UI9-2V;
	Fri, 10 Nov 2023 21:44:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1ZIl-009UCD-0e
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 21:44:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0004Dt-TN; Fri, 10 Nov 2023 22:44:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-0086yV-Gd; Fri, 10 Nov 2023 22:44:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-1O;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:11 +0100
Message-Id: <20231110214421.2726093-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_134432_098392_FB9B6AB1 
X-CRM114-Status: GOOD (  24.65  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/18] include: import Linux word-at-a-time.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Linux <linux/word-at-a-time.h> interface is used to optimize
searching for bytes in strings by doing word-size comparisons. This will
be used in the implementation of strscpy in a follow-up commit, so
import the generic version here.

A good overview on the interface is available at LWN[1]. Note that
it discuss Linux v3.5. The asm-generic version imported here works
also on little-endian and not only big-endian[2].

[1]: https://lwn.net/Articles/501492/
[2]: Linux kernel commit a6e2f029ae34 ("Make asm/word-at-a-time.h
     available on all architectures").

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/include/asm/word-at-a-time.h      |  59 ++++++++
 arch/kvx/include/asm/word-at-a-time.h      |   2 +
 arch/mips/include/asm/word-at-a-time.h     |   2 +
 arch/openrisc/include/asm/word-at-a-time.h |   2 +
 arch/powerpc/include/asm/word-at-a-time.h  | 156 +++++++++++++++++++++
 arch/riscv/include/asm/word-at-a-time.h    |  48 +++++++
 arch/sandbox/include/asm/word-at-a-time.h  |   2 +
 arch/x86/include/asm/word-at-a-time.h      |  73 ++++++++++
 include/asm-generic/word-at-a-time.h       | 121 ++++++++++++++++
 include/linux/kernel.h                     |   8 ++
 10 files changed, 473 insertions(+)
 create mode 100644 arch/arm/include/asm/word-at-a-time.h
 create mode 100644 arch/kvx/include/asm/word-at-a-time.h
 create mode 100644 arch/mips/include/asm/word-at-a-time.h
 create mode 100644 arch/openrisc/include/asm/word-at-a-time.h
 create mode 100644 arch/powerpc/include/asm/word-at-a-time.h
 create mode 100644 arch/riscv/include/asm/word-at-a-time.h
 create mode 100644 arch/sandbox/include/asm/word-at-a-time.h
 create mode 100644 arch/x86/include/asm/word-at-a-time.h
 create mode 100644 include/asm-generic/word-at-a-time.h

diff --git a/arch/arm/include/asm/word-at-a-time.h b/arch/arm/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..f22198a66be3
--- /dev/null
+++ b/arch/arm/include/asm/word-at-a-time.h
@@ -0,0 +1,59 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2013 ARM Ltd.
+ */
+#ifndef __ASM_WORD_AT_A_TIME_H
+#define __ASM_WORD_AT_A_TIME_H
+
+#if !defined(__AARCH64EB__) && !defined(__ARMEB__)
+
+#include <linux/kernel.h>
+
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits,
+				     const struct word_at_a_time *c)
+{
+	unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+#define prep_zero_mask(a, bits, c) (bits)
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	unsigned long ret;
+
+#if __LINUX_ARM_ARCH__ >= 8
+	ret = fls64(mask) >> 3;
+#elif __LINUX_ARM_ARCH__ >= 5
+	/* We have clz available. */
+	ret = fls(mask) >> 3;
+#else
+	/* (000000 0000ff 00ffff ffffff) -> ( 1 1 2 3 ) */
+	ret = (0x0ff0001 + mask) >> 23;
+	/* Fix the 1 for 00 case */
+	ret &= mask;
+#endif
+
+	return ret;
+}
+
+#define zero_bytemask(mask) (mask)
+
+#else	/* __AARCH64EB__ || __ARMEB__ */
+#include <asm-generic/word-at-a-time.h>
+#endif
+
+#endif /* __ASM_WORD_AT_A_TIME_H */
diff --git a/arch/kvx/include/asm/word-at-a-time.h b/arch/kvx/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..f6306fb896a1
--- /dev/null
+++ b/arch/kvx/include/asm/word-at-a-time.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <asm-generic/word-at-a-time.h>
diff --git a/arch/mips/include/asm/word-at-a-time.h b/arch/mips/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..f6306fb896a1
--- /dev/null
+++ b/arch/mips/include/asm/word-at-a-time.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <asm-generic/word-at-a-time.h>
diff --git a/arch/openrisc/include/asm/word-at-a-time.h b/arch/openrisc/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..f6306fb896a1
--- /dev/null
+++ b/arch/openrisc/include/asm/word-at-a-time.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <asm-generic/word-at-a-time.h>
diff --git a/arch/powerpc/include/asm/word-at-a-time.h b/arch/powerpc/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..1de46fbd2e15
--- /dev/null
+++ b/arch/powerpc/include/asm/word-at-a-time.h
@@ -0,0 +1,156 @@
+#ifndef _ASM_WORD_AT_A_TIME_H
+#define _ASM_WORD_AT_A_TIME_H
+
+/*
+ * Word-at-a-time interfaces for PowerPC.
+ */
+
+#include <linux/kernel.h>
+
+#ifdef __BIG_ENDIAN__
+
+struct word_at_a_time {
+	const unsigned long high_bits, low_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0xfe) + 1, REPEAT_BYTE(0x7f) }
+
+/* Bit set in the bytes that have a zero */
+static inline long prep_zero_mask(unsigned long val, unsigned long rhs, const struct word_at_a_time *c)
+{
+	unsigned long mask = (val & c->low_bits) + c->low_bits;
+	return ~(mask | rhs);
+}
+
+#define create_zero_mask(mask) (mask)
+
+static inline long find_zero(unsigned long mask)
+{
+	long leading_zero_bits;
+
+	asm (PPC_CNTLZL "%0,%1" : "=r" (leading_zero_bits) : "r" (mask));
+	return leading_zero_bits >> 3;
+}
+
+static inline unsigned long has_zero(unsigned long val, unsigned long *data, const struct word_at_a_time *c)
+{
+	unsigned long rhs = val | c->low_bits;
+	*data = rhs;
+	return (val + c->high_bits) & ~rhs;
+}
+
+static inline unsigned long zero_bytemask(unsigned long mask)
+{
+	return ~1ul << __fls(mask);
+}
+
+#else
+
+#ifdef CONFIG_64BIT
+
+/* unused */
+struct word_at_a_time {
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { }
+
+/* This will give us 0xff for a NULL char and 0x00 elsewhere */
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits, const struct word_at_a_time *c)
+{
+	unsigned long ret;
+	unsigned long zero = 0;
+
+	asm("cmpb %0,%1,%2" : "=r" (ret) : "r" (a), "r" (zero));
+	*bits = ret;
+
+	return ret;
+}
+
+static inline unsigned long prep_zero_mask(unsigned long a, unsigned long bits, const struct word_at_a_time *c)
+{
+	return bits;
+}
+
+/* Alan Modra's little-endian strlen tail for 64-bit */
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	unsigned long leading_zero_bits;
+	long trailing_zero_bit_mask;
+
+	asm("addi	%1,%2,-1\n\t"
+	    "andc	%1,%1,%2\n\t"
+	    "popcntd	%0,%1"
+		: "=r" (leading_zero_bits), "=&r" (trailing_zero_bit_mask)
+		: "b" (bits));
+
+	return leading_zero_bits;
+}
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	return mask >> 3;
+}
+
+/* This assumes that we never ask for an all 1s bitmask */
+static inline unsigned long zero_bytemask(unsigned long mask)
+{
+	return (1UL << mask) - 1;
+}
+
+#else	/* 32-bit case */
+
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+/*
+ * This is largely generic for little-endian machines, but the
+ * optimal byte mask counting is probably going to be something
+ * that is architecture-specific. If you have a reliably fast
+ * bit count instruction, that might be better than the multiply
+ * and shift, for example.
+ */
+
+/* Carl Chatfield / Jan Achrenius G+ version for 32-bit */
+static inline long count_masked_bytes(long mask)
+{
+	/* (000000 0000ff 00ffff ffffff) -> ( 1 1 2 3 ) */
+	long a = (0x0ff0001+mask) >> 23;
+	/* Fix the 1 for 00 case */
+	return a & mask;
+}
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	return count_masked_bytes(mask);
+}
+
+/* Return nonzero if it has a zero */
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits, const struct word_at_a_time *c)
+{
+	unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+static inline unsigned long prep_zero_mask(unsigned long a, unsigned long bits, const struct word_at_a_time *c)
+{
+	return bits;
+}
+
+/* The mask we created is directly usable as a bytemask */
+#define zero_bytemask(mask) (mask)
+
+#endif /* CONFIG_64BIT */
+
+#endif /* __BIG_ENDIAN__ */
+
+#endif /* _ASM_WORD_AT_A_TIME_H */
diff --git a/arch/riscv/include/asm/word-at-a-time.h b/arch/riscv/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..7c086ac6ecd4
--- /dev/null
+++ b/arch/riscv/include/asm/word-at-a-time.h
@@ -0,0 +1,48 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2012 Regents of the University of California
+ *
+ * Derived from arch/x86/include/asm/word-at-a-time.h
+ */
+
+#ifndef _ASM_RISCV_WORD_AT_A_TIME_H
+#define _ASM_RISCV_WORD_AT_A_TIME_H
+
+
+#include <linux/kernel.h>
+
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+static inline unsigned long has_zero(unsigned long val,
+	unsigned long *bits, const struct word_at_a_time *c)
+{
+	unsigned long mask = ((val - c->one_bits) & ~val) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+static inline unsigned long prep_zero_mask(unsigned long val,
+	unsigned long bits, const struct word_at_a_time *c)
+{
+	return bits;
+}
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	return fls64(mask) >> 3;
+}
+
+/* The mask we created is directly usable as a bytemask */
+#define zero_bytemask(mask) (mask)
+
+#endif /* _ASM_RISCV_WORD_AT_A_TIME_H */
diff --git a/arch/sandbox/include/asm/word-at-a-time.h b/arch/sandbox/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..f6306fb896a1
--- /dev/null
+++ b/arch/sandbox/include/asm/word-at-a-time.h
@@ -0,0 +1,2 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+#include <asm-generic/word-at-a-time.h>
diff --git a/arch/x86/include/asm/word-at-a-time.h b/arch/x86/include/asm/word-at-a-time.h
new file mode 100644
index 000000000000..a7e57b7fd617
--- /dev/null
+++ b/arch/x86/include/asm/word-at-a-time.h
@@ -0,0 +1,73 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_WORD_AT_A_TIME_H
+#define _ASM_WORD_AT_A_TIME_H
+
+#include <linux/kernel.h>
+
+/*
+ * This is largely generic for little-endian machines, but the
+ * optimal byte mask counting is probably going to be something
+ * that is architecture-specific. If you have a reliably fast
+ * bit count instruction, that might be better than the multiply
+ * and shift, for example.
+ */
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+#ifdef CONFIG_64BIT
+
+/*
+ * Jan Achrenius on G+: microoptimized version of
+ * the simpler "(mask & ONEBYTES) * ONEBYTES >> 56"
+ * that works for the bytemasks without having to
+ * mask them first.
+ */
+static inline long count_masked_bytes(unsigned long mask)
+{
+	return mask*0x0001020304050608ul >> 56;
+}
+
+#else	/* 32-bit case */
+
+/* Carl Chatfield / Jan Achrenius G+ version for 32-bit */
+static inline long count_masked_bytes(long mask)
+{
+	/* (000000 0000ff 00ffff ffffff) -> ( 1 1 2 3 ) */
+	long a = (0x0ff0001+mask) >> 23;
+	/* Fix the 1 for 00 case */
+	return a & mask;
+}
+
+#endif
+
+/* Return nonzero if it has a zero */
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits, const struct word_at_a_time *c)
+{
+	unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+static inline unsigned long prep_zero_mask(unsigned long a, unsigned long bits, const struct word_at_a_time *c)
+{
+	return bits;
+}
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+/* The mask we created is directly usable as a bytemask */
+#define zero_bytemask(mask) (mask)
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	return count_masked_bytes(mask);
+}
+
+#endif /* _ASM_WORD_AT_A_TIME_H */
diff --git a/include/asm-generic/word-at-a-time.h b/include/asm-generic/word-at-a-time.h
new file mode 100644
index 000000000000..95a1d214108a
--- /dev/null
+++ b/include/asm-generic/word-at-a-time.h
@@ -0,0 +1,121 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _ASM_WORD_AT_A_TIME_H
+#define _ASM_WORD_AT_A_TIME_H
+
+#include <linux/kernel.h>
+#include <asm/byteorder.h>
+
+#ifdef __BIG_ENDIAN
+
+struct word_at_a_time {
+	const unsigned long high_bits, low_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0xfe) + 1, REPEAT_BYTE(0x7f) }
+
+/* Bit set in the bytes that have a zero */
+static inline long prep_zero_mask(unsigned long val, unsigned long rhs, const struct word_at_a_time *c)
+{
+	unsigned long mask = (val & c->low_bits) + c->low_bits;
+	return ~(mask | rhs);
+}
+
+#define create_zero_mask(mask) (mask)
+
+static inline long find_zero(unsigned long mask)
+{
+	long byte = 0;
+#ifdef CONFIG_64BIT
+	if (mask >> 32)
+		mask >>= 32;
+	else
+		byte = 4;
+#endif
+	if (mask >> 16)
+		mask >>= 16;
+	else
+		byte += 2;
+	return (mask >> 8) ? byte : byte + 1;
+}
+
+static inline unsigned long has_zero(unsigned long val, unsigned long *data, const struct word_at_a_time *c)
+{
+	unsigned long rhs = val | c->low_bits;
+	*data = rhs;
+	return (val + c->high_bits) & ~rhs;
+}
+
+#ifndef zero_bytemask
+#define zero_bytemask(mask) (~1ul << __fls(mask))
+#endif
+
+#else
+
+/*
+ * The optimal byte mask counting is probably going to be something
+ * that is architecture-specific. If you have a reliably fast
+ * bit count instruction, that might be better than the multiply
+ * and shift, for example.
+ */
+struct word_at_a_time {
+	const unsigned long one_bits, high_bits;
+};
+
+#define WORD_AT_A_TIME_CONSTANTS { REPEAT_BYTE(0x01), REPEAT_BYTE(0x80) }
+
+#ifdef CONFIG_64BIT
+
+/*
+ * Jan Achrenius on G+: microoptimized version of
+ * the simpler "(mask & ONEBYTES) * ONEBYTES >> 56"
+ * that works for the bytemasks without having to
+ * mask them first.
+ */
+static inline long count_masked_bytes(unsigned long mask)
+{
+	return mask*0x0001020304050608ul >> 56;
+}
+
+#else	/* 32-bit case */
+
+/* Carl Chatfield / Jan Achrenius G+ version for 32-bit */
+static inline long count_masked_bytes(long mask)
+{
+	/* (000000 0000ff 00ffff ffffff) -> ( 1 1 2 3 ) */
+	long a = (0x0ff0001+mask) >> 23;
+	/* Fix the 1 for 00 case */
+	return a & mask;
+}
+
+#endif
+
+/* Return nonzero if it has a zero */
+static inline unsigned long has_zero(unsigned long a, unsigned long *bits, const struct word_at_a_time *c)
+{
+	unsigned long mask = ((a - c->one_bits) & ~a) & c->high_bits;
+	*bits = mask;
+	return mask;
+}
+
+static inline unsigned long prep_zero_mask(unsigned long a, unsigned long bits, const struct word_at_a_time *c)
+{
+	return bits;
+}
+
+static inline unsigned long create_zero_mask(unsigned long bits)
+{
+	bits = (bits - 1) & ~bits;
+	return bits >> 7;
+}
+
+/* The mask we created is directly usable as a bytemask */
+#define zero_bytemask(mask) (mask)
+
+static inline unsigned long find_zero(unsigned long mask)
+{
+	return count_masked_bytes(mask);
+}
+
+#endif /* __BIG_ENDIAN */
+
+#endif /* _ASM_WORD_AT_A_TIME_H */
diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index da6121888ebd..4e50f6075189 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -11,6 +11,14 @@
 #include <linux/instruction_pointer.h>
 #include <linux/minmax.h>
 
+/**
+ * REPEAT_BYTE - repeat the value @x multiple times as an unsigned long value
+ * @x: value to repeat
+ *
+ * NOTE: @x is not checked for > 0xff; larger values produce odd results.
+ */
+#define REPEAT_BYTE(x)	((~0ul / 0xff) * (x))
+
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
 #define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
-- 
2.39.2



