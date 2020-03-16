Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from zimbra2.kalray.eu ([92.103.151.219])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnXD-0005Yi-Se
 for barebox@lists.infradead.org; Mon, 16 Mar 2020 11:03:53 +0000
From: Clement Leger <cleger@kalray.eu>
Date: Mon, 16 Mar 2020 12:00:08 +0100
Message-Id: <20200316110008.2909-3-cleger@kalray.eu>
In-Reply-To: <20200316110008.2909-1-cleger@kalray.eu>
References: <20200316110008.2909-1-cleger@kalray.eu>
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
Subject: [PATCH 2/2] of: base: allow of_add_memory to be called multiple times
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>

Currently, of_add_memory can't be called multiple times because it will
always create memory banks by restarting at value 0. This means that, when
adding a second memory bank by calling again of_add_memory, it will be
named ram0 and overwrite the previous one. Fix that by using a static
variable to store the current memory bank number in order to be preserved
from one call to another.

Signed-off-by: Clement Leger <cleger@kalray.eu>
---
 drivers/of/base.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index b1a96ee8f..12c58bfb6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2019,6 +2019,8 @@ int of_set_property(struct device_node *np, const char *name, const void *val, i
 	return 0;
 }
 
+static int mem_bank_num;
+
 int of_add_memory(struct device_node *node, bool dump)
 {
 	const char *device_type;
@@ -2030,14 +2032,13 @@ int of_add_memory(struct device_node *node, bool dump)
 		return -ENXIO;
 
 	while (!of_address_to_resource(node, n, &res)) {
-		if (!resource_size(&res)) {
-			n++;
+		n++;
+		if (!resource_size(&res))
 			continue;
-		}
 
-		of_add_memory_bank(node, dump, n,
+		of_add_memory_bank(node, dump, mem_bank_num,
 				res.start, resource_size(&res));
-		n++;
+		mem_bank_num++;
 	}
 
 	return 0;
-- 
2.15.0.276.g89ea799


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
