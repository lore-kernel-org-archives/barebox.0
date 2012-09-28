Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THb5N-0008C0-6i
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 13:58:33 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Fri, 28 Sep 2012 15:58:21 +0200
Message-Id: <1348840701-1951-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH] arm: cfa10036: Add the OCOTP device
To: barebox@lists.infradead.org
Cc: brian@crystalfontz.com

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index fcb7057..522d2d7 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <mci.h>
 #include <io.h>
+#include <net.h>
 #include <sizes.h>
 
 #include <mach/clock.h>
@@ -93,6 +94,9 @@ static int cfa10036_devices_init(void)
 	add_generic_device("mxs_mci", 0, NULL, IMX_SSP0_BASE, SZ_8K,
 			   IORESOURCE_MEM, &mci_pdata);
 
+	add_generic_device("ocotp", 0, NULL, IMX_OCOTP_BASE, SZ_8K,
+			   IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 device_initcall(cfa10036_devices_init);
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
