Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eb30e-0004CK-9B
 for barebox@lists.infradead.org; Mon, 15 Jan 2018 11:33:03 +0000
Received: by mail-lf0-x242.google.com with SMTP id m8so12952761lfc.6
 for <barebox@lists.infradead.org>; Mon, 15 Jan 2018 03:32:47 -0800 (PST)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Mon, 15 Jan 2018 14:32:32 +0300
Message-Id: <20180115113233.30610-2-pmamonov@gmail.com>
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
Subject: [PATCH v2 2/3] lib: parse_area_spec: part of the area spec after -/+
 should start with a digit
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 lib/misc.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/lib/misc.c b/lib/misc.c
index 1767043d1..fc2c45aa4 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -96,6 +96,9 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 
 	if (*str == '-') {
 		/* beginning and end given */
+		if (!isdigit(*(str + 1)))
+			return -1;
+
 		end = strtoull_suffix(str + 1, NULL, 0);
 		if (end < *start) {
 			printf("end < start\n");
@@ -107,6 +110,9 @@ int parse_area_spec(const char *str, loff_t *start, loff_t *size)
 
 	if (*str == '+') {
 		/* beginning and size given */
+		if (!isdigit(*(str + 1)))
+			return -1;
+
 		*size = strtoull_suffix(str + 1, NULL, 0);
 		goto success;
 	}
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
