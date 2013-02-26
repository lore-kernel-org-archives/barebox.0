Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzO-0000cR-BG
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:51 +0100
Message-Id: <1361909936-2665-25-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
References: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 24/29] of: make value of property in of_new_property optional
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/base.c |    6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6b12979..c47801a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -676,8 +676,10 @@ struct property *of_new_property(struct device_node *node, const char *name,
 
 	prop->name = strdup(name);
 	prop->length = len;
-	prop->value = xzalloc(len);
-	memcpy(prop->value, data, len);
+	if (len) {
+		prop->value = xzalloc(len);
+		memcpy(prop->value, data, len);
+	}
 
 	list_add_tail(&prop->list, &node->properties);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
