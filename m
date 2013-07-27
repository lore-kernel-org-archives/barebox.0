Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2zvp-00021d-Gf
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 08:32:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 27 Jul 2013 10:32:20 +0200
Message-Id: <1374913941-17529-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
References: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] of: Use dts syntax when printing devicetrees
To: barebox@lists.infradead.org

Our devicetree printing is close to correct dts syntax, so fix
some remaining differences:

- Use an equal sign instead of a colon to separate a poperty name and
  a value
- Add a semicolon at the end of properties
- Make sure we do not print a separator for empty properties

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 769b642..881ac3b 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1475,9 +1475,12 @@ void of_print_nodes(struct device_node *node, int indent)
 	list_for_each_entry(p, &node->properties, list) {
 		for (i = 0; i < indent + 1; i++)
 			printf("\t");
-		printf("%s: ", p->name);
-		of_print_property(p->value, p->length);
-		printf("\n");
+		printf("%s", p->name);
+		if (p->length) {
+			printf(" = ");
+			of_print_property(p->value, p->length);
+		}
+		printf(";\n");
 	}
 
 	list_for_each_entry(n, &node->children, parent_list) {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
