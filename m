Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPK-0002mp-5w
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:14 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:05 +0200
Message-Id: <20200930072005.1407-12-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 12/12] blspec: fix dead assignment
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

cdev is assigned for each loop iteration and consumed inside.
The initial value is never read, so drop it.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 9499d32477d9..a07343f4274e 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -766,7 +766,7 @@ int blspec_scan_devices(struct bootentries *bootentries)
 		device_detect(dev);
 
 	for_each_block_device(bdev) {
-		struct cdev *cdev = &bdev->cdev;
+		struct cdev *cdev;
 
 		list_for_each_entry(cdev, &bdev->dev->cdevs, devices_list) {
 			ret = blspec_scan_cdev(bootentries, cdev);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
