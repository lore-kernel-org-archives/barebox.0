Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward18m.cmail.yandex.net ([2a02:6b8:b030::9f])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8Vm4-0001Vv-Vz
 for barebox@lists.infradead.org; Wed, 10 May 2017 17:51:47 +0000
Received: from smtp1p.mail.yandex.net (smtp1p.mail.yandex.net [77.88.29.84])
 by forward18m.cmail.yandex.net (Yandex) with ESMTP id 2DE3E20B59
 for <barebox@lists.infradead.org>; Wed, 10 May 2017 20:51:20 +0300 (MSK)
Received: from smtp1p.mail.yandex.net (localhost.localdomain [127.0.0.1])
 by smtp1p.mail.yandex.net (Yandex) with ESMTP id 0449B178087F
 for <barebox@lists.infradead.org>; Wed, 10 May 2017 20:51:19 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed, 10 May 2017 20:51:17 +0300
Message-Id: <20170510175117.18709-1-rockford@yandex.ru>
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
Subject: [PATCH] of: Search for /memory node by type,
 if it is not found by name
To: barebox@lists.infradead.org

Update of Rockchip dts featured changes of simple "/memory" node
to "/memory@6000000". Support this change.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/of/base.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index c9bdd9181..33f61622a 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1910,6 +1910,8 @@ int of_probe(void)
 		barebox_set_model(of_model);
 
 	memory = of_find_node_by_path("/memory");
+	if (!memory)
+		memory = of_find_node_by_type(root_node, "memory");
 	if (memory)
 		of_add_memory(memory, false);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
