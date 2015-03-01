Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YS339-0004dP-Nb
 for barebox@lists.infradead.org; Sun, 01 Mar 2015 12:32:51 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Sun,  1 Mar 2015 13:32:11 +0100
Message-Id: <1425213143-4529-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
References: <1425213143-4529-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 05/17] of: add no-op function for of_register_fixup()
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 include/of.h | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/include/of.h b/include/of.h
index 2ad941864f5d..46eecee70035 100644
--- a/include/of.h
+++ b/include/of.h
@@ -61,7 +61,6 @@ struct device_d;
 struct driver_d;
 
 int of_fix_tree(struct device_node *);
-int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 
 int of_match(struct device_d *dev, struct driver_d *drv);
 
@@ -240,6 +239,7 @@ void of_add_memory_bank(struct device_node *node, bool dump, int r,
 		u64 base, u64 size);
 struct device_d *of_find_device_by_node_path(const char *path);
 int of_find_path(struct device_node *node, const char *propname, char **outpath);
+int of_register_fixup(int (*fixup)(struct device_node *, void *), void *context);
 #else
 static inline int of_parse_partitions(struct cdev *cdev,
 					  struct device_node *node)
@@ -596,6 +596,12 @@ static inline struct device_d *of_device_enable_and_register_by_name(
 {
 	return NULL;
 }
+
+static inline int of_register_fixup(int (*fixup)(struct device_node *, void *),
+				void *context)
+{
+	return -ENOSYS;
+}
 #endif
 
 #define for_each_node_by_name(dn, name) \
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
