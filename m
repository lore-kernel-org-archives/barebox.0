Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZH92-000616-Vk
 for barebox@lists.infradead.Org; Fri, 26 Feb 2016 12:05:17 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 26 Feb 2016 13:04:44 +0100
Message-Id: <1456488287-23404-3-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1456488287-23404-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 2/5] lib: random: get_random_bytes from HWRNG if present
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of generating pseudo random numbers, get random bytes
from an optional HW generator, if enabled and registered.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 lib/random.c | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/lib/random.c b/lib/random.c
index 210fea99466e..ff82dd1bed85 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <stdlib.h>
+#include <linux/hw_random.h>
 
 static unsigned int random_seed;
 
@@ -22,6 +23,24 @@ void get_random_bytes(void *_buf, int len)
 {
 	char *buf = _buf;
 
+	if (IS_ENABLED(CONFIG_HWRNG)) {
+		struct hwrng *rng;
+		int bytes;
+
+		rng = hwrng_get_first();
+		if (!PTR_ERR(rng)) {
+			while (len) {
+				bytes = hwrng_get_data(rng, _buf, len, 0);
+				if (!bytes)
+					goto sw_fallback;
+				len -= bytes;
+			}
+
+			return;
+		}
+	}
+
+sw_fallback:
 	while (len--)
 		*buf++ = rand() % 256;
 }
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
