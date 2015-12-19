Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aA5Ef-0003Yo-W9
 for barebox@lists.infradead.org; Sat, 19 Dec 2015 00:18:58 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Sat, 19 Dec 2015 00:18:34 +0000
Message-ID: <1450484315.26955.230.camel@rtred1test09.kymeta.local>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
In-Reply-To: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
Content-Language: en-US
Content-ID: <20B7766E52FA014499D788F8E7055F07@kymetacorp.com>
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
Subject: [PATCH 2/2] of: Add of_property_for_each_phandle() iterator
To: barebox <barebox@lists.infradead.org>

This is like of_property_for_each_{string,u32} but loops over a list
of phandles instead of strings or ints.

Returns the node the handle points to as that's generally more useful
than the handle value itself.

Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>
---
 include/of.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/of.h b/include/of.h
index e65a8e8..18c92d7 100644
--- a/include/of.h
+++ b/include/of.h
@@ -736,6 +736,17 @@ static inline int of_property_read_u32(const struct device_node *np,
 		s;						\
 		s = of_prop_next_string(prop, s))
 
+/*
+ * struct device_node *n;
+ *
+ * of_property_for_each_phandle(np, root, "propname", n)
+ *         printk("phandle points to: %s\n", n->full_name);
+ */
+#define of_property_for_each_phandle(np, root, propname, n)	\
+	for (int _i = 0; 					\
+	     (n = of_parse_phandle_from(np, root, propname, _i));\
+	     _i++)
+
 static inline int of_property_write_u8(struct device_node *np,
 				       const char *propname, u8 value)
 {
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
