Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XS66u-0003Xi-NO
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:16:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-00066B-N7
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-0001Mn-Ll
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Sep 2014 17:16:08 +0200
Message-Id: <1410448570-2054-9-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410448570-2054-1-git-send-email-s.hauer@pengutronix.de>
References: <1410448570-2054-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] UBI: fastmap: do not miss bit-flips
To: barebox@lists.infradead.org

From: Brian Norris <computersforpeace@gmail.com>

The return value from 'ubi_io_read_ec_hdr()' was stored in 'err', not in 'ret'.
This fix makes sure Fastmap-enabled UBI does not miss bit-flip while reading EC
headers, events and scrubs the affected PEBs.

This issue was reported by Coverity Scan.

Artem: improved the commit message.

Signed-off-by: Brian Norris <computersforpeace@gmail.com>
Acked-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/fastmap.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 21b7f07..8f29430 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -422,7 +422,7 @@ static int scan_pool(struct ubi_device *ubi, struct ubi_attach_info *ai,
 				pnum, err);
 			ret = err > 0 ? UBI_BAD_FASTMAP : err;
 			goto out;
-		} else if (ret == UBI_IO_BITFLIPS)
+		} else if (err == UBI_IO_BITFLIPS)
 			scrub = 1;
 
 		/*
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
