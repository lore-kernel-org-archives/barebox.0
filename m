Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cou5y-0006n1-Lv
 for barebox@lists.infradead.org; Fri, 17 Mar 2017 15:47:22 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 17 Mar 2017 16:46:36 +0100
Message-Id: <20170317154638.30513-3-o.rempel@pengutronix.de>
In-Reply-To: <20170317154638.30513-1-o.rempel@pengutronix.de>
References: <20170317154638.30513-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 2/4] lib: random: get_random_bytes from HWRNG if present
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Instead of generating pseudo random numbers, get random bytes
from an optional HW generator, if enabled and registered.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 lib/random.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/lib/random.c b/lib/random.c
index 210fea994..5cd40915a 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <stdlib.h>
+#include <linux/hw_random.h>
 
 static unsigned int random_seed;
 
@@ -22,6 +23,23 @@ void get_random_bytes(void *_buf, int len)
 {
 	char *buf = _buf;
 
+	if (IS_ENABLED(CONFIG_HWRNG)) {
+		struct hwrng *rng;
+
+		rng = hwrng_get_first();
+		if (!IS_ERR(rng)) {
+			while (len) {
+				int bytes = hwrng_get_data(rng, _buf, len, true);
+				if (bytes <= 0)
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
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
