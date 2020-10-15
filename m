Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kSz8A-0002OY-BJ
 for barebox@lists.infradead.org; Thu, 15 Oct 2020 09:01:07 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Oct 2020 11:00:56 +0200
Message-Id: <20201015090055.31130-3-a.fatoum@pengutronix.de>
In-Reply-To: <20201015090055.31130-1-a.fatoum@pengutronix.de>
References: <20201015090055.31130-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] Revert "common: ubsan: ignore shifting one into sign bit"
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

With the previous commit, we now explicitly tell GCC not to optimize
constructs like (1 << 31) under assumption that they are undefined
anyway. GCC >= 8.0 -fsanitize=undefined should now not warn any longer
about (1 << 31) instances, so remove our work around.

This reverts commit 55397b9ebe3a21a3aeb6a98131c0991bff0f7123.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/ubsan.c | 20 --------------------
 1 file changed, 20 deletions(-)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 085d470cf784..648c7cc48a60 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -382,26 +382,6 @@ void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *data,
 	if (suppress_report(&data->location))
 		return;
 
-	/* This handler would be called for code shifting a one into the
-	 * sign bit like (1 << 31), which is all too common in barebox.
-	 * It's technically UB, but it's so prevalent that it's highly
-	 * unlikely to be treated by a compiler as anything else than the
-	 * standard-compliant (1U << 31). Thus check for this case here
-	 * and ignore it selectively
-	 */
-	if (type_is_signed(lhs_type)) {
-		s_max lhs_int, rhs_int;
-
-		lhs_int = get_signed_val(lhs_type, lhs);
-		rhs_int = get_signed_val(rhs_type, rhs);
-
-		if (fls(lhs_int) + rhs_int == type_bit_width(lhs_type)) {
-			pr_debug("signed left shift of %lld by %lld ignored.\n",
-				(s64)lhs_int, (s64)rhs_int);
-			return;
-		}
-	}
-
 	ubsan_prologue(&data->location, &flags);
 
 	val_to_string(rhs_str, sizeof(rhs_str), rhs_type, rhs);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
