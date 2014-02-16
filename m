Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005y5-Ty
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:37 +0400
Message-Id: <1392535477-21275-8-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
References: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 8/8] drivers/of/base.c: Fix sparse warnings
To: barebox@lists.infradead.org

drivers/of/base.c:70:20: warning: symbol 'root_node' was not declared. Should it be static?
drivers/of/base.c:72:20: warning: symbol 'of_aliases' was not declared. Should it be static?
drivers/of/base.c:1724:20: warning: symbol 'of_chosen' was not declared. Should it be static?
drivers/of/base.c:1725:12: warning: symbol 'of_model' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/of/base.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6e5e7d6..104b6da 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -67,9 +67,9 @@ struct alias_prop {
 
 static LIST_HEAD(aliases_lookup);
 
-struct device_node *root_node;
+static struct device_node *root_node;
 
-struct device_node *of_aliases;
+static struct device_node *of_aliases;
 
 #define OF_ROOT_NODE_SIZE_CELLS_DEFAULT 1
 #define OF_ROOT_NODE_ADDR_CELLS_DEFAULT 1
@@ -1721,8 +1721,8 @@ int of_add_memory(struct device_node *node, bool dump)
 	return 0;
 }
 
-struct device_node *of_chosen;
-const char *of_model;
+static struct device_node *of_chosen;
+static const char *of_model;
 
 const char *of_get_model(void)
 {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
