Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xr6Wu-0001Aq-Hd
 for barebox@lists.infradead.org; Wed, 19 Nov 2014 14:46:49 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E6617A00138
 for <barebox@lists.infradead.org>; Wed, 19 Nov 2014 15:46:38 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Wed, 19 Nov 2014 15:45:41 +0100
Message-Id: <1416408341-31321-1-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] mtd: ubi: get_bad_peb_limit from mtd master
To: barebox@lists.infradead.org

Like mentioned in the coment we need the size of the entire flash chip.
Check if a master exists and take his size.

Otherwise the limit will be too small and kernel prints:
UBI warning: print_rsvd_warning: cannot reserve enough PEBs for \
bad PEB handling, reserved 19, need 20

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/mtd/ubi/build.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 7b1c332..b02880e 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -237,7 +237,11 @@ static int get_bad_peb_limit(const struct ubi_device *ubi, int max_beb_per1024)
 	 * is that all the bad eraseblocks of the chip are in
 	 * the MTD partition we are attaching (ubi->mtd).
 	 */
-	device_size = ubi->mtd->size;
+	if (ubi->mtd->master)
+		device_size = ubi->mtd->master->size;
+	else
+		device_size = ubi->mtd->size;
+
 	device_pebs = mtd_div_by_eb(device_size, ubi->mtd);
 	limit = mult_frac(device_pebs, max_beb_per1024, 1024);
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
