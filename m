Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMb32-0002xx-Gr
 for barebox@lists.infradead.org; Mon, 21 Oct 2019 17:00:49 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Oct 2019 19:00:44 +0200
Message-Id: <20191021170044.21036-2-a.fatoum@pengutronix.de>
In-Reply-To: <20191021170044.21036-1-a.fatoum@pengutronix.de>
References: <20191021170044.21036-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] fs: devfs-core: do a case-insensitive compare of partuuids
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

partuuids are represented as hexadecimal strings, where case doesn't
matter. barebox formats them as lower case internally, forcing the
partuuid device tree property to be lower case too. Use strcasecmp to
be case-insensitive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 fs/devfs-core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 2b93a951f269..e2cefb6d4e21 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -104,7 +104,7 @@ struct cdev *cdev_by_partuuid(const char *partuuid)
 		return NULL;
 
 	list_for_each_entry(cdev, &cdev_list, list) {
-		if (!strcmp(cdev->partuuid, partuuid))
+		if (!strcasecmp(cdev->partuuid, partuuid))
 			return cdev;
 	}
 	return NULL;
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
