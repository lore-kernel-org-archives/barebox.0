Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aUH3O-0007a7-1w
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 16:58:52 +0000
Received: from weser.hi.4.pengutronix.de ([10.1.0.109]
 helo=weser.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1aUH31-000238-Ub
 for barebox@lists.infradead.org; Fri, 12 Feb 2016 17:58:23 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 12 Feb 2016 17:58:22 +0100
Message-Id: <1455296303-32350-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 1/2] bootm: restore load DT message for plain oftree files
To: barebox@lists.infradead.org

This message was dropped when reorganizing the DT loading code,
and it's really confusing to miss this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/bootm.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/bootm.c b/common/bootm.c
index 79833e045dc8..671f93f615cb 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -336,6 +336,7 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
 			ret = bootm_open_oftree_uimage(data, &size, &oftree);
 			break;
 		case filetype_oftree:
+			printf("Loading devicetree from '%s'\n", data->oftree_file);
 			ret = read_file_2(data->oftree_file, &size, (void *)&oftree,
 					  FILESIZE_MAX);
 			break;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
