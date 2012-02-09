Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from devils.ext.ti.com ([198.47.26.153])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RvYma-0006rG-AX
 for barebox@lists.infradead.org; Thu, 09 Feb 2012 18:31:49 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id q19IVjBR015841
 for <barebox@lists.infradead.org>; Thu, 9 Feb 2012 12:31:46 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q19IVjvX020326
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2012 00:01:45 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Fri, 10 Feb 2012 00:01:38 +0530
Message-ID: <1328812298-1737-1-git-send-email-premi@ti.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] omap: xload: Make error more specific
To: barebox@lists.infradead.org

Current message indicating that SD card isn't
mounted is misleading if the card has only one
partition.

Updated the message to indicate that mounting
the specific partition failed.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 arch/arm/mach-omap/xload.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index a52a8ba..bf7fd06 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -40,7 +40,7 @@ void *omap_xload_boot_mmc(void)
 
 	ret = mount("disk0.0", "fat", "/");
 	if (ret) {
-		printf("mounting sd card failed with %d\n", ret);
+		printf("Unable to mount disk0.0 (%d)\n", ret);
 		return NULL;
 	}
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
