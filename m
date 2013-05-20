Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UeQrK-0001R5-Ro
 for barebox@lists.infradead.org; Mon, 20 May 2013 14:14:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 20 May 2013 16:14:17 +0200
Message-Id: <1369059260-28872-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
References: <1369059260-28872-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] of: When checking for existing devices also check
 resource end
To: barebox@lists.infradead.org

When registering devices from the devicetree we check if these
devices already exist. When doing this not only check the resource
start but also the resource end.
This helps with the probing of simple buses for which child nodes
often begin at the very same address as the parents.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 8383549..ef97a15 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -970,7 +970,8 @@ static int add_of_device_resource(struct device_node *node)
 	for_each_device(dev) {
 		if (!dev->resource)
 			continue;
-		if (dev->resource->start == address) {
+		if (dev->resource->start == res->start &&
+				dev->resource->end == res->end) {
 			debug("connecting %s to %s\n", node->name, dev_name(dev));
 			node->device = dev;
 			dev->device_node = node;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
