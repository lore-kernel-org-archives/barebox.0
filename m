Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x233.google.com ([2a00:1450:400c:c03::233])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIi2-0002B5-Sz
 for barebox@lists.infradead.org; Fri, 30 May 2014 09:02:43 +0000
Received: by mail-we0-f179.google.com with SMTP id q59so1617970wes.24
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 02:02:20 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Fri, 30 May 2014 11:07:28 +0200
Message-Id: <1401440856-6145-3-git-send-email-holgerschurig@gmail.com>
In-Reply-To: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
References: <1401440856-6145-1-git-send-email-holgerschurig@gmail.com>
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
Subject: [PATCH 02/10] devinfo: reduce indentation
To: barebox@lists.infradead.org

This patch reduces the indentation of "devinfo", to reduce the amount of
overly long lines.

And while we're at it, also remove the fixed-size of the human-readable
area. As entries didn't align anyway (because of indentation), this was
just eating more space without giving much more readability.

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/devinfo.c |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 448792d..3fb309b 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -25,15 +25,15 @@ static int do_devinfo_subtree(struct device_d *dev, int depth)
 	int i;
 
 	for (i = 0; i < depth; i++)
-		printf("     ");
+		printf("   ");
 
-	printf("`---- %s", dev_name(dev));
+	printf("`-- %s", dev_name(dev));
 	if (!list_empty(&dev->cdevs)) {
 		printf("\n");
 		list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 			for (i = 0; i < depth + 1; i++)
-				printf("     ");
-			printf("`---- 0x%08llx-0x%08llx (%10s): /dev/%s\n",
+				printf("   ");
+			printf("`-- 0x%08llx-0x%08llx (%s): /dev/%s\n",
 					cdev->offset,
 					cdev->offset + cdev->size - 1,
 					size_human_readable(cdev->size),
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
