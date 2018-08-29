Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuzSU-000576-Vl
 for barebox@lists.infradead.org; Wed, 29 Aug 2018 12:20:30 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 174EAA005D4
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 14:20:52 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 29 Aug 2018 14:19:19 +0200
Message-Id: <1535545212-18871-4-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
References: <1535545212-18871-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 03/56] UBI: Don't read back all data in ubi_eba_copy_leb()
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Drop this paranoia check from the old days.
If our MTD driver or the flash is so bad that we even cannot
trust it to write data we have bigger problems.

If one really does not trust the flash and wants write-verify
she can enable UBI io checks using debugfs.

Signed-off-by: Richard Weinberger <richard@nod.at>
[Fixed up conflicts due to non exsisting logging in barebox]
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/eba.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 31dbcd29c374..c242c460e849 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -1077,30 +1077,6 @@ int ubi_eba_copy_leb(struct ubi_device *ubi, int from, int to,
 				err = MOVE_TARGET_WR_ERR;
 			goto out_unlock_buf;
 		}
-
-		/*
-		 * We've written the data and are going to read it back to make
-		 * sure it was written correctly.
-		 */
-		memset(ubi->peb_buf, 0xFF, aldata_size);
-		err = ubi_io_read_data(ubi, ubi->peb_buf, to, 0, aldata_size);
-		if (err) {
-			if (err != UBI_IO_BITFLIPS) {
-				ubi_warn(ubi, "error %d while reading data back from PEB %d",
-					 err, to);
-				if (is_error_sane(err))
-					err = MOVE_TARGET_RD_ERR;
-			} else
-				err = MOVE_TARGET_BITFLIPS;
-			goto out_unlock_buf;
-		}
-
-		if (crc != crc32(UBI_CRC32_INIT, ubi->peb_buf, data_size)) {
-			ubi_warn(ubi, "read data back from PEB %d and it is different",
-				 to);
-			err = -EINVAL;
-			goto out_unlock_buf;
-		}
 	}
 
 	ubi_assert(vol->eba_tbl[lnum] == from);
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
