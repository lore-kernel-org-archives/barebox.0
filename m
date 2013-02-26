Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1UANkJ-0003FN-Ai
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 16:51:15 +0000
Received: from localhost (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
 by mail.free-electrons.com (Postfix) with ESMTPSA id 703DC813
 for <barebox@lists.infradead.org>; Tue, 26 Feb 2013 17:51:15 +0100 (CET)
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Tue, 26 Feb 2013 17:51:13 +0100
Message-Id: <1361897473-3325-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH] log2: Fix declaration of __roundup_pow_of_two
To: barebox@lists.infradead.org

The roundup_pow_of_two function is making use of __roundup_pow_of_two
when the call to __builtin_constant_p fails, which is not implemented in
barebox.

Copied the code from Linux log2.h header.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 include/linux/log2.h |    9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/include/linux/log2.h b/include/linux/log2.h
index 389043a..d9913f0 100644
--- a/include/linux/log2.h
+++ b/include/linux/log2.h
@@ -54,6 +54,15 @@ bool is_power_of_2(unsigned long n)
 	return (n != 0 && ((n & (n - 1)) == 0));
 }
 
+/*
+ * round up to nearest power of two
+ */
+static inline __attribute__((const))
+unsigned long __roundup_pow_of_two(unsigned long n)
+{
+	return 1UL << fls(n - 1);
+}
+
 /**
  * ilog2 - log of base 2 of 32-bit or a 64-bit unsigned value
  * @n - parameter
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
