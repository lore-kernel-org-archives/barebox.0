Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22d.google.com ([2a00:1450:4008:c01::22d])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uu56e-0005aF-0A
 for barebox@lists.infradead.org; Tue, 02 Jul 2013 18:15:15 +0000
Received: by mail-bk0-f45.google.com with SMTP id je9so2458531bkc.4
 for <barebox@lists.infradead.org>; Tue, 02 Jul 2013 11:14:50 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue,  2 Jul 2013 20:14:35 +0200
Message-Id: <1372788879-11028-7-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 06/10] OF: base: use of_platform_populate for probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

With recent bus/device related functions in OF API, we can now
convert to use of_platform_populate.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/base.c |    5 ++---
 1 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 429f924..eb9ac84 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1840,7 +1840,7 @@ const struct of_device_id of_default_bus_match_table[] = {
 
 int of_probe(void)
 {
-	struct device_node *memory, *n;
+	struct device_node *memory;
 
 	if(!root_node)
 		return -ENODEV;
@@ -1854,8 +1854,7 @@ int of_probe(void)
 	if (memory)
 		of_add_memory(memory, false);
 
-	list_for_each_entry(n, &root_node->children, parent_list)
-		__of_probe(n, of_default_bus_match_table, NULL);
+	of_platform_populate(root_node, of_default_bus_match_table, NULL);
 
 	return 0;
 }
-- 
1.7.2.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
