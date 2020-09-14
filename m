Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHlMx-0003y4-Em
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 10:05:58 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 12:05:53 +0200
Message-Id: <20200914100553.24808-7-a.fatoum@pengutronix.de>
In-Reply-To: <20200914100553.24808-1-a.fatoum@pengutronix.de>
References: <20200914100553.24808-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH master 7/7] common: ubsan: replace pr_err with printf
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The pr_print family of functions also writes to the barebox
log buffer, which we don't require for printing UBSan errors,
which is a debugging aid. This also improves UBSan coverage as now
undefined behavior within pr_print may be reported as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 lib/ubsan.c | 88 ++++++++++++++++++++++++++---------------------------
 1 file changed, 44 insertions(+), 44 deletions(-)

diff --git a/lib/ubsan.c b/lib/ubsan.c
index 41a5731dda66..085d470cf784 100644
--- a/lib/ubsan.c
+++ b/lib/ubsan.c
@@ -60,8 +60,8 @@ static bool was_reported(struct source_location *location)
 static void print_source_location(const char *prefix,
 				struct source_location *loc)
 {
-	pr_err("%s %s:%d:%d\n", prefix, loc->file_name,
-		loc->line & LINE_MASK, loc->column & COLUMN_MASK);
+	printf("%s %s:%d:%d\n", prefix, loc->file_name,
+	       loc->line & LINE_MASK, loc->column & COLUMN_MASK);
 }
 
 static bool suppress_report(struct source_location *loc)
@@ -157,16 +157,16 @@ static void ubsan_prologue(struct source_location *location,
 {
 	in_ubsan++;
 
-	pr_err("========================================"
-		"========================================\n");
+	printf("========================================"
+	       "========================================\n");
 	print_source_location("UBSAN: Undefined behaviour in", location);
 }
 
 static void ubsan_epilogue(unsigned long *flags)
 {
 	dump_stack();
-	pr_err("========================================"
-		"========================================\n");
+	printf("========================================"
+	       "========================================\n");
 	in_ubsan--;
 }
 
@@ -186,13 +186,13 @@ static void handle_overflow(struct overflow_data *data, void *lhs,
 
 	val_to_string(lhs_val_str, sizeof(lhs_val_str), type, lhs);
 	val_to_string(rhs_val_str, sizeof(rhs_val_str), type, rhs);
-	pr_err("%s integer overflow:\n",
-		type_is_signed(type) ? "signed" : "unsigned");
-	pr_err("%s %c %s cannot be represented in type %s\n",
-		lhs_val_str,
-		op,
-		rhs_val_str,
-		type->type_name);
+	printf("%s integer overflow:\n",
+	       type_is_signed(type) ? "signed" : "unsigned");
+	printf("%s %c %s cannot be represented in type %s\n",
+	       lhs_val_str,
+	       op,
+	       rhs_val_str,
+	       type->type_name);
 
 	ubsan_epilogue(&flags);
 }
@@ -232,8 +232,8 @@ void __ubsan_handle_negate_overflow(struct overflow_data *data,
 
 	val_to_string(old_val_str, sizeof(old_val_str), data->type, old_val);
 
-	pr_err("negation of %s cannot be represented in type %s:\n",
-		old_val_str, data->type->type_name);
+	printf("negation of %s cannot be represented in type %s:\n",
+	       old_val_str, data->type->type_name);
 
 	ubsan_epilogue(&flags);
 }
@@ -254,10 +254,10 @@ void __ubsan_handle_divrem_overflow(struct overflow_data *data,
 	val_to_string(rhs_val_str, sizeof(rhs_val_str), data->type, rhs);
 
 	if (type_is_signed(data->type) && get_signed_val(data->type, rhs) == -1)
-		pr_err("division of %s by -1 cannot be represented in type %s\n",
-			rhs_val_str, data->type->type_name);
+		printf("division of %s by -1 cannot be represented in type %s\n",
+		       rhs_val_str, data->type->type_name);
 	else
-		pr_err("division by zero\n");
+		printf("division by zero\n");
 
 	ubsan_epilogue(&flags);
 }
@@ -272,9 +272,9 @@ static void handle_null_ptr_deref(struct type_mismatch_data_common *data)
 
 	ubsan_prologue(data->location, &flags);
 
-	pr_err("%s null pointer of type %s\n",
-		type_check_kinds[data->type_check_kind],
-		data->type->type_name);
+	printf("%s null pointer of type %s\n",
+	       type_check_kinds[data->type_check_kind],
+	       data->type->type_name);
 
 	ubsan_epilogue(&flags);
 }
@@ -289,10 +289,10 @@ static void handle_misaligned_access(struct type_mismatch_data_common *data,
 
 	ubsan_prologue(data->location, &flags);
 
-	pr_err("%s misaligned address %p for type %s\n",
-		type_check_kinds[data->type_check_kind],
-		(void *)ptr, data->type->type_name);
-	pr_err("which requires %ld byte alignment\n", data->alignment);
+	printf("%s misaligned address %p for type %s\n",
+	       type_check_kinds[data->type_check_kind],
+	       (void *)ptr, data->type->type_name);
+	printf("which requires %ld byte alignment\n", data->alignment);
 
 	ubsan_epilogue(&flags);
 }
@@ -306,10 +306,10 @@ static void handle_object_size_mismatch(struct type_mismatch_data_common *data,
 		return;
 
 	ubsan_prologue(data->location, &flags);
-	pr_err("%s address %p with insufficient space\n",
+	printf("%s address %p with insufficient space\n",
 		type_check_kinds[data->type_check_kind],
 		(void *) ptr);
-	pr_err("for an object of type %s\n", data->type->type_name);
+	printf("for an object of type %s\n", data->type->type_name);
 	ubsan_epilogue(&flags);
 }
 
@@ -364,8 +364,8 @@ void __ubsan_handle_out_of_bounds(struct out_of_bounds_data *data, void *index)
 	ubsan_prologue(&data->location, &flags);
 
 	val_to_string(index_str, sizeof(index_str), data->index_type, index);
-	pr_err("index %s is out of range for type %s\n", index_str,
-		data->array_type->type_name);
+	printf("index %s is out of range for type %s\n", index_str,
+	       data->array_type->type_name);
 	ubsan_epilogue(&flags);
 }
 EXPORT_SYMBOL(__ubsan_handle_out_of_bounds);
@@ -408,22 +408,22 @@ void __ubsan_handle_shift_out_of_bounds(struct shift_out_of_bounds_data *data,
 	val_to_string(lhs_str, sizeof(lhs_str), lhs_type, lhs);
 
 	if (val_is_negative(rhs_type, rhs))
-		pr_err("shift exponent %s is negative\n", rhs_str);
+		printf("shift exponent %s is negative\n", rhs_str);
 
 	else if (get_unsigned_val(rhs_type, rhs) >=
-		type_bit_width(lhs_type))
-		pr_err("shift exponent %s is too large for %u-bit type %s\n",
-			rhs_str,
-			type_bit_width(lhs_type),
-			lhs_type->type_name);
+		 type_bit_width(lhs_type))
+		printf("shift exponent %s is too large for %u-bit type %s\n",
+		       rhs_str,
+		       type_bit_width(lhs_type),
+		       lhs_type->type_name);
 	else if (val_is_negative(lhs_type, lhs))
-		pr_err("left shift of negative value %s\n",
-			lhs_str);
+		printf("left shift of negative value %s\n",
+		       lhs_str);
 	else
-		pr_err("left shift of %s by %s places cannot be"
-			" represented in type %s\n",
-			lhs_str, rhs_str,
-			lhs_type->type_name);
+		printf("left shift of %s by %s places cannot be"
+		       " represented in type %s\n",
+		       lhs_str, rhs_str,
+		       lhs_type->type_name);
 
 	ubsan_epilogue(&flags);
 }
@@ -435,7 +435,7 @@ void __ubsan_handle_builtin_unreachable(struct unreachable_data *data)
 	unsigned long flags;
 
 	ubsan_prologue(&data->location, &flags);
-	pr_err("calling __builtin_unreachable()\n");
+	printf("calling __builtin_unreachable()\n");
 	ubsan_epilogue(&flags);
 	panic("can't return from __builtin_unreachable()");
 }
@@ -454,8 +454,8 @@ void __ubsan_handle_load_invalid_value(struct invalid_value_data *data,
 
 	val_to_string(val_str, sizeof(val_str), data->type, val);
 
-	pr_err("load of value %s is not a valid value for type %s\n",
-		val_str, data->type->type_name);
+	printf("load of value %s is not a valid value for type %s\n",
+	       val_str, data->type->type_name);
 
 	ubsan_epilogue(&flags);
 }
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
