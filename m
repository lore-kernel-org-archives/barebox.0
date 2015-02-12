Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YLpY2-0003lf-86
 for barebox@lists.infradead.org; Thu, 12 Feb 2015 08:55:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Feb 2015 09:54:18 +0100
Message-Id: <1423731274-9860-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
References: <1423731274-9860-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/17] of: Add for_each_child_of_node_safe
To: Barebox List <barebox@lists.infradead.org>

Needed for iterating over child nodes and deleting the children.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/of.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/of.h b/include/of.h
index 5273f87..2ad9418 100644
--- a/include/of.h
+++ b/include/of.h
@@ -623,6 +623,8 @@ static inline struct device_node *of_find_matching_node(
 	for (dn = of_find_node_with_property(NULL, prop_name); dn; \
 	     dn = of_find_node_with_property(dn, prop_name))
 
+#define for_each_child_of_node_safe(parent, tmp, child) \
+	list_for_each_entry_safe(child, tmp, &parent->children, parent_list)
 #define for_each_child_of_node(parent, child) \
 	list_for_each_entry(child, &parent->children, parent_list)
 #define for_each_available_child_of_node(parent, child) \
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
