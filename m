Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZV5bE-0004Au-0X
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 22:24:49 +0000
Received: by lbbsx3 with SMTP id sx3so20144389lbb.0
 for <barebox@lists.infradead.org>; Thu, 27 Aug 2015 15:24:26 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 28 Aug 2015 01:24:08 +0300
Message-Id: <1440714250-28080-8-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 7/9] usb: ehci: add big-endian registers support
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/usb/host/Kconfig    |   3 +
 drivers/usb/host/ehci-hcd.c | 133 ++++++++++++++++++++++----------------------
 drivers/usb/host/ehci.h     |  42 +++++++++++++-
 include/usb/ehci.h          |   1 +
 4 files changed, 108 insertions(+), 71 deletions(-)

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 54eaf46..23dcf9c 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -2,6 +2,9 @@ config USB_EHCI
 	bool "EHCI driver"
 	depends on HAS_DMA
 
+config USB_EHCI_BIG_ENDIAN_MMIO
+	bool
+
 config USB_EHCI_OMAP
 	depends on ARCH_OMAP3
 	depends on USB_TWL4030
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 49af642..dd5f503 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -34,22 +34,6 @@
 
 #include "ehci.h"
 
-struct ehci_priv {
-	int rootdev;
-	struct device_d *dev;
-	struct ehci_hccr *hccr;
-	struct ehci_hcor *hcor;
-	struct usb_host host;
-	struct QH *qh_list;
-	struct qTD *td;
-	int portreset;
-	unsigned long flags;
-
-	int (*init)(void *drvdata);
-	int (*post_init)(void *drvdata);
-	void *drvdata;
-};
-
 #define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
 
 #define NUM_QH	2
@@ -123,7 +107,8 @@ static struct descriptor {
 
 #define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
-static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
+static int handshake(const struct ehci_priv *ehci,
+			uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 {
 	uint32_t result;
 	uint64_t start;
@@ -131,7 +116,7 @@ static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 	start = get_time_ns();
 
 	while (1) {
-		result = ehci_readl(ptr);
+		result = ehci_readl(ehci, ptr);
 		if (result == ~(uint32_t)0)
 			return -1;
 		result &= mask;
@@ -149,10 +134,11 @@ static int ehci_reset(struct ehci_priv *ehci)
 	uint32_t *reg_ptr;
 	int ret = 0;
 
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	cmd |= CMD_RESET;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
-	ret = handshake(&ehci->hcor->or_usbcmd, CMD_RESET, 0, 250 * 1000);
+	ehci_writel(ehci, &ehci->hcor->or_usbcmd, cmd);
+	ret = handshake(ehci, &ehci->hcor->or_usbcmd, CMD_RESET, 0,
+			250 * 1000);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail to reset\n");
 		goto out;
@@ -160,9 +146,14 @@ static int ehci_reset(struct ehci_priv *ehci)
 
 	if (ehci_is_TDI()) {
 		reg_ptr = (uint32_t *)((u8 *)ehci->hcor + USBMODE);
-		tmp = ehci_readl(reg_ptr);
+		tmp = ehci_readl(ehci, reg_ptr);
 		tmp |= USBMODE_CM_HC;
-		ehci_writel(reg_ptr, tmp);
+		/* FIXME: does not work on AR9331 yet */
+		/*
+		if (ehci_big_endian_mmio(ehci))
+			tmp |= USBMODE_BE;
+		*/
+		ehci_writel(ehci, reg_ptr, tmp);
 	}
 out:
 	return ret;
@@ -333,15 +324,16 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		}
 	}
 
-	usbsts = ehci_readl(&ehci->hcor->or_usbsts);
-	ehci_writel(&ehci->hcor->or_usbsts, (usbsts & 0x3f));
+	usbsts = ehci_readl(ehci, &ehci->hcor->or_usbsts);
+	ehci_writel(ehci, &ehci->hcor->or_usbsts, (usbsts & 0x3f));
 
 	/* Enable async. schedule. */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	cmd |= CMD_ASE;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
+	ehci_writel(ehci, &ehci->hcor->or_usbcmd, cmd);
 
-	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, STD_ASS, 100 * 1000);
+	ret = handshake(ehci, &ehci->hcor->or_usbsts, STD_ASS, STD_ASS,
+			100 * 1000);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS set\n");
 		goto fail;
@@ -355,12 +347,13 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 		token = hc32_to_cpu(vtd->qt_token);
 		if (is_timeout(start, timeout_val)) {
 			/* Disable async schedule. */
-			cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+			cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 			cmd &= ~CMD_ASE;
-			ehci_writel(&ehci->hcor->or_usbcmd, cmd);
+			ehci_writel(ehci, &ehci->hcor->or_usbcmd, cmd);
 
-			ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0, 100 * 1000);
-			ehci_writel(&qh->qt_token, 0);
+			ret = handshake(ehci, &ehci->hcor->or_usbsts,
+					STD_ASS, 0, 100 * 1000);
+			ehci_writel(ehci, &qh->qt_token, 0);
 			return -ETIMEDOUT;
 		}
 	} while (token & 0x80);
@@ -376,11 +369,11 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	/* Disable async schedule. */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	cmd &= ~CMD_ASE;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
+	ehci_writel(ehci, &ehci->hcor->or_usbcmd, cmd);
 
-	ret = handshake(&ehci->hcor->or_usbsts, STD_ASS, 0,
+	ret = handshake(ehci, &ehci->hcor->or_usbsts, STD_ASS, 0,
 			100 * 1000);
 	if (ret < 0) {
 		dev_err(ehci->dev, "fail timeout STD_ASS reset\n");
@@ -420,9 +413,9 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	} else {
 		dev->act_len = 0;
 		dev_dbg(ehci->dev, "dev=%u, usbsts=%#x, p[1]=%#x, p[2]=%#x\n",
-		      dev->devnum, ehci_readl(&ehci->hcor->or_usbsts),
-		      ehci_readl(&ehci->hcor->or_portsc[0]),
-		      ehci_readl(&ehci->hcor->or_portsc[1]));
+		      dev->devnum, ehci_readl(ehci, &ehci->hcor->or_usbsts),
+		      ehci_readl(ehci, &ehci->hcor->or_portsc[0]),
+		      ehci_readl(ehci, &ehci->hcor->or_portsc[1]));
 	}
 
 	return (dev->status != USB_ST_NOT_PROC) ? 0 : -1;
@@ -567,7 +560,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		break;
 	case USB_REQ_GET_STATUS | ((USB_RT_PORT | USB_DIR_IN) << 8):
 		memset(tmpbuf, 0, 4);
-		reg = ehci_readl(status_reg);
+		reg = ehci_readl(ehci, status_reg);
 		if (reg & EHCI_PS_CS)
 			tmpbuf[0] |= USB_PORT_STAT_CONNECTION;
 		if (reg & EHCI_PS_PE)
@@ -581,8 +574,9 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			int ret;
 			/* force reset to complete */
 			reg = reg & ~(EHCI_PS_PR | EHCI_PS_CLEAR);
-			ehci_writel(status_reg, reg);
-			ret = handshake(status_reg, EHCI_PS_PR, 0, 2 * 1000);
+			ehci_writel(ehci, status_reg, reg);
+			ret = handshake(ehci, status_reg, EHCI_PS_PR, 0,
+						2 * 1000);
 			if (!ret)
 				tmpbuf[0] |= USB_PORT_STAT_RESET;
 			else
@@ -621,17 +615,17 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		srclen = 4;
 		break;
 	case USB_REQ_SET_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
-		reg = ehci_readl(status_reg);
+		reg = ehci_readl(ehci, status_reg);
 		reg &= ~EHCI_PS_CLEAR;
 		switch (le16_to_cpu(req->value)) {
 		case USB_PORT_FEAT_ENABLE:
 			reg |= EHCI_PS_PE;
-			ehci_writel(status_reg, reg);
+			ehci_writel(ehci, status_reg, reg);
 			break;
 		case USB_PORT_FEAT_POWER:
-			if (HCS_PPC(ehci_readl(&ehci->hccr->cr_hcsparams))) {
+			if (HCS_PPC(ehci_readl(ehci, &ehci->hccr->cr_hcsparams))) {
 				reg |= EHCI_PS_PP;
-				ehci_writel(status_reg, reg);
+				ehci_writel(ehci, status_reg, reg);
 			}
 			break;
 		case USB_PORT_FEAT_RESET:
@@ -642,14 +636,14 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				dev_dbg(ehci->dev, "port %d low speed --> companion\n",
 				      port - 1);
 				reg |= EHCI_PS_PO;
-				ehci_writel(status_reg, reg);
+				ehci_writel(ehci, status_reg, reg);
 				break;
 			} else {
 				int ret;
 
 				reg |= EHCI_PS_PR;
 				reg &= ~EHCI_PS_PE;
-				ehci_writel(status_reg, reg);
+				ehci_writel(ehci, status_reg, reg);
 				/*
 				 * caller must wait, then call GetPortStatus
 				 * usb 2.0 specification say 50 ms resets on
@@ -659,13 +653,13 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				mdelay(50);
 				ehci->portreset |= 1 << port;
 				/* terminate the reset */
-				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
+				ehci_writel(ehci, status_reg, reg & ~EHCI_PS_PR);
 				/*
 				 * A host controller must terminate the reset
 				 * and stabilize the state of the port within
 				 * 2 milliseconds
 				 */
-				ret = handshake(status_reg, EHCI_PS_PR, 0,
+				ret = handshake(ehci, status_reg, EHCI_PS_PR, 0,
 						2 * 1000);
 				if (!ret)
 					ehci->portreset |=
@@ -681,10 +675,10 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			goto unknown;
 		}
 		/* unblock posted writes */
-		(void) ehci_readl(&ehci->hcor->or_usbcmd);
+		(void) ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 		break;
 	case USB_REQ_CLEAR_FEATURE | ((USB_DIR_OUT | USB_RT_PORT) << 8):
-		reg = ehci_readl(status_reg);
+		reg = ehci_readl(ehci, status_reg);
 		reg &= ~EHCI_PS_CLEAR;
 		switch (le16_to_cpu(req->value)) {
 		case USB_PORT_FEAT_ENABLE:
@@ -694,7 +688,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			reg |= EHCI_PS_PEC;
 			break;
 		case USB_PORT_FEAT_POWER:
-			if (HCS_PPC(ehci_readl(&ehci->hccr->cr_hcsparams)))
+			if (HCS_PPC(ehci_readl(ehci, &ehci->hccr->cr_hcsparams)))
 				reg &= ~ EHCI_PS_PP;
 			break;
 		case USB_PORT_FEAT_C_CONNECTION:
@@ -710,9 +704,9 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev_dbg(ehci->dev, "unknown feature %x\n", le16_to_cpu(req->value));
 			goto unknown;
 		}
-		ehci_writel(status_reg, reg);
+		ehci_writel(ehci, status_reg, reg);
 		/* unblock posted write */
-		(void) ehci_readl(&ehci->hcor->or_usbcmd);
+		(void) ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 		break;
 	default:
 		dev_dbg(ehci->dev, "Unknown request\n");
@@ -743,19 +737,19 @@ unknown:
 /* force HC to halt state from unknown (EHCI spec section 2.3) */
 static int ehci_halt(struct ehci_priv *ehci)
 {
-	u32	temp = ehci_readl(&ehci->hcor->or_usbsts);
+	u32	temp = ehci_readl(ehci, &ehci->hcor->or_usbsts);
 
 	/* disable any irqs left enabled by previous code */
-	ehci_writel(&ehci->hcor->or_usbintr, 0);
+	ehci_writel(ehci, &ehci->hcor->or_usbintr, 0);
 
 	if (temp & STS_HALT)
 		return 0;
 
-	temp = ehci_readl(&ehci->hcor->or_usbcmd);
+	temp = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	temp &= ~CMD_RUN;
-	ehci_writel(&ehci->hcor->or_usbcmd, temp);
+	ehci_writel(ehci, &ehci->hcor->or_usbcmd, temp);
 
-	return handshake(&ehci->hcor->or_usbsts,
+	return handshake(ehci, &ehci->hcor->or_usbsts,
 			  STS_HALT, STS_HALT, 16 * 125);
 }
 
@@ -788,10 +782,10 @@ static int ehci_init(struct usb_host *host)
 	ehci->qh_list->qt_token = cpu_to_hc32(0x40);
 
 	/* Set async. queue head pointer. */
-	ehci_writel(&ehci->hcor->or_asynclistaddr,
+	ehci_writel(ehci, &ehci->hcor->or_asynclistaddr,
 			(uint32_t)virt_to_phys(ehci->qh_list));
 
-	reg = ehci_readl(&ehci->hccr->cr_hcsparams);
+	reg = ehci_readl(ehci, &ehci->hccr->cr_hcsparams);
 	descriptor.hub.bNbrPorts = HCS_N_PORTS(reg);
 
 	/* Port Indicators */
@@ -802,21 +796,21 @@ static int ehci_init(struct usb_host *host)
 		descriptor.hub.wHubCharacteristics |= 0x01;
 
 	/* Start the host controller. */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	/*
 	 * Philips, Intel, and maybe others need CMD_RUN before the
 	 * root hub will detect new devices (why?); NEC doesn't
 	 */
 	cmd &= ~(CMD_LRESET|CMD_IAAD|CMD_PSE|CMD_ASE|CMD_RESET);
 	cmd |= CMD_RUN;
-	ehci_writel(&ehci->hcor->or_usbcmd, cmd);
+	ehci_writel(ehci, &ehci->hcor->or_usbcmd, cmd);
 
 	/* take control over the ports */
-	cmd = ehci_readl(&ehci->hcor->or_configflag);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_configflag);
 	cmd |= FLAG_CF;
-	ehci_writel(&ehci->hcor->or_configflag, cmd);
+	ehci_writel(ehci, &ehci->hcor->or_configflag, cmd);
 	/* unblock posted write */
-	cmd = ehci_readl(&ehci->hcor->or_usbcmd);
+	cmd = ehci_readl(ehci, &ehci->hcor->or_usbcmd);
 	mdelay(5);
 
 	ehci->rootdev = 0;
@@ -890,6 +884,9 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 	host = &ehci->host;
 	dev->priv = ehci;
 	ehci->flags = data->flags;
+	if (data->flags & EHCI_BE_MMIO)
+		ehci->big_endian_mmio = 1;
+
 	ehci->hccr = data->hccr;
 	ehci->dev = dev;
 
@@ -897,7 +894,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 		ehci->hcor = data->hcor;
 	else
 		ehci->hcor = (void __iomem *)ehci->hccr +
-			HC_LENGTH(ehci_readl(&ehci->hccr->cr_capbase));
+			HC_LENGTH(ehci_readl(ehci, &ehci->hccr->cr_capbase));
 
 	ehci->drvdata = data->drvdata;
 	ehci->init = data->init;
@@ -922,7 +919,7 @@ int ehci_register(struct device_d *dev, struct ehci_data *data)
 
 	usb_register_host(host);
 
-	reg = HC_VERSION(ehci_readl(&ehci->hccr->cr_capbase));
+	reg = HC_VERSION(ehci_readl(ehci, &ehci->hccr->cr_capbase));
 	dev_info(dev, "USB EHCI %x.%02x\n", reg >> 8, reg & 0xff);
 
 	return 0;
diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
index bda669b..e62aca8 100644
--- a/drivers/usb/host/ehci.h
+++ b/drivers/usb/host/ehci.h
@@ -70,13 +70,49 @@ struct ehci_hcor {
 #define USBMODE_CM_HC	(3 << 0)	/* host controller mode */
 #define USBMODE_CM_IDLE	(0 << 0)	/* idle state */
 
-static inline void ehci_writel(__u32 __iomem *regs, const unsigned int val)
+struct ehci_priv {
+	int rootdev;
+	struct device_d *dev;
+	struct ehci_hccr *hccr;
+	struct ehci_hcor *hcor;
+	struct usb_host host;
+	struct QH *qh_list;
+	struct qTD *td;
+	int portreset;
+	unsigned long flags;
+	unsigned	big_endian_mmio:1;
+
+	int (*init)(void *drvdata);
+	int (*post_init)(void *drvdata);
+	void *drvdata;
+};
+
+#ifdef CONFIG_USB_EHCI_BIG_ENDIAN_MMIO
+#define ehci_big_endian_mmio(e)		((e)->big_endian_mmio)
+#else
+#define ehci_big_endian_mmio(e)		0
+#endif
+
+static inline void ehci_writel(const struct ehci_priv *ehci,
+				__u32 __iomem *regs, const unsigned int val)
 {
-	writel(val, regs);
+	if (IS_ENABLED(CONFIG_USB_EHCI_BIG_ENDIAN_MMIO)) {
+		ehci_big_endian_mmio(ehci) ?
+			iowrite32be(val, regs) :
+			writel(val, regs);
+	} else
+		writel(val, regs);
 }
 
-static inline unsigned int ehci_readl(__u32 __iomem *regs)
+static inline unsigned int ehci_readl(const struct ehci_priv *ehci,
+					__u32 __iomem *regs)
 {
+	if (IS_ENABLED(CONFIG_USB_EHCI_BIG_ENDIAN_MMIO)) {
+		return ehci_big_endian_mmio(ehci) ?
+			ioread32be(regs) :
+			readl(regs);
+	}
+
 	return readl(regs);
 }
 
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
index 93f980d..0089a0c 100644
--- a/include/usb/ehci.h
+++ b/include/usb/ehci.h
@@ -2,6 +2,7 @@
 #define __USB_EHCI_H
 
 #define EHCI_HAS_TT	(1 << 0)
+#define EHCI_BE_MMIO	(1 << 1)
 
 struct ehci_platform_data {
 	unsigned long flags;
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
