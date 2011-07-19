Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7V-0003ty-Vu
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:11 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id E5A5BFFA74A
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:07 +0200
Message-Id: <1311091752-9114-11-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 11/16] net i.MX fec: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/fec_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index c1aa594..fcb8cc5 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -613,7 +613,7 @@ static int fec_probe(struct device_d *dev)
 	edev->get_ethaddr = fec_get_hwaddr;
 	edev->set_ethaddr = fec_set_hwaddr;
 
-	fec->regs = (void *)dev->map_base;
+	fec->regs = dev_request_mem_region(dev, 0);
 
 	/* Reset chip. */
 	writel(FEC_ECNTRL_RESET, fec->regs + FEC_ECNTRL);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
