Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43g7-0000oZ-MH
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:16:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:16:35 +0100
Message-Id: <20200218141636.6486-2-a.fatoum@pengutronix.de>
In-Reply-To: <20200218141636.6486-1-a.fatoum@pengutronix.de>
References: <20200218141636.6486-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/3] scripts: define ALIGN(x) in scripts' <linux/kernel.h>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

To make code sharing between utilities in scripts/ and barebox easier,
define ALIGN in the scripts/include/linux/kernel.h as well for
compatibility with the barebox include/linux/kernel.h.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/include/linux/kernel.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/scripts/include/linux/kernel.h b/scripts/include/linux/kernel.h
index 5d94e984f10b..dc2e64e16413 100644
--- a/scripts/include/linux/kernel.h
+++ b/scripts/include/linux/kernel.h
@@ -6,6 +6,8 @@
 #include <stdlib.h>
 #include <assert.h>
 
+#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
+#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
 
 #define DIV_ROUND_UP(n,d) (((n) + (d) - 1) / (d))
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
