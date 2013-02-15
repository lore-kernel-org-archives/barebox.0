Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U6QKg-0007kN-NX
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:48:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 15 Feb 2013 19:48:19 +0100
Message-Id: <1360954101-13194-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360954101-13194-1-git-send-email-s.hauer@pengutronix.de>
References: <1360954101-13194-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] ARM OMAP phycard-a-l1: Add missing include
To: barebox@lists.infradead.org

Fixes:

arch/arm/boards/phycard-a-l1/lowlevel.c: In function 'pcaal1_sdrc_init':
arch/arm/boards/phycard-a-l1/lowlevel.c:105:2: warning: implicit declaration of function 'get_ram_size' [-Wimplicit-function-declaration]
arch/arm/boards/phycard-a-l1/lowlevel.c:113:3: warning: implicit declaration of function 'hang' [-Wimplicit-function-declaration]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phycard-a-l1/lowlevel.c |    1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phycard-a-l1/lowlevel.c
index d00efcc..30379d8 100644
--- a/arch/arm/boards/phycard-a-l1/lowlevel.c
+++ b/arch/arm/boards/phycard-a-l1/lowlevel.c
@@ -1,3 +1,4 @@
+#include <common.h>
 #include <io.h>
 #include <init.h>
 #include <sizes.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
