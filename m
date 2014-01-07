Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Tco-0002PU-0D
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:35 +0100
Message-Id: <1389089135-29986-10-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
References: <1389089135-29986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 9/9] UBI: Add some asserts to ubi_attach_fastmap()
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>

From: Richard Weinberger <richard@nod.at>

Add more paranioa asserts to make it easier to detect
implementation errors.

Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/fastmap.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index aaa9f55..1ba1571 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -815,6 +815,10 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &lfree, u.list)
 		list_move_tail(&tmp_aeb->u.list, &ai->free);
 
+	ubi_assert(list_empty(&used));
+	ubi_assert(list_empty(&eba_orphans));
+	ubi_assert(list_empty(&lfree));
+
 	/*
 	 * If fastmap is leaking PEBs (must not happen), raise a
 	 * fat warning and fall back to scanning mode.
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
