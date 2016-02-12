Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aUH3O-0007a9-1v
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 16:58:54 +0000
Received: from weser.hi.4.pengutronix.de ([10.1.0.109]
 helo=weser.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aUH32-000238-0J
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 17:58:24 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 12 Feb 2016 17:58:23 +0100
Message-Id: <1455296303-32350-2-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1455296303-32350-1-git-send-email-l.stach@pengutronix.de>
References: <1455296303-32350-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] bootm: parse initrd and oftree into correct struct members
To: barebox@lists.infradead.org

The code parsing the oftree and initrd file names is clearly wrong,
leading to bootm not loading oftree or initrd files any more.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/bootm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 671f93f615cb..acf814dfe32c 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -505,8 +505,8 @@ int bootm_boot(struct bootm_data *bootm_data)
 	data = xzalloc(sizeof(*data));
 
 	bootm_image_name_and_part(bootm_data->os_file, &data->os_file, &data->os_part);
-	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_part, &data->os_part);
-	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_part, &data->os_part);
+	bootm_image_name_and_part(bootm_data->oftree_file, &data->oftree_file, &data->oftree_part);
+	bootm_image_name_and_part(bootm_data->initrd_file, &data->initrd_file, &data->initrd_part);
 	data->verbose = bootm_data->verbose;
 	data->verify = bootm_data->verify;
 	data->force = bootm_data->force;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
