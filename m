Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttL-0005dr-4M
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttJ-0003TF-KH
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:25 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttJ-0005Em-4g
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:51:53 +0200
Message-Id: <20200413075204.17544-11-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/21] include: linux/kernel.h: port DIV_ROUND_CLOSEST_ULL
 definition
To: barebox@lists.infradead.org

We already have DIV_ROUND_CLOSEST, but no DIV_ROUND_CLOSEST_ULL.
Import the latter for use by later commits.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/kernel.h | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/include/linux/kernel.h b/include/linux/kernel.h
index b320f7e902f0..23c23a73f588 100644
--- a/include/linux/kernel.h
+++ b/include/linux/kernel.h
@@ -6,6 +6,7 @@
 #include <linux/bug.h>
 #include <linux/barebox-wrapper.h>
 #include <linux/limits.h>
+#include <asm-generic/div64.h>
 
 #define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ALIGN_DOWN(x, a)	ALIGN((x) - ((a) - 1), (a))
@@ -41,6 +42,18 @@
 	(((x) + ((__divisor) / 2)) / (__divisor));	\
 }							\
 )
+/*
+ * Same as above but for u64 dividends. divisor must be a 32-bit
+ * number.
+ */
+#define DIV_ROUND_CLOSEST_ULL(x, divisor)(		\
+{							\
+	typeof(divisor) __d = divisor;			\
+	unsigned long long _tmp = (x) + (__d) / 2;	\
+	do_div(_tmp, __d);				\
+	_tmp;						\
+}							\
+)
 
 /**
  * upper_32_bits - return bits 32-63 of a number
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
