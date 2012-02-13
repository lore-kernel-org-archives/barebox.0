Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RwsqP-0001fH-R1
 for barebox@lists.infradead.org; Mon, 13 Feb 2012 10:09:15 +0000
Received: from dbdp20.itg.ti.com ([172.24.170.38])
 by bear.ext.ti.com (8.13.7/8.13.7) with ESMTP id q1DA9AQk013955
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2012 04:09:11 -0600
Received: from DBDE71.ent.ti.com (localhost [127.0.0.1])
 by dbdp20.itg.ti.com (8.13.8/8.13.8) with ESMTP id q1DA99nU018347
 for <barebox@lists.infradead.org>; Mon, 13 Feb 2012 15:39:09 +0530 (IST)
From: Sanjeev Premi <premi@ti.com>
Date: Mon, 13 Feb 2012 15:39:01 +0530
Message-ID: <1329127741-2672-1-git-send-email-premi@ti.com>
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
Subject: [PATCH v2] omap: xload: Make error more specific
To: barebox@lists.infradead.org

Current message indicating that SD card isn't
mounted is misleading if the card has only one
partition.

Updated the message to indicate that mounting
the specific partition failed.

Signed-off-by: Sanjeev Premi <premi@ti.com>
---
 Changes since v1:
   Use variable diskdev to ensure that name of device
   used in the mount() and error message continue to
   remain in sync.


 arch/arm/mach-omap/xload.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index a52a8ba..59f75e2 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -37,10 +37,11 @@ void *omap_xload_boot_mmc(void)
 	int ret;
 	void *buf;
 	int len;
+	const char *diskdev = "disk0.0";
 
-	ret = mount("disk0.0", "fat", "/");
+	ret = mount(diskdev, "fat", "/");
 	if (ret) {
-		printf("mounting sd card failed with %d\n", ret);
+		printf("Unable to mount %s (%d)\n", diskdev, ret);
 		return NULL;
 	}
 
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
