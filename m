Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eb30e-0004AH-5V
 for barebox@lists.infradead.org; Mon, 15 Jan 2018 11:33:01 +0000
Received: by mail-lf0-x243.google.com with SMTP id h92so2607299lfi.7
 for <barebox@lists.infradead.org>; Mon, 15 Jan 2018 03:32:47 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 15 Jan 2018 14:32:31 +0300
Message-Id: <20180115113233.30610-1-pmamonov@gmail.com>
In-Reply-To: <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
References: <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
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
Subject: [PATCH v2 1/3] lib: parse_area_spec: don't modify *start value if
 parse failed
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 lib/misc.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/lib/misc.c b/lib/misc.c
index 62ddd6677..1767043d1 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -79,19 +79,19 @@ EXPORT_SYMBOL(strtoul_suffix);
 int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 {
 	char *endp;
-	loff_t end;
+	loff_t end, _start;
 
 	if (!isdigit(*str))
 		return -1;
 
-	*start = strtoull_suffix(str, &endp, 0);
+	_start = strtoull_suffix(str, &endp, 0);
 
 	str = endp;
 
 	if (!*str) {
 		/* beginning given, but no size, assume maximum size */
 		*size = ~0;
-		return 0;
+		goto success;
 	}
 
 	if (*str == '-') {
@@ -102,15 +102,19 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 			return -1;
 		}
 		*size = end - *start + 1;
-		return 0;
+		goto success;
 	}
 
 	if (*str == '+') {
 		/* beginning and size given */
 		*size = strtoull_suffix(str + 1, NULL, 0);
-		return 0;
+		goto success;
 	}
 
 	return -1;
+
+success:
+	*start = _start;
+	return 0;
 }
 EXPORT_SYMBOL(parse_area_spec);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
