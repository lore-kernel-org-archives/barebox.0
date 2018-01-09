Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eYumi-0004GI-OF
 for barebox@lists.infradead.org; Tue, 09 Jan 2018 14:21:51 +0000
Received: by mail-lf0-x243.google.com with SMTP id f3so16130408lfe.4
 for <barebox@lists.infradead.org>; Tue, 09 Jan 2018 06:21:37 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue,  9 Jan 2018 17:21:20 +0300
Message-Id: <20180109142120.5498-1-pmamonov@gmail.com>
In-Reply-To: <20180109111000.redcxmlavhxbgcnm@pengutronix.de>
References: <20180109111000.redcxmlavhxbgcnm@pengutronix.de>
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
Subject: [PATCH] lib: parse_area_spec: don't modify *start and *size values if
 parse failed
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 lib/misc.c | 46 ++++++++++++++++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 14 deletions(-)

diff --git a/lib/misc.c b/lib/misc.c
index 62ddd6677..c7d5a0ca5 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -79,38 +79,56 @@ EXPORT_SYMBOL(strtoul_suffix);
 int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 {
 	char *endp;
-	loff_t end;
+	loff_t end, _start, _size;
+	int ret = -1;
 
 	if (!isdigit(*str))
 		return -1;
 
-	*start = strtoull_suffix(str, &endp, 0);
+	_start = strtoull_suffix(str, &endp, 0);
 
 	str = endp;
 
 	if (!*str) {
 		/* beginning given, but no size, assume maximum size */
-		*size = ~0;
-		return 0;
+		_size = ~0;
+		ret = 0;
 	}
 
-	if (*str == '-') {
+	if (ret && *str == '-') {
 		/* beginning and end given */
-		end = strtoull_suffix(str + 1, NULL, 0);
-		if (end < *start) {
+		if (!isdigit(*(str + 1)))
+			return ret;
+
+		end = strtoull_suffix(str + 1, &endp, 0);
+		str = endp;
+		if (end < _start) {
 			printf("end < start\n");
-			return -1;
+			return ret;
 		}
-		*size = end - *start + 1;
-		return 0;
+		_size = end - _start + 1;
+		ret = 0;
 	}
 
-	if (*str == '+') {
+	if (ret && *str == '+') {
 		/* beginning and size given */
-		*size = strtoull_suffix(str + 1, NULL, 0);
-		return 0;
+		if (!isdigit(*(str + 1)))
+			return ret;
+
+		_size = strtoull_suffix(str + 1, &endp, 0);
+		str = endp;
+		ret = 0;
+	}
+
+	if (!ret && *str)
+		/* trailing symbols indicate invalid area spec */
+		ret = -1;
+
+	if (!ret) {
+		*start = _start;
+		*size = _size;
 	}
 
-	return -1;
+	return ret;
 }
 EXPORT_SYMBOL(parse_area_spec);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
