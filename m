Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QmLUB-0007fq-Oc
	for barebox@lists.infradead.org; Thu, 28 Jul 2011 07:58:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 28 Jul 2011 09:58:20 +0200
Message-Id: <1311839900-10389-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
References: <1311839900-10389-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/5] mci: do not use unitialized resource
To: barebox@lists.infradead.org

disk_dev->resource is unitialized. Do not use it. This
got broken in:

commit 4c542622cb07354c410680e0a6782508179f9e5f
Author: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date:   Mon Jul 18 20:17:04 2011 +0800

    mci: switch to "struct resource"

    Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c |    3 +--
 1 files changed, 1 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 0611ce6..3cf364c 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1231,8 +1231,7 @@ static int mci_card_probe(struct device_d *mci_dev)
 	p->priv = mci_dev;
 
 	strcpy(disk_dev->name, "disk");
-	disk_dev->resource[0].size = mci->capacity;
-	disk_dev->resource[0].start = 0;
+	disk_dev->size = mci->capacity;
 	disk_dev->platform_data = p;
 
 	register_device(disk_dev);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
