Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000Jr-IY
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:48 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D7E56A00CB4
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:21 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:25:54 +0200
Message-Id: <1463992010-31537-7-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 06/62] UBI: Fastmap: Calc fastmap size correctly
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

We need to add fm_sb too.

Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: Tanya Brokhman <tlinder@codeaurora.org>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/fastmap.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index a3e9069..52b8c47 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -24,7 +24,8 @@ size_t ubi_calc_fm_size(struct ubi_device *ubi)
 {
 	size_t size;
 
-	size = sizeof(struct ubi_fm_hdr) + \
+	size = sizeof(struct ubi_fm_sb) + \
+		sizeof(struct ubi_fm_hdr) + \
 		sizeof(struct ubi_fm_scan_pool) + \
 		sizeof(struct ubi_fm_scan_pool) + \
 		(ubi->peb_count * sizeof(struct ubi_fm_ec)) + \
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
