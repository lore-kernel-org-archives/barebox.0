Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA1m-0007hO-7V
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:25:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:38 +0200
Message-Id: <20200915122539.18744-10-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/10] scripts: tegra: Add missing include
To: Barebox List <barebox@lists.infradead.org>

Include context.h to get the prototypes for the functions defined in
context.c

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/tegra/context.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/tegra/context.c b/scripts/tegra/context.c
index 9d2fb27dc9..47e65d570b 100644
--- a/scripts/tegra/context.c
+++ b/scripts/tegra/context.c
@@ -17,6 +17,7 @@
 #include "cbootimage.h"
 #include "data_layout.h"
 #include "set.h"
+#include "context.h"
 
 void
 cleanup_context(build_image_context *context)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
