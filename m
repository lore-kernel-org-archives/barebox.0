Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U5umx-00052u-2z
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 09:07:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Feb 2013 10:07:25 +0100
Message-Id: <1360832847-22414-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
References: <1360832847-22414-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] USB ehci: Add platform specific init calls
To: barebox@lists.infradead.org

Some USB cores need a platform specific init hook, add it to
the ehci driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   14 ++++++++++++++
 include/usb/ehci.h          |    5 +++++
 2 files changed, 19 insertions(+)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index d0d6ae4..d6dc1de 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -42,6 +42,10 @@ struct ehci_priv {
 	struct qTD *td;
 	int portreset;
 	unsigned long flags;
+
+	int (*init)(void *drvdata);
+	int (*post_init)(void *drvdata);
+	void *drvdata;
 };
 
 #define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
@@ -748,6 +752,9 @@ static int ehci_init(struct usb_host *host)
 	if (ehci_reset(ehci) != 0)
 		return -1;
 
+	if (ehci->init)
+		ehci->init(ehci->drvdata);
+
 	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
 	ehci->qh_list->qh_endpt1 = cpu_to_hc32((1 << 15) | (USB_SPEED_HIGH << 12));
 	ehci->qh_list->qh_curtd = cpu_to_hc32(QT_NEXT_TERMINATE);
@@ -788,6 +795,9 @@ static int ehci_init(struct usb_host *host)
 
 	ehci->rootdev = 0;
 
+	if (ehci->post_init)
+		ehci->post_init(ehci->drvdata);
+
 	return 0;
 }
 
@@ -856,6 +866,10 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 		ehci->hcor = (void __iomem *)ehci->hccr +
 			HC_LENGTH(ehci_readl(&ehci->hccr->cr_capbase));
 
+	ehci->drvdata = data->drvdata;
+	ehci->init = data->init;
+	ehci->post_init = data->post_init;
+
 	ehci->qh_list = dma_alloc_coherent(sizeof(struct QH) * NUM_TD);
 	ehci->td = dma_alloc_coherent(sizeof(struct qTD) * NUM_TD);
 
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 4377116..93f980d 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -11,6 +11,11 @@ struct ehci_data {
 	void __iomem *hccr;
 	void __iomem *hcor;
 	unsigned long flags;
+
+	/* platform specific init functions */
+	int (*init)(void *drvdata);
+	int (*post_init)(void *drvdata);
+	void *drvdata;
 };
 
 #ifdef CONFIG_USB_EHCI
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
