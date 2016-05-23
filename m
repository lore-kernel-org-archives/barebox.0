Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lDt-00006q-61
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 6CD74A00CA7
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:21 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:51 +0200
Message-Id: <1463992010-31537-4-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 03/62] UBI: ubi_eba_read_leb: Remove in vain variable
 assignment
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

There is no need to set err, it will be overwritten in any case
later at:
        if (scrub)
                err = ubi_wl_scrub_peb(ubi, pnum);

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/eba.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 7eb76ce..bf96b14 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -416,10 +416,9 @@ retry:
 
 	err = ubi_io_read_data(ubi, buf, pnum, offset, len);
 	if (err) {
-		if (err == UBI_IO_BITFLIPS) {
+		if (err == UBI_IO_BITFLIPS)
 			scrub = 1;
-			err = 0;
-		} else if (mtd_is_eccerr(err)) {
+		else if (mtd_is_eccerr(err)) {
 			if (vol->vol_type == UBI_DYNAMIC_VOLUME)
 				goto out_unlock;
 			scrub = 1;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
