Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x243.google.com ([2a00:1450:4010:c07::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bw6Yl-0007Oq-8i
 for barebox@lists.infradead.org; Mon, 17 Oct 2016 11:58:28 +0000
Received: by mail-lf0-x243.google.com with SMTP id x79so26397089lff.2
 for <barebox@lists.infradead.org>; Mon, 17 Oct 2016 04:58:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Oct 2016 14:57:58 +0300
Message-Id: <20161017115758.7778-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] of: fix typos
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/of/base.c | 2 +-
 drivers/of/fdt.c  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 1e6c33d..767d4e1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1631,7 +1631,7 @@ struct device_node *of_get_next_available_child(const struct device_node *node,
 EXPORT_SYMBOL(of_get_next_available_child);
 
 /**
- *	of_get_next_child - Iterate a node childs
+ *	of_get_next_child - Iterate a node children
  *	@node:  parent node
  *	@prev:  previous child of the parent node, or NULL to get first
  *
diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index b2253aa..614e136 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -525,7 +525,7 @@ void of_clean_reserve_map(void)
  * fdt_add_reserve_map - Add reserve map entries to a devicetree binary
  * @__fdt: The devicetree blob
  *
- * This adds the reservemap entries previously colllected in
+ * This adds the reservemap entries previously collected in
  * of_add_reserve_entry() to a devicetree binary blob. This also
  * adds the devicetree itself to the reserved list, so after calling
  * this function the tree should not be relocated anymore.
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
