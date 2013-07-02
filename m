Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22f.google.com ([2a00:1450:4008:c01::22f])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56c-0005a7-2l
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:17 +0000
Received: by mail-bk0-f47.google.com with SMTP id jg1so2473654bkc.20
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:47 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:32 +0200
Message-Id: <1372788879-11028-4-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 03/10] OF: base: move OF_ROOT_NODE_ defines to local OF code
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

OF_ROOT_NODE_* defines should not be used outside of base.c. Move them
to drivers/of/base.c to ensure they will not be used elsewhere.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    3 +++
 include/of.h      |    3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 2778230..429f924 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -64,6 +64,9 @@ struct device_node *root_node;
 
 struct device_node *of_aliases;
 
+#define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
+#define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
+
 int of_n_addr_cells(struct device_node *np)
 {
 	const __be32 *ip;
diff --git a/include/of.h b/include/of.h
index e091326..8cab797 100644
--- a/include/of.h
+++ b/include/of.h
@@ -101,9 +101,6 @@ int of_get_named_gpio(struct device_node *np,
 void of_print_property(const void *data, int len);
 void of_print_cmdline(struct device_node *root);
 
-#define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
-#define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
-
 void of_print_nodes(struct device_node *node, int indent);
 int of_probe(void);
 int of_parse_dtb(struct fdt_header *fdt);
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
