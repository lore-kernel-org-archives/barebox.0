Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XS66u-0003XY-NR
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:16:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-00065r-Gf
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-0001LU-Ez
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Sep 2014 17:16:01 +0200
Message-Id: <1410448570-2054-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] UBI: fix error return code
To: barebox@lists.infradead.org

From: Julia Lawall <Julia.Lawall@lip6.fr>

Set the return variable to an error code as done elsewhere in the function.

A simplified version of the semantic match that finds this problem is as
follows: (http://coccinelle.lip6.fr/)

// <smpl>
(
if@p1 (\(ret < 0\|ret != 0\))
 { ... return ret; }
|
ret@p1 = 0
)
... when != ret = e1
    when != &ret
*if(...)
{
  ... when != ret = e2
      when forall
 return ret;
}

// </smpl>

Signed-off-by: Julia Lawall <Julia.Lawall@lip6.fr>
Reviewed-by: Richard Weinberger <richard@nod.at>
---
 drivers/mtd/ubi/attach.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/attach.c b/drivers/mtd/ubi/attach.c
index 5412974..d6fe43b 100644
--- a/drivers/mtd/ubi/attach.c
+++ b/drivers/mtd/ubi/attach.c
@@ -1429,8 +1429,10 @@ int ubi_attach(struct ubi_device *ubi, int force_scan)
 		struct ubi_attach_info *scan_ai;
 
 		scan_ai = alloc_ai("ubi_ckh_aeb_slab_cache");
-		if (!scan_ai)
+		if (!scan_ai) {
+			err = -ENOMEM;
 			goto out_wl;
+		}
 
 		err = scan_all(ubi, scan_ai, 0);
 		if (err) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
