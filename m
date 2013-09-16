Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Ot-8s
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:12 +0200
Message-Id: <1379321300-8085-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/11] of: partition: Check for valid partition name
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/partition.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 7199eff..5ed44a8 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -47,6 +47,9 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	partname = of_get_property(node, "label", &len);
 	if (!partname)
 		partname = of_get_property(node, "name", &len);
+	if (!partname)
+		return NULL;
+
 	name = (char *)partname;
 
 	debug("add partition: %s.%s 0x%08lx 0x%08lx\n", cdev->name, partname, offset, size);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
