Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UvDQT-0006Rk-MX
 for barebox@lists.infradead.org; Fri, 05 Jul 2013 21:20:22 +0000
Received: by mail-ea0-f174.google.com with SMTP id o10so1698662eaj.33
 for <barebox@lists.infradead.org>; Fri, 05 Jul 2013 14:19:55 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Fri,  5 Jul 2013 23:19:43 +0200
Message-Id: <1373059183-20229-1-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <20130705065043.GG516@pengutronix.de>
References: <20130705065043.GG516@pengutronix.de>
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
Subject: [PATCH] OF: base: initalize from node in of_find_node_with_property
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

This adds initialization of from device node with root_node if NULL
is passed. This corresponds to the behavior of all other node iterators.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
@Sascha: this is the last remaining iterator fix we talked about.

Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5440f40..7bee912 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -364,6 +364,9 @@ struct device_node *of_find_node_with_property(struct device_node *from,
 {
 	struct device_node *np;
 
+	if (!from)
+		from = root_node;
+
 	of_tree_for_each_node_from(np, from) {
 		struct property *pp = of_find_property(np, prop_name, NULL);
 		if (pp)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
