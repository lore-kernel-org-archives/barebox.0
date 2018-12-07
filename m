Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gV9jR-0006Ql-9m
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 06:35:26 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gV9jF-0000pC-UA
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.91)
 (envelope-from <afa@pengutronix.de>) id 1gV9jF-00020l-Mf
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:35:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  7 Dec 2018 07:34:33 +0100
Message-Id: <20181207063433.7623-2-a.fatoum@pengutronix.de>
In-Reply-To: <20181207063433.7623-1-a.fatoum@pengutronix.de>
References: <20181207063433.7623-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/4] of: partition: use NULL instead of never-read argument
To: barebox@lists.infradead.org

len isn't read afterward and of_get_property accepts NULL as third
argument, so do it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index aa6e601b7fe4..257100112108 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -64,9 +64,9 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	offset = of_read_number(reg, na);
 	size = of_read_number(reg + na, ns);
 
-	partname = of_get_property(node, "label", &len);
+	partname = of_get_property(node, "label", NULL);
 	if (!partname)
-		partname = of_get_property(node, "name", &len);
+		partname = of_get_property(node, "name", NULL);
 	if (!partname)
 		return NULL;
 
@@ -74,7 +74,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 
 	debug("add partition: %s.%s 0x%08llx 0x%08llx\n", cdev->name, partname, offset, size);
 
-	if (of_get_property(node, "read-only", &len))
+	if (of_get_property(node, "read-only", NULL))
 		flags = DEVFS_PARTITION_READONLY;
 
 	filename = basprintf("%s.%s", cdev->name, partname);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
