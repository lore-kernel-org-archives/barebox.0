Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjsjj-0000k0-2g
 for barebox@lists.infradead.org; Wed, 27 Jun 2012 13:56:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Jun 2012 15:56:44 +0200
Message-Id: <1340805404-29071-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] drivers/base: bail out if request_iomem_region fails
To: barebox@lists.infradead.org

When request_iomem_region fails we have to bail out instead of
dereferencing res->start.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3be4b99..81cedca 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -262,6 +262,8 @@ void __iomem *dev_request_mem_region(struct device_d *dev, int num)
 		return NULL;
 
 	res = request_iomem_region(dev_name(dev), res->start, res->size);
+	if (!res)
+		return NULL;
 
 	return (void __force __iomem *)res->start;
 }
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
