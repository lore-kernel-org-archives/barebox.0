Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from gw6.ovh.net ([213.251.189.206] helo=mail431.ha.ovh.net)
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TxNiB-0003NG-Nd
 for barebox@lists.infradead.org; Mon, 21 Jan 2013 20:11:20 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 21 Jan 2013 21:09:50 +0100
Message-Id: <1358798996-26595-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130121200712.GJ26329@game.jcrosoft.org>
 <1358798996-26595-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/9] ehci: if caps ressource is not provided discover it via
 cr_capbase
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/usb/host/ehci-hcd.c |   16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 35b4f71..9315fe3 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -843,9 +843,14 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	dev->priv = ehci;
 	ehci->flags = data->flags;
 	ehci->hccr = data->hccr;
-	ehci->hcor = data->hcor;
 	ehci->dev = dev;
 
+	if (data->hcor)
+		ehci->hcor = data->hcor;
+	else
+		ehci->hcor = (void __iomem *)ehci->hccr +
+			HC_LENGTH(ehci_readl(&ehci->hccr->cr_capbase));
+
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
 
@@ -879,13 +884,16 @@ static int ehci_probe(struct device_d *dev)
 	else
 		data.flags = EHCI_HAS_TT;
 
-	if (dev->num_resources < 2) {
-		printf("echi: need 2 resources base and data");
+	if (dev->num_resources < 1) {
+		printf("echi: need 1 resources base and data");
 		return -ENODEV;
 	}
 
 	data.hccr = dev_request_mem_region(dev, 0);
-	data.hcor = dev_request_mem_region(dev, 1);
+	if (dev->num_resources > 1)
+		data.hcor = dev_request_mem_region(dev, 1);
+	else
+		data.hcor = NULL;
 
 	return ehci_register(dev, &data);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
