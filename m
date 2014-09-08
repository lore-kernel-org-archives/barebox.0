Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XQyvO-0002VK-NT
 for barebox@lists.infradead.org; Mon, 08 Sep 2014 13:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Sep 2014 15:23:39 +0200
Message-Id: <1410182622-22876-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
References: <1410182622-22876-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: AT91: Add missing include
To: barebox@lists.infradead.org

the gpio mux functions were moved to mach/gpio.h. Add the missing
include.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index e69e4a8..59ea83e 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -20,6 +20,7 @@
 #include <mach/at91sam9_sdramc.h>
 #include <mach/at91sam9_smc.h>
 #include <mach/at91_lowlevel_init.h>
+#include <mach/gpio.h>
 #include <mach/io.h>
 #include <init.h>
 #include <sizes.h>
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
