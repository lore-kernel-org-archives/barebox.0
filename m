Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 17.mo3.mail-out.ovh.net ([87.98.178.58]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RlLqP-0001i8-JT
 for barebox@lists.infradead.org; Thu, 12 Jan 2012 14:41:35 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 8F70DFFBD7E
 for <barebox@lists.infradead.org>; Thu, 12 Jan 2012 15:42:54 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 12 Jan 2012 15:41:14 +0100
Message-Id: <1326379274-29847-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] devfs-code: fix warning
To: barebox@lists.infradead.org

/opt/work/barebox/fs/devfs-core.c: In function 'partition_ioctl':
/opt/work/barebox/fs/devfs-core.c:109:27: warning: unused variable 'reg'

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 fs/devfs-core.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index e11fea2..3014d0e 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -106,7 +106,6 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 	int ret = 0;
 	size_t offset;
 	struct mtd_info_user *user = buf;
-	struct region_info_user *reg = buf;
 
 	switch (request) {
 	case MEMSETBADBLOCK:
@@ -146,6 +145,8 @@ static int partition_ioctl(struct cdev *cdev, int request, void *buf)
 #ifdef CONFIG_PARTITION
 	case MEMGETREGIONINFO:
 		if (cdev->mtd) {
+			struct region_info_user *reg = buf;
+
 			reg->offset = cdev->offset;
 			reg->erasesize = cdev->mtd->erasesize;
 			reg->numblocks = cdev->size/reg->erasesize;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
