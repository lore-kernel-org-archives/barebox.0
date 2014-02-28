Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.eu1.fugro.com ([46.34.88.151])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJNl2-0004S7-Em
 for barebox@lists.infradead.org; Fri, 28 Feb 2014 13:45:45 +0000
Content-class: urn:content-classes:message
MIME-Version: 1.0
Date: Fri, 28 Feb 2014 14:45:18 +0100
Message-ID: <C89EFD3CD56F64468D3D206D683A8D22030421B4@ldam-msx2.fugro-nl.local>
From: "Hattink, Tjalling [FINT]" <T.Hattink@fugro.nl>
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
Subject: [PATCH] mtd: nand: Enable read_subpage functionality
To: barebox@lists.infradead.org

The default nand_read_subpage implementation returns -ENOSUPP, so if you
use a large nand chip without a specific read_subpage implementation the
read operations will always fail.

The return -ENOSUPP line is removed and the original implementation of
nand_read_subpage is restored (as used in the linux kernel). This allows
large nand chips to be used safely with automatic subpaging support.

Signed-off-by: Tjalling Hattink <t.hattink@fugro.nl>
---
 drivers/mtd/nand/nand_base.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/mtd/nand/nand_base.c b/drivers/mtd/nand/nand_base.c
index 54d8ba3..8c4203e 100644
--- a/drivers/mtd/nand/nand_base.c
+++ b/drivers/mtd/nand/nand_base.c
@@ -1036,11 +1036,6 @@ static __maybe_unused int
nand_read_subpage(struct mtd_info *mtd,
 	int index = 0;
 	unsigned int max_bitflips = 0;
 
-	/*
-	 * Currently we have no users in barebox, so disable this for
now
-	 */
-	return -ENOTSUPP;
-
 	/* Column address within the page aligned to ECC size (256bytes)
*/
 	start_step = data_offs / chip->ecc.size;
 	end_step = (data_offs + readlen - 1) / chip->ecc.size;
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
