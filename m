Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x236.google.com ([2a00:1450:400c:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XB3qV-0000ba-QO
 for barebox@lists.infradead.org; Sat, 26 Jul 2014 15:25:16 +0000
Received: by mail-we0-f182.google.com with SMTP id k48so5527951wev.41
 for <barebox@lists.infradead.org>; Sat, 26 Jul 2014 08:24:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Sat, 26 Jul 2014 17:24:43 +0200
Message-Id: <1406388285-1666-6-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406388285-1666-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 5/7] include: import {lower,upper}_32_bits helpers
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

This imports {lower,upper}_32_bits defines to allow to get upper
and lower 32b part of a 64b number.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 include/common.h | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/include/common.h b/include/common.h
index ca817aac4f06..de635718d2fe 100644
--- a/include/common.h
+++ b/include/common.h
@@ -282,6 +282,22 @@ void barebox_set_hostname(const char *);
 }							\
 )
 
+/**
+ * upper_32_bits - return bits 32-63 of a number
+ * @n: the number we're accessing
+ *
+ * A basic shift-right of a 64- or 32-bit quantity.  Use this to suppress
+ * the "right shift count >= width of type" warning when that quantity is
+ * 32-bits.
+ */
+#define upper_32_bits(n)	((u32)(((n) >> 16) >> 16))
+
+/**
+ * lower_32_bits - return bits 0-31 of a number
+ * @n: the number we're accessing
+ */
+#define lower_32_bits(n)	((u32)(n))
+
 #define abs(x) ({                               \
 		long __x = (x);                 \
 		(__x < 0) ? -__x : __x;         \
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
