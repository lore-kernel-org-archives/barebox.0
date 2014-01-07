Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W0Tcy-0002PX-0A
 for barebox@lists.infradead.org; Tue, 07 Jan 2014 10:11:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  7 Jan 2014 11:05:34 +0100
Message-Id: <1389089135-29986-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 8/9] UBI: Fix memory leak in ubi_attach_fastmap() error path
To: barebox@lists.infradead.org
Cc: Richard Weinberger <richard@nod.at>

From: Richard Weinberger <richard@nod.at>

On error we have to free all three temporary lists.

Reported-by: Richard Genoud <richard.genoud@gmail.com>
Signed-off-by: Richard Weinberger <richard@nod.at>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/fastmap.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/mtd/ubi/fastmap.c b/drivers/mtd/ubi/fastmap.c
index 8963e06..aaa9f55 100644
--- a/drivers/mtd/ubi/fastmap.c
+++ b/drivers/mtd/ubi/fastmap.c
@@ -830,6 +830,19 @@ static int ubi_attach_fastmap(struct ubi_device *ubi,
 fail_bad:
 	ret = UBI_BAD_FASTMAP;
 fail:
+	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &used, u.list) {
+		free(tmp_aeb);
+		list_del(&tmp_aeb->u.list);
+	}
+	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &eba_orphans, u.list) {
+		free(tmp_aeb);
+		list_del(&tmp_aeb->u.list);
+	}
+	list_for_each_entry_safe(tmp_aeb, _tmp_aeb, &lfree, u.list) {
+		free(tmp_aeb);
+		list_del(&tmp_aeb->u.list);
+	}
+
 	return ret;
 }
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
