Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDoN-0001P4-5S
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 07:58:41 +0000
Received: from geraet.fritz.box (muedsl-82-207-195-051.citykom.de
 [82.207.195.51]) (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 092A7200008
 for <barebox@lists.infradead.org>; Fri, 20 Sep 2019 07:58:21 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 20 Sep 2019 09:58:12 +0200
Message-Id: <20190920075813.22471-3-ahmad@a3f.at>
In-Reply-To: <20190920075813.22471-1-ahmad@a3f.at>
References: <20190920075813.22471-1-ahmad@a3f.at>
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
Subject: [PATCH v1 3/4] common: ubsan: ignore shifting one into sign bit
To: barebox@lists.infradead.org

The __ubsan_handle_shift_out_of_bounds handler would be called for code
shifting a one into the sign bit like (1 << 31), which is all too common
in barebox.  It's technically UB, but it's so prevalent that it's highly
unlikely to be treated by a compiler as anything else than the
standard-compliant (1U << 31).

Check for this case here and ignore it selectively.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 lib/ubsan.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 89ca6e580bce..41a5731dda66 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -382,6 +382,26 @@ void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *data,
 	if (suppress_report(&data->location))
 		return;
 
+	/* This handler would be called for code shifting a one into the
+	 * sign bit like (1 << 31), which is all too common in barebox.
+	 * It's technically UB, but it's so prevalent that it's highly
+	 * unlikely to be treated by a compiler as anything else than the
+	 * standard-compliant (1U << 31). Thus check for this case here
+	 * and ignore it selectively
+	 */
+	if (type_is_signed(lhs_type)) {
+		s_max lhs_int, rhs_int;
+
+		lhs_int = get_signed_val(lhs_type, lhs);
+		rhs_int = get_signed_val(rhs_type, rhs);
+
+		if (fls(lhs_int) + rhs_int == type_bit_width(lhs_type)) {
+			pr_debug("signed left shift of %lld by %lld ignored.\n",
+				(s64)lhs_int, (s64)rhs_int);
+			return;
+		}
+	}
+
 	ubsan_prologue(&data->location, &flags);
 
 	val_to_string(rhs_str, sizeof(rhs_str), rhs_type, rhs);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
