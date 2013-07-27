Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V2zvm-00021X-Aq
 for barebox@lists.infradead.org; Sat, 27 Jul 2013 08:32:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sat, 27 Jul 2013 10:32:18 +0200
Message-Id: <1374913941-17529-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
References: <1374913941-17529-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] of: Use correct devicetree in of_print_cmdline
To: barebox@lists.infradead.org

of_print_cmdline() is passed a devicetree, so use this one instead
of the internal devicetree. This fixes the cmdline printout when
bootm on ARM is used with an external devicetree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/oftree.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/oftree.c b/common/oftree.c
index aff4c28..f2a3169 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -100,7 +100,7 @@ void of_print_property(const void *data, int len)
 
 void of_print_cmdline(struct device_node *root)
 {
-	struct device_node *node = of_find_node_by_path("/chosen");
+	struct device_node *node = of_find_node_by_path_from(root, "/chosen");
 	const char *cmdline;
 
 	if (!node) {
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
