Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtJJb-0001dM-Iz
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 15:45:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 18 Dec 2013 16:45:14 +0100
Message-Id: <1387381515-15476-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1387381515-15476-1-git-send-email-s.hauer@pengutronix.de>
References: <1387381515-15476-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] net: dm9k: Fix resource sizes in add_dm9000_device
To: barebox@lists.infradead.org

The dm9000 needs a resource for an index register and one for
the data register. Both should have a size of the access width,
and not two times the access width. The current code is probably
a leftover when the dm9000 had only one resource.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/resource.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 2985c78..095b8d2 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -76,13 +76,13 @@ struct device_d *add_dm9000_device(int id, resource_size_t base,
 
 	switch (flags) {
 	case IORESOURCE_MEM_32BIT:
-		size = 8;
+		size = 4;
 		break;
 	case IORESOURCE_MEM_16BIT:
-		size = 4;
+		size = 2;
 		break;
 	case IORESOURCE_MEM_8BIT:
-		size = 2;
+		size = 1;
 		break;
 	default:
 		printf("dm9000: memory width flag missing\n");
-- 
1.8.5.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
