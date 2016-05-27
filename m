Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTW-0004yH-P3
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:33 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 1BF63A00B4A
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:36 +0200
Message-Id: <1464335095-35180-44-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 43/62] UBI: Fastmap: Fall back to scanning mode after ECC
 error
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

If we encounter an uncorrectable ECC error while scanning for the fastmap
UBI must not fail hard. Instead fall back to scanning mode.

Reported-by: Alexander Block <Alexander.Block@continental-corporation.com>
Signed-off-by: Richard Weinberger <richard@nod.at>

Conflicts:
	drivers/mtd/ubi/attach.c

Fixed minor conflict.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/attach.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index dc14a2b..b49842b 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1390,7 +1390,7 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 		err = scan_all(ubi, ai, 0);
 	else {
 		err = scan_fast(ubi, ai);
-		if (err > 0) {
+		if (err > 0 || mtd_is_eccerr(err)) {
 			if (err != UBI_NO_FASTMAP) {
 				destroy_ai(ai);
 				ai = alloc_ai("ubi_aeb_slab_cache2");
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
