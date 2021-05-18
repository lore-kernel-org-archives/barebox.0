Delivery-date: Tue, 18 May 2021 13:52:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGy-0004G0-S1
	for lore@lore.pengutronix.de; Tue, 18 May 2021 13:52:28 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liyGx-0002iS-QC
	for lore@pengutronix.de; Tue, 18 May 2021 13:52:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xBv14nOquY4EMMslMSP5LsacuevOl+PqHKpudC79lBw=; b=YR6J+5jFt7QBWUkrgODjetW4/
	1ubHtSiv/eGvtKE0wb837sitIdBW0iie51zMQ+egRJgOyNIeQlIP7jtZ2o301lVUotpnsOR36dHkH
	YXsxE+1NYLlpMh8N+lMSmN829ziRaebsC/WjFN0/EmPFuY/pJUz7hIKqBvFjWxvPgR+pExhUDYd/Y
	+d7X1Q5Y/2f7F/3Oqfnt8G9WK6ctqCCyJ8ZxUJPbqzYKZiAQ2n2qGnKkVqN+ZCPdtaaHQUrCuYeNl
	0qvEyFve8+M3XCFshLAdR6H1sGy8lexRFoAo7DtqhKAGxltA2/Da7MMHpYl+yp9Qj4twONzBTIUi2
	3XoH90GeQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liyFx-000eW1-Q7; Tue, 18 May 2021 11:51:26 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyER-000dhb-DT
 for barebox@desiato.infradead.org; Tue, 18 May 2021 11:49:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=tpGVd5F9ylwZi+HffIPpz/T6HVgAQWrtkfQYYS0uwsI=; b=XL+s6ghv81Q3AF5QRy82+6HBAz
 QAi6mBgFyc+IhmIwZU0BRxPzmqkKVIIdFx1I1BIjiL3QKx8jT5QepMFxN9ylXS2qahGx4BiT7STEF
 kC9dQGzhSeLj9DWYgBpKnfoFIw+JAM/ctgkSXl2BoFdcV0/5l/FPojecIpP7nbXJozdJ1VtFo8Whr
 OMe7I1w5pG3nejWoIqXrM5+p/NX6PFbfu/x/xo7Qz/VwiBeb4L4hsg/BL7dU4XgcqxRJpBaXfPHmB
 dfWxHIQbB3mnvuztzazvrJr440AZnfoqd2R59/LeiA7WJ6Uk3o+HbSfsm0rIgq20Fb4Bew6bVJcgW
 P7NwNDfQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liyEO-00EcLv-Ir
 for barebox@lists.infradead.org; Tue, 18 May 2021 11:49:50 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE7-0001Gs-5u; Tue, 18 May 2021 13:49:31 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liyE6-00015D-Cc; Tue, 18 May 2021 13:49:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 May 2021 13:49:23 +0200
Message-Id: <20210518114929.12964-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210518114929.12964-1-s.hauer@pengutronix.de>
References: <20210518114929.12964-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_044948_641617_E3DC5D2E 
X-CRM114-Status: GOOD (  23.07  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/14] Add rational_best_approximation()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Import rational_best_approximation() from Linux. This is used by an
upcoming update of the clk_fractional_divider code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/linux/rational.h |  20 ++++++++
 lib/math/Makefile        |   1 +
 lib/math/rational.c      | 100 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 121 insertions(+)
 create mode 100644 include/linux/rational.h
 create mode 100644 lib/math/rational.c

diff --git a/include/linux/rational.h b/include/linux/rational.h
new file mode 100644
index 0000000000..33f5f5fc3e
--- /dev/null
+++ b/include/linux/rational.h
@@ -0,0 +1,20 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * rational fractions
+ *
+ * Copyright (C) 2009 emlix GmbH, Oskar Schirmer <oskar@scara.com>
+ *
+ * helper functions when coping with rational numbers,
+ * e.g. when calculating optimum numerator/denominator pairs for
+ * pll configuration taking into account restricted register size
+ */
+
+#ifndef _LINUX_RATIONAL_H
+#define _LINUX_RATIONAL_H
+
+void rational_best_approximation(
+	unsigned long given_numerator, unsigned long given_denominator,
+	unsigned long max_numerator, unsigned long max_denominator,
+	unsigned long *best_numerator, unsigned long *best_denominator);
+
+#endif /* _LINUX_RATIONAL_H */
diff --git a/lib/math/Makefile b/lib/math/Makefile
index c2c892dd55..756d7dd90d 100644
--- a/lib/math/Makefile
+++ b/lib/math/Makefile
@@ -1,2 +1,3 @@
 obj-y += div64.o
 pbl-y += div64.o
+obj-y += rational.o
diff --git a/lib/math/rational.c b/lib/math/rational.c
new file mode 100644
index 0000000000..e5367e6a8a
--- /dev/null
+++ b/lib/math/rational.c
@@ -0,0 +1,100 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * rational fractions
+ *
+ * Copyright (C) 2009 emlix GmbH, Oskar Schirmer <oskar@scara.com>
+ * Copyright (C) 2019 Trent Piepho <tpiepho@gmail.com>
+ *
+ * helper functions when coping with rational numbers
+ */
+
+#include <linux/rational.h>
+#include <linux/compiler.h>
+#include <linux/export.h>
+#include <linux/kernel.h>
+
+/*
+ * calculate best rational approximation for a given fraction
+ * taking into account restricted register size, e.g. to find
+ * appropriate values for a pll with 5 bit denominator and
+ * 8 bit numerator register fields, trying to set up with a
+ * frequency ratio of 3.1415, one would say:
+ *
+ * rational_best_approximation(31415, 10000,
+ *		(1 << 8) - 1, (1 << 5) - 1, &n, &d);
+ *
+ * you may look at given_numerator as a fixed point number,
+ * with the fractional part size described in given_denominator.
+ *
+ * for theoretical background, see:
+ * https://en.wikipedia.org/wiki/Continued_fraction
+ */
+
+void rational_best_approximation(
+	unsigned long given_numerator, unsigned long given_denominator,
+	unsigned long max_numerator, unsigned long max_denominator,
+	unsigned long *best_numerator, unsigned long *best_denominator)
+{
+	/* n/d is the starting rational, which is continually
+	 * decreased each iteration using the Euclidean algorithm.
+	 *
+	 * dp is the value of d from the prior iteration.
+	 *
+	 * n2/d2, n1/d1, and n0/d0 are our successively more accurate
+	 * approximations of the rational.  They are, respectively,
+	 * the current, previous, and two prior iterations of it.
+	 *
+	 * a is current term of the continued fraction.
+	 */
+	unsigned long n, d, n0, d0, n1, d1, n2, d2;
+	n = given_numerator;
+	d = given_denominator;
+	n0 = d1 = 0;
+	n1 = d0 = 1;
+
+	for (;;) {
+		unsigned long dp, a;
+
+		if (d == 0)
+			break;
+		/* Find next term in continued fraction, 'a', via
+		 * Euclidean algorithm.
+		 */
+		dp = d;
+		a = n / d;
+		d = n % d;
+		n = dp;
+
+		/* Calculate the current rational approximation (aka
+		 * convergent), n2/d2, using the term just found and
+		 * the two prior approximations.
+		 */
+		n2 = n0 + a * n1;
+		d2 = d0 + a * d1;
+
+		/* If the current convergent exceeds the maxes, then
+		 * return either the previous convergent or the
+		 * largest semi-convergent, the final term of which is
+		 * found below as 't'.
+		 */
+		if ((n2 > max_numerator) || (d2 > max_denominator)) {
+			unsigned long t = min((max_numerator - n0) / n1,
+					      (max_denominator - d0) / d1);
+
+			/* This tests if the semi-convergent is closer
+			 * than the previous convergent.
+			 */
+			if (2u * t > a || (2u * t == a && d0 * dp > d1 * d)) {
+				n1 = n0 + t * n1;
+				d1 = d0 + t * d1;
+			}
+			break;
+		}
+		n0 = n1;
+		n1 = n2;
+		d0 = d1;
+		d1 = d2;
+	}
+	*best_numerator = n1;
+	*best_denominator = d1;
+}
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

