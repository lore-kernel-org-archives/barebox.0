Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lET-0000Jq-Bq
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:04 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 03A10A00CEE
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:27 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:41 +0200
Message-Id: <1463992010-31537-54-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 53/62] UBI: Fastmap: Simplify expression
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

There is no need to compute pnum again.

Signed-off-by: Richard Weinberger <richard@nod.at>
Acked-by: Brian Norris <computersforpeace@gmail.com>
---
 drivers/mtd/ubi/fastmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 1504911..173da9c 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -714,7 +714,7 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 		for (j = 0; j < be32_to_cpu(fm_eba->reserved_pebs); j++) {
 			int pnum = be32_to_cpu(fm_eba->pnum[j]);
 
-			if ((int)be32_to_cpu(fm_eba->pnum[j]) < 0)
+			if (pnum < 0)
 				continue;
 
 			aeb = NULL;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
