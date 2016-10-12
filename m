Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x243.google.com ([2a00:1450:400c:c09::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1buCTH-00063r-PZ
 for barebox@lists.infradead.org; Wed, 12 Oct 2016 05:52:56 +0000
Received: by mail-wm0-x243.google.com with SMTP id o81so707148wma.0
 for <barebox@lists.infradead.org>; Tue, 11 Oct 2016 22:52:34 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Wed, 12 Oct 2016 07:52:22 +0200
Message-Id: <1476251542-5228-1-git-send-email-yegorslists@googlemail.com>
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
Subject: [PATCH] ubi: fix spelling
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/mtd/ubi/build.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 5953e36..a7a679a 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -492,13 +492,13 @@ static int autoresize(struct ubi_device *ubi, int vol_id)
  * @vid_hdr_offset: VID header offset
  * @max_beb_per1024: maximum expected number of bad PEB per 1024 PEBs
  *
- * This function attaches MTD device @mtd_dev to UBI and assign @ubi_num number
+ * This function attaches MTD device @mtd_dev to UBI and assigns @ubi_num number
  * to the newly created UBI device, unless @ubi_num is %UBI_DEV_NUM_AUTO, in
  * which case this function finds a vacant device number and assigns it
  * automatically. Returns the new UBI device number in case of success and a
  * negative error code in case of failure.
  *
- * Note, the invocations of this function has to be serialized by the
+ * Note, the invocation of this function has to be serialized by the
  * @ubi_devices_mutex.
  */
 int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
@@ -695,7 +695,7 @@ out_free:
  * UBI device is busy and cannot be destroyed, and %-EINVAL if it does not
  * exist.
  *
- * Note, the invocations of this function has to be serialized by the
+ * Note, the invocation of this function has to be serialized by the
  * @ubi_devices_mutex.
  */
 int ubi_detach_mtd_dev(int ubi_num, int anyway)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
