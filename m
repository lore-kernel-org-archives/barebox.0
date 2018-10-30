Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gHOX5-0004vg-E1
 for barebox@lists.infradead.org; Tue, 30 Oct 2018 07:33:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Oct 2018 08:30:36 +0100
Message-Id: <20181030073036.28835-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: unflatten: access property properly
To: Barebox List <barebox@lists.infradead.org>

Properties have to be accessed with of_property_get_value() rather than
accessing them directly from the devicenode. The accessor does the
right thing when of_new_property_const() is used.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/fdt.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 92dd86e4ec..cf3f1ee147 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -227,7 +227,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, bool constprops
 				p = of_new_property(node, name, nodep, len);
 
 			if (!strcmp(name, "phandle") && len == 4)
-				node->phandle = be32_to_cpup(p->value);
+				node->phandle = be32_to_cpup(of_property_get_value(p));
 
 			dt_struct = dt_struct_advance(&f, dt_struct,
 					sizeof(struct fdt_property) + len);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
