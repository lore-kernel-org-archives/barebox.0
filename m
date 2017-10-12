Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e2ai3-0004I6-KE
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 10:27:25 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1e2ahe-0003Lx-Mi
 for barebox@lists.infradead.org; Thu, 12 Oct 2017 12:26:58 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 12 Oct 2017 12:26:57 +0200
Message-Id: <20171012102658.17104-11-l.stach@pengutronix.de>
In-Reply-To: <20171012102658.17104-1-l.stach@pengutronix.de>
References: <20171012102658.17104-1-l.stach@pengutronix.de>
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
Subject: [PATCH v2 11/12] of: base: add function to copy a device tree node
To: barebox@lists.infradead.org

From: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/of/base.c | 16 ++++++++++++++++
 include/of.h      |  2 ++
 2 files changed, 18 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index fb4d2c03946e..3ca13ae44e5c 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1988,6 +1988,22 @@ out:
 	return dn;
 }
 
+struct device_node *of_copy_node(struct device_node *parent, const struct device_node *other)
+{
+	struct device_node *np, *child;
+	struct property *pp;
+
+	np = of_new_node(parent, other->name);
+
+	list_for_each_entry(pp, &other->properties, list)
+		of_new_property(np, pp->name, pp->value, pp->length);
+
+	for_each_child_of_node(other, child)
+		of_copy_node(np, child);
+
+	return np;
+}
+
 void of_delete_node(struct device_node *node)
 {
 	struct device_node *n, *nt;
diff --git a/include/of.h b/include/of.h
index 9ba771a395b8..18a423241b0f 100644
--- a/include/of.h
+++ b/include/of.h
@@ -144,6 +144,8 @@ extern struct device_node *of_new_node(struct device_node *parent,
 				const char *name);
 extern struct device_node *of_create_node(struct device_node *root,
 					const char *path);
+extern struct device_node *of_copy_node(struct device_node *parent,
+				const struct device_node *other);
 extern void of_delete_node(struct device_node *node);
 
 extern int of_machine_is_compatible(const char *compat);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
