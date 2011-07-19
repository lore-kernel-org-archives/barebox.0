Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo4.mail-out.ovh.net ([46.105.34.195]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7W-0003tw-FG
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:13 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E62DCFFA7D0
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:08 +0200
Message-Id: <1311091752-9114-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 12/16] mci i.MX esdhc: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7595a93..5c2a2f4 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -457,7 +457,7 @@ static int fsl_esdhc_probe(struct device_d *dev)
 	mci = &host->mci;
 
 	host->dev = dev;
-	host->regs = (struct fsl_esdhc *)dev->map_base;
+	host->regs = dev_request_mem_region(dev, 0);
 
 	/* First reset the eSDHC controller */
 	ret = esdhc_reset(host->regs);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
