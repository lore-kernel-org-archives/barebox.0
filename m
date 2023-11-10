Delivery-date: Fri, 10 Nov 2023 23:05:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZdB-006VJS-0a
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 23:05:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1ZdB-0008Lr-0t
	for lore@pengutronix.de; Fri, 10 Nov 2023 23:05:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dijL/wKRvogUek6FQB1CKTAzHJmO3QPdsWhtZgyR2sg=; b=a4ibxETK794O04xo5CUXHin+lA
	zxjHgRZxsc6VAH8FV6nRv5lkSQFzgSC9vfKpp7ZW4aebS5LoiFDO8gjOd6QQMs9ywIcLfq1MHvfVR
	C9LM8XYYVlo3VXT6vuliW0iA7Kn57l8n3LVTUEm4Hl9+PDLdzk2Fm5dmELBCbrPaY1tPieADWFmsO
	yHo/j9cYNHBMtgtXxXuxVZoxNq7in5PBHgsl+UQRId24LbSmQBB1RCYcfd5GJXv9nsimGK/AW3hiR
	SQRCYP95dtHPhREMxPbVIypAMzrno55MZPLs4+iS+ix39QHcER34Oy4ubrcEI4FifodVzV1DzYUr/
	0pHKU/fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc8-009WUE-33;
	Fri, 10 Nov 2023 22:04:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1Zc0-009WPF-1U
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 22:04:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zbz-0007nE-Ay; Fri, 10 Nov 2023 23:04:23 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1Zby-00872v-Un; Fri, 10 Nov 2023 23:04:22 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r1ZIe-00BRGz-2X;
	Fri, 10 Nov 2023 22:44:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 10 Nov 2023 22:44:19 +0100
Message-Id: <20231110214421.2726093-17-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
References: <20231110214421.2726093-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_140424_530601_B5A777B0 
X-CRM114-Status: GOOD (  19.86  )
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
Subject: [PATCH 16/18] include: add Linux ktime API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With get_time_ns(), we already have a monotonically increasing nanosecond
counter, so let's define ktime_get() as an alias for it and import the
Linux helpers for doing arithmetic with this ktime_t type.

There is a slight mismatch here as get_time_ns() returns a u64, while
ktime_t is signed, but U64_MAX is > 580 years and half of that is still
a fair bit longer than the expected life time of a device idling with
100% CPU in the barebox shell after an aborted boot.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/ktime.h | 212 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 212 insertions(+)
 create mode 100644 include/linux/ktime.h

diff --git a/include/linux/ktime.h b/include/linux/ktime.h
new file mode 100644
index 000000000000..ea368b8802e7
--- /dev/null
+++ b/include/linux/ktime.h
@@ -0,0 +1,212 @@
+/*
+ *  include/linux/ktime.h
+ *
+ *  ktime_t - nanosecond-resolution time format.
+ *
+ *   Copyright(C) 2005, Thomas Gleixner <tglx@linutronix.de>
+ *   Copyright(C) 2005, Red Hat, Inc., Ingo Molnar
+ *
+ *  data type definitions, declarations, prototypes and macros.
+ *
+ *  Started by: Thomas Gleixner and Ingo Molnar
+ *
+ *  Credits:
+ *
+ *  	Roman Zippel provided the ideas and primary code snippets of
+ *  	the ktime_t union and further simplifications of the original
+ *  	code.
+ *
+ *  For licencing details see kernel-base/COPYING
+ */
+#ifndef _LINUX_KTIME_H
+#define _LINUX_KTIME_H
+
+#include <linux/time.h>
+#include <clock.h>
+#include <linux/bug.h>
+
+#define KTIME_MAX			((s64)~((u64)1 << 63))
+#define KTIME_MIN			(-KTIME_MAX - 1)
+#define KTIME_SEC_MAX			(KTIME_MAX / NSEC_PER_SEC)
+#define KTIME_SEC_MIN			(KTIME_MIN / NSEC_PER_SEC)
+
+/* Nanosecond scalar representation for kernel time values */
+typedef s64	ktime_t;
+
+/**
+ * ktime_set - Set a ktime_t variable from a seconds/nanoseconds value
+ * @secs:	seconds to set
+ * @nsecs:	nanoseconds to set
+ *
+ * Return: The ktime_t representation of the value.
+ */
+static inline ktime_t ktime_set(const s64 secs, const unsigned long nsecs)
+{
+	if (unlikely(secs >= KTIME_SEC_MAX))
+		return KTIME_MAX;
+
+	return secs * NSEC_PER_SEC + (s64)nsecs;
+}
+
+/* Subtract two ktime_t variables. rem = lhs -rhs: */
+#define ktime_sub(lhs, rhs)	((lhs) - (rhs))
+
+/* Add two ktime_t variables. res = lhs + rhs: */
+#define ktime_add(lhs, rhs)	((lhs) + (rhs))
+
+/*
+ * Same as ktime_add(), but avoids undefined behaviour on overflow; however,
+ * this means that you must check the result for overflow yourself.
+ */
+#define ktime_add_unsafe(lhs, rhs)	((u64) (lhs) + (rhs))
+
+/*
+ * Add a ktime_t variable and a scalar nanosecond value.
+ * res = kt + nsval:
+ */
+#define ktime_add_ns(kt, nsval)		((kt) + (nsval))
+
+/*
+ * Subtract a scalar nanosecod from a ktime_t variable
+ * res = kt - nsval:
+ */
+#define ktime_sub_ns(kt, nsval)		((kt) - (nsval))
+
+/* Convert ktime_t to nanoseconds */
+static inline s64 ktime_to_ns(const ktime_t kt)
+{
+	return kt;
+}
+
+/**
+ * ktime_compare - Compares two ktime_t variables for less, greater or equal
+ * @cmp1:	comparable1
+ * @cmp2:	comparable2
+ *
+ * Return: ...
+ *   cmp1  < cmp2: return <0
+ *   cmp1 == cmp2: return 0
+ *   cmp1  > cmp2: return >0
+ */
+static inline int ktime_compare(const ktime_t cmp1, const ktime_t cmp2)
+{
+	if (cmp1 < cmp2)
+		return -1;
+	if (cmp1 > cmp2)
+		return 1;
+	return 0;
+}
+
+/**
+ * ktime_after - Compare if a ktime_t value is bigger than another one.
+ * @cmp1:	comparable1
+ * @cmp2:	comparable2
+ *
+ * Return: true if cmp1 happened after cmp2.
+ */
+static inline bool ktime_after(const ktime_t cmp1, const ktime_t cmp2)
+{
+	return ktime_compare(cmp1, cmp2) > 0;
+}
+
+/**
+ * ktime_before - Compare if a ktime_t value is smaller than another one.
+ * @cmp1:	comparable1
+ * @cmp2:	comparable2
+ *
+ * Return: true if cmp1 happened before cmp2.
+ */
+static inline bool ktime_before(const ktime_t cmp1, const ktime_t cmp2)
+{
+	return ktime_compare(cmp1, cmp2) < 0;
+}
+
+#if BITS_PER_LONG < 64
+extern s64 __ktime_divns(const ktime_t kt, s64 div);
+static inline s64 ktime_divns(const ktime_t kt, s64 div)
+{
+	/*
+	 * Negative divisors could cause an inf loop,
+	 * so bug out here.
+	 */
+	BUG_ON(div < 0);
+	if (__builtin_constant_p(div) && !(div >> 32)) {
+		s64 ns = kt;
+		u64 tmp = ns < 0 ? -ns : ns;
+
+		do_div(tmp, div);
+		return ns < 0 ? -tmp : tmp;
+	} else {
+		return __ktime_divns(kt, div);
+	}
+}
+#else /* BITS_PER_LONG < 64 */
+static inline s64 ktime_divns(const ktime_t kt, s64 div)
+{
+	/*
+	 * 32-bit implementation cannot handle negative divisors,
+	 * so catch them on 64bit as well.
+	 */
+	WARN_ON(div < 0);
+	return kt / div;
+}
+#endif
+
+static inline s64 ktime_to_us(const ktime_t kt)
+{
+	return ktime_divns(kt, NSEC_PER_USEC);
+}
+
+static inline s64 ktime_to_ms(const ktime_t kt)
+{
+	return ktime_divns(kt, NSEC_PER_MSEC);
+}
+
+static inline s64 ktime_us_delta(const ktime_t later, const ktime_t earlier)
+{
+       return ktime_to_us(ktime_sub(later, earlier));
+}
+
+static inline s64 ktime_ms_delta(const ktime_t later, const ktime_t earlier)
+{
+	return ktime_to_ms(ktime_sub(later, earlier));
+}
+
+static inline ktime_t ktime_add_us(const ktime_t kt, const u64 usec)
+{
+	return ktime_add_ns(kt, usec * NSEC_PER_USEC);
+}
+
+static inline ktime_t ktime_add_ms(const ktime_t kt, const u64 msec)
+{
+	return ktime_add_ns(kt, msec * NSEC_PER_MSEC);
+}
+
+static inline ktime_t ktime_sub_us(const ktime_t kt, const u64 usec)
+{
+	return ktime_sub_ns(kt, usec * NSEC_PER_USEC);
+}
+
+static inline ktime_t ktime_sub_ms(const ktime_t kt, const u64 msec)
+{
+	return ktime_sub_ns(kt, msec * NSEC_PER_MSEC);
+}
+
+extern ktime_t ktime_add_safe(const ktime_t lhs, const ktime_t rhs);
+
+static inline ktime_t ns_to_ktime(u64 ns)
+{
+	return ns;
+}
+
+static inline ktime_t ms_to_ktime(u64 ms)
+{
+	return ms * NSEC_PER_MSEC;
+}
+
+static inline ktime_t ktime_get(void)
+{
+	return get_time_ns();
+}
+
+#endif
-- 
2.39.2



