Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo2.mail-out.ovh.net ([87.98.172.75]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5gme-0002Cm-R4
 for barebox@lists.infradead.org; Wed, 13 Feb 2013 18:10:21 +0000
Received: from mail406.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id B0DB8DC116A
 for <barebox@lists.infradead.org>; Wed, 13 Feb 2013 19:20:38 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 13 Feb 2013 19:09:05 +0100
Message-Id: <1360778945-24743-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20130213173134.GG1906@pengutronix.de>
References: <20130213173134.GG1906@pengutronix.de>
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
Subject: [PATCH 1/1] of_add_memory: check the device_type is memory
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/of/base.c |   11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index f2986ab..fd9b8e1 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -738,12 +738,15 @@ int of_add_memory(struct device_node *node, bool dump)
 {
 	int na, nc;
 	const __be32 *reg, *endp;
-	int len, r = 0;
+	int len, r = 0, ret;
 	static char str[6];
-	struct property *type;
+	const char *device_type;
 
-	type = of_find_property(node, "device_type");
-	if (!type)
+	ret = of_property_read_string(node, "device_type", &device_type);
+	if (ret)
+		return -ENXIO;
+
+	if (strcmp(device_type, "memory"))
 		return -ENXIO;
 
 	of_bus_count_cells(node, &na, &nc);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
