Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1UCS5f-0004Za-MC
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 09:53:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Mar 2013 10:53:40 +0100
Message-Id: <1362390820-10333-38-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
References: <1362390820-10333-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 37/37] of: make locally used functions static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    6 +++---
 include/of.h      |    2 ++
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index ada3fc1..d22031f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -96,7 +96,7 @@ static void of_bus_default_count_cells(struct device_node *dev,
 		*sizec = of_n_size_cells(dev);
 }
 
-void of_bus_count_cells(struct device_node *dev,
+static void of_bus_count_cells(struct device_node *dev,
 			int *addrc, int *sizec)
 {
 	of_bus_default_count_cells(dev, addrc, sizec);
@@ -135,7 +135,7 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
  * the global lookup table with the properties.  It returns the
  * number of alias_prop found, or error code in error case.
  */
-void of_alias_scan(void)
+static void of_alias_scan(void)
 {
 	struct property *pp;
 	struct alias_prop *app, *tmp;
@@ -814,7 +814,7 @@ static struct device_d *add_of_device(struct device_node *node)
 }
 EXPORT_SYMBOL(add_of_device);
 
-u64 dt_mem_next_cell(int s, const __be32 **cellp)
+static u64 dt_mem_next_cell(int s, const __be32 **cellp)
 {
 	const __be32 *p = *cellp;
 
diff --git a/include/of.h b/include/of.h
index c10afa7..94ccfd8 100644
--- a/include/of.h
+++ b/include/of.h
@@ -143,6 +143,8 @@ int of_device_is_compatible(const struct device_node *device,
 
 int of_machine_is_compatible(const char *compat);
 
+u64 of_translate_address(struct device_node *node, const __be32 *in_addr);
+
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
 #define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
