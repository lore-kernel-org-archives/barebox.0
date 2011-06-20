Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYmdf-00039w-Ts
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 22:08:17 +0000
Received: by wyf23 with SMTP id 23so3307599wyf.36
	for <barebox@lists.infradead.org>; Mon, 20 Jun 2011 15:08:04 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1084)
From: Carlo Caione <carlo.caione@gmail.com>
In-Reply-To: <20110620062559.GJ23771@pengutronix.de>
Date: Tue, 21 Jun 2011 00:08:00 +0200
Message-Id: <66AE9D1D-45EA-459B-9CC1-385EFED19880@gmail.com>
References: <91BC1EFE-8DED-47F9-9027-DA5140A1A73E@gmail.com>
	<20110620062559.GJ23771@pengutronix.de>
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
Subject: [PATCH] shift and clocksource
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Added clocks_calc_mult_shift()

Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
common/clock.c |   55 +++++++++++++++++++++++++++++++++++++++++++++++++++++++
1 files changed, 55 insertions(+), 0 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 15df0ab..79c06c8 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -57,6 +57,61 @@ uint64_t get_time_ns(void)
EXPORT_SYMBOL(get_time_ns);

/**
+ * clocks_calc_mult_shift - calculate mult/shift factors for scaled math of clocks
+ * @mult:       pointer to mult variable
+ * @shift:      pointer to shift variable
+ * @from:       frequency to convert from
+ * @to:         frequency to convert to
+ * @maxsec:     guaranteed runtime conversion range in seconds
+ *
+ * The function evaluates the shift/mult pair for the scaled math
+ * operations of clocksources and clockevents.
+ *
+ * @to and @from are frequency values in HZ. For clock sources @to is
+ * NSEC_PER_SEC == 1GHz and @from is the counter frequency. For clock
+ * event @to is the counter frequency and @from is NSEC_PER_SEC.
+ *
+ * The @maxsec conversion range argument controls the time frame in
+ * seconds which must be covered by the runtime conversion with the
+ * calculated mult and shift factors. This guarantees that no 64bit
+ * overflow happens when the input value of the conversion is
+ * multiplied with the calculated mult factor. Larger ranges may
+ * reduce the conversion accuracy by chosing smaller mult and shift
+ * factors.
+ */
+
+void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint32_t to, uint32_t maxsec)
+{
+        uint64_t tmp;
+        uint32_t sft, sftacc = 32;
+
+        /*
+         * Calculate the shift factor which is limiting the conversion
+         * range:
+         */
+        tmp = ((uint64_t)maxsec * from) >> 32;
+        while (tmp) {
+                tmp >>=1;
+                sftacc--;
+        }
+
+        /*
+         * Find the conversion shift/mult pair which has the best
+         * accuracy and fits the maxsec conversion range:
+         */
+        for (sft = 32; sft > 0; sft--) {
+                tmp = (uint64_t) to << sft;
+                tmp += from / 2;
+                do_div(tmp, from);
+                if ((tmp >> sftacc) == 0)
+                        break;
+        }
+        *mult = tmp;
+        *shift = sft;
+}
+
+
+/**
 * clocksource_hz2mult - calculates mult from hz and shift
 * @hz:                 Clocksource frequency in Hz
 * @shift_constant:     Clocksource shift factor
-- 
1.7.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
