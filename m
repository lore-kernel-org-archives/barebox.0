Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebQ-00016V-Ot
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:25:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:26 +0100
Message-Id: <1357910676-4231-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
References: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 06/16] of: return root node when looking for a node with path /
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3e91e36..69fbf9a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -491,6 +491,9 @@ struct device_node *of_find_node_by_path(const char *path)
 {
 	struct device_node *np;
 
+	if (!strcmp(path, "/"))
+		return root_node;
+
 	list_for_each_entry(np, &allnodes, list) {
 		if (np->full_name && (strcmp(np->full_name, path) == 0))
 			return np;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
