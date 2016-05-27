Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTa-0004yH-Ay
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:37 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id E5642A00B55
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:41 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:44 +0200
Message-Id: <1464335095-35180-52-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 51/62] UBI: Validate data_size
To: barebox@lists.infradead.org

From: Richard Weinberger <richard@nod.at>

Make sure that data_size is less than LEB size.
Otherwise a handcrafted UBI image is able to trigger
an out of bounds memory access in ubi_compare_lebs().

Cc: stable@vger.kernel.org
Signed-off-by: Richard Weinberger <richard@nod.at>
Reviewed-by: David Gstir <david@sigma-star.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
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
