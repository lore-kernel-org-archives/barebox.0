Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-px0-f171.google.com ([209.85.212.171])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QR9uX-0003oe-Uc
	for barebox@lists.infradead.org; Mon, 30 May 2011 21:22:06 +0000
Received: by pxi7 with SMTP id 7so2807518pxi.16
	for <barebox@lists.infradead.org>; Mon, 30 May 2011 14:22:03 -0700 (PDT)
From: Vikram Narayanan <vikram186@gmail.com>
Date: Tue, 31 May 2011 02:51:45 +0530
Message-ID: <1306790505.10548.6.camel@ubuntu.ubuntu-domain>
Mime-Version: 1.0
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Helper function clocksource_khz2mult in clock.c
To: barebox@lists.infradead.org

Hi,

Won't this helper function be a good one to add in the clock.c code?
Taken from the kernel file "include/linux/clocksource.h"
If it can be, please find below the patch.
---
diff --git a/common/clock.c b/common/clock.c
index 15df0ab..b07b449 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -57,6 +57,31 @@ uint64_t get_time_ns(void)
 EXPORT_SYMBOL(get_time_ns);
 
 /**
+ * clocksource_khz2mult - calculates mult from khz and shift
+ * @khz:		Clocksource frequency in KHz
+ * @shift_constant:	Clocksource shift factor
+ *
+ * Helper functions that converts a khz counter frequency to a
timsource
+ * multiplier, given the clocksource shift value
+ */
+static inline u32 clocksource_khz2mult(u32 khz, u32 shift_constant)
+{
+	/*  khz = cyc/(Million ns)
+	 *  mult/2^shift  = ns/cyc
+	 *  mult = ns/cyc * 2^shift
+	 *  mult = 1Million/khz * 2^shift
+	 *  mult = 1000000 * 2^shift / khz
+	 *  mult = (1000000<<shift) / khz
+	 */
+	u64 tmp = ((u64)1000000) << shift_constant;
+
+	tmp += khz/2; /* round for do_div */
+	do_div(tmp, khz);
+
+	return (u32)tmp;
+}
+
+/**
  * clocksource_hz2mult - calculates mult from hz and shift
  * @hz:                 Clocksource frequency in Hz
  * @shift_constant:     Clocksource shift factor

-
Thanks,
Vikram



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
