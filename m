Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003f4-U8
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:36 +0100
Message-Id: <1418149064-26448-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/9] PBL: Add strnlen, needed for printf support
To: barebox@lists.infradead.org

vsprintf needs strnlen, so in oder to add console support to
the PBL we need a strnlen implementation.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 pbl/string.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/pbl/string.c b/pbl/string.c
index b773f5c..927c92d 100644
--- a/pbl/string.c
+++ b/pbl/string.c
@@ -119,3 +119,17 @@ void *memset(void *s, int c, size_t count)
 		*xs++ = c;
 	return s;
 }
+
+/**
+ * strnlen - Find the length of a length-limited string
+ * @s: The string to be sized
+ * @count: The maximum number of bytes to search
+ */
+size_t strnlen(const char * s, size_t count)
+{
+	const char *sc;
+
+	for (sc = s; count-- && *sc != '\0'; ++sc)
+		/* nothing */;
+	return sc - s;
+}
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
