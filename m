Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOemi-00027V-Nv
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:19:43 +0100
Message-Id: <20181119081943.11878-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] commands: mem: Fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

resource_size_t may be 32bit on several architectures, so explicitly do
a 64bit comparison to avoid "warning: comparison of distinct pointer types
lacks a cast".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index cdd7a492d0..a9e12f3e55 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -96,8 +96,8 @@ static int mem_probe(struct device_d *dev)
 	dev->priv = cdev;
 
 	cdev->name = (char*)dev->resource[0].name;
-	cdev->size = min(resource_size(&dev->resource[0]),
-			 (unsigned long long)S64_MAX);
+	cdev->size = min_t(unsigned long long, resource_size(&dev->resource[0]),
+			   S64_MAX);
 	cdev->ops = &memops;
 	cdev->dev = dev;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
