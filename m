Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gfRDO-00054B-MW
 for barebox@lists.infradead.org; Fri, 04 Jan 2019 15:16:52 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Fri,  4 Jan 2019 16:16:44 +0100
Message-Id: <20190104151644.12393-1-rhi@pengutronix.de>
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
Subject: [PATCH] common: state: fix alignment
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

Fixes: 7126dffd0be ("common: state: Add variable_type to state_variable")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 common/state/state_variables.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 269d175874..50cffba700 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -132,7 +132,7 @@ static struct state_variable *state_uint8_create(struct state *state,
 static struct state_variable *state_uint32_create(struct state *state,
 						  const char *name,
 						  struct device_node *node,
-					      const struct variable_type *vtype)
+						  const struct variable_type *vtype)
 {
 	struct state_uint32 *su32;
 	struct param_d *param;
@@ -223,7 +223,7 @@ static int state_enum32_import(struct state_variable *sv,
 static struct state_variable *state_enum32_create(struct state *state,
 						  const char *name,
 						  struct device_node *node,
-					      const struct variable_type *vtype)
+						  const struct variable_type *vtype)
 {
 	struct state_enum32 *enum32;
 	int ret, i, num_names;
@@ -307,7 +307,7 @@ static int state_mac_import(struct state_variable *sv, struct device_node *node)
 static struct state_variable *state_mac_create(struct state *state,
 					       const char *name,
 					       struct device_node *node,
-					      const struct variable_type *vtype)
+					       const struct variable_type *vtype)
 {
 	struct state_mac *mac;
 	int ret;
@@ -409,7 +409,7 @@ static int state_string_get(struct param_d *p, void *priv)
 static struct state_variable *state_string_create(struct state *state,
 						  const char *name,
 						  struct device_node *node,
-					      const struct variable_type *vtype)
+						  const struct variable_type *vtype)
 {
 	struct state_string *string;
 	uint32_t start_size[2];
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
