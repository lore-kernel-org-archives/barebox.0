Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UUB9q-0008Cl-G5
 for barebox@lists.infradead.org; Mon, 22 Apr 2013 07:27:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 22 Apr 2013 09:27:21 +0200
Message-Id: <1366615643-22213-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
References: <1366615643-22213-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] of: read resource names from devicetree
To: barebox@lists.infradead.org

Resources can have names and these can also be specified in the
devicetree. Add support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b8c2e89..fde91b3 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -919,8 +919,9 @@ static int add_of_device_resource(struct device_node *node)
 	struct resource *res, *resp;
 	struct device_d *dev;
 	const __be32 *endp, *reg;
+	const char *resname;
 	int na, nc, n_resources;
-	int ret, len;
+	int ret, len, index;
 
 	ret = of_add_memory(node, false);
 	if (ret != -ENXIO)
@@ -938,6 +939,8 @@ static int add_of_device_resource(struct device_node *node)
 
 	endp = reg + (len / sizeof(__be32));
 
+	index = 0;
+
 	while ((endp - reg) >= (na + nc)) {
 		address = of_translate_address(node, reg);
 		if (address == OF_BAD_ADDR) {
@@ -950,8 +953,13 @@ static int add_of_device_resource(struct device_node *node)
 
 		resp->start = address;
 		resp->end = address + size - 1;
+		resname = NULL;
+		of_property_read_string_index(node, "reg-names", index, &resname);
+		if (resname)
+			resp->name = xstrdup(resname);
 		resp->flags = IORESOURCE_MEM;
 		resp++;
+		index++;
         }
 
 	/*
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
