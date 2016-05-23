Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lES-0000Js-MK
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:29:03 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A8AC1A00CE6
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:26 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:39 +0200
Message-Id: <1463992010-31537-52-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 51/62] UBI: Validate data_size
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Make sure that data_size is less than LEB size.
Otherwise a handcrafted UBI image is able to trigger
an out of bounds memory access in ubi_compare_lebs().

Cc: stable@vger.kernel.org
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: David Gstir <david@sigma-star.at>
---
 drivers/mtd/ubi/io.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/mtd/ubi/io.c b/drivers/mtd/ubi/io.c
index bb38b79..655ab50 100644
--- a/drivers/mtd/ubi/io.c
+++ b/drivers/mtd/ubi/io.c
@@ -618,6 +618,11 @@ static int validate_vid_hdr(const struct ubi_device *ubi,
 		goto bad;
 	}
 
+	if (data_size > ubi->leb_size) {
+		ubi_err(ubi, "bad data_size");
+		goto bad;
+	}
+
 	if (vol_type == UBI_VID_STATIC) {
 		/*
 		 * Although from high-level point of view static volumes may
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
