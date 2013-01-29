Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U06pK-0005cQ-V7
 for barebox@lists.infradead.org; Tue, 29 Jan 2013 08:46:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 29 Jan 2013 09:45:46 +0100
Message-Id: <1359449147-30145-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
References: <1359449147-30145-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] ARM pcm038: Specify pr_fmt and change messages to pr_*
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/pcm038/pcm038.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index ea50a78..5e9c0fd 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -13,6 +13,7 @@
  *
  *
  */
+#define pr_fmt(fmt) "pcm038: " fmt
 
 #include <common.h>
 #include <net.h>
@@ -170,7 +171,7 @@ static int pcm038_power_init(void)
 			/* Clocks have changed. Notify clients */
 			clock_notifier_call_chain();
 		} else {
-			printf("Failed to initialize PMIC. Will continue with low CPU speed\n");
+			pr_err("Failed to initialize PMIC. Will continue with low CPU speed\n");
 		}
 	}
 
@@ -315,7 +316,7 @@ static int pcm038_devices_init(void)
 		envdev = "NOR";
 	}
 
-	printf("Using environment in %s Flash\n", envdev);
+	pr_notice("Using environment in %s Flash\n", envdev);
 
 	if (imx_iim_read(1, 1, &uid, 6) == 6)
 		armlinux_set_serial(uid);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
