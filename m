Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c3la1-0004Tk-4J
 for barebox@lists.infradead.org; Mon, 07 Nov 2016 15:11:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id CFA13A00260
 for <barebox@lists.infradead.org>; Mon,  7 Nov 2016 16:11:32 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Mon, 7 Nov 2016 16:10:56 +0100
Message-Id: <1478531456-11232-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH] commands: spi: fix chip select validation
To: barebox@lists.infradead.org

The chip selects are numbered 0..(max chip selects - 1). Chip select
with number <max chip selects> is invalid. Fix the check for that. Using
the out of bound chip select may hang your board.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 commands/spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/spi.c b/commands/spi.c
index 21db9ae..6603b34 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -68,8 +68,8 @@ static int do_spi(int argc, char *argv[])
 		return -ENODEV;
 	}
 
-	if (spi.chip_select > spi.master->num_chipselect) {
-		printf("spi chip select (%d)> master num chipselect (%d)\n",
+	if (spi.chip_select >= spi.master->num_chipselect) {
+		printf("spi chip select (%d) >= master num chipselect (%d)\n",
 			spi.chip_select, spi.master->num_chipselect);
 		return -EINVAL;
 	}
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
