Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTe-0004yH-A3
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 7E2FDA00B60
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:43 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:54 +0200
Message-Id: <1464335095-35180-62-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
References: <1464335095-35180-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 61/62] ubi: Fix out of bounds write in volume update code
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

ubi_start_leb_change() allocates too few bytes.
ubi_more_leb_change_data() will write up to req->upd_bytes +
ubi->min_io_size bytes.

Cc: stable@vger.kernel.org
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: Boris Brezillon <boris.brezillon@free-electrons.com>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
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
