Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RXUSo-0006hv-2J
 for barebox@lists.infradead.org; Mon, 05 Dec 2011 09:03:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  5 Dec 2011 10:03:43 +0100
Message-Id: <1323075823-29691-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] add armlinux specific magicvar descriptions
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/lib/armlinux.c |    5 +++++
 1 files changed, 5 insertions(+), 0 deletions(-)

diff --git a/arch/arm/lib/armlinux.c b/arch/arm/lib/armlinux.c
index 45752dc..bd9b72a 100644
--- a/arch/arm/lib/armlinux.c
+++ b/arch/arm/lib/armlinux.c
@@ -36,6 +36,7 @@
 #include <errno.h>
 #include <memory.h>
 #include <of.h>
+#include <magicvar.h>
 
 #include <asm/byteorder.h>
 #include <asm/setup.h>
@@ -52,6 +53,10 @@ static u32 armlinux_system_rev;
 static u64 armlinux_system_serial;
 #endif
 
+BAREBOX_MAGICVAR(armlinux_architecture, "ARM machine ID");
+BAREBOX_MAGICVAR(armlinux_system_rev, "ARM system revision");
+BAREBOX_MAGICVAR(armlinux_system_serial, "ARM system serial");
+
 void armlinux_set_architecture(int architecture)
 {
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
