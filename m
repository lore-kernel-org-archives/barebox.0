Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NULJl-0004PH-KN
	for barebox@lists.infradead.org; Mon, 11 Jan 2010 14:32:34 +0000
From: Eric Benard <eric@eukrea.com>
Date: Mon, 11 Jan 2010 15:32:15 +0100
Message-Id: <1263220335-26307-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH] Fix a data abort with fec_imx
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

From: Eric Benard <ebenard@1720eb.(none)>

edev was allocated using malloc. On one board (NOR boot), we met data abort
in eth_register (at dev_add_param(dev, &edev->param_ip);).
Allocating edev with xzalloc (as in several other drivers) fixed the problem.

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 drivers/net/fec_imx.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/net/fec_imx.c b/drivers/net/fec_imx.c
index 4893291..49140e7 100644
--- a/drivers/net/fec_imx.c
+++ b/drivers/net/fec_imx.c
@@ -542,7 +542,7 @@ static int fec_probe(struct device_d *dev)
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
-        edev = (struct eth_device *)malloc(sizeof(struct eth_device));
+        edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
         dev->type_data = edev;
 	fec = (struct fec_priv *)malloc(sizeof(*fec));
         edev->priv = fec;
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
