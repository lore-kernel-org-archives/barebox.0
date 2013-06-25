Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrPRE-0003Lm-2I
 for barebox@lists.infradead.org; Tue, 25 Jun 2013 09:21:25 +0000
Received: by mail-ee0-f54.google.com with SMTP id t10so6607001eei.41
 for <barebox@lists.infradead.org>; Tue, 25 Jun 2013 02:21:00 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 25 Jun 2013 11:20:43 +0200
Message-Id: <1372152047-28134-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH 5/9] OF: base: use of_platform_populate for probing
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
