Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDFB-0002O3-SM
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:38:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:38:25 +0200
Message-Id: <1340645910-15668-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
References: <1340645910-15668-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] USB ohci: Fix sparse warnings
To: barebox@lists.infradead.org

- put registers into iomem space
- do not use 0 as NULL pointer
- use dev_request_mem_region()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ohci-hcd.c |   40 +++++++---------------------------------
 drivers/usb/host/ohci.h     |    2 +-
 2 files changed, 8 insertions(+), 34 deletions(-)

diff --git a/drivers/usb/host/ohci-hcd.c b/drivers/usb/host/ohci-hcd.c
index 05e4094..f10d827 100644
--- a/drivers/usb/host/ohci-hcd.c
+++ b/drivers/usb/host/ohci-hcd.c
@@ -415,7 +415,7 @@ static void ohci_dump(struct ohci *controller, int verbose)
 
 /* get a transfer request */
 
-int sohci_submit_job(struct urb_priv *urb, struct devrequest *setup)
+static int sohci_submit_job(struct urb_priv *urb, struct devrequest *setup)
 {
 	struct ed *ed;
 	int i, size = 0;
@@ -498,7 +498,7 @@ int sohci_submit_job(struct urb_priv *urb, struct devrequest *setup)
 static inline int sohci_return_job(struct ohci *hc, struct urb_priv *urb)
 {
 #ifdef ENBALE_PIPE_INTERRUPT
-	struct ohci_regs *regs = hc->regs;
+	struct ohci_regs __iomem *regs = hc->regs;
 #endif
 
 	switch (usb_pipetype(urb->pipe)) {
@@ -848,7 +848,7 @@ static void td_fill(struct ohci *ohci, unsigned int info,
 	}
 #endif
 	if (!len)
-		data = 0;
+		data = NULL;
 
 	td->hwINFO = m32_swap(info);
 	td->hwCBP = virt_to_phys((void *)m32_swap((unsigned long)data));
@@ -894,7 +894,7 @@ static void td_submit_job(struct usb_device *dev, unsigned long pipe,
 	if (data_len)
 		data = buffer;
 	else
-		data = 0;
+		data = NULL;
 
 	switch (usb_pipetype(pipe)) {
 	case PIPE_BULK:
@@ -1214,32 +1214,6 @@ static inline void wr_rh_portstat(struct ohci *ohci, int wIndex, __u32 value)
 	writel(value, &ohci->regs->roothub.portstatus[wIndex-1]);
 }
 
-/* request to virtual root hub */
-
-int rh_check_port_status(struct ohci *controller)
-{
-	__u32 temp, ndp, i;
-	int res;
-
-	res = -1;
-	temp = roothub_a(controller);
-	ndp = (temp & RH_A_NDP);
-#ifdef CONFIG_AT91C_PQFP_UHPBUG
-	ndp = (ndp == 2) ? 1 : 0;
-#endif
-	for (i = 0; i < ndp; i++) {
-		temp = roothub_portstatus(controller, i);
-		/* check for a device disconnect */
-		if (((temp & (RH_PS_PESC | RH_PS_CSC)) ==
-			(RH_PS_PESC | RH_PS_CSC)) &&
-			((temp & RH_PS_CCS) == 0)) {
-			res = i;
-			break;
-		}
-	}
-	return res;
-}
-
 static int ohci_submit_rh_msg(struct usb_device *dev, unsigned long pipe,
 		void *buffer, int transfer_len, struct devrequest *cmd)
 {
@@ -1502,7 +1476,7 @@ static int ohci_submit_rh_msg(struct usb_device *dev, unsigned long pipe,
 
 /* common code for handling submit messages - used for all but root hub */
 /* accesses. */
-int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
+static int submit_common_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		int transfer_len, struct devrequest *setup, int interval,
 		int timeout)
 {
@@ -1721,7 +1695,7 @@ static int hc_start(struct ohci *ohci)
 
 static int hc_interrupt(struct ohci *ohci)
 {
-	struct ohci_regs *regs = ohci->regs;
+	struct ohci_regs __iomem *regs = ohci->regs;
 	int ints;
 	int stat = 0;
 
@@ -1840,7 +1814,7 @@ static int ohci_probe(struct device_d *dev)
 
 	usb_register_host(host);
 
-	ohci->regs = (void *)dev->resource[0].start;
+	ohci->regs = dev_request_mem_region(dev, 0);
 
 	return 0;
 }
diff --git a/drivers/usb/host/ohci.h b/drivers/usb/host/ohci.h
index 9132963..9c9b837 100644
--- a/drivers/usb/host/ohci.h
+++ b/drivers/usb/host/ohci.h
@@ -408,7 +408,7 @@ struct ohci {
 	int disabled;			/* e.g. got a UE, we're hung */
 	unsigned long flags;		/* for HC bugs */
 
-	struct ohci_regs *regs; /* OHCI controller's memory */
+	struct ohci_regs __iomem *regs; /* OHCI controller's memory */
 
 	int ohci_int_load[32];	 /* load of the 32 Interrupt Chains (for load balancing)*/
 	struct ed *ed_rm_list[2];	 /* lists of all endpoints to be removed */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
