Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhs4-0002DE-2H
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:38:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:42 +0200
Message-Id: <20190819133847.17015-4-s.hauer@pengutronix.de>
In-Reply-To: <20190819133847.17015-1-s.hauer@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] pbl: Implement strrchr
To: Barebox List <barebox@lists.infradead.org>

strrchr is needed for libfdt. Add support for it to the pbl.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/string.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/pbl/string.c b/pbl/string.c
index 927c92dc05..46bf0b32b3 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -133,3 +133,19 @@ size_t strnlen(const char * s, size_t count)
 		/* nothing */;
 	return sc - s;
 }
+
+/**
+ * strrchr - Find the last occurrence of a character in a string
+ * @s: The string to be searched
+ * @c: The character to search for
+ */
+char * _strrchr(const char * s, int c)
+{
+	const char *p = s + strlen(s);
+
+	do {
+		if (*p == (char)c)
+			return (char *)p;
+	} while (--p >= s);
+	return NULL;
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
