Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U2A-0008Mj-Er
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:32 +0100
Message-Id: <20161123093937.15711-5-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] mtd: peb: fix usage of uninitialized variable
To: Barebox List <barebox@lists.infradead.org>

'read' is used in an error message but never assigned a value to. Remove
the variable.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mtd/peb.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index 639dc0e..73f90bb 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -252,7 +252,6 @@ retry:
 int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 			 int warn)
 {
-	size_t read;
 	int err;
 	void *buf;
 
@@ -263,8 +262,8 @@ int mtd_peb_check_all_ff(struct mtd_info *mtd, int pnum, int offset, int len,
 	err = mtd_peb_read(mtd, buf, pnum, offset, len);
 	if (err && !mtd_is_bitflip(err)) {
 		dev_err(&mtd->class_dev,
-			"error %d while reading %d bytes from PEB %d:%d, read %zd bytes\n",
-			err, len, pnum, offset, read);
+			"error %d while reading %d bytes from PEB %d:%d\n",
+			err, len, pnum, offset);
 		goto out;
 	}
 
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
