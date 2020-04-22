Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDjQ-00038X-75
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 11:39:57 +0000
From: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
Date: Wed, 22 Apr 2020 13:39:52 +0200
Message-Id: <20200422113952.9900-1-a.schwarzkopf@phytec.de>
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
Subject: [PATCH] common: bootm: Enforce CONFIG_BOOTM_FORCE_SIGNED_IMAGES for
 TEE bins
To: barebox@lists.infradead.org

Currently, unsigned TEE binaries can be booted. This patch ensures
that CONFIG_BOOTM_FORCE_SIGNED_IMAGES is also enforced for TEE
binaries.

Signed-off-by: Albert Schwarzkopf <a.schwarzkopf@phytec.de>
---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index 366f31455..9fdb0bc1f 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -592,6 +592,7 @@ int bootm_boot(struct bootm_data *bootm_data)
 		 */
 		data->oftree_file = NULL;
 		data->initrd_file = NULL;
+		data->tee_file = NULL;
 		if (os_type != filetype_oftree) {
 			printf("Signed boot and image is no FIT image, aborting\n");
 			ret = -EINVAL;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
