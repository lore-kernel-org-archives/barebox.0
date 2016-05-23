Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEW-0000Jq-BN
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:06 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 34CE3A00CF6
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:28 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:49 +0200
Message-Id: <1463992010-31537-62-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 61/62] ubi: Fix out of bounds write in volume update code
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

ubi_start_leb_change() allocates too few bytes.
ubi_more_leb_change_data() will write up to req->upd_bytes +
ubi->min_io_size bytes.

Cc: stable@vger.kernel.org
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
---
 drivers/mtd/ubi/upd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/upd.c b/drivers/mtd/ubi/upd.c
index 5e06753..33d4dbf 100644
--- a/drivers/mtd/ubi/upd.c
+++ b/drivers/mtd/ubi/upd.c
@@ -201,7 +201,7 @@ int ubi_start_leb_change(struct ubi_device *ubi, struct ubi_volume *vol,
 	vol->changing_leb = 1;
 	vol->ch_lnum = req->lnum;
 
-	vol->upd_buf = vmalloc(req->bytes);
+	vol->upd_buf = vmalloc(ALIGN((int)req->bytes, ubi->min_io_size));
 	if (!vol->upd_buf)
 		return -ENOMEM;
 
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
