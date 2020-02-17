Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fnA-0007sc-TZ
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:46:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:45:58 +0100
Message-Id: <20200217124623.14520-18-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 17/42] usb: gadget: fsl_udc: Add PBL image loading support
To: Barebox List <barebox@lists.infradead.org>

For boards that do the RAM setup in code we can up to now only download
the PBL part to SRAM. This patch adds support for downloading the rest
of the image after the RAM has been configured.

The ROM is nice enough to leave the USB controller initialized after a
download, so we don't have to reinitialize it, but can simply continue to
use the controller. Like all two-staged loading processes on i.MX this
needs board support, it will only work when a board calls
imx_barebox_load_usb() or one of the SoC specific variants.

This needs the host counterpart in imx-usb-loader which is done in the
next patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/Makefile             |   2 +-
 drivers/usb/gadget/Kconfig       |   3 +
 drivers/usb/gadget/Makefile      |   1 +
 drivers/usb/gadget/fsl_udc_pbl.c | 210 +++++++++++++++++++++++++++++++
 include/soc/fsl/fsl_udc.h        |   6 +
 5 files changed, 221 insertions(+), 1 deletion(-)
 create mode 100644 drivers/usb/gadget/fsl_udc_pbl.c

diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 9e98099502..64d4bddad4 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -2,9 +2,9 @@ obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
 obj-$(CONFIG_USB_DWC3)		+= dwc3/
 obj-$(CONFIG_USB_MUSB)		+= musb/
-obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
 obj-y += otg/
+obj-y += gadget/
 obj-$(CONFIG_USB)		+= misc/
 
diff --git a/drivers/usb/gadget/Kconfig b/drivers/usb/gadget/Kconfig
index 9d6a262038..3c1d7e6f18 100644
--- a/drivers/usb/gadget/Kconfig
+++ b/drivers/usb/gadget/Kconfig
@@ -15,6 +15,9 @@ config USB_GADGET_DRIVER_ARC
 	default y
 	select USB_GADGET_DUALSPEED
 
+config USB_GADGET_DRIVER_ARC_PBL
+	bool
+
 config USB_GADGET_DRIVER_AT91
 	bool
 	prompt "at91 gadget driver"
diff --git a/drivers/usb/gadget/Makefile b/drivers/usb/gadget/Makefile
index 9ef594575b..27673fcf0e 100644
--- a/drivers/usb/gadget/Makefile
+++ b/drivers/usb/gadget/Makefile
@@ -4,5 +4,6 @@ obj-$(CONFIG_USB_GADGET_SERIAL) += u_serial.o serial.o f_serial.o f_acm.o
 obj-$(CONFIG_USB_GADGET_DFU) += dfu.o
 obj-$(CONFIG_USB_GADGET_FASTBOOT) += f_fastboot.o
 obj-$(CONFIG_USB_GADGET_DRIVER_ARC) += fsl_udc.o
+pbl-$(CONFIG_USB_GADGET_DRIVER_ARC_PBL) += fsl_udc_pbl.o
 obj-$(CONFIG_USB_GADGET_DRIVER_AT91) += at91_udc.o
 obj-$(CONFIG_USB_GADGET_DRIVER_PXA27X) += pxa27x_udc.o
diff --git a/drivers/usb/gadget/fsl_udc_pbl.c b/drivers/usb/gadget/fsl_udc_pbl.c
new file mode 100644
index 0000000000..978adf0667
--- /dev/null
+++ b/drivers/usb/gadget/fsl_udc_pbl.c
@@ -0,0 +1,210 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <usb/ch9.h>
+#include <soc/fsl/fsl_udc.h>
+#include <mach/imx8mm-regs.h>
+
+static void fsl_queue_td(struct usb_dr_device *dr, struct ep_td_struct *dtd,
+			 int ep_is_in)
+{
+	int ep_index = 0;
+	int i = ep_index * 2 + ep_is_in;
+	u32 bitmask;
+	volatile struct ep_queue_head *dQH =
+		(void *)(unsigned long)readl(&dr->endpointlistaddr);
+	unsigned long td_dma = (unsigned long)dtd;
+
+	dQH = &dQH[i];
+
+	bitmask = ep_is_in ? (1 << (ep_index + 16)) : (1 << (ep_index));
+
+	dQH->next_dtd_ptr = cpu_to_le32(td_dma & EP_QUEUE_HEAD_NEXT_POINTER_MASK);
+
+	dQH->size_ioc_int_sts &= cpu_to_le32(~(EP_QUEUE_HEAD_STATUS_ACTIVE
+			| EP_QUEUE_HEAD_STATUS_HALT));
+
+	writel(bitmask, &dr->endpointprime);
+}
+
+static struct ep_td_struct dtd_data __attribute__((aligned(64)));
+static struct ep_td_struct dtd_status __attribute__((aligned(64)));
+
+static int fsl_ep_queue(struct usb_dr_device *dr, struct ep_td_struct *dtd,
+			void *buf, int len)
+{
+	u32 swap_temp;
+
+	memset(dtd, 0, sizeof(*dtd));
+
+	/* Clear reserved field */
+	swap_temp = cpu_to_le32(dtd->size_ioc_sts);
+	swap_temp &= ~DTD_RESERVED_FIELDS;
+	dtd->size_ioc_sts = cpu_to_le32(swap_temp);
+
+	swap_temp = (unsigned long)buf;
+	dtd->buff_ptr0 = cpu_to_le32(swap_temp);
+	dtd->buff_ptr1 = cpu_to_le32(swap_temp + 0x1000);
+	dtd->buff_ptr2 = cpu_to_le32(swap_temp + 0x2000);
+	dtd->buff_ptr3 = cpu_to_le32(swap_temp + 0x3000);
+	dtd->buff_ptr4 = cpu_to_le32(swap_temp + 0x4000);
+
+	/* Fill in the transfer size; set active bit */
+	swap_temp = ((len << DTD_LENGTH_BIT_POS) | DTD_STATUS_ACTIVE) | DTD_IOC;
+
+	writel(cpu_to_le32(swap_temp), &dtd->size_ioc_sts);
+
+	dtd->next_td_ptr = cpu_to_le32(DTD_NEXT_TERMINATE);
+
+	fsl_queue_td(dr, dtd, len ? 0 : 1);
+
+	return 0;
+}
+
+enum state {
+	state_init = 0,
+	state_expect_command,
+	state_transfer_data,
+	state_complete,
+};
+
+#define MAX_TRANSFER_SIZE 2048
+
+static enum state state;
+static uint8_t databuf[MAX_TRANSFER_SIZE] __attribute__((aligned(64)));
+static int actual;
+static int to_transfer;
+static void *image;
+
+static void tripwire_handler(struct usb_dr_device *dr, u8 ep_num)
+{
+	uint32_t val;
+	struct ep_queue_head *qh;
+	struct ep_queue_head *dQH = (void *)(unsigned long)readl(&dr->endpointlistaddr);
+	struct usb_ctrlrequest *ctrl;
+
+	qh = &dQH[ep_num * 2];
+
+	val = readl(&dr->endptsetupstat);
+	val |= 1 << ep_num;
+	writel(val, &dr->endptsetupstat);
+
+	do {
+		val = readl(&dr->usbcmd);
+		val |= USB_CMD_SUTW;
+		writel(val, &dr->usbcmd);
+
+		ctrl = (void *)qh->setup_buffer;
+		if ((ctrl->wValue & 0xff) == 1)
+			state = state_expect_command;
+
+	} while (!(readl(&dr->usbcmd) & USB_CMD_SUTW));
+
+	val = readl(&dr->usbcmd);
+	val &= ~USB_CMD_SUTW;
+	writel(val, &dr->usbcmd);
+
+	fsl_ep_queue(dr, &dtd_data, databuf, MAX_TRANSFER_SIZE);
+}
+
+static void dtd_complete_irq(struct usb_dr_device *dr)
+{
+	struct ep_td_struct *dtd = &dtd_data;
+	u32 bit_pos;
+	int len;
+
+	/* Clear the bits in the register */
+	bit_pos = readl(&dr->endptcomplete);
+	writel(bit_pos, &dr->endptcomplete);
+
+	if (!(bit_pos & 1))
+		return;
+
+	len = MAX_TRANSFER_SIZE -
+		(le32_to_cpu(dtd->size_ioc_sts) >> DTD_LENGTH_BIT_POS);
+
+	if (state == state_expect_command) {
+		state = state_transfer_data;
+		to_transfer = databuf[8] << 24 |
+				databuf[9] << 16 |
+				databuf[10] << 8 |
+				databuf[11];
+	} else {
+		memcpy(image + actual, &databuf[1], len - 1);
+		actual += len - 1;
+		to_transfer -= len - 1;
+
+		if (to_transfer == 0)
+			state = state_complete;
+	}
+
+	fsl_ep_queue(dr, &dtd_status, NULL, 0);
+}
+
+static int usb_irq(struct usb_dr_device *dr)
+{
+	uint32_t irq_src = readl(&dr->usbsts);
+
+	irq_src &= ~0x80;
+
+	if (!irq_src)
+		return -EAGAIN;
+
+	/* Clear notification bits */
+	writel(irq_src, &dr->usbsts);
+
+	/* USB Interrupt */
+	if (irq_src & USB_STS_INT) {
+		/* Setup package, we only support ep0 as control ep */
+		if (readl(&dr->endptsetupstat) & EP_SETUP_STATUS_EP0)
+			tripwire_handler(dr, 0);
+
+		/* completion of dtd */
+		if (readl(&dr->endptcomplete))
+			dtd_complete_irq(dr);
+	}
+
+	if (state == state_complete)
+		return 0;
+	else
+		return -EAGAIN;
+}
+
+int imx_barebox_load_usb(void __iomem *dr, void *dest)
+{
+	int ret;
+
+	image = dest;
+
+	while (1) {
+		ret = usb_irq(dr);
+		if (!ret)
+			break;
+	}
+
+	return 0;
+}
+
+int imx_barebox_start_usb(void __iomem *dr, void *dest)
+{
+	void __noreturn (*bb)(void);
+	int ret;
+
+	ret = imx_barebox_load_usb(dr, dest);
+	if (ret)
+		return ret;
+
+	printf("Downloading complete, start barebox\n");
+	bb = dest;
+	bb();
+}
+
+int imx8mm_barebox_load_usb(void *dest)
+{
+	return imx_barebox_load_usb(IOMEM(MX8MM_USB1_BASE_ADDR), dest);
+}
+
+int imx8mm_barebox_start_usb(void *dest)
+{
+	return imx_barebox_start_usb(IOMEM(MX8MM_USB1_BASE_ADDR), dest);
+}
diff --git a/include/soc/fsl/fsl_udc.h b/include/soc/fsl/fsl_udc.h
index b401351796..b983f714c5 100644
--- a/include/soc/fsl/fsl_udc.h
+++ b/include/soc/fsl/fsl_udc.h
@@ -374,4 +374,10 @@ struct ep_td_struct {
 /* Controller dma boundary */
 #define UDC_DMA_BOUNDARY			0x1000
 
+int imx_barebox_load_usb(void __iomem *dr, void *dest);
+int imx_barebox_start_usb(void __iomem *dr, void *dest);
+
+int imx8mm_barebox_load_usb(void *dest);
+int imx8mm_barebox_start_usb(void *dest);
+
 #endif /* __FSL_UDC_H */
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
