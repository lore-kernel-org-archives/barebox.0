Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQtLt-0000SS-0l
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 06:22:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  1 Oct 2013 08:22:03 +0200
Message-Id: <1380608528-26999-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
References: <1380608528-26999-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: edb93xx: Add missing include
To: barebox@lists.infradead.org

Fixes:

arch/arm/boards/edb93xx/edb93xx.c: In function 'edb93xx_console_init':
arch/arm/boards/edb93xx/edb93xx.c:123:2: warning: implicit declaration of function 'free' [-Wimplicit-function-declaration]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/edb93xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 27ba90a..1388590 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -24,6 +24,7 @@
 #include <partition.h>
 #include <asm/armlinux.h>
 #include <io.h>
+#include <malloc.h>
 #include <generated/mach-types.h>
 #include <mach/ep93xx-regs.h>
 #include "edb93xx.h"
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
