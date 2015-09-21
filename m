Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Ze1jZ-000526-MI
 for barebox@lists.infradead.org; Mon, 21 Sep 2015 14:06:25 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 21 Sep 2015 16:04:43 +0200
Message-Id: <1442844284-27870-4-git-send-email-ejo@pengutronix.de>
In-Reply-To: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
References: <1442844284-27870-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH 3/4] mtd denali: pass col argument to READID operation
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

A read id operation followed by 0x00 reads the device ID while
a read id operation followed by 0x20 reads the possible ONFI identifier.

As the READID function did not propagate the second id parameter but had
a hard-coded call for 0x90 0x00, reading the ONFI identifier was not
possible and thus chips werde not detected (tested with
MT29F8G08ABABAWP)

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 drivers/mtd/nand/nand_denali.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/nand_denali.c b/drivers/mtd/nand/nand_denali.c
index f2d9cb7..0ff4734 100644
--- a/drivers/mtd/nand/nand_denali.c
+++ b/drivers/mtd/nand/nand_denali.c
@@ -1251,7 +1251,7 @@ static void denali_cmdfunc(struct mtd_info *mtd, unsigned int cmd, int col,
 		 */
 		addr = MODE_11 | BANK(denali->flash_bank);
 		index_addr(denali, addr | 0, 0x90);
-		index_addr(denali, addr | 1, 0);
+		index_addr(denali, addr | 1, col);
 		for (i = 0; i < 8; i++) {
 			index_addr_read_data(denali, addr | 2, &id);
 			write_byte_to_buf(denali, id);
-- 
2.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
