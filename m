Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TtebA-0000qV-Kk
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:22 +0100
Message-Id: <1357910676-4231-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/16] of: Fix invalid path for of_find_node_by_path
To: barebox@lists.infradead.org

When of_find_node_by_path is called with a non existing path we
return just some node. return NULL instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 7a41618..399adc8 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -487,9 +487,10 @@ struct device_node *of_find_node_by_path(const char *path)
 
 	list_for_each_entry(np, &allnodes, list) {
 		if (np->full_name && (strcmp(np->full_name, path) == 0))
-			break;
+			return np;
 	}
-	return np;
+
+	return NULL;
 }
 EXPORT_SYMBOL(of_find_node_by_path);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
