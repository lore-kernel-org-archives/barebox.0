Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSh-0005Ul-OG
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:44 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8D02EA00A8C
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:53 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:25 +0200
Message-Id: <1535545212-18871-10-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 09/56] ubi: Fix race condition between ubi device creation and
 udev
To: barebox@lists.infradead.org

From: Iosif Harutyunov <iharutyunov@SonicWALL.com>

Install the UBI device object before we arm sysfs.
Otherwise udev tries to read sysfs attributes before UBI is ready and
udev rules will not match.

Cc: <stable@vger.kernel.org>
Signed-off-by: Iosif Harutyunov <iharutyunov@sonicwall.com>
[rw: massaged commit message]
Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed minor conflict]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 40fa890c9e59..d5c3719482cf 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -633,6 +633,9 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 			goto out_detach;
 	}
 
+	/* Make device "available" before it becomes accessible via sysfs */
+	ubi_devices[ubi_num] = ubi;
+
 	err = uif_init(ubi, &ref);
 	if (err)
 		goto out_detach;
@@ -668,11 +671,10 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	dev_add_param_uint32_ro(&ubi->dev, "available_pebs", &ubi->avail_pebs, "%u");
 	dev_add_param_uint32_ro(&ubi->dev, "reserved_pebs", &ubi->rsvd_pebs, "%u");
 
-	ubi_devices[ubi_num] = ubi;
-
 	return ubi_num;
 
 out_detach:
+	ubi_devices[ubi_num] = NULL;
 	ubi_wl_close(ubi);
 	ubi_free_internal_volumes(ubi);
 	vfree(ubi->vtbl);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
