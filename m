Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b6CTQ-0004yb-Rk
 for barebox@lists.infradead.org; Fri, 27 May 2016 07:46:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 2CD93A00AEF
 for <barebox@lists.infradead.org>; Fri, 27 May 2016 09:46:39 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 27 May 2016 09:44:12 +0200
Message-Id: <1464335095-35180-20-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH v2 19/62] UBI: align comment for readability
To: barebox@lists.infradead.org

From: Brian Norris <computersforpeace@gmail.com>

The kerneldoc for @vid_hdr_aloffset continues onto a second line, but
this is not obvious, because the second line isn't indented, and it
begins with '@'.

Signed-off-by: Brian Norris <computersforpeace@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 drivers/mtd/ubi/ubi.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/ubi.h b/drivers/mtd/ubi/ubi.h
index aa0b9df..5bceb53 100644
--- a/drivers/mtd/ubi/ubi.h
+++ b/drivers/mtd/ubi/ubi.h
@@ -464,7 +464,7 @@ struct ubi_debug_info {
  * @vid_hdr_offset: starting offset of the volume identifier header (might be
  *                  unaligned)
  * @vid_hdr_aloffset: starting offset of the VID header aligned to
- * @hdrs_min_io_size
+ *                    @hdrs_min_io_size
  * @vid_hdr_shift: contains @vid_hdr_offset - @vid_hdr_aloffset
  * @bad_allowed: whether the MTD device admits of bad physical eraseblocks or
  *               not
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
