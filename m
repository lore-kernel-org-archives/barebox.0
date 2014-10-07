Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22d.google.com ([2a00:1450:4010:c03::22d])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XbWuX-0006gk-Jy
 for barebox@lists.infradead.org; Tue, 07 Oct 2014 15:42:50 +0000
Received: by mail-la0-f45.google.com with SMTP id q1so6620001lam.32
 for <barebox@lists.infradead.org>; Tue, 07 Oct 2014 08:42:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  7 Oct 2014 19:42:07 +0400
Message-Id: <1412696527-3981-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1412696527-3981-1-git-send-email-antonynpavlov@gmail.com>
References: <1412696527-3981-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] clock.c: fix whitespaces
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/clock.c | 94 +++++++++++++++++++++++++++++-----------------------------
 1 file changed, 47 insertions(+), 47 deletions(-)

diff --git a/common/clock.c b/common/clock.c
index 76ce881..2ee81da 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -41,25 +41,25 @@ uint64_t time_beginning;
 uint64_t get_time_ns(void)
 {
 	struct clocksource *cs = current_clock;
-        uint64_t cycle_now, cycle_delta;
-        uint64_t ns_offset;
+	uint64_t cycle_now, cycle_delta;
+	uint64_t ns_offset;
 
 	if (!cs)
 		return 0;
 
-        /* read clocksource: */
+	/* read clocksource: */
 	cycle_now = cs->read() & cs->mask;
 
-        /* calculate the delta since the last call: */
-        cycle_delta = (cycle_now - cs->cycle_last) & cs->mask;
+	/* calculate the delta since the last call: */
+	cycle_delta = (cycle_now - cs->cycle_last) & cs->mask;
 
-        /* convert to nanoseconds: */
-        ns_offset = cyc2ns(cs, cycle_delta);
+	/* convert to nanoseconds: */
+	ns_offset = cyc2ns(cs, cycle_delta);
 
 	cs->cycle_last = cycle_now;
 
 	time_ns += ns_offset;
-        return time_ns;
+	return time_ns;
 }
 EXPORT_SYMBOL(get_time_ns);
 
@@ -89,32 +89,32 @@ EXPORT_SYMBOL(get_time_ns);
 
 void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint32_t to, uint32_t maxsec)
 {
-        uint64_t tmp;
-        uint32_t sft, sftacc = 32;
-
-        /*
-         * Calculate the shift factor which is limiting the conversion
-         * range:
-         */
-        tmp = ((uint64_t)maxsec * from) >> 32;
-        while (tmp) {
-                tmp >>=1;
-                sftacc--;
-        }
-
-        /*
-         * Find the conversion shift/mult pair which has the best
-         * accuracy and fits the maxsec conversion range:
-         */
-        for (sft = 32; sft > 0; sft--) {
-                tmp = (uint64_t) to << sft;
-                tmp += from / 2;
-                do_div(tmp, from);
-                if ((tmp >> sftacc) == 0)
-                        break;
-        }
-        *mult = tmp;
-        *shift = sft;
+	uint64_t tmp;
+	uint32_t sft, sftacc = 32;
+
+	/*
+	 * Calculate the shift factor which is limiting the conversion
+	 * range:
+	 */
+	tmp = ((uint64_t)maxsec * from) >> 32;
+	while (tmp) {
+		tmp >>= 1;
+		sftacc--;
+	}
+
+	/*
+	 * Find the conversion shift/mult pair which has the best
+	 * accuracy and fits the maxsec conversion range:
+	 */
+	for (sft = 32; sft > 0; sft--) {
+		tmp = (uint64_t) to << sft;
+		tmp += from / 2;
+		do_div(tmp, from);
+		if ((tmp >> sftacc) == 0)
+			break;
+	}
+	*mult = tmp;
+	*shift = sft;
 }
 
 
@@ -129,19 +129,19 @@ void clocks_calc_mult_shift(uint32_t *mult, uint32_t *shift, uint32_t from, uint
  */
 uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
 {
-        /*  hz = cyc/(Billion ns)
-         *  mult/2^shift  = ns/cyc
-         *  mult = ns/cyc * 2^shift
-         *  mult = 1Billion/hz * 2^shift
-         *  mult = 1000000000 * 2^shift / hz
-         *  mult = (1000000000<<shift) / hz
-         */
-        uint64_t tmp = ((uint64_t)1000000000) << shift_constant;
-
-        tmp += hz/2; /* round for do_div */
-        do_div(tmp, hz);
-
-        return (uint32_t)tmp;
+	/*  hz = cyc/(Billion ns)
+	 *  mult/2^shift  = ns/cyc
+	 *  mult = ns/cyc * 2^shift
+	 *  mult = 1Billion/hz * 2^shift
+	 *  mult = 1000000000 * 2^shift / hz
+	 *  mult = (1000000000<<shift) / hz
+	 */
+	uint64_t tmp = ((uint64_t)1000000000) << shift_constant;
+
+	tmp += hz/2; /* round for do_div */
+	do_div(tmp, hz);
+
+	return (uint32_t)tmp;
 }
 
 int is_timeout_non_interruptible(uint64_t start_ns, uint64_t time_offset_ns)
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
