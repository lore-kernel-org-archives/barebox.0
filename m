Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h3eWq-0006tS-Ek
 for barebox@lists.infradead.org; Tue, 12 Mar 2019 10:21:03 +0000
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Tue, 12 Mar 2019 11:20:50 +0100
Message-Id: <20190312102055.12386-2-m.tretter@pengutronix.de>
In-Reply-To: <20190312102055.12386-1-m.tretter@pengutronix.de>
References: <20190312102055.12386-1-m.tretter@pengutronix.de>
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
Subject: [PATCH 1/6] of: populate "/firmware" while populating device tree
To: barebox@lists.infradead.org
Cc: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>, Michael Tretter <m.tretter@pengutronix.de>

From: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>

The sub-nodes of "/firmware" are not populated, since it has no
"compatible" property. Copy the behavior of Linux and call
of_platform_populate() on the "/firmware" node to probe firmware
drivers.

Signed-off-by: Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/of/base.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b082f0c656..85c7953370 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1979,7 +1979,7 @@ const struct of_device_id of_default_bus_match_table[] = {
 
 int of_probe(void)
 {
-	struct device_node *memory;
+	struct device_node *memory, *firmware;
 
 	if(!root_node)
 		return -ENODEV;
@@ -1996,6 +1996,10 @@ int of_probe(void)
 	if (memory)
 		of_add_memory(memory, false);
 
+	firmware = of_find_node_by_path("/firmware");
+	if (firmware)
+		of_platform_populate(firmware, NULL, NULL);
+
 	of_clk_init(root_node, NULL);
 	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
