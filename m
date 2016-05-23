Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b4lEF-0000KA-IW
 for barebox@lists.infradead.org; Mon, 23 May 2016 08:28:51 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 3BF2EA00CBB
 for <barebox@lists.infradead.org>; Mon, 23 May 2016 10:28:22 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Mon, 23 May 2016 10:26:01 +0200
Message-Id: <1463992010-31537-14-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 13/62] UBI: do propagate positive error codes up
To: barebox@lists.infradead.org

From: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>

UBI uses positive function return codes internally, and should not propagate
them up, except in the place this path fixes. Here is the original bug report
from Dan Carpenter:

The problem is really in ubi_eba_read_leb().

drivers/mtd/ubi/eba.c
   412                  err = ubi_io_read_vid_hdr(ubi, pnum, vid_hdr, 1);
   413                  if (err && err != UBI_IO_BITFLIPS) {
   414                          if (err > 0) {
   415                                  /*
   416                                   * The header is either absent or corrupted.
   417                                   * The former case means there is a bug -
   418                                   * switch to read-only mode just in case.
   419                                   * The latter case means a real corruption - we
   420                                   * may try to recover data. FIXME: but this is
   421                                   * not implemented.
   422                                   */
   423                                  if (err == UBI_IO_BAD_HDR_EBADMSG ||
   424                                      err == UBI_IO_BAD_HDR) {
   425                                          ubi_warn("corrupted VID header at PEB %d, LEB %d:%d",
   426                                                   pnum, vol_id, lnum);
   427                                          err = -EBADMSG;
   428                                  } else
   429                                          ubi_ro_mode(ubi);

On this path we return UBI_IO_FF and UBI_IO_FF_BITFLIPS and it
eventually gets passed to ERR_PTR().  We probably dereference the bad
pointer and oops.  At that point we've gone read only so it was already
a bad situation...

   430                          }
   431                          goto out_free;
   432                  } else if (err == UBI_IO_BITFLIPS)
   433                          scrub = 1;
   434

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/eba.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mtd/ubi/eba.c b/drivers/mtd/ubi/eba.c
index 1b0b6e6..b8f5091 100644
--- a/drivers/mtd/ubi/eba.c
+++ b/drivers/mtd/ubi/eba.c
@@ -401,6 +401,7 @@ retry:
 						 pnum, vol_id, lnum);
 					err = -EBADMSG;
 				} else
+					err = -EINVAL;
 					ubi_ro_mode(ubi);
 			}
 			goto out_free;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
