Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1b4lEj-0003an-Re
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:19 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9D250A00CCA
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:23 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:14 +0200
Message-Id: <1463992010-31537-27-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
References: <1463992010-31537-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 26/62] UBI: Fastmap: Fix fastmap usage in ubi_volume_notify()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

There is no need to switch to ro mode if ubi_update_fastmap() fails.
Also get rid of the ifdef.

Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: Tanya Brokhman <tlinder@codeaurora.org>

Conflicts:
	drivers/mtd/ubi/build.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/build.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 2295c67..b505252 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -71,19 +71,21 @@ struct ubi_device *ubi_devices[UBI_MAX_DEVICES];
  */
 int ubi_volume_notify(struct ubi_device *ubi, struct ubi_volume *vol, int ntype)
 {
+	int ret = 0;
+
 #ifdef CONFIG_MTD_UBI_FASTMAP
+
 	switch (ntype) {
 	case UBI_VOLUME_ADDED:
 	case UBI_VOLUME_REMOVED:
 	case UBI_VOLUME_RESIZED:
 	case UBI_VOLUME_RENAMED:
-		if (ubi_update_fastmap(ubi)) {
-			ubi_err(ubi, "Unable to update fastmap!");
-			ubi_ro_mode(ubi);
-		}
+		ret = ubi_update_fastmap(ubi);
+		if (ret)
+			ubi_msg(ubi, "Unable to write a new fastmap: %i", ret);
 	}
 #endif
-	return 0;
+	return ret;
 }
 
 /**
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
