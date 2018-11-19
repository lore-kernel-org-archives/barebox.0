Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfB6-0003is-2A
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:47 +0100
Message-Id: <20181119084454.17599-6-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/12] ARM: samsung: Add missing include
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/a9m2440/a9m2410dev.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index f12a0b9652..b115c4a954 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -28,6 +28,8 @@
 #include <mach/s3c-busctl.h>
 #include <mach/s3c24xx-gpio.h>
 
+#include "baseboards.h"
+
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
  */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
