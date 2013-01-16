Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f176.google.com ([209.85.215.176])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TvaBf-00029E-KW
 for barebox@lists.infradead.org; Wed, 16 Jan 2013 21:06:20 +0000
Received: by mail-ea0-f176.google.com with SMTP id a13so416664eaa.35
 for <barebox@lists.infradead.org>; Wed, 16 Jan 2013 13:06:17 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Wed, 16 Jan 2013 22:06:35 +0100
Message-Id: <1358370395-9089-1-git-send-email-alex.aring@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] mtd-core: fix compiler warning
To: barebox@lists.infradead.org

Got this compile warning if MTD_WRITE support isn't set.

drivers/mtd/core.c: In function 'mtd_ioctl':
drivers/mtd/core.c:117:26: warning: unused variable 'ei' [-Wunused-variable]

Add a #ifdef to declaration of variable 'ei' to solve it.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 drivers/mtd/core.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index af6e195..070fda6 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -114,7 +114,9 @@ int mtd_ioctl(struct cdev *cdev, int request, void *buf)
 	struct mtd_ecc_stats *ecc = buf;
 #endif
 	struct region_info_user *reg = buf;
+#ifdef CONFIG_MTD_WRITE
 	struct erase_info_user *ei = buf;
+#endif
 	loff_t *offset = buf;
 
 	switch (request) {
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
