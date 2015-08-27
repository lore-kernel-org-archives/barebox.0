Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x236.google.com ([2a00:1450:4010:c03::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5b9-0004AC-Ay
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:44 +0000
Received: by laaa3 with SMTP id a3so12560509laa.2
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:24 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:06 +0300
Message-Id: <1440714250-28080-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 5/9] ehci-hcd.c: make it works on mips
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

On MIPS processors virtual and physical addresses are differ.
So we need to add the necessary address translation.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/ehci-hcd.c | 19 ++++++++++---------
 1 file changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 25e7a3e..9ce034e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -176,7 +176,7 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 	uint32_t addr, delta, next;
 	int idx;
 
-	addr = (uint32_t) buf;
+	addr = (uint32_t)virt_to_phys(buf);
 	td->qtd_dma = addr;
 	td->length = sz;
 
@@ -229,7 +229,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	memset(ehci->td, 0, sizeof(struct qTD) * NUM_TD);
 
 	qh = &ehci->qh_list[1];
-	qh->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
+	qh->qh_link = cpu_to_hc32((uint32_t)virt_to_phys(ehci->qh_list) | QH_LINK_TYPE_QH);
 	c = (dev->speed != USB_SPEED_HIGH &&
 	     usb_pipeendpoint(pipe) == 0) ? 1 : 0;
 	endpt = (8 << 28) |
@@ -280,7 +280,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev_dbg(ehci->dev, "unable construct SETUP td\n");
 			goto fail;
 		}
-		*tdp = cpu_to_hc32((uint32_t) td);
+		*tdp = cpu_to_hc32((uint32_t)virt_to_phys(td));
 		tdp = &td->qt_next;
 
 		toggle = 1;
@@ -302,7 +302,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev_err(ehci->dev, "unable construct DATA td\n");
 			goto fail;
 		}
-		*tdp = cpu_to_hc32((uint32_t) td);
+		*tdp = cpu_to_hc32((uint32_t)virt_to_phys(td));
 		tdp = &td->qt_next;
 	}
 
@@ -318,11 +318,11 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		    (3 << 10) |
 		    ((usb_pipein(pipe) ? 0 : 1) << 8) | (0x80 << 0);
 		td->qt_token = cpu_to_hc32(token);
-		*tdp = cpu_to_hc32((uint32_t)td);
+		*tdp = cpu_to_hc32((uint32_t)virt_to_phys(td));
 		tdp = &td->qt_next;
 	}
 
-	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t) qh | QH_LINK_TYPE_QH);
+	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)virt_to_phys(qh) | QH_LINK_TYPE_QH);
 
 	/* Flush dcache */
 	if (IS_ENABLED(CONFIG_MMU)) {
@@ -390,7 +390,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		goto fail;
 	}
 
-	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)ehci->qh_list | QH_LINK_TYPE_QH);
+	ehci->qh_list->qh_link = cpu_to_hc32((uint32_t)virt_to_phys(ehci->qh_list) | QH_LINK_TYPE_QH);
 
 	token = hc32_to_cpu(qh->qt_token);
 	if (!(token & 0x80)) {
@@ -435,7 +435,7 @@ fail:
 	td = (void *)hc32_to_cpu(qh->qt_next);
 	while (td != (void *)QT_NEXT_TERMINATE) {
 		qh->qt_next = td->qt_next;
-		td = (void *)hc32_to_cpu(qh->qt_next);
+		td = phys_to_virt(hc32_to_cpu(qh->qt_next));
 	}
 	return -1;
 }
@@ -791,7 +791,8 @@ static int ehci_init(struct usb_host *host)
 	ehci->qh_list->qt_token = cpu_to_hc32(0x40);
 
 	/* Set async. queue head pointer. */
-	ehci_writel(&ehci->hcor->or_asynclistaddr, (uint32_t)ehci->qh_list);
+	ehci_writel(&ehci->hcor->or_asynclistaddr,
+			(uint32_t)virt_to_phys(ehci->qh_list));
 
 	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
