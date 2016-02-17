Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x233.google.com ([2607:f8b0:400e:c00::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVqwN-0003mq-9K
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 01:30:03 +0000
Received: by mail-pf0-x233.google.com with SMTP id x65so1518885pfb.1
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 17:29:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 16 Feb 2016 17:29:04 -0800
Message-Id: <1455672559-25061-4-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
References: <1455672559-25061-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 03/18] [RFC] at91: Make IS_ERR work for I/O pointers
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Having this functionality partially "broken" opens the door for subtle
bugs in peripheral drivers for AT91 platform since it not straight out
obvious that IS_ERR might return a false positive.

It also makes it much harder to judge the correctness of the driver
code, for example it is perfectly fine to use IS_ERR in at91-i2c.c since
I2C controller's register file is located at 0xFFFA_C000 (which it
doesn't but that's the subject for another patch), however one couldn't
help but wonder how the code it sam9_smc.c could possibly work given how
that module is located at 0xFFFF_EC00.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 scripts/include/linux/err.h | 66 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 66 insertions(+)

diff --git a/scripts/include/linux/err.h b/scripts/include/linux/err.h
index bdc3dd8..f6ce0d0 100644
--- a/scripts/include/linux/err.h
+++ b/scripts/include/linux/err.h
@@ -29,6 +29,69 @@
  */
 #define MAX_ERRNO	4095
 
+#ifdef CONFIG_ARCH_AT91
+
+/*
+ * AT91 maps all of its peripherals' register files into last 256MB of
+ * address space. This means that if no appropriate action is taken
+ * ERR_PTR et al. would not work. We also don't have the luxury of
+ * guaranted to be enabled MMU, so remapping is not an option. Instead
+ * we do a little bit of additional arithmetic and "move" all of the
+ * error codes to the page right before AT91's peripheral memory starts
+ * (0xEFFF_0000 to 0xEFFF_FFFF)
+ */
+
+static inline bool IS_ERR_VALUE(unsigned long x)
+{
+	return x >= 0xEFFF0000 &&
+	       x <= 0xEFFFFFFF;
+}
+
+static inline void * __must_check ERR_PTR(long error_)
+{
+	/*
+	 * We need to remap all errnos from 0xFFFF_0000 - 0xFFFF_FFFF
+	 * to 0xEFFF_0000 - 0xEFFF_FFFF
+	 *
+	 * Given that
+	 *
+	 * errno_ == 0xFFFF_FFFF - (abs(errno_) - 1)
+	 *
+	 * and what we want it to be is
+	 *
+	 * errno_ == 0xEFFF_FFFF - (abs(errno_) - 1)
+	 *
+	 * desired remapping can be acheived by the following code:
+	 */
+	unsigned long e = error_;
+
+	BUG_ON(error_ < -MAX_ERRNO);
+	/*
+	 * Since we know that e is not going to be smaller then
+	 * 0xFFFF_0000 instead of substracting 0x1000_0000 from 'e' we
+	 * can just "convert" most significant nibble of the value to
+	 * 'e' using bitwise and
+	 */
+	e &= 0xEFFFFFFF;
+
+	return (void *) e;
+}
+
+static inline long __must_check PTR_ERR(__force const void *ptr)
+{
+	unsigned long e = (unsigned long) error;
+
+	/*
+	 * This is the "inverse transformation" corresponding to the
+	 * code above
+	 */
+	e |= 0xF0000000;
+
+	return (long) e;
+}
+
+#else
+
 #define IS_ERR_VALUE(x) unlikely((x) >= (unsigned long)-MAX_ERRNO)
 
 static inline void * __must_check ERR_PTR(long error_)
@@ -41,6 +104,9 @@ static inline long __must_check PTR_ERR(__force const void *ptr)
 	return (long) ptr;
 }
 
+#endif
+
+
 static inline bool __must_check IS_ERR(__force const void *ptr)
 {
 	return IS_ERR_VALUE((unsigned long)ptr);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
