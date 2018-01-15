Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eb30e-0004G8-8e
 for barebox@lists.infradead.org; Mon, 15 Jan 2018 11:33:01 +0000
Received: by mail-lf0-x242.google.com with SMTP id q17so2756508lfa.9
 for <barebox@lists.infradead.org>; Mon, 15 Jan 2018 03:32:48 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 15 Jan 2018 14:32:33 +0300
Message-Id: <20180115113233.30610-3-pmamonov@gmail.com>
In-Reply-To: <20180115113233.30610-1-pmamonov@gmail.com>
References: <20180111081531.l4yu7xdxyxrtl7gx@pengutronix.de>
 <20180115113233.30610-1-pmamonov@gmail.com>
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
Subject: [PATCH v2 3/3] lib: parse_area_spec: no extra symbols after area spec
 are allowed except for spaces
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 lib/misc.c | 15 ++++++++++-----
 1 file changed, 10 insertions(+), 5 deletions(-)

diff --git a/lib/misc.c b/lib/misc.c
index fc2c45aa4..4b62f8771 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -79,7 +79,7 @@ EXPORT_SYMBOL(strtoul_suffix);
 int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 {
 	char *endp;
-	loff_t end, _start;
+	loff_t end, _start, _size;
 
 	if (!isdigit(*str))
 		return -1;
@@ -90,7 +90,7 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 
 	if (!*str) {
 		/* beginning given, but no size, assume maximum size */
-		*size = ~0;
+		_size = ~0;
 		goto success;
 	}
 
@@ -99,12 +99,13 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 		if (!isdigit(*(str + 1)))
 			return -1;
 
-		end = strtoull_suffix(str + 1, NULL, 0);
+		end = strtoull_suffix(str + 1, &endp, 0);
+		str = endp;
 		if (end < *start) {
 			printf("end < start\n");
 			return -1;
 		}
-		*size = end - *start + 1;
+		_size = end - *start + 1;
 		goto success;
 	}
 
@@ -113,14 +114,18 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 		if (!isdigit(*(str + 1)))
 			return -1;
 
-		*size = strtoull_suffix(str + 1, NULL, 0);
+		_size = strtoull_suffix(str + 1, &endp, 0);
+		str = endp;
 		goto success;
 	}
 
 	return -1;
 
 success:
+	if (*str && !isspace(*str))
+		return -1;
 	*start = _start;
+	*size = _size;
 	return 0;
 }
 EXPORT_SYMBOL(parse_area_spec);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
