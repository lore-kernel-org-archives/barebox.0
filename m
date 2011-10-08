Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RCcVs-0004Fh-4Y
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 19:24:49 +0000
Received: by bkat2 with SMTP id t2so7830225bka.36
	for <barebox@lists.infradead.org>; Sat, 08 Oct 2011 12:24:45 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Sat,  8 Oct 2011 21:24:38 +0200
Message-Id: <1318101878-12808-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH] mach-nomadik: Fix compilation error.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Fix folowing:
arch/arm/mach-nomadik/8815.c:39:26: error: array type has incomplete element type
arch/arm/mach-nomadik/8815.c:40:2: warning: implicit declaration of function 'CLKDEV_DEV_ID'

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 arch/arm/mach-nomadik/8815.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-nomadik/8815.c b/arch/arm/mach-nomadik/8815.c
index 69aacd5..0dfe384 100644
--- a/arch/arm/mach-nomadik/8815.c
+++ b/arch/arm/mach-nomadik/8815.c
@@ -24,6 +24,7 @@
 #include <mach/hardware.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
+#include <linux/clkdev.h>
 
 #include "clock.h"
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
