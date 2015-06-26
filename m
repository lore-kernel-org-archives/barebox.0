Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6l-0005g9-Db
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:05 +0200
Message-Id: <1435303867-12889-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/8] ubi: Lower 'already attached' message to debug level
To: Barebox List <barebox@lists.infradead.org>

The caller will show a message, no need to do this in UBI. This
is for the case when mtd_detect calls ubi_attach_mtd_dev. mtd_detect
does not know whether this is already attached and it's not an error.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/ubi/build.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/ubi/build.c b/drivers/mtd/ubi/build.c
index 1074feb..7970226 100644
--- a/drivers/mtd/ubi/build.c
+++ b/drivers/mtd/ubi/build.c
@@ -518,7 +518,7 @@ int ubi_attach_mtd_dev(struct mtd_info *mtd, int ubi_num,
 	for (i = 0; i < UBI_MAX_DEVICES; i++) {
 		ubi = ubi_devices[i];
 		if (ubi && mtd == ubi->mtd) {
-			ubi_err("mtd%d is already attached to ubi%d",
+			ubi_debug("mtd%d is already attached to ubi%d",
 				mtd->index, i);
 			return -EEXIST;
 		}
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
