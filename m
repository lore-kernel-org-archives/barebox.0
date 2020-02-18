Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j43g7-0000oa-Lr
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 14:16:48 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Feb 2020 15:16:36 +0100
Message-Id: <20200218141636.6486-3-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/3] scripts: imd: remove duplicate macro definitions
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

include/scripts/linux/kernel.h included via #include <linux/kernel.h>
later on already defines these three macros. Remove them here to avoid
the warnings about the duplicate macro definition.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 scripts/bareboximd.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
index cf1b8f693ac0..e5000e0aea5b 100644
--- a/scripts/bareboximd.c
+++ b/scripts/bareboximd.c
@@ -16,10 +16,6 @@
  *
  */
 
-#define __ALIGN_MASK(x, mask)	(((x) + (mask)) & ~(mask))
-#define ALIGN(x, a)		__ALIGN_MASK(x, (typeof(x))(a) - 1)
-#define ARRAY_SIZE(x) (sizeof(x) / sizeof((x)[0]))
-
 #include <stdio.h>
 #include <sys/types.h>
 #include <stdint.h>
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
