Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TRPnW-0005w0-SU
 for barebox@lists.infradead.org; Thu, 25 Oct 2012 15:56:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 25 Oct 2012 17:56:40 +0200
Message-Id: <1351180600-11550-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Check for NULL pointer in of_find_property
To: barebox@lists.infradead.org

The console layer calls of_device_is_stdout_path for a new console. When
we are booting without devicetree then of_chosen is NULL which makes barebox
crash. Check for a NULL pointer in of_find_property to prevent this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5853826..7a41618 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -106,6 +106,9 @@ struct property *of_find_property(const struct device_node *node, const char *na
 {
 	struct property *p;
 
+	if (!node)
+		return NULL;
+
 	list_for_each_entry(p, &node->properties, list)
 		if (!strcmp(p->name, name))
 			return p;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
