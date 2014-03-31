Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WUWU5-0000cb-2T
 for barebox@lists.infradead.org; Mon, 31 Mar 2014 07:18:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 31 Mar 2014 09:17:54 +0200
Message-Id: <1396250274-17827-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] of: Add support for "stdout-path" property
To: barebox@lists.infradead.org

ePAPR 1.1 specifies the "stdout-path" property, but barebox currently
only handles the "linux,stdout-path" property. Add parsing for the new
property name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 104b6da..c440a69 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1841,8 +1841,11 @@ int of_device_is_stdout_path(struct device_d *dev)
 	struct device_node *dn;
 	const char *name;
 
-	name = of_get_property(of_chosen, "linux,stdout-path", NULL);
-	if (name == NULL)
+	name = of_get_property(of_chosen, "stdout-path", NULL);
+	if (!name)
+		name = of_get_property(of_chosen, "linux,stdout-path", NULL);
+
+	if (!name)
 		return 0;
 
 	dn = of_find_node_by_path(name);
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
