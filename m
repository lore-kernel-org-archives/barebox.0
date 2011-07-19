Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7X-0003tu-6H
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:14 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id A5309FFA7BD
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:06 +0200
Message-Id: <1311091752-9114-10-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 10/16] mci i.MX: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/mci/imx.c b/drivers/mci/imx.c
index 8525692..1f96e96 100644
--- a/drivers/mci/imx.c
+++ b/drivers/mci/imx.c
@@ -493,7 +493,7 @@ static int mxcmci_probe(struct device_d *dev)
 	host->mci.init = mxcmci_init;
 	host->mci.host_caps = MMC_MODE_4BIT;
 
-	host->base = (struct mxcmci_regs *)dev->map_base;
+	host->base = dev_request_mem_region(dev, 0);
 
 	host->mci.voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
