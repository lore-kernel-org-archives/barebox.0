Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9SKZ-0007im-A2
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 07:51:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 08:50:34 +0100
Message-Id: <20161123075034.21606-3-s.hauer@pengutronix.de>
In-Reply-To: <20161123075034.21606-1-s.hauer@pengutronix.de>
References: <20161123075034.21606-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] lib/int_sqrt.c: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

include int_sqrt.h to have the prototype for the function defined in
this file.

Fixes:
lib/int_sqrt.c:25:15: warning: no previous prototype for 'int_sqrt' [-Wmissing-prototypes]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/int_sqrt.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/int_sqrt.c b/lib/int_sqrt.c
index 30ccafb..bf8b18f 100644
--- a/lib/int_sqrt.c
+++ b/lib/int_sqrt.c
@@ -15,6 +15,7 @@
  */
 
 #include <common.h>
+#include <int_sqrt.h>
 
 /**
  * int_sqrt - rough approximation to sqrt
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
