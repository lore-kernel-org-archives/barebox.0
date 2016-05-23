Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEV-0000Ju-9V
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:05 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 94D06A00CF2
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:27 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:45 +0200
Message-Id: <1463992010-31537-58-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 57/62] UBI: fix use of "VID" vs. "EC" in header self-check
To: barebox@lists.infradead.org

From: Brian Norris <computersforpeace@gmail.com>

Looks like a typo, using UBI_EC_HDR_SIZE_CRC (note the "EC") to compute
the CRC for the VID header.

This shouldn't cause any functional change, as both structures are 64
bytes. Verified with:

	BUILD_BUG_ON(UBI_VID_HDR_SIZE_CRC != UBI_EC_HDR_SIZE_CRC);

Reported here:
http://lists.infradead.org/pipermail/linux-mtd/2013-September/048570.html

Reported by: Bill Pringlemeir <bpringlemeir@gmail.com>
Signed-off-by: Brian Norris <computersforpeace@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/io.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index 655ab50..43af4a5 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -988,7 +988,7 @@ static int self_check_peb_vid_hdr(const struct ubi_device *ubi, int pnum)
 	if (err && err != UBI_IO_BITFLIPS && !mtd_is_eccerr(err))
 		goto exit;
 
-	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_EC_HDR_SIZE_CRC);
+	crc = crc32(UBI_CRC32_INIT, vid_hdr, UBI_VID_HDR_SIZE_CRC);
 	hdr_crc = be32_to_cpu(vid_hdr->hdr_crc);
 	if (hdr_crc != crc) {
 		ubi_err(ubi, "bad VID header CRC at PEB %d, calculated %#08x, read %#08x",
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
