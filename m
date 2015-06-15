Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z4UpP-0001lF-Jp
 for barebox@lists.infradead.org; Mon, 15 Jun 2015 13:53:32 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 15 Jun 2015 15:53:07 +0200
Message-Id: <1434376388-31137-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1434376388-31137-1-git-send-email-mkl@pengutronix.de>
References: <1434376388-31137-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 2/3] state: struct variable_type::import: remove const from
 node argument
To: barebox@lists.infradead.org

This patch removes the const qualifier of the node argument from struct
variable_type::import. This is a preparation patch to support fixed strings in
state.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/state.c b/common/state.c
index 8fa027a847b9..8a7a7680bca5 100644
--- a/common/state.c
+++ b/common/state.c
@@ -90,7 +90,7 @@ struct variable_type {
 	struct list_head list;
 	int (*export)(struct state_variable *, struct device_node *,
 			enum state_convert);
-	int (*import)(struct state_variable *, const struct device_node *);
+	int (*import)(struct state_variable *, struct device_node *);
 	struct state_variable *(*create)(struct state *state,
 			const char *name, struct device_node *);
 };
@@ -153,7 +153,7 @@ static int state_uint32_export(struct state_variable *var,
 }
 
 static int state_uint32_import(struct state_variable *sv,
-		const struct device_node *node)
+			       struct device_node *node)
 {
 	struct state_uint32 *su32 = to_state_uint32(sv);
 
@@ -278,7 +278,7 @@ static int state_enum32_export(struct state_variable *var,
 }
 
 static int state_enum32_import(struct state_variable *sv,
-			       const struct device_node *node)
+			       struct device_node *node)
 {
 	struct state_enum32 *enum32 = to_state_enum32(sv);
 	int len;
@@ -373,7 +373,7 @@ static int state_mac_export(struct state_variable *var,
 }
 
 static int state_mac_import(struct state_variable *sv,
-			    const struct device_node *node)
+			    struct device_node *node)
 {
 	struct state_mac *mac = to_state_mac(sv);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
