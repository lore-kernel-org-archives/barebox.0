Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RERoU-0002Gy-5N
	for barebox@lists.infradead.org; Thu, 13 Oct 2011 20:23:35 +0000
Received: by mail-bw0-f49.google.com with SMTP id c12so2477964bkb.36
	for <barebox@lists.infradead.org>; Thu, 13 Oct 2011 13:23:33 -0700 (PDT)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 13 Oct 2011 22:23:12 +0200
Message-Id: <1318537394-8555-6-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
References: <1318537394-8555-1-git-send-email-marek.belisko@open-nandra.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 6/8] nand: Fix sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

warning:
drivers/mtd/nand/nand_write.c:262:5: warning: symbol 'nand_do_write_ops' was not declared. Should it be static?

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 drivers/mtd/nand/nand_write.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mtd/nand/nand_write.c b/drivers/mtd/nand/nand_write.c
index 13b6c89..59a1bcc 100644
--- a/drivers/mtd/nand/nand_write.c
+++ b/drivers/mtd/nand/nand_write.c
@@ -259,7 +259,7 @@ static uint8_t *nand_fill_oob(struct nand_chip *chip, uint8_t *oob,
  *
  * NAND write with ECC
  */
-int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
+static int nand_do_write_ops(struct mtd_info *mtd, loff_t to,
 			     struct mtd_oob_ops *ops)
 {
 	int chipnr, realpage, page, blockmask, column;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
