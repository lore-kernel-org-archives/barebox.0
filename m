Delivery-date: Fri, 26 Jun 2026 14:47:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd5xj-00A4wx-0D
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 14:47:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd5xg-0003Z6-Hn
	for lore@pengutronix.de; Fri, 26 Jun 2026 14:47:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KwUEmqBAenzWBdmOVXmg8Xdp/oGugJUl/X1yRQhrnQ8=; b=OrsuHaBKTKO6rPDsR3Dw6E7oVp
	FlbmqJqSPakf2nwQ7V9iRD560BWa69TXG6+BGKLbLn1zRGsJSW2+yXslWhnUse5KysOMKGiyvL2pS
	uYiOsRB4IZOuMGmx+ICGsWueDzVh2Lwc0bvd6okhZUkhxkUW/37refsmg12MfGGpwLh4cYtnBGFwS
	jh4WTknm/vLwwcmRLHYaT8YWuq9idbFe8tfFrqu3M+XIrAjLTLOpFiTVxqJbKkYcVbkKCx46yfMbf
	GLeV+uxT41YPH4qTvV7LY+A1+w2/DirzXOQIv5GfEzfGXIuXH6BfxOsKmlvMCRQOon6NrObS1ZsMS
	kC/0zjoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5wb-0000000BKF9-2vUX;
	Fri, 26 Jun 2026 12:46:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd5wV-0000000BKCR-18Iv
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 12:46:02 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd5wT-0007zx-A2; Fri, 26 Jun 2026 14:45:57 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 14:45:44 +0200
Message-ID: <20260626124555.1644951-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626124555.1644951-1-a.fatoum@barebox.org>
References: <20260626124555.1644951-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_054559_309263_8A774919 
X-CRM114-Status: GOOD (  21.40  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] usb: xhci-hcd: add XHCI over PCI driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In order to support USB in QEMU Virt, add support for registering over
PCI as well. The probe function looks nearly identical to the DT-probed
xhci_probe with the difference that we map a PCI MMIO region.

To make it readily usable, also enable it in multi_v8_defconfig.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v8_defconfig |  1 +
 drivers/usb/host/Kconfig            |  7 +++
 drivers/usb/host/Makefile           |  1 +
 drivers/usb/host/xhci-pci.c         | 97 +++++++++++++++++++++++++++++
 drivers/usb/host/xhci.h             |  1 +
 5 files changed, 107 insertions(+)
 create mode 100644 drivers/usb/host/xhci-pci.c

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index e62dbc96fd03..9712113bf1cd 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -213,6 +213,7 @@ CONFIG_USB_IMX_CHIPIDEA=y
 CONFIG_USB_DWC3=y
 CONFIG_USB_DWC3_DUAL_ROLE=y
 CONFIG_USB_EHCI=y
+CONFIG_USB_XHCI_PCI=y
 CONFIG_USB_STORAGE=y
 CONFIG_USB_ONBOARD_DEV=y
 CONFIG_USB_GADGET=y
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 58f276cdb45a..21a99dd85b28 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -41,3 +41,10 @@ config USB_XHCI
 
 	  This driver currently only supports virtual USB 2.0 ports, if you
 	  plan to use USB 3.0 devices, use a USB 2.0 cable in between.
+
+config USB_XHCI_PCI
+	tristate "xHCI over PCI driver"
+	depends on USB_XHCI
+	help
+	  Say y here if your USB 3.0 controller is connected via PCI and
+	  you wish to access the USB devices on the bus from barebox.
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index cbddfbe9232e..ed446d0d801c 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -6,3 +6,4 @@ obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
+obj-$(CONFIG_USB_XHCI_PCI)	+= xhci-pci.o
diff --git a/drivers/usb/host/xhci-pci.c b/drivers/usb/host/xhci-pci.c
new file mode 100644
index 000000000000..ebd64b347430
--- /dev/null
+++ b/drivers/usb/host/xhci-pci.c
@@ -0,0 +1,97 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <linux/pci.h>
+#include <linux/slab.h>
+#include <linux/module.h>
+#include <linux/reset.h>
+#include <module.h>
+
+#include "xhci.h"
+
+static const char hcd_name[] = "xhci_hcd";
+
+static int xhci_pci_common_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct device *dev = &pdev->dev;
+	struct xhci_ctrl *ctrl;
+	void __iomem *base;
+	int ret;
+
+	(void)id;
+
+	ret = pci_enable_device(pdev);
+	if (ret)
+		return ret;
+
+	pci_set_master(pdev);
+
+	base = pci_iomap(pdev, 0);
+	if (!base) {
+		ret = dev_err_probe(dev, -EBUSY, "failed to map BAR0\n");
+		goto err_clear_master;
+	}
+
+	ctrl = xzalloc(sizeof(*ctrl));
+	ctrl->dev = dev;
+	ctrl->hccr = base;
+	ctrl->hcor = (struct xhci_hcor *)((uintptr_t)ctrl->hccr +
+		HC_LENGTH(xhci_readl(&(ctrl->hccr)->cr_capbase)));
+
+	dev->priv = ctrl;
+
+	ret = xhci_register(ctrl);
+	if (ret)
+		goto err_free_ctrl;
+
+	return 0;
+
+err_free_ctrl:
+	dev->priv = NULL;
+	free(ctrl);
+err_clear_master:
+	pci_clear_master(pdev);
+	return ret;
+}
+
+static int xhci_pci_probe(struct pci_dev *dev, const struct pci_device_id *id)
+{
+	return xhci_pci_common_probe(dev, id);
+}
+
+static void xhci_pci_remove(struct pci_dev *dev)
+{
+	struct xhci_ctrl *ctrl = dev->dev.priv;
+
+	xhci_deregister(ctrl);
+	pci_clear_master(dev);
+	free(ctrl);
+}
+
+/*-------------------------------------------------------------------------*/
+
+/* PCI driver selection metadata; PCI hotplugging uses this */
+static const struct pci_device_id pci_ids[] = {
+	/* handle any USB 3.0 xHCI controller */
+	{ PCI_DEVICE_CLASS(PCI_CLASS_SERIAL_USB_XHCI, ~0),
+	},
+	{ /* end: all zeroes */ }
+};
+MODULE_DEVICE_TABLE(pci, pci_ids);
+
+/* pci driver glue; this is a "new style" PCI driver module */
+static struct pci_driver xhci_pci_driver = {
+	.name =		hcd_name,
+	.id_table =	pci_ids,
+
+	.probe =	xhci_pci_probe,
+	.remove =	xhci_pci_remove,
+};
+
+static int __init xhci_pci_init(void)
+{
+	return pci_register_driver(&xhci_pci_driver);
+}
+module_init(xhci_pci_init);
+
+MODULE_DESCRIPTION("xHCI PCI Host Controller Driver");
+MODULE_LICENSE("GPL");
diff --git a/drivers/usb/host/xhci.h b/drivers/usb/host/xhci.h
index 37e8cee843cf..e5feb4f3d5a1 100644
--- a/drivers/usb/host/xhci.h
+++ b/drivers/usb/host/xhci.h
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <io-64-nonatomic-lo-hi.h>
 #include <linux/list.h>
+#include <linux/usb/usb.h>
 
 #define MAX_EP_CTX_NUM		31
 #define XHCI_ALIGNMENT		64
-- 
2.47.3



