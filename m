Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cljmI-0006el-95
 for barebox@lists.infradead.org; Wed, 08 Mar 2017 22:09:54 +0000
Received: by mail-pf0-x243.google.com with SMTP id v190so5076628pfb.0
 for <barebox@lists.infradead.org>; Wed, 08 Mar 2017 14:09:33 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed,  8 Mar 2017 14:08:58 -0800
Message-Id: <20170308220909.4560-10-andrew.smirnov@gmail.com>
In-Reply-To: <20170308220909.4560-1-andrew.smirnov@gmail.com>
References: <20170308220909.4560-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 09/20] of: base: Use scoring in DT device matching
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port Linux kernel algorithm for both of_device_is_compatible() and
of_match_node(). With this change former now returns a score on the
scale of 0 to INT_MAX/2, and the latter goes through all compatiblity
entries and selects the entry that has the best matching score.

This is needed for SoCs where IP blocks are backwards compatible and
corresponding OF nodes can proclaim compatibility with several entries
found in driver's compatiblity table. One such example would be PIO
pinctrl block on AT91SAM9x5 SoCs which declare compatibility with with
both "atmel,at91sam9x5-pinctrl" and "atmel,at91rm9200-pinctrl".

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/of/base.c | 37 +++++++++++++++++++++----------------
 1 file changed, 21 insertions(+), 16 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 0c20fcd..bef8f1d 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -472,21 +472,20 @@ EXPORT_SYMBOL(of_get_cpu_node);
 int of_device_is_compatible(const struct device_node *device,
 		const char *compat)
 {
+	struct property *prop;
 	const char *cp;
-	int cplen, l;
+	int index = 0, score = 0;
 
-	cp = of_get_property(device, "compatible", &cplen);
-	if (cp == NULL)
-		return 0;
-	while (cplen > 0) {
-		if (of_compat_cmp(cp, compat, strlen(compat)) == 0)
-			return 1;
-		l = strlen(cp) + 1;
-		cp += l;
-		cplen -= l;
+	prop = of_find_property(device, "compatible", NULL);
+	for (cp = of_prop_next_string(prop, NULL); cp;
+	     cp = of_prop_next_string(prop, cp), index++) {
+		if (of_compat_cmp(cp, compat, strlen(compat)) == 0) {
+			score = INT_MAX/2 - (index << 2);
+			break;
+		}
 	}
 
-	return 0;
+	return score;
 }
 EXPORT_SYMBOL(of_device_is_compatible);
 
@@ -602,16 +601,22 @@ EXPORT_SYMBOL(of_find_node_with_property);
 const struct of_device_id *of_match_node(const struct of_device_id *matches,
 					 const struct device_node *node)
 {
+	const struct of_device_id *best_match = NULL;
+	int score, best_score = 0;
+
 	if (!matches || !node)
 		return NULL;
 
-	while (matches->compatible) {
-		if (of_device_is_compatible(node, matches->compatible) == 1)
-			return matches;
-		matches++;
+	for (; matches->compatible; matches++) {
+		score = of_device_is_compatible(node, matches->compatible);
+
+		if (score > best_score) {
+			best_match = matches;
+			best_score = score;
+		}
 	}
 
-	return NULL;
+	return best_match;
 }
 
 /**
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
