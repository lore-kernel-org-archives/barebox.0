Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hn2Nz-0006wU-03
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 14:55:28 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hn2Nv-0004zX-QE
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 16:55:23 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hn2Nv-0003sT-Cw
 for barebox@lists.infradead.org; Mon, 15 Jul 2019 16:55:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Jul 2019 16:55:22 +0200
Message-Id: <20190715145522.9589-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] UBI: silence erroneous GCC warning about uninitialized read
To: barebox@lists.infradead.org

GCC reports following use of an uninitialized variable:

  ./drivers/mtd/ubi/eba.c: In function 'try_write_vid_and_data':
  ./drivers/mtd/ubi/eba.c:904:9: warning:
    'opnum' may be used uninitialized in this function [-Wmaybe-uninitialized]
       err = ubi_wl_put_peb(ubi, vol_id, lnum, opnum, 0);
             ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

This is incorrect, because it's only called when err == 0 and opnum
is always initialized if err == 0. Silence the warning by initializing
a variable.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/ubi/eba.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 3aae3029e5b6..cca6ec4ba915 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -865,7 +865,7 @@ static int try_write_vid_and_data(struct ubi_volume *vol, int lnum,
 				  int offset, int len)
 {
 	struct ubi_device *ubi = vol->ubi;
-	int pnum, opnum, err, vol_id = vol->vol_id;
+	int pnum, opnum = -1, err, vol_id = vol->vol_id;
 
 	pnum = ubi_wl_get_peb(ubi);
 	if (pnum < 0) {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
