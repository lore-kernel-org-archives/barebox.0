Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XS66u-0003Xd-NN
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 15:16:39 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-00065z-Jb
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.84)
 (envelope-from <sha@pengutronix.de>) id 1XS66Y-0001Ly-I6
 for barebox@lists.infradead.org; Thu, 11 Sep 2014 17:16:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Sep 2014 17:16:04 +0200
Message-Id: <1410448570-2054-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] UBI: fix error path in __wl_get_peb
To: barebox@lists.infradead.org

From: Tanya Brokhman <tlinder@codeaurora.org>

In case of an error (if there are not free PEB's for example),
__wl_get_peb will return a negative value. In order to prevent access
violation we need to test the returned value prior to using it later on.

Signed-off-by: Tatyana Brokhman <tlinder@codeaurora.org>
Reviewed-by: Dolev Raviv <draviv@codeaurora.org>
Acked-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Artem Bityutskiy <artem.bityutskiy@linux.intel.com>
---
 drivers/mtd/ubi/wl.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mtd/ubi/wl.c b/drivers/mtd/ubi/wl.c
index c083cac..4ecbe18 100644
--- a/drivers/mtd/ubi/wl.c
+++ b/drivers/mtd/ubi/wl.c
@@ -646,6 +646,9 @@ int ubi_wl_get_peb(struct ubi_device *ubi)
 
 	peb = __wl_get_peb(ubi);
 
+	if (peb < 0)
+		return peb;
+
 	err = ubi_self_check_all_ff(ubi, peb, ubi->vid_hdr_aloffset,
 				    ubi->peb_size - ubi->vid_hdr_aloffset);
 	if (err) {
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
