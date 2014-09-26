Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQoD-0005CQ-0E
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:23:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Sep 2014 10:22:12 +0200
Message-Id: <1411719735-30949-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
References: <1411719735-30949-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/9] USB: MUSB: Add barebox specific changes
To: barebox@lists.infradead.org

This changes the MUSB support from the original Kernel state to
be usable with barebox. Tested on a custom board and the Beaglebone
Black. The host port on the Beaglebone works, the OTG port works
in device mode, but not yet in host mode.

Based on the initial MUSB port from Rolf Evers Fischer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/Kconfig                   |    2 +
 drivers/usb/Makefile                  |    2 +-
 drivers/usb/musb/Kconfig              |   29 +
 drivers/usb/musb/Makefile             |   11 +
 drivers/usb/musb/musb_am335x.c        |   48 +-
 drivers/usb/musb/musb_barebox.c       |  146 ++++
 drivers/usb/musb/musb_core.c          | 1323 ++-------------------------------
 drivers/usb/musb/musb_core.h          |   85 +--
 drivers/usb/musb/musb_dma.h           |    1 -
 drivers/usb/musb/musb_dsps.c          |  728 ++++--------------
 drivers/usb/musb/musb_gadget.c        |  868 +--------------------
 drivers/usb/musb/musb_gadget.h        |   10 +-
 drivers/usb/musb/musb_gadget_ep0.c    |   18 +-
 drivers/usb/musb/musb_host.c          | 1065 ++------------------------
 drivers/usb/musb/musb_host.h          |  131 +++-
 drivers/usb/musb/musb_io.h            |    2 +-
 drivers/usb/musb/phy-am335x-control.c |  168 +++++
 drivers/usb/musb/phy-am335x.c         |   86 +++
 drivers/usb/musb/phy-am335x.h         |    6 +
 include/linux/barebox-wrapper.h       |    7 +
 include/usb/gadget.h                  |    1 +
 21 files changed, 906 insertions(+), 3831 deletions(-)
 create mode 100644 drivers/usb/musb/Kconfig
 create mode 100644 drivers/usb/musb/Makefile
 create mode 100644 drivers/usb/musb/musb_barebox.c
 create mode 100644 drivers/usb/musb/phy-am335x-control.c
 create mode 100644 drivers/usb/musb/phy-am335x.c
 create mode 100644 drivers/usb/musb/phy-am335x.h

diff --git a/drivers/usb/Kconfig b/drivers/usb/Kconfig
index eedd20e..8520a2f 100644
--- a/drivers/usb/Kconfig
+++ b/drivers/usb/Kconfig
@@ -19,3 +19,5 @@ endif
 
 source drivers/usb/gadget/Kconfig
 
+source drivers/usb/musb/Kconfig
+
diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 44cb54a..047f184 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,6 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
-obj-$(CONFIG_USB_MUSB_DSPS)	+= am335x/
+obj-$(CONFIG_USB_MUSB)		+= musb/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
diff --git a/drivers/usb/musb/Kconfig b/drivers/usb/musb/Kconfig
new file mode 100644
index 0000000..e0a1139
--- /dev/null
+++ b/drivers/usb/musb/Kconfig
@@ -0,0 +1,29 @@
+config USB_MUSB
+	bool "MUSB support"
+
+if USB_MUSB
+
+config USB_MUSB_DSPS
+	tristate
+
+config USB_MUSB_AM335X
+	tristate "AM335x USB support"
+	depends on ARCH_AM33XX
+	select USB_MUSB_DSPS
+	help
+	  This driver provides the necessary bit to enable USB support
+	  on the TI AM335x SoC.
+
+config USB_MUSB_HOST
+	bool "MUSB Host mode support"
+	depends on USB_HOST
+	help
+	  Select this when you want to use MUSB in host mode.
+
+config USB_MUSB_GADGET
+	bool "MUSB Gadget mode support"
+	depends on USB_GADGET
+	help
+	  Select this when you want to use MUSB in gadget mode.
+
+endif
diff --git a/drivers/usb/musb/Makefile b/drivers/usb/musb/Makefile
new file mode 100644
index 0000000..364a43f
--- /dev/null
+++ b/drivers/usb/musb/Makefile
@@ -0,0 +1,11 @@
+#
+# for USB OTG silicon based on Mentor Graphics INVENTRA designs
+#
+
+obj-y += musb_core.o musb_barebox.o
+
+obj-$(CONFIG_USB_MUSB_HOST) += musb_host.o
+obj-$(CONFIG_USB_MUSB_GADGET) += musb_gadget.o musb_gadget_ep0.o
+
+obj-$(CONFIG_USB_MUSB_DSPS)	+= musb_dsps.o
+obj-$(CONFIG_USB_MUSB_AM335X)	+= phy-am335x-control.o musb_am335x.o phy-am335x.o
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
index 1e58ed2..2a9167a 100644
--- a/drivers/usb/musb/musb_am335x.c
+++ b/drivers/usb/musb/musb_am335x.c
@@ -1,43 +1,29 @@
-#include <linux/platform_device.h>
-#include <linux/pm_runtime.h>
-#include <linux/module.h>
-#include <linux/of_platform.h>
+#include <common.h>
+#include <init.h>
+#include <linux/clk.h>
 
-static int am335x_child_probe(struct platform_device *pdev)
+static int am335x_child_probe(struct device_d *dev)
 {
 	int ret;
 
-	pm_runtime_enable(&pdev->dev);
-
-	ret = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
+	ret = of_platform_populate(dev->device_node, NULL, dev);
 	if (ret)
-		goto err;
+		return ret;
 
 	return 0;
-err:
-	pm_runtime_disable(&pdev->dev);
-	return ret;
 }
 
-static const struct of_device_id am335x_child_of_match[] = {
-	{ .compatible = "ti,am33xx-usb" },
-	{  },
-};
-MODULE_DEVICE_TABLE(of, am335x_child_of_match);
-
-static struct platform_driver am335x_child_driver = {
-	.probe		= am335x_child_probe,
-	.driver         = {
-		.name   = "am335x-usb-childs",
-		.of_match_table	= am335x_child_of_match,
+static __maybe_unused struct of_device_id am335x_child_dt_ids[] = {
+	{
+		.compatible = "ti,am33xx-usb",
+	}, {
+		/* sentinel */
 	},
 };
 
-static int __init am335x_child_init(void)
-{
-	return platform_driver_register(&am335x_child_driver);
-}
-module_init(am335x_child_init);
-
-MODULE_DESCRIPTION("AM33xx child devices");
-MODULE_LICENSE("GPL v2");
+static struct driver_d am335x_child_driver = {
+	.name   = "am335x_child_probe",
+	.probe  = am335x_child_probe,
+	.of_compatible = DRV_OF_COMPAT(am335x_child_dt_ids),
+};
+device_platform_driver(am335x_child_driver);
diff --git a/drivers/usb/musb/musb_barebox.c b/drivers/usb/musb/musb_barebox.c
new file mode 100644
index 0000000..6bc232b
--- /dev/null
+++ b/drivers/usb/musb/musb_barebox.c
@@ -0,0 +1,146 @@
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <usb/musb.h>
+#include <usb/usb.h>
+#include <linux/types.h>
+#include <linux/err.h>
+#include <linux/barebox-wrapper.h>
+
+#include "musb_core.h"
+#include "musb_gadget.h"
+
+static struct usb_host_endpoint hep;
+static struct urb urb;
+
+static void musb_host_complete_urb(struct urb *urb)
+{
+	urb->dev->status &= ~USB_ST_NOT_PROC;
+	urb->dev->act_len = urb->actual_length;
+}
+
+static struct urb *construct_urb(struct usb_device *dev, int endpoint_type,
+				unsigned long pipe, void *buffer, int len,
+				struct devrequest *setup, int interval)
+{
+	int epnum = usb_pipeendpoint(pipe);
+	int is_in = usb_pipein(pipe);
+
+	memset(&urb, 0, sizeof(struct urb));
+	memset(&hep, 0, sizeof(struct usb_host_endpoint));
+	INIT_LIST_HEAD(&hep.urb_list);
+	INIT_LIST_HEAD(&urb.urb_list);
+	urb.ep = &hep;
+	urb.complete = musb_host_complete_urb;
+	urb.status = -EINPROGRESS;
+	urb.dev = dev;
+	urb.pipe = pipe;
+	urb.transfer_buffer = buffer;
+	urb.transfer_dma = (unsigned long)buffer;
+	urb.transfer_buffer_length = len;
+	urb.setup_packet = (unsigned char *)setup;
+
+	urb.ep->desc.wMaxPacketSize =
+		__cpu_to_le16(is_in ? dev->epmaxpacketin[epnum] :
+				dev->epmaxpacketout[epnum]);
+	urb.ep->desc.bmAttributes = endpoint_type;
+	urb.ep->desc.bEndpointAddress =
+		(is_in ? USB_DIR_IN : USB_DIR_OUT) | epnum;
+	urb.ep->desc.bInterval = interval;
+
+	return &urb;
+}
+
+#define MUSB_HOST_TIMEOUT 0x5fffff
+
+static int submit_urb(struct usb_device *dev, struct urb *urb, int timeout_ms)
+{
+	struct usb_host *host = dev->host;
+	struct musb *musb = to_musb(host);
+	int ret;
+	uint64_t start;
+	uint64_t timeout = timeout_ms;
+
+	ret = musb_urb_enqueue(musb->hcd, urb, 0);
+	if (ret < 0) {
+		printf("Failed to enqueue URB to controller\n");
+		return ret;
+	}
+
+	start = get_time_ns();
+
+	do {
+		musb->isr(musb);
+
+		if (!urb->status)
+			return 0;
+
+	} while (!is_timeout(start, timeout * MSECOND));
+
+	if (urb->dev->status & USB_ST_NOT_PROC)
+		ret = -ETIMEDOUT;
+	else
+		ret = urb->status;
+
+	musb_urb_dequeue(musb->hcd, urb, -ECONNRESET);
+
+	return ret;
+}
+
+static int
+submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
+		int length, int timeout)
+{
+	struct urb *urb = construct_urb(dev, USB_ENDPOINT_XFER_BULK, pipe,
+					buffer, length, NULL, 0);
+	return submit_urb(dev, urb, timeout);
+}
+
+static int
+submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
+		   int length, struct devrequest *setup, int timeout)
+{
+	struct usb_host *host = dev->host;
+	struct musb *musb = to_musb(host);
+	struct urb *urb = construct_urb(dev, USB_ENDPOINT_XFER_CONTROL, pipe,
+					buffer, length, setup, 0);
+
+	/* Fix speed for non hub-attached devices */
+	if (!dev->parent)
+		dev->speed = musb->host_speed;
+
+	return submit_urb(dev, urb, timeout);
+}
+
+static int
+submit_int_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
+	       int length, int interval)
+{
+	struct urb *urb = construct_urb(dev, USB_ENDPOINT_XFER_INT, pipe,
+					buffer, length, NULL, interval);
+	return submit_urb(dev, urb, 100);
+}
+
+static int musb_detect(struct device_d *dev)
+{
+	struct musb *musb = dev->priv;
+
+	return usb_host_detect(&musb->host);
+}
+
+int musb_register(struct musb *musb)
+{
+	struct usb_host *host;
+
+	host = &musb->host;
+	host->hw_dev = musb->controller;
+	host->init = musb_init;
+	host->submit_int_msg = submit_int_msg;
+	host->submit_control_msg = submit_control_msg;
+	host->submit_bulk_msg = submit_bulk_msg;
+
+	musb->controller->detect = musb_detect;
+	usb_register_host(host);
+
+	return 0;
+}
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index b841ee0..ccb7029 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -89,18 +89,17 @@
  * Most of the conditional compilation will (someday) vanish.
  */
 
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
-#include <linux/list.h>
-#include <linux/kobject.h>
-#include <linux/prefetch.h>
-#include <linux/platform_device.h>
-#include <linux/io.h>
-#include <linux/dma-mapping.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <usb/musb.h>
+#include <usb/usb.h>
+#include <linux/types.h>
+#include <linux/err.h>
+#include <linux/barebox-wrapper.h>
 
 #include "musb_core.h"
+#include "musb_gadget.h"
 
 #define TA_WAIT_BCON(m) max_t(int, (m)->a_wait_bcon, OTG_TIME_A_WAIT_BCON)
 
@@ -120,13 +119,7 @@ MODULE_AUTHOR(DRIVER_AUTHOR);
 MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" MUSB_DRIVER_NAME);
 
-
-/*-------------------------------------------------------------------------*/
-
-static inline struct musb *dev_to_musb(struct device *dev)
-{
-	return dev_get_drvdata(dev);
-}
+#define MUSB_HOST_TIMEOUT 0x5fffff
 
 /*-------------------------------------------------------------------------*/
 
@@ -139,8 +132,6 @@ static int musb_ulpi_read(struct usb_phy *phy, u32 offset)
 	u8	power;
 	int	ret;
 
-	pm_runtime_get_sync(phy->io_dev);
-
 	/* Make sure the transceiver is not in low power mode */
 	power = musb_readb(addr, MUSB_POWER);
 	power &= ~MUSB_POWER_SUSPENDM;
@@ -170,8 +161,6 @@ static int musb_ulpi_read(struct usb_phy *phy, u32 offset)
 	ret = musb_readb(addr, MUSB_ULPI_REG_DATA);
 
 out:
-	pm_runtime_put(phy->io_dev);
-
 	return ret;
 }
 
@@ -183,8 +172,6 @@ static int musb_ulpi_write(struct usb_phy *phy, u32 offset, u32 data)
 	u8	power;
 	int	ret = 0;
 
-	pm_runtime_get_sync(phy->io_dev);
-
 	/* Make sure the transceiver is not in low power mode */
 	power = musb_readb(addr, MUSB_POWER);
 	power &= ~MUSB_POWER_SUSPENDM;
@@ -208,8 +195,6 @@ static int musb_ulpi_write(struct usb_phy *phy, u32 offset, u32 data)
 	musb_writeb(addr, MUSB_ULPI_REG_CONTROL, r);
 
 out:
-	pm_runtime_put(phy->io_dev);
-
 	return ret;
 }
 #else
@@ -217,7 +202,7 @@ out:
 #define musb_ulpi_write		NULL
 #endif
 
-static struct usb_phy_io_ops musb_ulpi_access = {
+struct usb_phy_io_ops musb_ulpi_access = {
 	.read = musb_ulpi_read,
 	.write = musb_ulpi_write,
 };
@@ -249,7 +234,7 @@ void musb_write_fifo(struct musb_hw_ep *hw_ep, u16 len, const u8 *src)
 		/* best case is 32bit-aligned source address */
 		if ((0x02 & (unsigned long) src) == 0) {
 			if (len >= 4) {
-				iowrite32_rep(fifo, src + index, len >> 2);
+				writesl(fifo, src + index, len >> 2);
 				index += len & ~0x03;
 			}
 			if (len & 0x02) {
@@ -258,7 +243,7 @@ void musb_write_fifo(struct musb_hw_ep *hw_ep, u16 len, const u8 *src)
 			}
 		} else {
 			if (len >= 2) {
-				iowrite16_rep(fifo, src + index, len >> 1);
+				writesw(fifo, src + index, len >> 1);
 				index += len & ~0x01;
 			}
 		}
@@ -266,7 +251,7 @@ void musb_write_fifo(struct musb_hw_ep *hw_ep, u16 len, const u8 *src)
 			musb_writeb(fifo, 0, src[index]);
 	} else  {
 		/* byte aligned */
-		iowrite8_rep(fifo, src, len);
+		writesb(fifo, src, len);
 	}
 }
 
@@ -292,7 +277,7 @@ void musb_read_fifo(struct musb_hw_ep *hw_ep, u16 len, u8 *dst)
 		/* best case is 32bit-aligned destination address */
 		if ((0x02 & (unsigned long) dst) == 0) {
 			if (len >= 4) {
-				ioread32_rep(fifo, dst, len >> 2);
+				readsl(fifo, dst, len >> 2);
 				index = len & ~0x03;
 			}
 			if (len & 0x02) {
@@ -301,7 +286,7 @@ void musb_read_fifo(struct musb_hw_ep *hw_ep, u16 len, u8 *dst)
 			}
 		} else {
 			if (len >= 2) {
-				ioread16_rep(fifo, dst, len >> 1);
+				readsw(fifo, dst, len >> 1);
 				index = len & ~0x01;
 			}
 		}
@@ -309,16 +294,16 @@ void musb_read_fifo(struct musb_hw_ep *hw_ep, u16 len, u8 *dst)
 			dst[index] = musb_readb(fifo, 0);
 	} else  {
 		/* byte aligned */
-		ioread8_rep(fifo, dst, len);
+		readsb(fifo, dst, len);
 	}
 }
 #endif
 
 #endif	/* normal PIO */
 
-
 /*-------------------------------------------------------------------------*/
 
+
 /* for high speed test mode; see USB 2.0 spec 7.1.20 */
 static const u8 musb_test_packet[53] = {
 	/* implicit SYNC then DATA0 to start */
@@ -351,560 +336,6 @@ void musb_load_testpacket(struct musb *musb)
 
 /*-------------------------------------------------------------------------*/
 
-/*
- * Handles OTG hnp timeouts, such as b_ase0_brst
- */
-static void musb_otg_timer_func(unsigned long data)
-{
-	struct musb	*musb = (struct musb *)data;
-	unsigned long	flags;
-
-	spin_lock_irqsave(&musb->lock, flags);
-	switch (musb->xceiv->state) {
-	case OTG_STATE_B_WAIT_ACON:
-		dev_dbg(musb->controller, "HNP: b_wait_acon timeout; back to b_peripheral\n");
-		musb_g_disconnect(musb);
-		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-		musb->is_active = 0;
-		break;
-	case OTG_STATE_A_SUSPEND:
-	case OTG_STATE_A_WAIT_BCON:
-		dev_dbg(musb->controller, "HNP: %s timeout\n",
-			usb_otg_state_string(musb->xceiv->state));
-		musb_platform_set_vbus(musb, 0);
-		musb->xceiv->state = OTG_STATE_A_WAIT_VFALL;
-		break;
-	default:
-		dev_dbg(musb->controller, "HNP: Unhandled mode %s\n",
-			usb_otg_state_string(musb->xceiv->state));
-	}
-	spin_unlock_irqrestore(&musb->lock, flags);
-}
-
-/*
- * Stops the HNP transition. Caller must take care of locking.
- */
-void musb_hnp_stop(struct musb *musb)
-{
-	struct usb_hcd	*hcd = musb->hcd;
-	void __iomem	*mbase = musb->mregs;
-	u8	reg;
-
-	dev_dbg(musb->controller, "HNP: stop from %s\n",
-			usb_otg_state_string(musb->xceiv->state));
-
-	switch (musb->xceiv->state) {
-	case OTG_STATE_A_PERIPHERAL:
-		musb_g_disconnect(musb);
-		dev_dbg(musb->controller, "HNP: back to %s\n",
-			usb_otg_state_string(musb->xceiv->state));
-		break;
-	case OTG_STATE_B_HOST:
-		dev_dbg(musb->controller, "HNP: Disabling HR\n");
-		if (hcd)
-			hcd->self.is_b_host = 0;
-		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-		MUSB_DEV_MODE(musb);
-		reg = musb_readb(mbase, MUSB_POWER);
-		reg |= MUSB_POWER_SUSPENDM;
-		musb_writeb(mbase, MUSB_POWER, reg);
-		/* REVISIT: Start SESSION_REQUEST here? */
-		break;
-	default:
-		dev_dbg(musb->controller, "HNP: Stopping in unknown state %s\n",
-			usb_otg_state_string(musb->xceiv->state));
-	}
-
-	/*
-	 * When returning to A state after HNP, avoid hub_port_rebounce(),
-	 * which cause occasional OPT A "Did not receive reset after connect"
-	 * errors.
-	 */
-	musb->port1_status &= ~(USB_PORT_STAT_C_CONNECTION << 16);
-}
-
-/*
- * Interrupt Service Routine to record USB "global" interrupts.
- * Since these do not happen often and signify things of
- * paramount importance, it seems OK to check them individually;
- * the order of the tests is specified in the manual
- *
- * @param musb instance pointer
- * @param int_usb register contents
- * @param devctl
- * @param power
- */
-
-static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
-				u8 devctl)
-{
-	irqreturn_t handled = IRQ_NONE;
-
-	dev_dbg(musb->controller, "<== DevCtl=%02x, int_usb=0x%x\n", devctl,
-		int_usb);
-
-	/* in host mode, the peripheral may issue remote wakeup.
-	 * in peripheral mode, the host may resume the link.
-	 * spurious RESUME irqs happen too, paired with SUSPEND.
-	 */
-	if (int_usb & MUSB_INTR_RESUME) {
-		handled = IRQ_HANDLED;
-		dev_dbg(musb->controller, "RESUME (%s)\n", usb_otg_state_string(musb->xceiv->state));
-
-		if (devctl & MUSB_DEVCTL_HM) {
-			void __iomem *mbase = musb->mregs;
-			u8 power;
-
-			switch (musb->xceiv->state) {
-			case OTG_STATE_A_SUSPEND:
-				/* remote wakeup?  later, GetPortStatus
-				 * will stop RESUME signaling
-				 */
-
-				power = musb_readb(musb->mregs, MUSB_POWER);
-				if (power & MUSB_POWER_SUSPENDM) {
-					/* spurious */
-					musb->int_usb &= ~MUSB_INTR_SUSPEND;
-					dev_dbg(musb->controller, "Spurious SUSPENDM\n");
-					break;
-				}
-
-				power &= ~MUSB_POWER_SUSPENDM;
-				musb_writeb(mbase, MUSB_POWER,
-						power | MUSB_POWER_RESUME);
-
-				musb->port1_status |=
-						(USB_PORT_STAT_C_SUSPEND << 16)
-						| MUSB_PORT_STAT_RESUME;
-				musb->rh_timer = jiffies
-						 + msecs_to_jiffies(20);
-				schedule_delayed_work(
-					&musb->finish_resume_work,
-					msecs_to_jiffies(20));
-
-				musb->xceiv->state = OTG_STATE_A_HOST;
-				musb->is_active = 1;
-				musb_host_resume_root_hub(musb);
-				break;
-			case OTG_STATE_B_WAIT_ACON:
-				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-				musb->is_active = 1;
-				MUSB_DEV_MODE(musb);
-				break;
-			default:
-				WARNING("bogus %s RESUME (%s)\n",
-					"host",
-					usb_otg_state_string(musb->xceiv->state));
-			}
-		} else {
-			switch (musb->xceiv->state) {
-			case OTG_STATE_A_SUSPEND:
-				/* possibly DISCONNECT is upcoming */
-				musb->xceiv->state = OTG_STATE_A_HOST;
-				musb_host_resume_root_hub(musb);
-				break;
-			case OTG_STATE_B_WAIT_ACON:
-			case OTG_STATE_B_PERIPHERAL:
-				/* disconnect while suspended?  we may
-				 * not get a disconnect irq...
-				 */
-				if ((devctl & MUSB_DEVCTL_VBUS)
-						!= (3 << MUSB_DEVCTL_VBUS_SHIFT)
-						) {
-					musb->int_usb |= MUSB_INTR_DISCONNECT;
-					musb->int_usb &= ~MUSB_INTR_SUSPEND;
-					break;
-				}
-				musb_g_resume(musb);
-				break;
-			case OTG_STATE_B_IDLE:
-				musb->int_usb &= ~MUSB_INTR_SUSPEND;
-				break;
-			default:
-				WARNING("bogus %s RESUME (%s)\n",
-					"peripheral",
-					usb_otg_state_string(musb->xceiv->state));
-			}
-		}
-	}
-
-	/* see manual for the order of the tests */
-	if (int_usb & MUSB_INTR_SESSREQ) {
-		void __iomem *mbase = musb->mregs;
-
-		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS
-				&& (devctl & MUSB_DEVCTL_BDEVICE)) {
-			dev_dbg(musb->controller, "SessReq while on B state\n");
-			return IRQ_HANDLED;
-		}
-
-		dev_dbg(musb->controller, "SESSION_REQUEST (%s)\n",
-			usb_otg_state_string(musb->xceiv->state));
-
-		/* IRQ arrives from ID pin sense or (later, if VBUS power
-		 * is removed) SRP.  responses are time critical:
-		 *  - turn on VBUS (with silicon-specific mechanism)
-		 *  - go through A_WAIT_VRISE
-		 *  - ... to A_WAIT_BCON.
-		 * a_wait_vrise_tmout triggers VBUS_ERROR transitions
-		 */
-		musb_writeb(mbase, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
-		musb->ep0_stage = MUSB_EP0_START;
-		musb->xceiv->state = OTG_STATE_A_IDLE;
-		MUSB_HST_MODE(musb);
-		musb_platform_set_vbus(musb, 1);
-
-		handled = IRQ_HANDLED;
-	}
-
-	if (int_usb & MUSB_INTR_VBUSERROR) {
-		int	ignore = 0;
-
-		/* During connection as an A-Device, we may see a short
-		 * current spikes causing voltage drop, because of cable
-		 * and peripheral capacitance combined with vbus draw.
-		 * (So: less common with truly self-powered devices, where
-		 * vbus doesn't act like a power supply.)
-		 *
-		 * Such spikes are short; usually less than ~500 usec, max
-		 * of ~2 msec.  That is, they're not sustained overcurrent
-		 * errors, though they're reported using VBUSERROR irqs.
-		 *
-		 * Workarounds:  (a) hardware: use self powered devices.
-		 * (b) software:  ignore non-repeated VBUS errors.
-		 *
-		 * REVISIT:  do delays from lots of DEBUG_KERNEL checks
-		 * make trouble here, keeping VBUS < 4.4V ?
-		 */
-		switch (musb->xceiv->state) {
-		case OTG_STATE_A_HOST:
-			/* recovery is dicey once we've gotten past the
-			 * initial stages of enumeration, but if VBUS
-			 * stayed ok at the other end of the link, and
-			 * another reset is due (at least for high speed,
-			 * to redo the chirp etc), it might work OK...
-			 */
-		case OTG_STATE_A_WAIT_BCON:
-		case OTG_STATE_A_WAIT_VRISE:
-			if (musb->vbuserr_retry) {
-				void __iomem *mbase = musb->mregs;
-
-				musb->vbuserr_retry--;
-				ignore = 1;
-				devctl |= MUSB_DEVCTL_SESSION;
-				musb_writeb(mbase, MUSB_DEVCTL, devctl);
-			} else {
-				musb->port1_status |=
-					  USB_PORT_STAT_OVERCURRENT
-					| (USB_PORT_STAT_C_OVERCURRENT << 16);
-			}
-			break;
-		default:
-			break;
-		}
-
-		dev_printk(ignore ? KERN_DEBUG : KERN_ERR, musb->controller,
-				"VBUS_ERROR in %s (%02x, %s), retry #%d, port1 %08x\n",
-				usb_otg_state_string(musb->xceiv->state),
-				devctl,
-				({ char *s;
-				switch (devctl & MUSB_DEVCTL_VBUS) {
-				case 0 << MUSB_DEVCTL_VBUS_SHIFT:
-					s = "<SessEnd"; break;
-				case 1 << MUSB_DEVCTL_VBUS_SHIFT:
-					s = "<AValid"; break;
-				case 2 << MUSB_DEVCTL_VBUS_SHIFT:
-					s = "<VBusValid"; break;
-				/* case 3 << MUSB_DEVCTL_VBUS_SHIFT: */
-				default:
-					s = "VALID"; break;
-				} s; }),
-				VBUSERR_RETRY_COUNT - musb->vbuserr_retry,
-				musb->port1_status);
-
-		/* go through A_WAIT_VFALL then start a new session */
-		if (!ignore)
-			musb_platform_set_vbus(musb, 0);
-		handled = IRQ_HANDLED;
-	}
-
-	if (int_usb & MUSB_INTR_SUSPEND) {
-		dev_dbg(musb->controller, "SUSPEND (%s) devctl %02x\n",
-			usb_otg_state_string(musb->xceiv->state), devctl);
-		handled = IRQ_HANDLED;
-
-		switch (musb->xceiv->state) {
-		case OTG_STATE_A_PERIPHERAL:
-			/* We also come here if the cable is removed, since
-			 * this silicon doesn't report ID-no-longer-grounded.
-			 *
-			 * We depend on T(a_wait_bcon) to shut us down, and
-			 * hope users don't do anything dicey during this
-			 * undesired detour through A_WAIT_BCON.
-			 */
-			musb_hnp_stop(musb);
-			musb_host_resume_root_hub(musb);
-			musb_root_disconnect(musb);
-			musb_platform_try_idle(musb, jiffies
-					+ msecs_to_jiffies(musb->a_wait_bcon
-						? : OTG_TIME_A_WAIT_BCON));
-
-			break;
-		case OTG_STATE_B_IDLE:
-			if (!musb->is_active)
-				break;
-		case OTG_STATE_B_PERIPHERAL:
-			musb_g_suspend(musb);
-			musb->is_active = musb->g.b_hnp_enable;
-			if (musb->is_active) {
-				musb->xceiv->state = OTG_STATE_B_WAIT_ACON;
-				dev_dbg(musb->controller, "HNP: Setting timer for b_ase0_brst\n");
-				mod_timer(&musb->otg_timer, jiffies
-					+ msecs_to_jiffies(
-							OTG_TIME_B_ASE0_BRST));
-			}
-			break;
-		case OTG_STATE_A_WAIT_BCON:
-			if (musb->a_wait_bcon != 0)
-				musb_platform_try_idle(musb, jiffies
-					+ msecs_to_jiffies(musb->a_wait_bcon));
-			break;
-		case OTG_STATE_A_HOST:
-			musb->xceiv->state = OTG_STATE_A_SUSPEND;
-			musb->is_active = musb->hcd->self.b_hnp_enable;
-			break;
-		case OTG_STATE_B_HOST:
-			/* Transition to B_PERIPHERAL, see 6.8.2.6 p 44 */
-			dev_dbg(musb->controller, "REVISIT: SUSPEND as B_HOST\n");
-			break;
-		default:
-			/* "should not happen" */
-			musb->is_active = 0;
-			break;
-		}
-	}
-
-	if (int_usb & MUSB_INTR_CONNECT) {
-		struct usb_hcd *hcd = musb->hcd;
-
-		handled = IRQ_HANDLED;
-		musb->is_active = 1;
-
-		musb->ep0_stage = MUSB_EP0_START;
-
-		/* flush endpoints when transitioning from Device Mode */
-		if (is_peripheral_active(musb)) {
-			/* REVISIT HNP; just force disconnect */
-		}
-		musb->intrtxe = musb->epmask;
-		musb_writew(musb->mregs, MUSB_INTRTXE, musb->intrtxe);
-		musb->intrrxe = musb->epmask & 0xfffe;
-		musb_writew(musb->mregs, MUSB_INTRRXE, musb->intrrxe);
-		musb_writeb(musb->mregs, MUSB_INTRUSBE, 0xf7);
-		musb->port1_status &= ~(USB_PORT_STAT_LOW_SPEED
-					|USB_PORT_STAT_HIGH_SPEED
-					|USB_PORT_STAT_ENABLE
-					);
-		musb->port1_status |= USB_PORT_STAT_CONNECTION
-					|(USB_PORT_STAT_C_CONNECTION << 16);
-
-		/* high vs full speed is just a guess until after reset */
-		if (devctl & MUSB_DEVCTL_LSDEV)
-			musb->port1_status |= USB_PORT_STAT_LOW_SPEED;
-
-		/* indicate new connection to OTG machine */
-		switch (musb->xceiv->state) {
-		case OTG_STATE_B_PERIPHERAL:
-			if (int_usb & MUSB_INTR_SUSPEND) {
-				dev_dbg(musb->controller, "HNP: SUSPEND+CONNECT, now b_host\n");
-				int_usb &= ~MUSB_INTR_SUSPEND;
-				goto b_host;
-			} else
-				dev_dbg(musb->controller, "CONNECT as b_peripheral???\n");
-			break;
-		case OTG_STATE_B_WAIT_ACON:
-			dev_dbg(musb->controller, "HNP: CONNECT, now b_host\n");
-b_host:
-			musb->xceiv->state = OTG_STATE_B_HOST;
-			if (musb->hcd)
-				musb->hcd->self.is_b_host = 1;
-			del_timer(&musb->otg_timer);
-			break;
-		default:
-			if ((devctl & MUSB_DEVCTL_VBUS)
-					== (3 << MUSB_DEVCTL_VBUS_SHIFT)) {
-				musb->xceiv->state = OTG_STATE_A_HOST;
-				if (hcd)
-					hcd->self.is_b_host = 0;
-			}
-			break;
-		}
-
-		musb_host_poke_root_hub(musb);
-
-		dev_dbg(musb->controller, "CONNECT (%s) devctl %02x\n",
-				usb_otg_state_string(musb->xceiv->state), devctl);
-	}
-
-	if (int_usb & MUSB_INTR_DISCONNECT) {
-		dev_dbg(musb->controller, "DISCONNECT (%s) as %s, devctl %02x\n",
-				usb_otg_state_string(musb->xceiv->state),
-				MUSB_MODE(musb), devctl);
-		handled = IRQ_HANDLED;
-
-		switch (musb->xceiv->state) {
-		case OTG_STATE_A_HOST:
-		case OTG_STATE_A_SUSPEND:
-			musb_host_resume_root_hub(musb);
-			musb_root_disconnect(musb);
-			if (musb->a_wait_bcon != 0)
-				musb_platform_try_idle(musb, jiffies
-					+ msecs_to_jiffies(musb->a_wait_bcon));
-			break;
-		case OTG_STATE_B_HOST:
-			/* REVISIT this behaves for "real disconnect"
-			 * cases; make sure the other transitions from
-			 * from B_HOST act right too.  The B_HOST code
-			 * in hnp_stop() is currently not used...
-			 */
-			musb_root_disconnect(musb);
-			if (musb->hcd)
-				musb->hcd->self.is_b_host = 0;
-			musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-			MUSB_DEV_MODE(musb);
-			musb_g_disconnect(musb);
-			break;
-		case OTG_STATE_A_PERIPHERAL:
-			musb_hnp_stop(musb);
-			musb_root_disconnect(musb);
-			/* FALLTHROUGH */
-		case OTG_STATE_B_WAIT_ACON:
-			/* FALLTHROUGH */
-		case OTG_STATE_B_PERIPHERAL:
-		case OTG_STATE_B_IDLE:
-			musb_g_disconnect(musb);
-			break;
-		default:
-			WARNING("unhandled DISCONNECT transition (%s)\n",
-				usb_otg_state_string(musb->xceiv->state));
-			break;
-		}
-	}
-
-	/* mentor saves a bit: bus reset and babble share the same irq.
-	 * only host sees babble; only peripheral sees bus reset.
-	 */
-	if (int_usb & MUSB_INTR_RESET) {
-		handled = IRQ_HANDLED;
-		if ((devctl & MUSB_DEVCTL_HM) != 0) {
-			/*
-			 * Looks like non-HS BABBLE can be ignored, but
-			 * HS BABBLE is an error condition. For HS the solution
-			 * is to avoid babble in the first place and fix what
-			 * caused BABBLE. When HS BABBLE happens we can only
-			 * stop the session.
-			 */
-			if (devctl & (MUSB_DEVCTL_FSDEV | MUSB_DEVCTL_LSDEV))
-				dev_dbg(musb->controller, "BABBLE devctl: %02x\n", devctl);
-			else {
-				ERR("Stopping host session -- babble\n");
-				musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
-			}
-		} else {
-			dev_dbg(musb->controller, "BUS RESET as %s\n",
-				usb_otg_state_string(musb->xceiv->state));
-			switch (musb->xceiv->state) {
-			case OTG_STATE_A_SUSPEND:
-				musb_g_reset(musb);
-				/* FALLTHROUGH */
-			case OTG_STATE_A_WAIT_BCON:	/* OPT TD.4.7-900ms */
-				/* never use invalid T(a_wait_bcon) */
-				dev_dbg(musb->controller, "HNP: in %s, %d msec timeout\n",
-					usb_otg_state_string(musb->xceiv->state),
-					TA_WAIT_BCON(musb));
-				mod_timer(&musb->otg_timer, jiffies
-					+ msecs_to_jiffies(TA_WAIT_BCON(musb)));
-				break;
-			case OTG_STATE_A_PERIPHERAL:
-				del_timer(&musb->otg_timer);
-				musb_g_reset(musb);
-				break;
-			case OTG_STATE_B_WAIT_ACON:
-				dev_dbg(musb->controller, "HNP: RESET (%s), to b_peripheral\n",
-					usb_otg_state_string(musb->xceiv->state));
-				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-				musb_g_reset(musb);
-				break;
-			case OTG_STATE_B_IDLE:
-				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-				/* FALLTHROUGH */
-			case OTG_STATE_B_PERIPHERAL:
-				musb_g_reset(musb);
-				break;
-			default:
-				dev_dbg(musb->controller, "Unhandled BUS RESET as %s\n",
-					usb_otg_state_string(musb->xceiv->state));
-			}
-		}
-	}
-
-	/* handle babble condition */
-	if (int_usb & MUSB_INTR_BABBLE && is_host_active(musb))
-		schedule_delayed_work(&musb->recover_work,
-				      msecs_to_jiffies(100));
-
-#if 0
-/* REVISIT ... this would be for multiplexing periodic endpoints, or
- * supporting transfer phasing to prevent exceeding ISO bandwidth
- * limits of a given frame or microframe.
- *
- * It's not needed for peripheral side, which dedicates endpoints;
- * though it _might_ use SOF irqs for other purposes.
- *
- * And it's not currently needed for host side, which also dedicates
- * endpoints, relies on TX/RX interval registers, and isn't claimed
- * to support ISO transfers yet.
- */
-	if (int_usb & MUSB_INTR_SOF) {
-		void __iomem *mbase = musb->mregs;
-		struct musb_hw_ep	*ep;
-		u8 epnum;
-		u16 frame;
-
-		dev_dbg(musb->controller, "START_OF_FRAME\n");
-		handled = IRQ_HANDLED;
-
-		/* start any periodic Tx transfers waiting for current frame */
-		frame = musb_readw(mbase, MUSB_FRAME);
-		ep = musb->endpoints;
-		for (epnum = 1; (epnum < musb->nr_endpoints)
-					&& (musb->epmask >= (1 << epnum));
-				epnum++, ep++) {
-			/*
-			 * FIXME handle framecounter wraps (12 bits)
-			 * eliminate duplicated StartUrb logic
-			 */
-			if (ep->dwWaitFrame >= frame) {
-				ep->dwWaitFrame = 0;
-				pr_debug("SOF --> periodic TX%s on %d\n",
-					ep->tx_channel ? " DMA" : "",
-					epnum);
-				if (!ep->tx_channel)
-					musb_h_tx_start(musb, epnum);
-				else
-					cppi_hostdma_start(musb, epnum);
-			}
-		}		/* end of for loop */
-	}
-#endif
-
-	schedule_work(&musb->irq_work);
-
-	return handled;
-}
-
-/*-------------------------------------------------------------------------*/
-
 static void musb_generic_disable(struct musb *musb)
 {
 	void __iomem	*mbase = musb->mregs;
@@ -997,29 +428,6 @@ void musb_stop(struct musb *musb)
 	musb_platform_try_idle(musb, 0);
 }
 
-static void musb_shutdown(struct platform_device *pdev)
-{
-	struct musb	*musb = dev_to_musb(&pdev->dev);
-	unsigned long	flags;
-
-	pm_runtime_get_sync(musb->controller);
-
-	musb_host_cleanup(musb);
-	musb_gadget_cleanup(musb);
-
-	spin_lock_irqsave(&musb->lock, flags);
-	musb_platform_disable(musb);
-	musb_generic_disable(musb);
-	spin_unlock_irqrestore(&musb->lock, flags);
-
-	musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
-	musb_platform_exit(musb);
-
-	pm_runtime_put(musb->controller);
-	/* FIXME power down */
-}
-
-
 /*-------------------------------------------------------------------------*/
 
 /*
@@ -1048,10 +456,6 @@ static ushort fifo_mode = 5;
 static ushort fifo_mode = 2;
 #endif
 
-/* "modprobe ... fifo_mode=1" etc */
-module_param(fifo_mode, ushort, 0);
-MODULE_PARM_DESC(fifo_mode, "initial endpoint configuration");
-
 /*
  * tables defining fifo_mode values.  define more if you like.
  * for host side, make sure both halves of ep1 are set up.
@@ -1521,13 +925,6 @@ irqreturn_t musb_interrupt(struct musb *musb)
 		is_host_active(musb) ? "host" : "peripheral",
 		musb->int_usb, musb->int_tx, musb->int_rx);
 
-	/* the core can interrupt us for multiple reasons; docs have
-	 * a generic interrupt flowchart to follow
-	 */
-	if (musb->int_usb)
-		retval |= musb_stage0_irq(musb, musb->int_usb,
-				devctl);
-
 	/* "stage 1" is handling endpoint irqs */
 
 	/* handle endpoint 0 first */
@@ -1577,232 +974,23 @@ irqreturn_t musb_interrupt(struct musb *musb)
 }
 EXPORT_SYMBOL_GPL(musb_interrupt);
 
-#ifndef CONFIG_MUSB_PIO_ONLY
-static bool use_dma = 1;
-
-/* "modprobe ... use_dma=0" etc */
-module_param(use_dma, bool, 0);
-MODULE_PARM_DESC(use_dma, "enable/disable use of DMA");
-
-void musb_dma_completion(struct musb *musb, u8 epnum, u8 transmit)
-{
-	/* called with controller lock already held */
-
-	if (!epnum) {
-#ifndef CONFIG_USB_TUSB_OMAP_DMA
-		if (!is_cppi_enabled()) {
-			/* endpoint 0 */
-			if (is_host_active(musb))
-				musb_h_ep0_irq(musb);
-			else
-				musb_g_ep0_irq(musb);
-		}
-#endif
-	} else {
-		/* endpoints 1..15 */
-		if (transmit) {
-			if (is_host_active(musb))
-				musb_host_tx(musb, epnum);
-			else
-				musb_g_tx(musb, epnum);
-		} else {
-			/* receive */
-			if (is_host_active(musb))
-				musb_host_rx(musb, epnum);
-			else
-				musb_g_rx(musb, epnum);
-		}
-	}
-}
-EXPORT_SYMBOL_GPL(musb_dma_completion);
-
-#else
-#define use_dma			0
-#endif
-
-/*-------------------------------------------------------------------------*/
-
-static ssize_t
-musb_mode_show(struct device *dev, struct device_attribute *attr, char *buf)
-{
-	struct musb *musb = dev_to_musb(dev);
-	unsigned long flags;
-	int ret = -EINVAL;
-
-	spin_lock_irqsave(&musb->lock, flags);
-	ret = sprintf(buf, "%s\n", usb_otg_state_string(musb->xceiv->state));
-	spin_unlock_irqrestore(&musb->lock, flags);
-
-	return ret;
-}
-
-static ssize_t
-musb_mode_store(struct device *dev, struct device_attribute *attr,
-		const char *buf, size_t n)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	unsigned long	flags;
-	int		status;
-
-	spin_lock_irqsave(&musb->lock, flags);
-	if (sysfs_streq(buf, "host"))
-		status = musb_platform_set_mode(musb, MUSB_HOST);
-	else if (sysfs_streq(buf, "peripheral"))
-		status = musb_platform_set_mode(musb, MUSB_PERIPHERAL);
-	else if (sysfs_streq(buf, "otg"))
-		status = musb_platform_set_mode(musb, MUSB_OTG);
-	else
-		status = -EINVAL;
-	spin_unlock_irqrestore(&musb->lock, flags);
-
-	return (status == 0) ? n : status;
-}
-static DEVICE_ATTR(mode, 0644, musb_mode_show, musb_mode_store);
-
-static ssize_t
-musb_vbus_store(struct device *dev, struct device_attribute *attr,
-		const char *buf, size_t n)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	unsigned long	flags;
-	unsigned long	val;
-
-	if (sscanf(buf, "%lu", &val) < 1) {
-		dev_err(dev, "Invalid VBUS timeout ms value\n");
-		return -EINVAL;
-	}
-
-	spin_lock_irqsave(&musb->lock, flags);
-	/* force T(a_wait_bcon) to be zero/unlimited *OR* valid */
-	musb->a_wait_bcon = val ? max_t(int, val, OTG_TIME_A_WAIT_BCON) : 0 ;
-	if (musb->xceiv->state == OTG_STATE_A_WAIT_BCON)
-		musb->is_active = 0;
-	musb_platform_try_idle(musb, jiffies + msecs_to_jiffies(val));
-	spin_unlock_irqrestore(&musb->lock, flags);
-
-	return n;
-}
-
-static ssize_t
-musb_vbus_show(struct device *dev, struct device_attribute *attr, char *buf)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	unsigned long	flags;
-	unsigned long	val;
-	int		vbus;
-
-	spin_lock_irqsave(&musb->lock, flags);
-	val = musb->a_wait_bcon;
-	/* FIXME get_vbus_status() is normally #defined as false...
-	 * and is effectively TUSB-specific.
-	 */
-	vbus = musb_platform_get_vbus_status(musb);
-	spin_unlock_irqrestore(&musb->lock, flags);
-
-	return sprintf(buf, "Vbus %s, timeout %lu msec\n",
-			vbus ? "on" : "off", val);
-}
-static DEVICE_ATTR(vbus, 0644, musb_vbus_show, musb_vbus_store);
-
-/* Gadget drivers can't know that a host is connected so they might want
- * to start SRP, but users can.  This allows userspace to trigger SRP.
- */
-static ssize_t
-musb_srp_store(struct device *dev, struct device_attribute *attr,
-		const char *buf, size_t n)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	unsigned short	srp;
-
-	if (sscanf(buf, "%hu", &srp) != 1
-			|| (srp != 1)) {
-		dev_err(dev, "SRP: Value must be 1\n");
-		return -EINVAL;
-	}
-
-	if (srp == 1)
-		musb_g_wakeup(musb);
-
-	return n;
-}
-static DEVICE_ATTR(srp, 0644, NULL, musb_srp_store);
-
-static struct attribute *musb_attributes[] = {
-	&dev_attr_mode.attr,
-	&dev_attr_vbus.attr,
-	&dev_attr_srp.attr,
-	NULL
-};
-
-static const struct attribute_group musb_attr_group = {
-	.attrs = musb_attributes,
-};
-
-/* Only used to provide driver mode change events */
-static void musb_irq_work(struct work_struct *data)
-{
-	struct musb *musb = container_of(data, struct musb, irq_work);
-
-	if (musb->xceiv->state != musb->xceiv_old_state) {
-		musb->xceiv_old_state = musb->xceiv->state;
-		sysfs_notify(&musb->controller->kobj, NULL, "mode");
-	}
-}
-
-/* Recover from babble interrupt conditions */
-static void musb_recover_work(struct work_struct *data)
-{
-	struct musb *musb = container_of(data, struct musb, recover_work.work);
-	int status, ret;
-
-	ret  = musb_platform_reset(musb);
-	if (ret)
-		return;
-
-	usb_phy_vbus_off(musb->xceiv);
-	usleep_range(100, 200);
-
-	usb_phy_vbus_on(musb->xceiv);
-	usleep_range(100, 200);
-
-	/*
-	 * When a babble condition occurs, the musb controller
-	 * removes the session bit and the endpoint config is lost.
-	 */
-	if (musb->dyn_fifo)
-		status = ep_config_from_table(musb);
-	else
-		status = ep_config_from_hw(musb);
-
-	/* start the session again */
-	if (status == 0)
-		musb_start(musb);
-}
-
 /* --------------------------------------------------------------------------
  * Init support
  */
 
-static struct musb *allocate_instance(struct device *dev,
-		struct musb_hdrc_config *config, void __iomem *mbase)
+static struct musb *musb_init_instance(struct musb *musb,
+		struct musb_hdrc_config *config)
 {
-	struct musb		*musb;
 	struct musb_hw_ep	*ep;
 	int			epnum;
 	int			ret;
 
-	musb = devm_kzalloc(dev, sizeof(*musb), GFP_KERNEL);
-	if (!musb)
-		return NULL;
-
 	INIT_LIST_HEAD(&musb->control);
 	INIT_LIST_HEAD(&musb->in_bulk);
 	INIT_LIST_HEAD(&musb->out_bulk);
 
 	musb->vbuserr_retry = VBUSERR_RETRY_COUNT;
 	musb->a_wait_bcon = OTG_TIME_A_WAIT_BCON;
-	musb->mregs = mbase;
-	musb->ctrl_base = mbase;
 	musb->nIrq = -ENODEV;
 	musb->config = config;
 	BUG_ON(musb->config->num_eps > MUSB_C_NUM_EPS);
@@ -1813,14 +1001,10 @@ static struct musb *allocate_instance(struct device *dev,
 		ep->epnum = epnum;
 	}
 
-	musb->controller = dev;
-
 	ret = musb_host_alloc(musb);
 	if (ret < 0)
 		goto err_free;
 
-	dev_set_drvdata(dev, musb);
-
 	return musb;
 
 err_free:
@@ -1834,32 +1018,40 @@ static void musb_free(struct musb *musb)
 	 * cleanup after everything's been de-activated.
 	 */
 
-#ifdef CONFIG_SYSFS
-	sysfs_remove_group(&musb->controller->kobj, &musb_attr_group);
-#endif
-
-	if (musb->nIrq >= 0) {
-		if (musb->irq_wake)
-			disable_irq_wake(musb->nIrq);
-		free_irq(musb->nIrq, musb);
-	}
-
 	musb_host_free(musb);
 }
 
-static void musb_deassert_reset(struct work_struct *work)
+int musb_init(struct usb_host *host)
 {
-	struct musb *musb;
-	unsigned long flags;
+	struct musb *musb = to_musb(host);
+	void *mbase;
+	int timeout = MUSB_HOST_TIMEOUT;
+	u8 power;
 
-	musb = container_of(work, struct musb, deassert_reset_work.work);
+	musb_start(musb);
+	mbase = musb->mregs;
+	do {
+		if (musb_readb(mbase, MUSB_DEVCTL) & MUSB_DEVCTL_HM)
+			break;
+	} while (--timeout);
+	if (!timeout)
+		return -ENODEV;
 
-	spin_lock_irqsave(&musb->lock, flags);
+	power = musb_readb(mbase, MUSB_POWER);
+	musb_writeb(mbase, MUSB_POWER, MUSB_POWER_RESET | power);
+	udelay(30000);
+	power = musb_readb(mbase, MUSB_POWER);
+	musb_writeb(mbase, MUSB_POWER, ~MUSB_POWER_RESET & power);
 
-	if (musb->port1_status & USB_PORT_STAT_RESET)
-		musb_port_reset(musb, false);
+	musb->isr(musb);
+	udelay(30000); /* necessary for proper hub detection */
+	musb->host_speed = (musb_readb(mbase, MUSB_POWER) & MUSB_POWER_HSMODE) ?
+		USB_SPEED_HIGH :
+		(musb_readb(mbase, MUSB_DEVCTL) & MUSB_DEVCTL_FSDEV) ?
+		USB_SPEED_FULL : USB_SPEED_LOW;
+	musb->is_active = 1;
 
-	spin_unlock_irqrestore(&musb->lock, flags);
+	return 0;
 }
 
 /*
@@ -1870,34 +1062,18 @@ static void musb_deassert_reset(struct work_struct *work)
  * @ctrl: virtual address of controller registers,
  *	not yet corrected for platform-specific offsets
  */
-static int
-musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
+int
+musb_init_controller(struct musb *musb, struct musb_hdrc_platform_data *plat)
 {
 	int			status;
-	struct musb		*musb;
-	struct musb_hdrc_platform_data *plat = dev_get_platdata(dev);
-
-	/* The driver might handle more features than the board; OK.
-	 * Fail when the board needs a feature that's not enabled.
-	 */
-	if (!plat) {
-		dev_dbg(dev, "no platform_data?\n");
-		status = -ENODEV;
-		goto fail0;
-	}
 
 	/* allocate */
-	musb = allocate_instance(dev, plat->config, ctrl);
+	musb = musb_init_instance(musb, plat->config);
 	if (!musb) {
 		status = -ENOMEM;
 		goto fail0;
 	}
 
-	pm_runtime_use_autosuspend(musb->controller);
-	pm_runtime_set_autosuspend_delay(musb->controller, 200);
-	pm_runtime_enable(musb->controller);
-
-	spin_lock_init(&musb->lock);
 	musb->board_set_power = plat->set_power;
 	musb->min_power = plat->min_power;
 	musb->ops = plat->platform_ops;
@@ -1924,32 +1100,10 @@ musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
 		goto fail2;
 	}
 
-	if (!musb->xceiv->io_ops) {
-		musb->xceiv->io_dev = musb->controller;
-		musb->xceiv->io_priv = musb->mregs;
-		musb->xceiv->io_ops = &musb_ulpi_access;
-	}
-
-	pm_runtime_get_sync(musb->controller);
-
-	if (use_dma && dev->dma_mask) {
-		musb->dma_controller = dma_controller_create(musb, musb->mregs);
-		if (IS_ERR(musb->dma_controller)) {
-			status = PTR_ERR(musb->dma_controller);
-			goto fail2_5;
-		}
-	}
-
 	/* be sure interrupts are disabled before connecting ISR */
 	musb_platform_disable(musb);
 	musb_generic_disable(musb);
 
-	/* Init IRQ workqueue before request_irq */
-	INIT_WORK(&musb->irq_work, musb_irq_work);
-	INIT_DELAYED_WORK(&musb->recover_work, musb_recover_work);
-	INIT_DELAYED_WORK(&musb->deassert_reset_work, musb_deassert_reset);
-	INIT_DELAYED_WORK(&musb->finish_resume_work, musb_host_finish_resume);
-
 	/* setup musb parts of the core (especially endpoints) */
 	status = musb_core_init(plat->config->multipoint
 			? MUSB_CONTROLLER_MHDRC
@@ -1957,106 +1111,39 @@ musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
 	if (status < 0)
 		goto fail3;
 
-	setup_timer(&musb->otg_timer, musb_otg_timer_func, (unsigned long) musb);
-
-	/* attach to the IRQ */
-	if (request_irq(nIrq, musb->isr, 0, dev_name(dev), musb)) {
-		dev_err(dev, "request_irq %d failed!\n", nIrq);
-		status = -ENODEV;
-		goto fail3;
-	}
-	musb->nIrq = nIrq;
-	/* FIXME this handles wakeup irqs wrong */
-	if (enable_irq_wake(nIrq) == 0) {
-		musb->irq_wake = 1;
-		device_init_wakeup(dev, 1);
-	} else {
-		musb->irq_wake = 0;
-	}
-
-	/* program PHY to use external vBus if required */
-	if (plat->extvbus) {
-		u8 busctl = musb_read_ulpi_buscontrol(musb->mregs);
-		busctl |= MUSB_ULPI_USE_EXTVBUS;
-		musb_write_ulpi_buscontrol(musb->mregs, busctl);
-	}
-
-	if (musb->xceiv->otg->default_a) {
-		MUSB_HST_MODE(musb);
-		musb->xceiv->state = OTG_STATE_A_IDLE;
-	} else {
-		MUSB_DEV_MODE(musb);
-		musb->xceiv->state = OTG_STATE_B_IDLE;
-	}
-
 	switch (musb->port_mode) {
 	case MUSB_PORT_MODE_HOST:
 		status = musb_host_setup(musb, plat->power);
-		if (status < 0)
-			goto fail3;
-		status = musb_platform_set_mode(musb, MUSB_HOST);
 		break;
 	case MUSB_PORT_MODE_GADGET:
 		status = musb_gadget_setup(musb);
-		if (status < 0)
-			goto fail3;
-		status = musb_platform_set_mode(musb, MUSB_PERIPHERAL);
 		break;
 	case MUSB_PORT_MODE_DUAL_ROLE:
 		status = musb_host_setup(musb, plat->power);
 		if (status < 0)
 			goto fail3;
 		status = musb_gadget_setup(musb);
-		if (status) {
-			musb_host_cleanup(musb);
+		if (status < 0)
 			goto fail3;
-		}
-		status = musb_platform_set_mode(musb, MUSB_OTG);
 		break;
 	default:
-		dev_err(dev, "unsupported port mode %d\n", musb->port_mode);
+		dev_err(musb->controller, "unsupported port mode %d\n", musb->port_mode);
 		break;
 	}
 
 	if (status < 0)
 		goto fail3;
 
-	status = musb_init_debugfs(musb);
-	if (status < 0)
-		goto fail4;
-
-	status = sysfs_create_group(&musb->controller->kobj, &musb_attr_group);
-	if (status)
-		goto fail5;
-
-	pm_runtime_put(musb->controller);
+	if (IS_ENABLED(CONFIG_USB_MUSB_HOST) && plat->mode == USB_DR_MODE_HOST)
+		musb_register(musb);
 
 	return 0;
 
-fail5:
-	musb_exit_debugfs(musb);
-
-fail4:
-	musb_gadget_cleanup(musb);
-	musb_host_cleanup(musb);
-
 fail3:
-	cancel_work_sync(&musb->irq_work);
-	cancel_delayed_work_sync(&musb->recover_work);
-	cancel_delayed_work_sync(&musb->finish_resume_work);
-	cancel_delayed_work_sync(&musb->deassert_reset_work);
-	if (musb->dma_controller)
-		dma_controller_destroy(musb->dma_controller);
-fail2_5:
-	pm_runtime_put_sync(musb->controller);
-
 fail2:
-	if (musb->irq_wake)
-		device_init_wakeup(dev, 0);
 	musb_platform_exit(musb);
 
 fail1:
-	pm_runtime_disable(musb->controller);
 	dev_err(musb->controller,
 		"musb_init_controller failed with status %d\n", status);
 
@@ -2067,307 +1154,3 @@ fail0:
 	return status;
 
 }
-
-/*-------------------------------------------------------------------------*/
-
-/* all implementations (PCI bridge to FPGA, VLYNQ, etc) should just
- * bridge to a platform device; this driver then suffices.
- */
-static int musb_probe(struct platform_device *pdev)
-{
-	struct device	*dev = &pdev->dev;
-	int		irq = platform_get_irq_byname(pdev, "mc");
-	struct resource	*iomem;
-	void __iomem	*base;
-
-	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	if (!iomem || irq <= 0)
-		return -ENODEV;
-
-	base = devm_ioremap_resource(dev, iomem);
-	if (IS_ERR(base))
-		return PTR_ERR(base);
-
-	return musb_init_controller(dev, irq, base);
-}
-
-static int musb_remove(struct platform_device *pdev)
-{
-	struct device	*dev = &pdev->dev;
-	struct musb	*musb = dev_to_musb(dev);
-
-	/* this gets called on rmmod.
-	 *  - Host mode: host may still be active
-	 *  - Peripheral mode: peripheral is deactivated (or never-activated)
-	 *  - OTG mode: both roles are deactivated (or never-activated)
-	 */
-	musb_exit_debugfs(musb);
-	musb_shutdown(pdev);
-
-	if (musb->dma_controller)
-		dma_controller_destroy(musb->dma_controller);
-
-	cancel_work_sync(&musb->irq_work);
-	cancel_delayed_work_sync(&musb->recover_work);
-	cancel_delayed_work_sync(&musb->finish_resume_work);
-	cancel_delayed_work_sync(&musb->deassert_reset_work);
-	musb_free(musb);
-	device_init_wakeup(dev, 0);
-	return 0;
-}
-
-#ifdef	CONFIG_PM
-
-static void musb_save_context(struct musb *musb)
-{
-	int i;
-	void __iomem *musb_base = musb->mregs;
-	void __iomem *epio;
-
-	musb->context.frame = musb_readw(musb_base, MUSB_FRAME);
-	musb->context.testmode = musb_readb(musb_base, MUSB_TESTMODE);
-	musb->context.busctl = musb_read_ulpi_buscontrol(musb->mregs);
-	musb->context.power = musb_readb(musb_base, MUSB_POWER);
-	musb->context.intrusbe = musb_readb(musb_base, MUSB_INTRUSBE);
-	musb->context.index = musb_readb(musb_base, MUSB_INDEX);
-	musb->context.devctl = musb_readb(musb_base, MUSB_DEVCTL);
-
-	for (i = 0; i < musb->config->num_eps; ++i) {
-		struct musb_hw_ep	*hw_ep;
-
-		hw_ep = &musb->endpoints[i];
-		if (!hw_ep)
-			continue;
-
-		epio = hw_ep->regs;
-		if (!epio)
-			continue;
-
-		musb_writeb(musb_base, MUSB_INDEX, i);
-		musb->context.index_regs[i].txmaxp =
-			musb_readw(epio, MUSB_TXMAXP);
-		musb->context.index_regs[i].txcsr =
-			musb_readw(epio, MUSB_TXCSR);
-		musb->context.index_regs[i].rxmaxp =
-			musb_readw(epio, MUSB_RXMAXP);
-		musb->context.index_regs[i].rxcsr =
-			musb_readw(epio, MUSB_RXCSR);
-
-		if (musb->dyn_fifo) {
-			musb->context.index_regs[i].txfifoadd =
-					musb_read_txfifoadd(musb_base);
-			musb->context.index_regs[i].rxfifoadd =
-					musb_read_rxfifoadd(musb_base);
-			musb->context.index_regs[i].txfifosz =
-					musb_read_txfifosz(musb_base);
-			musb->context.index_regs[i].rxfifosz =
-					musb_read_rxfifosz(musb_base);
-		}
-
-		musb->context.index_regs[i].txtype =
-			musb_readb(epio, MUSB_TXTYPE);
-		musb->context.index_regs[i].txinterval =
-			musb_readb(epio, MUSB_TXINTERVAL);
-		musb->context.index_regs[i].rxtype =
-			musb_readb(epio, MUSB_RXTYPE);
-		musb->context.index_regs[i].rxinterval =
-			musb_readb(epio, MUSB_RXINTERVAL);
-
-		musb->context.index_regs[i].txfunaddr =
-			musb_read_txfunaddr(musb_base, i);
-		musb->context.index_regs[i].txhubaddr =
-			musb_read_txhubaddr(musb_base, i);
-		musb->context.index_regs[i].txhubport =
-			musb_read_txhubport(musb_base, i);
-
-		musb->context.index_regs[i].rxfunaddr =
-			musb_read_rxfunaddr(musb_base, i);
-		musb->context.index_regs[i].rxhubaddr =
-			musb_read_rxhubaddr(musb_base, i);
-		musb->context.index_regs[i].rxhubport =
-			musb_read_rxhubport(musb_base, i);
-	}
-}
-
-static void musb_restore_context(struct musb *musb)
-{
-	int i;
-	void __iomem *musb_base = musb->mregs;
-	void __iomem *ep_target_regs;
-	void __iomem *epio;
-	u8 power;
-
-	musb_writew(musb_base, MUSB_FRAME, musb->context.frame);
-	musb_writeb(musb_base, MUSB_TESTMODE, musb->context.testmode);
-	musb_write_ulpi_buscontrol(musb->mregs, musb->context.busctl);
-
-	/* Don't affect SUSPENDM/RESUME bits in POWER reg */
-	power = musb_readb(musb_base, MUSB_POWER);
-	power &= MUSB_POWER_SUSPENDM | MUSB_POWER_RESUME;
-	musb->context.power &= ~(MUSB_POWER_SUSPENDM | MUSB_POWER_RESUME);
-	power |= musb->context.power;
-	musb_writeb(musb_base, MUSB_POWER, power);
-
-	musb_writew(musb_base, MUSB_INTRTXE, musb->intrtxe);
-	musb_writew(musb_base, MUSB_INTRRXE, musb->intrrxe);
-	musb_writeb(musb_base, MUSB_INTRUSBE, musb->context.intrusbe);
-	musb_writeb(musb_base, MUSB_DEVCTL, musb->context.devctl);
-
-	for (i = 0; i < musb->config->num_eps; ++i) {
-		struct musb_hw_ep	*hw_ep;
-
-		hw_ep = &musb->endpoints[i];
-		if (!hw_ep)
-			continue;
-
-		epio = hw_ep->regs;
-		if (!epio)
-			continue;
-
-		musb_writeb(musb_base, MUSB_INDEX, i);
-		musb_writew(epio, MUSB_TXMAXP,
-			musb->context.index_regs[i].txmaxp);
-		musb_writew(epio, MUSB_TXCSR,
-			musb->context.index_regs[i].txcsr);
-		musb_writew(epio, MUSB_RXMAXP,
-			musb->context.index_regs[i].rxmaxp);
-		musb_writew(epio, MUSB_RXCSR,
-			musb->context.index_regs[i].rxcsr);
-
-		if (musb->dyn_fifo) {
-			musb_write_txfifosz(musb_base,
-				musb->context.index_regs[i].txfifosz);
-			musb_write_rxfifosz(musb_base,
-				musb->context.index_regs[i].rxfifosz);
-			musb_write_txfifoadd(musb_base,
-				musb->context.index_regs[i].txfifoadd);
-			musb_write_rxfifoadd(musb_base,
-				musb->context.index_regs[i].rxfifoadd);
-		}
-
-		musb_writeb(epio, MUSB_TXTYPE,
-				musb->context.index_regs[i].txtype);
-		musb_writeb(epio, MUSB_TXINTERVAL,
-				musb->context.index_regs[i].txinterval);
-		musb_writeb(epio, MUSB_RXTYPE,
-				musb->context.index_regs[i].rxtype);
-		musb_writeb(epio, MUSB_RXINTERVAL,
-
-				musb->context.index_regs[i].rxinterval);
-		musb_write_txfunaddr(musb_base, i,
-				musb->context.index_regs[i].txfunaddr);
-		musb_write_txhubaddr(musb_base, i,
-				musb->context.index_regs[i].txhubaddr);
-		musb_write_txhubport(musb_base, i,
-				musb->context.index_regs[i].txhubport);
-
-		ep_target_regs =
-			musb_read_target_reg_base(i, musb_base);
-
-		musb_write_rxfunaddr(ep_target_regs,
-				musb->context.index_regs[i].rxfunaddr);
-		musb_write_rxhubaddr(ep_target_regs,
-				musb->context.index_regs[i].rxhubaddr);
-		musb_write_rxhubport(ep_target_regs,
-				musb->context.index_regs[i].rxhubport);
-	}
-	musb_writeb(musb_base, MUSB_INDEX, musb->context.index);
-}
-
-static int musb_suspend(struct device *dev)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	unsigned long	flags;
-
-	spin_lock_irqsave(&musb->lock, flags);
-
-	if (is_peripheral_active(musb)) {
-		/* FIXME force disconnect unless we know USB will wake
-		 * the system up quickly enough to respond ...
-		 */
-	} else if (is_host_active(musb)) {
-		/* we know all the children are suspended; sometimes
-		 * they will even be wakeup-enabled.
-		 */
-	}
-
-	musb_save_context(musb);
-
-	spin_unlock_irqrestore(&musb->lock, flags);
-	return 0;
-}
-
-static int musb_resume_noirq(struct device *dev)
-{
-	struct musb	*musb = dev_to_musb(dev);
-
-	/*
-	 * For static cmos like DaVinci, register values were preserved
-	 * unless for some reason the whole soc powered down or the USB
-	 * module got reset through the PSC (vs just being disabled).
-	 *
-	 * For the DSPS glue layer though, a full register restore has to
-	 * be done. As it shouldn't harm other platforms, we do it
-	 * unconditionally.
-	 */
-
-	musb_restore_context(musb);
-
-	return 0;
-}
-
-static int musb_runtime_suspend(struct device *dev)
-{
-	struct musb	*musb = dev_to_musb(dev);
-
-	musb_save_context(musb);
-
-	return 0;
-}
-
-static int musb_runtime_resume(struct device *dev)
-{
-	struct musb	*musb = dev_to_musb(dev);
-	static int	first = 1;
-
-	/*
-	 * When pm_runtime_get_sync called for the first time in driver
-	 * init,  some of the structure is still not initialized which is
-	 * used in restore function. But clock needs to be
-	 * enabled before any register access, so
-	 * pm_runtime_get_sync has to be called.
-	 * Also context restore without save does not make
-	 * any sense
-	 */
-	if (!first)
-		musb_restore_context(musb);
-	first = 0;
-
-	return 0;
-}
-
-static const struct dev_pm_ops musb_dev_pm_ops = {
-	.suspend	= musb_suspend,
-	.resume_noirq	= musb_resume_noirq,
-	.runtime_suspend = musb_runtime_suspend,
-	.runtime_resume = musb_runtime_resume,
-};
-
-#define MUSB_DEV_PM_OPS (&musb_dev_pm_ops)
-#else
-#define	MUSB_DEV_PM_OPS	NULL
-#endif
-
-static struct platform_driver musb_driver = {
-	.driver = {
-		.name		= (char *)musb_driver_name,
-		.bus		= &platform_bus_type,
-		.owner		= THIS_MODULE,
-		.pm		= MUSB_DEV_PM_OPS,
-	},
-	.probe		= musb_probe,
-	.remove		= musb_remove,
-	.shutdown	= musb_shutdown,
-};
-
-module_platform_driver(musb_driver);
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 414e57a..46265d6 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -35,19 +35,10 @@
 #ifndef __MUSB_CORE_H__
 #define __MUSB_CORE_H__
 
-#include <linux/slab.h>
-#include <linux/list.h>
-#include <linux/interrupt.h>
-#include <linux/errno.h>
-#include <linux/timer.h>
-#include <linux/device.h>
-#include <linux/usb/ch9.h>
-#include <linux/usb/gadget.h>
-#include <linux/usb.h>
-#include <linux/usb/otg.h>
-#include <linux/usb/musb.h>
-#include <linux/phy/phy.h>
-#include <linux/workqueue.h>
+#include <poller.h>
+#include <notifier.h>
+#include <usb/usb.h>
+#include <usb/phy.h>
 
 struct musb;
 struct musb_hw_ep;
@@ -63,14 +54,12 @@ struct musb_ep;
 #define MUSB_HWVERS_1900	0x784
 #define MUSB_HWVERS_2000	0x800
 
-#include "musb_debug.h"
 #include "musb_dma.h"
 
 #include "musb_io.h"
 #include "musb_regs.h"
 
 #include "musb_gadget.h"
-#include <linux/usb/hcd.h>
 #include "musb_host.h"
 
 /* NOTE:  otg and peripheral-only state machines start at B_IDLE.
@@ -191,13 +180,13 @@ struct musb_platform_ops {
 	void	(*disable)(struct musb *musb);
 
 	int	(*set_mode)(struct musb *musb, u8 mode);
-	void	(*try_idle)(struct musb *musb, unsigned long timeout);
+	void	(*try_idle)(struct musb *musb, uint64_t timeout);
 	int	(*reset)(struct musb *musb);
 
 	int	(*vbus_status)(struct musb *musb);
 	void	(*set_vbus)(struct musb *musb, int on);
 
-	int	(*adjust_channel_params)(struct dma_channel *channel,
+	int	(*adjust_channel_params)(/*struct dma_channel *channel,*/
 				u16 packet_sz, u8 *mode,
 				dma_addr_t *dma_addr, u32 *len);
 };
@@ -285,6 +274,25 @@ struct musb_context_registers {
 	struct musb_csr_regs index_regs[MUSB_C_NUM_EPS];
 };
 
+struct usb_phy;
+struct usb_otg;
+
+/*
+ * Allocated per bus (tree of devices) we have:
+ */
+struct usb_bus {
+	u8 otg_port;			/* 0, or number of OTG/HNP port */
+	unsigned is_b_host:1;		/* true during some HNP roleswitches */
+	unsigned b_hnp_enable:1;	/* OTG: did A-Host enable HNP? */
+};
+
+struct usb_hcd {
+	struct usb_bus self;
+	void *hcd_priv;
+};
+
+#define to_musb(ptr) container_of(ptr, struct musb, host)
+
 /*
  * struct musb - Driver instance data.
  */
@@ -293,13 +301,8 @@ struct musb {
 	spinlock_t		lock;
 
 	const struct musb_platform_ops *ops;
-	struct musb_context_registers context;
 
-	irqreturn_t		(*isr)(int, void *);
-	struct work_struct	irq_work;
-	struct delayed_work	recover_work;
-	struct delayed_work	deassert_reset_work;
-	struct delayed_work	finish_resume_work;
+	int			(*isr)(struct musb *);
 	u16			hwvers;
 
 	u16			intrrxe;
@@ -309,7 +312,7 @@ struct musb {
 
 	u32			port1_status;
 
-	unsigned long		rh_timer;
+	uint64_t		rh_timer;
 
 	enum musb_h_ep0_state	ep0_stage;
 
@@ -325,12 +328,11 @@ struct musb {
 	struct list_head	in_bulk;	/* of musb_qh */
 	struct list_head	out_bulk;	/* of musb_qh */
 
-	struct timer_list	otg_timer;
-	struct notifier_block	nb;
+	struct poller_async	otg_timer;
 
 	struct dma_controller	*dma_controller;
 
-	struct device		*controller;
+	struct device_d		*controller;
 	void __iomem		*ctrl_base;
 	void __iomem		*mregs;
 
@@ -339,7 +341,6 @@ struct musb {
 	dma_addr_t		async;
 	dma_addr_t		sync;
 	void __iomem		*sync_va;
-	u8			tusb_revision;
 #endif
 
 	/* passed down from chip/board specific irq handlers */
@@ -347,8 +348,9 @@ struct musb {
 	u16			int_rx;
 	u16			int_tx;
 
+	//struct device_d		*phydev;
+	struct usb_host		host;
 	struct usb_phy		*xceiv;
-	struct phy		*phy;
 
 	int nIrq;
 	unsigned		irq_wake:1;
@@ -369,7 +371,6 @@ struct musb {
 	bool			is_host;
 
 	int			a_wait_bcon;	/* VBUS timeout in msecs */
-	unsigned long		idle_timeout;	/* Next timeout in jiffies */
 
 	/* active means connected and not suspended */
 	unsigned		is_active:1;
@@ -427,11 +428,7 @@ struct musb {
 	unsigned                double_buffer_not_ok:1;
 
 	struct musb_hdrc_config	*config;
-
-	int			xceiv_old_state;
-#ifdef CONFIG_DEBUG_FS
-	struct dentry		*debugfs_root;
-#endif
+	int host_speed;
 };
 
 static inline struct musb *gadget_to_musb(struct usb_gadget *g)
@@ -518,7 +515,7 @@ extern void musb_read_fifo(struct musb_hw_ep *ep, u16 len, u8 *dst);
 
 extern void musb_load_testpacket(struct musb *);
 
-extern irqreturn_t musb_interrupt(struct musb *);
+extern int musb_interrupt(struct musb *);
 
 extern void musb_hnp_stop(struct musb *musb);
 
@@ -540,16 +537,8 @@ static inline void musb_platform_disable(struct musb *musb)
 		musb->ops->disable(musb);
 }
 
-static inline int musb_platform_set_mode(struct musb *musb, u8 mode)
-{
-	if (!musb->ops->set_mode)
-		return 0;
-
-	return musb->ops->set_mode(musb, mode);
-}
-
 static inline void musb_platform_try_idle(struct musb *musb,
-		unsigned long timeout)
+		uint64_t timeout)
 {
 	if (musb->ops->try_idle)
 		musb->ops->try_idle(musb, timeout);
@@ -587,4 +576,10 @@ static inline int musb_platform_exit(struct musb *musb)
 	return musb->ops->exit(musb);
 }
 
+struct musb_hdrc_platform_data;
+
+int musb_init_controller(struct musb *musb, struct musb_hdrc_platform_data *plat);
+int musb_register(struct musb *data);
+int musb_init(struct usb_host *host);
+
 #endif	/* __MUSB_CORE_H__ */
diff --git a/drivers/usb/musb/musb_dma.h b/drivers/usb/musb/musb_dma.h
index 1d44faa..1345a4f 100644
--- a/drivers/usb/musb/musb_dma.h
+++ b/drivers/usb/musb/musb_dma.h
@@ -129,7 +129,6 @@ struct dma_channel {
 	size_t			actual_len;
 	enum dma_channel_status	status;
 	bool			desired_mode;
-	bool			rx_packet_done;
 };
 
 /*
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index c791ba5..36a316a 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -29,27 +29,19 @@
  * da8xx.c would be merged to this file after testing.
  */
 
-#include <linux/io.h>
+#include <common.h>
+#include <init.h>
+#include <clock.h>
+#include <usb/usb.h>
+#include <usb/musb.h>
+#include <malloc.h>
 #include <linux/err.h>
-#include <linux/platform_device.h>
-#include <linux/dma-mapping.h>
-#include <linux/pm_runtime.h>
-#include <linux/module.h>
-#include <linux/usb/usb_phy_generic.h>
-#include <linux/platform_data/usb-omap.h>
-#include <linux/sizes.h>
-
-#include <linux/of.h>
-#include <linux/of_device.h>
-#include <linux/of_address.h>
-#include <linux/of_irq.h>
-#include <linux/usb/of.h>
-
-#include <linux/debugfs.h>
+#include <linux/barebox-wrapper.h>
 
 #include "musb_core.h"
+#include "phy-am335x.h"
 
-static const struct of_device_id musb_dsps_of_match[];
+static __maybe_unused struct of_device_id musb_dsps_dt_ids[];
 
 /**
  * avoid using musb_readx()/musb_writex() as glue layer should not be
@@ -92,8 +84,6 @@ struct dsps_musb_wrapper {
 	u16	coreintr_status;
 	u16	phy_utmi;
 	u16	mode;
-	u16	tx_mode;
-	u16	rx_mode;
 
 	/* bit positions for control */
 	unsigned	reset:5;
@@ -117,103 +107,36 @@ struct dsps_musb_wrapper {
 
 	/* bit positions for mode */
 	unsigned	iddig:5;
-	unsigned	iddig_mux:5;
 	/* miscellaneous stuff */
 	u8		poll_seconds;
 };
 
-/*
- * register shadow for suspend
- */
-struct dsps_context {
-	u32 control;
-	u32 epintr;
-	u32 coreintr;
-	u32 phy_utmi;
-	u32 mode;
-	u32 tx_mode;
-	u32 rx_mode;
-};
-
 /**
  * DSPS glue structure.
  */
 struct dsps_glue {
-	struct device *dev;
-	struct platform_device *musb;	/* child musb pdev */
+	struct device_d *dev;
+	void __iomem *base;
+	unsigned long flags;
+	enum musb_mode mode;
+	struct musb musb;
+	struct musb_hdrc_config	config;
 	const struct dsps_musb_wrapper *wrp; /* wrapper register offsets */
-	struct timer_list timer;	/* otg_workaround timer */
-	unsigned long last_timer;    /* last timer data for each instance */
-	bool sw_babble_enabled;
-
-	struct dsps_context context;
-	struct debugfs_regset32 regset;
-	struct dentry *dbgfs_root;
-};
-
-static const struct debugfs_reg32 dsps_musb_regs[] = {
-	{ "revision",		0x00 },
-	{ "control",		0x14 },
-	{ "status",		0x18 },
-	{ "eoi",		0x24 },
-	{ "intr0_stat",		0x30 },
-	{ "intr1_stat",		0x34 },
-	{ "intr0_set",		0x38 },
-	{ "intr1_set",		0x3c },
-	{ "txmode",		0x70 },
-	{ "rxmode",		0x74 },
-	{ "autoreq",		0xd0 },
-	{ "srpfixtime",		0xd4 },
-	{ "tdown",		0xd8 },
-	{ "phy_utmi",		0xe0 },
-	{ "mode",		0xe8 },
+	struct poller_async timer;	/* otg_workaround timer */
+	uint64_t last_timer;    /* last timer data for each instance */
+	struct device_d otg_dev;
+	uint32_t otgmode;
+	struct musb_hdrc_platform_data pdata;
 };
 
-static void dsps_musb_try_idle(struct musb *musb, unsigned long timeout)
-{
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-
-	if (timeout == 0)
-		timeout = jiffies + msecs_to_jiffies(3);
-
-	/* Never idle if active, or when VBUS timeout is not set as host */
-	if (musb->is_active || (musb->a_wait_bcon == 0 &&
-				musb->xceiv->state == OTG_STATE_A_WAIT_BCON)) {
-		dev_dbg(musb->controller, "%s active, deleting timer\n",
-				usb_otg_state_string(musb->xceiv->state));
-		del_timer(&glue->timer);
-		glue->last_timer = jiffies;
-		return;
-	}
-	if (musb->port_mode != MUSB_PORT_MODE_DUAL_ROLE)
-		return;
-
-	if (!musb->g.dev.driver)
-		return;
-
-	if (time_after(glue->last_timer, timeout) &&
-				timer_pending(&glue->timer)) {
-		dev_dbg(musb->controller,
-			"Longer idle timer already pending, ignoring...\n");
-		return;
-	}
-	glue->last_timer = timeout;
-
-	dev_dbg(musb->controller, "%s inactive, starting idle timer for %u ms\n",
-		usb_otg_state_string(musb->xceiv->state),
-			jiffies_to_msecs(timeout - jiffies));
-	mod_timer(&glue->timer, timeout);
-}
-
 /**
  * dsps_musb_enable - enable interrupts
  */
 static void dsps_musb_enable(struct musb *musb)
 {
-	struct device *dev = musb->controller;
-	struct platform_device *pdev = to_platform_device(dev->parent);
-	struct dsps_glue *glue = platform_get_drvdata(pdev);
+	struct device_d *dev = musb->controller;
+	struct device_d *pdev = dev;
+	struct dsps_glue *glue = pdev->priv;
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	void __iomem *reg_base = musb->ctrl_base;
 	u32 epmask, coremask;
@@ -228,7 +151,6 @@ static void dsps_musb_enable(struct musb *musb)
 	/* Force the DRVVBUS IRQ so we can start polling for ID change. */
 	dsps_writel(reg_base, wrp->coreintr_set,
 		    (1 << wrp->drvvbus) << wrp->usb_shift);
-	dsps_musb_try_idle(musb, 0);
 }
 
 /**
@@ -236,9 +158,9 @@ static void dsps_musb_enable(struct musb *musb)
  */
 static void dsps_musb_disable(struct musb *musb)
 {
-	struct device *dev = musb->controller;
-	struct platform_device *pdev = to_platform_device(dev->parent);
-	struct dsps_glue *glue = platform_get_drvdata(pdev);
+	struct device_d *dev = musb->controller;
+	struct device_d *pdev = dev;
+	struct dsps_glue *glue = pdev->priv;
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	void __iomem *reg_base = musb->ctrl_base;
 
@@ -248,62 +170,11 @@ static void dsps_musb_disable(struct musb *musb)
 	dsps_writeb(musb->mregs, MUSB_DEVCTL, 0);
 }
 
-static void otg_timer(unsigned long _musb)
-{
-	struct musb *musb = (void *)_musb;
-	void __iomem *mregs = musb->mregs;
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	u8 devctl;
-	unsigned long flags;
-	int skip_session = 0;
-
-	/*
-	 * We poll because DSPS IP's won't expose several OTG-critical
-	 * status change events (from the transceiver) otherwise.
-	 */
-	devctl = dsps_readb(mregs, MUSB_DEVCTL);
-	dev_dbg(musb->controller, "Poll devctl %02x (%s)\n", devctl,
-				usb_otg_state_string(musb->xceiv->state));
-
-	spin_lock_irqsave(&musb->lock, flags);
-	switch (musb->xceiv->state) {
-	case OTG_STATE_A_WAIT_BCON:
-		dsps_writeb(musb->mregs, MUSB_DEVCTL, 0);
-		skip_session = 1;
-		/* fall */
-
-	case OTG_STATE_A_IDLE:
-	case OTG_STATE_B_IDLE:
-		if (devctl & MUSB_DEVCTL_BDEVICE) {
-			musb->xceiv->state = OTG_STATE_B_IDLE;
-			MUSB_DEV_MODE(musb);
-		} else {
-			musb->xceiv->state = OTG_STATE_A_IDLE;
-			MUSB_HST_MODE(musb);
-		}
-		if (!(devctl & MUSB_DEVCTL_SESSION) && !skip_session)
-			dsps_writeb(mregs, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
-		mod_timer(&glue->timer, jiffies + wrp->poll_seconds * HZ);
-		break;
-	case OTG_STATE_A_WAIT_VFALL:
-		musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
-		dsps_writel(musb->ctrl_base, wrp->coreintr_set,
-			    MUSB_INTR_VBUSERROR << wrp->usb_shift);
-		break;
-	default:
-		break;
-	}
-	spin_unlock_irqrestore(&musb->lock, flags);
-}
-
-static irqreturn_t dsps_interrupt(int irq, void *hci)
+static irqreturn_t dsps_interrupt(struct musb *musb)
 {
-	struct musb  *musb = hci;
 	void __iomem *reg_base = musb->ctrl_base;
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	struct device_d *dev = musb->controller;
+	struct dsps_glue *glue = dev->priv;
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
 	unsigned long flags;
 	irqreturn_t ret = IRQ_NONE;
@@ -330,325 +201,75 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 
 	dev_dbg(musb->controller, "usbintr (%x) epintr(%x)\n",
 			usbintr, epintr);
-	/*
-	 * DRVVBUS IRQs are the only proxy we have (a very poor one!) for
-	 * DSPS IP's missing ID change IRQ.  We need an ID change IRQ to
-	 * switch appropriately between halves of the OTG state machine.
-	 * Managing DEVCTL.SESSION per Mentor docs requires that we know its
-	 * value but DEVCTL.BDEVICE is invalid without DEVCTL.SESSION set.
-	 * Also, DRVVBUS pulses for SRP (but not at 5V) ...
-	 */
-	if (is_host_active(musb) && usbintr & MUSB_INTR_BABBLE) {
-		pr_info("CAUTION: musb: Babble Interrupt Occurred\n");
-
-		/*
-		 * When a babble condition occurs, the musb controller removes
-		 * the session and is no longer in host mode. Hence, all
-		 * devices connected to its root hub get disconnected.
-		 *
-		 * Hand this error down to the musb core isr, so it can
-		 * recover.
-		 */
-		musb->int_usb = MUSB_INTR_BABBLE | MUSB_INTR_DISCONNECT;
-		musb->int_tx = musb->int_rx = 0;
-	}
-
-	if (usbintr & ((1 << wrp->drvvbus) << wrp->usb_shift)) {
-		int drvvbus = dsps_readl(reg_base, wrp->status);
-		void __iomem *mregs = musb->mregs;
-		u8 devctl = dsps_readb(mregs, MUSB_DEVCTL);
-		int err;
-
-		err = musb->int_usb & MUSB_INTR_VBUSERROR;
-		if (err) {
-			/*
-			 * The Mentor core doesn't debounce VBUS as needed
-			 * to cope with device connect current spikes. This
-			 * means it's not uncommon for bus-powered devices
-			 * to get VBUS errors during enumeration.
-			 *
-			 * This is a workaround, but newer RTL from Mentor
-			 * seems to allow a better one: "re"-starting sessions
-			 * without waiting for VBUS to stop registering in
-			 * devctl.
-			 */
-			musb->int_usb &= ~MUSB_INTR_VBUSERROR;
-			musb->xceiv->state = OTG_STATE_A_WAIT_VFALL;
-			mod_timer(&glue->timer,
-					jiffies + wrp->poll_seconds * HZ);
-			WARNING("VBUS error workaround (delay coming)\n");
-		} else if (drvvbus) {
-			MUSB_HST_MODE(musb);
-			musb->xceiv->otg->default_a = 1;
-			musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
-			del_timer(&glue->timer);
-		} else {
-			musb->is_active = 0;
-			MUSB_DEV_MODE(musb);
-			musb->xceiv->otg->default_a = 0;
-			musb->xceiv->state = OTG_STATE_B_IDLE;
-		}
-
-		/* NOTE: this must complete power-on within 100 ms. */
-		dev_dbg(musb->controller, "VBUS %s (%s)%s, devctl %02x\n",
-				drvvbus ? "on" : "off",
-				usb_otg_state_string(musb->xceiv->state),
-				err ? " ERROR" : "",
-				devctl);
-		ret = IRQ_HANDLED;
-	}
 
 	if (musb->int_tx || musb->int_rx || musb->int_usb)
 		ret |= musb_interrupt(musb);
 
-	/* Poll for ID change in OTG port mode */
-	if (musb->xceiv->state == OTG_STATE_B_IDLE &&
-			musb->port_mode == MUSB_PORT_MODE_DUAL_ROLE)
-		mod_timer(&glue->timer, jiffies + wrp->poll_seconds * HZ);
 out:
 	spin_unlock_irqrestore(&musb->lock, flags);
 
 	return ret;
 }
 
-static int dsps_musb_dbg_init(struct musb *musb, struct dsps_glue *glue)
-{
-	struct dentry *root;
-	struct dentry *file;
-	char buf[128];
-
-	sprintf(buf, "%s.dsps", dev_name(musb->controller));
-	root = debugfs_create_dir(buf, NULL);
-	if (!root)
-		return -ENOMEM;
-	glue->dbgfs_root = root;
-
-	glue->regset.regs = dsps_musb_regs;
-	glue->regset.nregs = ARRAY_SIZE(dsps_musb_regs);
-	glue->regset.base = musb->ctrl_base;
-
-	file = debugfs_create_regset32("regdump", S_IRUGO, root, &glue->regset);
-	if (!file) {
-		debugfs_remove_recursive(root);
-		return -ENOMEM;
-	}
-	return 0;
-}
-
 static int dsps_musb_init(struct musb *musb)
 {
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-	struct platform_device *parent = to_platform_device(dev->parent);
+	struct device_d *dev = musb->controller;
+	struct dsps_glue *glue = dev->priv;
 	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	void __iomem *reg_base;
-	struct resource *r;
-	u32 rev, val;
-	int ret;
-
-	r = platform_get_resource_byname(parent, IORESOURCE_MEM, "control");
-	if (!r)
-		return -EINVAL;
-
-	reg_base = devm_ioremap_resource(dev, r);
-	if (IS_ERR(reg_base))
-		return PTR_ERR(reg_base);
-	musb->ctrl_base = reg_base;
+	u32 rev, val, mode;
 
-	/* NOP driver needs change if supporting dual instance */
-	musb->xceiv = devm_usb_get_phy_by_phandle(dev, "phys", 0);
+	musb->xceiv = am335x_get_usb_phy();
 	if (IS_ERR(musb->xceiv))
 		return PTR_ERR(musb->xceiv);
 
 	/* Returns zero if e.g. not clocked */
-	rev = dsps_readl(reg_base, wrp->revision);
+	rev = dsps_readl(musb->ctrl_base, wrp->revision);
 	if (!rev)
 		return -ENODEV;
 
 	usb_phy_init(musb->xceiv);
-	setup_timer(&glue->timer, otg_timer, (unsigned long) musb);
 
 	/* Reset the musb */
-	dsps_writel(reg_base, wrp->control, (1 << wrp->reset));
+	dsps_writel(musb->ctrl_base, wrp->control, (1 << wrp->reset));
 
 	musb->isr = dsps_interrupt;
 
 	/* reset the otgdisable bit, needed for host mode to work */
-	val = dsps_readl(reg_base, wrp->phy_utmi);
+	val = dsps_readl(musb->ctrl_base, wrp->phy_utmi);
 	val &= ~(1 << wrp->otg_disable);
 	dsps_writel(musb->ctrl_base, wrp->phy_utmi, val);
 
-	/*
-	 *  Check whether the dsps version has babble control enabled.
-	 * In latest silicon revision the babble control logic is enabled.
-	 * If MUSB_BABBLE_CTL returns 0x4 then we have the babble control
-	 * logic enabled.
-	 */
-	val = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
-	if (val == MUSB_BABBLE_RCV_DISABLE) {
-		glue->sw_babble_enabled = true;
-		val |= MUSB_BABBLE_SW_SESSION_CTRL;
-		dsps_writeb(musb->mregs, MUSB_BABBLE_CTL, val);
+	mode = dsps_readl(musb->ctrl_base, wrp->mode);
+
+	switch (musb->port_mode) {
+	case MUSB_PORT_MODE_HOST:
+		mode &= ~0x100;
+		break;
+	case MUSB_PORT_MODE_GADGET:
+		mode |= 0x100;
+		break;
 	}
 
-	ret = dsps_musb_dbg_init(musb, glue);
-	if (ret)
-		return ret;
+	mode |= 0x80;
+	dsps_writel(musb->ctrl_base, wrp->mode, mode); /* IDDIG=0, IDDIG_MUX=1 */
 
 	return 0;
 }
 
 static int dsps_musb_exit(struct musb *musb)
 {
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-
-	del_timer_sync(&glue->timer);
 	usb_phy_shutdown(musb->xceiv);
-	debugfs_remove_recursive(glue->dbgfs_root);
-
-	return 0;
-}
-
-static int dsps_musb_set_mode(struct musb *musb, u8 mode)
-{
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	void __iomem *ctrl_base = musb->ctrl_base;
-	u32 reg;
-
-	reg = dsps_readl(ctrl_base, wrp->mode);
-
-	switch (mode) {
-	case MUSB_HOST:
-		reg &= ~(1 << wrp->iddig);
-
-		/*
-		 * if we're setting mode to host-only or device-only, we're
-		 * going to ignore whatever the PHY sends us and just force
-		 * ID pin status by SW
-		 */
-		reg |= (1 << wrp->iddig_mux);
-
-		dsps_writel(ctrl_base, wrp->mode, reg);
-		dsps_writel(ctrl_base, wrp->phy_utmi, 0x02);
-		break;
-	case MUSB_PERIPHERAL:
-		reg |= (1 << wrp->iddig);
-
-		/*
-		 * if we're setting mode to host-only or device-only, we're
-		 * going to ignore whatever the PHY sends us and just force
-		 * ID pin status by SW
-		 */
-		reg |= (1 << wrp->iddig_mux);
-
-		dsps_writel(ctrl_base, wrp->mode, reg);
-		break;
-	case MUSB_OTG:
-		dsps_writel(ctrl_base, wrp->phy_utmi, 0x02);
-		break;
-	default:
-		dev_err(glue->dev, "unsupported mode %d\n", mode);
-		return -EINVAL;
-	}
-
 	return 0;
 }
 
-static bool  sw_babble_control(struct musb *musb)
-{
-	u8 babble_ctl;
-	bool session_restart =  false;
-
-	babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
-	dev_dbg(musb->controller, "babble: MUSB_BABBLE_CTL value %x\n",
-		babble_ctl);
-	/*
-	 * check line monitor flag to check whether babble is
-	 * due to noise
-	 */
-	dev_dbg(musb->controller, "STUCK_J is %s\n",
-		babble_ctl & MUSB_BABBLE_STUCK_J ? "set" : "reset");
-
-	if (babble_ctl & MUSB_BABBLE_STUCK_J) {
-		int timeout = 10;
-
-		/*
-		 * babble is due to noise, then set transmit idle (d7 bit)
-		 * to resume normal operation
-		 */
-		babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
-		babble_ctl |= MUSB_BABBLE_FORCE_TXIDLE;
-		dsps_writeb(musb->mregs, MUSB_BABBLE_CTL, babble_ctl);
-
-		/* wait till line monitor flag cleared */
-		dev_dbg(musb->controller, "Set TXIDLE, wait J to clear\n");
-		do {
-			babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
-			udelay(1);
-		} while ((babble_ctl & MUSB_BABBLE_STUCK_J) && timeout--);
-
-		/* check whether stuck_at_j bit cleared */
-		if (babble_ctl & MUSB_BABBLE_STUCK_J) {
-			/*
-			 * real babble condition has occurred
-			 * restart the controller to start the
-			 * session again
-			 */
-			dev_dbg(musb->controller, "J not cleared, misc (%x)\n",
-				babble_ctl);
-			session_restart = true;
-		}
-	} else {
-		session_restart = true;
-	}
-
-	return session_restart;
-}
-
-static int dsps_musb_reset(struct musb *musb)
-{
-	struct device *dev = musb->controller;
-	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
-	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	int session_restart = 0;
-
-	if (glue->sw_babble_enabled)
-		session_restart = sw_babble_control(musb);
-	/*
-	 * In case of new silicon version babble condition can be recovered
-	 * without resetting the MUSB. But for older silicon versions, MUSB
-	 * reset is needed
-	 */
-	if (session_restart || !glue->sw_babble_enabled) {
-		dev_info(musb->controller, "Restarting MUSB to recover from Babble\n");
-		dsps_writel(musb->ctrl_base, wrp->control, (1 << wrp->reset));
-		usleep_range(100, 200);
-		usb_phy_shutdown(musb->xceiv);
-		usleep_range(100, 200);
-		usb_phy_init(musb->xceiv);
-		session_restart = 1;
-	}
-
-	return !session_restart;
-}
-
 static struct musb_platform_ops dsps_ops = {
 	.init		= dsps_musb_init,
 	.exit		= dsps_musb_exit,
 
 	.enable		= dsps_musb_enable,
 	.disable	= dsps_musb_disable,
-
-	.try_idle	= dsps_musb_try_idle,
-	.set_mode	= dsps_musb_set_mode,
-	.reset		= dsps_musb_reset,
 };
 
-static u64 musb_dmamask = DMA_BIT_MASK(32);
-
 static int get_int_prop(struct device_node *dn, const char *s)
 {
 	int ret;
@@ -660,11 +281,11 @@ static int get_int_prop(struct device_node *dn, const char *s)
 	return val;
 }
 
-static int get_musb_port_mode(struct device *dev)
+static int get_musb_port_mode(struct device_d *dev)
 {
 	enum usb_dr_mode mode;
 
-	mode = of_usb_get_dr_mode(dev->of_node);
+	mode = of_usb_get_dr_mode(dev->device_node, NULL);
 	switch (mode) {
 	case USB_DR_MODE_HOST:
 		return MUSB_PORT_MODE_HOST;
@@ -675,153 +296,122 @@ static int get_musb_port_mode(struct device *dev)
 	case USB_DR_MODE_UNKNOWN:
 	case USB_DR_MODE_OTG:
 	default:
+		if (!IS_ENABLED(CONFIG_USB_MUSB_HOST))
+			return MUSB_PORT_MODE_GADGET;
+		if (!IS_ENABLED(CONFIG_USB_MUSB_GADGET))
+			return MUSB_PORT_MODE_HOST;
 		return MUSB_PORT_MODE_DUAL_ROLE;
 	}
 }
 
-static int dsps_create_musb_pdev(struct dsps_glue *glue,
-		struct platform_device *parent)
+static int dsps_set_mode(struct param_d *param, void *priv)
 {
-	struct musb_hdrc_platform_data pdata;
-	struct resource	resources[2];
-	struct resource	*res;
-	struct device *dev = &parent->dev;
-	struct musb_hdrc_config	*config;
-	struct platform_device *musb;
-	struct device_node *dn = parent->dev.of_node;
-	int ret;
+	struct dsps_glue *glue = priv;
 
-	memset(resources, 0, sizeof(resources));
-	res = platform_get_resource_byname(parent, IORESOURCE_MEM, "mc");
-	if (!res) {
-		dev_err(dev, "failed to get memory.\n");
-		return -EINVAL;
-	}
-	resources[0] = *res;
+	if (glue->pdata.mode != MUSB_PORT_MODE_DUAL_ROLE)
+		return -EBUSY;
 
-	res = platform_get_resource_byname(parent, IORESOURCE_IRQ, "mc");
-	if (!res) {
-		dev_err(dev, "failed to get irq.\n");
+	switch (glue->otgmode) {
+	case 0:
+	default:
 		return -EINVAL;
-	}
-	resources[1] = *res;
-
-	/* allocate the child platform device */
-	musb = platform_device_alloc("musb-hdrc", PLATFORM_DEVID_AUTO);
-	if (!musb) {
-		dev_err(dev, "failed to allocate musb device\n");
-		return -ENOMEM;
+	case 1:
+		glue->pdata.mode = MUSB_PORT_MODE_HOST;
+		break;
+	case 2:
+		glue->pdata.mode = MUSB_PORT_MODE_GADGET;
+		break;
 	}
 
-	musb->dev.parent		= dev;
-	musb->dev.dma_mask		= &musb_dmamask;
-	musb->dev.coherent_dma_mask	= musb_dmamask;
-	musb->dev.of_node		= of_node_get(dn);
+	return musb_init_controller(&glue->musb, &glue->pdata);
+}
 
-	glue->musb = musb;
+static const char *dsps_mode_names[] = {
+	"otg", "host", "peripheral"
+};
 
-	ret = platform_device_add_resources(musb, resources,
-			ARRAY_SIZE(resources));
-	if (ret) {
-		dev_err(dev, "failed to add resources\n");
-		goto err;
-	}
+static int dsps_register_otg_device(struct dsps_glue *glue)
+{
+	int ret;
 
-	config = devm_kzalloc(&parent->dev, sizeof(*config), GFP_KERNEL);
-	if (!config) {
-		dev_err(dev, "failed to allocate musb hdrc config\n");
-		ret = -ENOMEM;
-		goto err;
-	}
-	pdata.config = config;
-	pdata.platform_ops = &dsps_ops;
+	strcpy(glue->otg_dev.name, "otg");
+	glue->otg_dev.id = DEVICE_ID_DYNAMIC,
+	glue->otg_dev.parent = glue->dev;
 
-	config->num_eps = get_int_prop(dn, "mentor,num-eps");
-	config->ram_bits = get_int_prop(dn, "mentor,ram-bits");
-	config->host_port_deassert_reset_at_resume = 1;
-	pdata.mode = get_musb_port_mode(dev);
-	/* DT keeps this entry in mA, musb expects it as per USB spec */
-	pdata.power = get_int_prop(dn, "mentor,power") / 2;
-	config->multipoint = of_property_read_bool(dn, "mentor,multipoint");
-
-	ret = platform_device_add_data(musb, &pdata, sizeof(pdata));
-	if (ret) {
-		dev_err(dev, "failed to add platform_data\n");
-		goto err;
-	}
+	ret = register_device(&glue->otg_dev);
+	if (ret)
+		return ret;
 
-	ret = platform_device_add(musb);
-	if (ret) {
-		dev_err(dev, "failed to register musb device\n");
-		goto err;
-	}
+	dev_add_param_enum(&glue->otg_dev, "mode",
+			dsps_set_mode, NULL, &glue->otgmode,
+			dsps_mode_names, ARRAY_SIZE(dsps_mode_names), glue);
 	return 0;
-
-err:
-	platform_device_put(musb);
-	return ret;
 }
 
-static int dsps_probe(struct platform_device *pdev)
+static int dsps_probe(struct device_d *dev)
 {
-	const struct of_device_id *match;
+	struct musb_hdrc_platform_data *pdata;
+	struct musb_hdrc_config	*config;
+	struct device_node *dn = dev->device_node;
 	const struct dsps_musb_wrapper *wrp;
 	struct dsps_glue *glue;
 	int ret;
 
-	if (!strcmp(pdev->name, "musb-hdrc"))
-		return -ENODEV;
+	ret = dev_get_drvdata(dev, (unsigned long *)&wrp);
+	if (ret)
+		return ret;
 
-	match = of_match_node(musb_dsps_of_match, pdev->dev.of_node);
-	if (!match) {
-		dev_err(&pdev->dev, "fail to get matching of_match struct\n");
-		return -EINVAL;
+	if (!IS_ENABLED(CONFIG_USB_MUSB_HOST) &&
+			!IS_ENABLED(CONFIG_USB_MUSB_GADGET)) {
+		dev_err(dev, "Both host and device driver disabled.\n");
+		return -ENODEV;
 	}
-	wrp = match->data;
 
 	/* allocate glue */
-	glue = devm_kzalloc(&pdev->dev, sizeof(*glue), GFP_KERNEL);
+	glue = kzalloc(sizeof(*glue), GFP_KERNEL);
 	if (!glue) {
-		dev_err(&pdev->dev, "unable to allocate glue memory\n");
+		dev_err(dev, "unable to allocate glue memory\n");
 		return -ENOMEM;
 	}
 
-	glue->dev = &pdev->dev;
+	glue->dev = dev;
 	glue->wrp = wrp;
 
-	platform_set_drvdata(pdev, glue);
-	pm_runtime_enable(&pdev->dev);
+	dev->priv = glue;
 
-	ret = pm_runtime_get_sync(&pdev->dev);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "pm_runtime_get_sync FAILED");
-		goto err2;
-	}
+	pdata = &glue->pdata;
 
-	ret = dsps_create_musb_pdev(glue, pdev);
-	if (ret)
-		goto err3;
+	glue->musb.mregs = dev_request_mem_region(dev, 0);
+	if (IS_ERR(glue->musb.mregs))
+		return PTR_ERR(glue->musb.mregs);
 
-	return 0;
+	glue->musb.ctrl_base = dev_request_mem_region(dev, 1);
+	if (IS_ERR(glue->musb.ctrl_base))
+		return PTR_ERR(glue->musb.ctrl_base);
 
-err3:
-	pm_runtime_put(&pdev->dev);
-err2:
-	pm_runtime_disable(&pdev->dev);
-	return ret;
-}
+	glue->musb.controller = dev;
 
-static int dsps_remove(struct platform_device *pdev)
-{
-	struct dsps_glue *glue = platform_get_drvdata(pdev);
+	config = &glue->config;
 
-	platform_device_unregister(glue->musb);
+	pdata->config = config;
+	pdata->platform_ops = &dsps_ops;
 
-	/* disable usbss clocks */
-	pm_runtime_put(&pdev->dev);
-	pm_runtime_disable(&pdev->dev);
+	config->num_eps = get_int_prop(dn, "mentor,num-eps");
+	config->ram_bits = get_int_prop(dn, "mentor,ram-bits");
 
-	return 0;
+	pdata->mode = get_musb_port_mode(dev);
+	/* DT keeps this entry in mA, musb expects it as per USB spec */
+	pdata->power = get_int_prop(dn, "mentor,power") / 2;
+	config->multipoint = of_property_read_bool(dn, "mentor,multipoint");
+
+	if (pdata->mode == MUSB_PORT_MODE_DUAL_ROLE) {
+		ret = dsps_register_otg_device(glue);
+		if (ret)
+			return ret;
+		return 0;
+	}
+
+	return musb_init_controller(&glue->musb, pdata);
 }
 
 static const struct dsps_musb_wrapper am33xx_driver_data = {
@@ -836,12 +426,9 @@ static const struct dsps_musb_wrapper am33xx_driver_data = {
 	.coreintr_status	= 0x34,
 	.phy_utmi		= 0xe0,
 	.mode			= 0xe8,
-	.tx_mode		= 0x70,
-	.rx_mode		= 0x74,
 	.reset			= 0,
 	.otg_disable		= 21,
 	.iddig			= 8,
-	.iddig_mux		= 7,
 	.usb_shift		= 0,
 	.usb_mask		= 0x1ff,
 	.usb_bitmap		= (0x1ff << 0),
@@ -855,66 +442,23 @@ static const struct dsps_musb_wrapper am33xx_driver_data = {
 	.poll_seconds		= 2,
 };
 
-static const struct of_device_id musb_dsps_of_match[] = {
-	{ .compatible = "ti,musb-am33xx",
-		.data = (void *) &am33xx_driver_data, },
-	{  },
+static __maybe_unused struct of_device_id musb_dsps_dt_ids[] = {
+	{
+		.compatible = "ti,musb-am33xx",
+		.data = (unsigned long) &am33xx_driver_data,
+	}, {
+		/* sentinel */
+	},
 };
-MODULE_DEVICE_TABLE(of, musb_dsps_of_match);
-
-#ifdef CONFIG_PM_SLEEP
-static int dsps_suspend(struct device *dev)
-{
-	struct dsps_glue *glue = dev_get_drvdata(dev);
-	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	struct musb *musb = platform_get_drvdata(glue->musb);
-	void __iomem *mbase = musb->ctrl_base;
 
-	glue->context.control = dsps_readl(mbase, wrp->control);
-	glue->context.epintr = dsps_readl(mbase, wrp->epintr_set);
-	glue->context.coreintr = dsps_readl(mbase, wrp->coreintr_set);
-	glue->context.phy_utmi = dsps_readl(mbase, wrp->phy_utmi);
-	glue->context.mode = dsps_readl(mbase, wrp->mode);
-	glue->context.tx_mode = dsps_readl(mbase, wrp->tx_mode);
-	glue->context.rx_mode = dsps_readl(mbase, wrp->rx_mode);
-
-	return 0;
-}
-
-static int dsps_resume(struct device *dev)
-{
-	struct dsps_glue *glue = dev_get_drvdata(dev);
-	const struct dsps_musb_wrapper *wrp = glue->wrp;
-	struct musb *musb = platform_get_drvdata(glue->musb);
-	void __iomem *mbase = musb->ctrl_base;
-
-	dsps_writel(mbase, wrp->control, glue->context.control);
-	dsps_writel(mbase, wrp->epintr_set, glue->context.epintr);
-	dsps_writel(mbase, wrp->coreintr_set, glue->context.coreintr);
-	dsps_writel(mbase, wrp->phy_utmi, glue->context.phy_utmi);
-	dsps_writel(mbase, wrp->mode, glue->context.mode);
-	dsps_writel(mbase, wrp->tx_mode, glue->context.tx_mode);
-	dsps_writel(mbase, wrp->rx_mode, glue->context.rx_mode);
-
-	return 0;
-}
-#endif
-
-static SIMPLE_DEV_PM_OPS(dsps_pm_ops, dsps_suspend, dsps_resume);
-
-static struct platform_driver dsps_usbss_driver = {
-	.probe		= dsps_probe,
-	.remove         = dsps_remove,
-	.driver         = {
-		.name   = "musb-dsps",
-		.pm	= &dsps_pm_ops,
-		.of_match_table	= musb_dsps_of_match,
-	},
+static struct driver_d dsps_usbss_driver = {
+	.name   = "musb-dsps",
+	.probe  = dsps_probe,
+	.of_compatible = DRV_OF_COMPAT(musb_dsps_dt_ids),
 };
+device_platform_driver(dsps_usbss_driver);
 
 MODULE_DESCRIPTION("TI DSPS MUSB Glue Layer");
 MODULE_AUTHOR("Ravi B <ravibabu@ti.com>");
 MODULE_AUTHOR("Ajay Kumar Gupta <ajay.gupta@ti.com>");
 MODULE_LICENSE("GPL v2");
-
-module_platform_driver(dsps_usbss_driver);
diff --git a/drivers/usb/musb/musb_gadget.c b/drivers/usb/musb/musb_gadget.c
index d4aa779..3f0ddd1 100644
--- a/drivers/usb/musb/musb_gadget.c
+++ b/drivers/usb/musb/musb_gadget.c
@@ -33,108 +33,11 @@
  *
  */
 
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/timer.h>
-#include <linux/module.h>
-#include <linux/smp.h>
-#include <linux/spinlock.h>
-#include <linux/delay.h>
-#include <linux/dma-mapping.h>
-#include <linux/slab.h>
-
+#include <common.h>
+#include <malloc.h>
+#include <clock.h>
 #include "musb_core.h"
-
-
-/* ----------------------------------------------------------------------- */
-
-#define is_buffer_mapped(req) (is_dma_capable() && \
-					(req->map_state != UN_MAPPED))
-
-/* Maps the buffer to dma  */
-
-static inline void map_dma_buffer(struct musb_request *request,
-			struct musb *musb, struct musb_ep *musb_ep)
-{
-	int compatible = true;
-	struct dma_controller *dma = musb->dma_controller;
-
-	request->map_state = UN_MAPPED;
-
-	if (!is_dma_capable() || !musb_ep->dma)
-		return;
-
-	/* Check if DMA engine can handle this request.
-	 * DMA code must reject the USB request explicitly.
-	 * Default behaviour is to map the request.
-	 */
-	if (dma->is_compatible)
-		compatible = dma->is_compatible(musb_ep->dma,
-				musb_ep->packet_sz, request->request.buf,
-				request->request.length);
-	if (!compatible)
-		return;
-
-	if (request->request.dma == DMA_ADDR_INVALID) {
-		dma_addr_t dma_addr;
-		int ret;
-
-		dma_addr = dma_map_single(
-				musb->controller,
-				request->request.buf,
-				request->request.length,
-				request->tx
-					? DMA_TO_DEVICE
-					: DMA_FROM_DEVICE);
-		ret = dma_mapping_error(musb->controller, dma_addr);
-		if (ret)
-			return;
-
-		request->request.dma = dma_addr;
-		request->map_state = MUSB_MAPPED;
-	} else {
-		dma_sync_single_for_device(musb->controller,
-			request->request.dma,
-			request->request.length,
-			request->tx
-				? DMA_TO_DEVICE
-				: DMA_FROM_DEVICE);
-		request->map_state = PRE_MAPPED;
-	}
-}
-
-/* Unmap the buffer from dma and maps it back to cpu */
-static inline void unmap_dma_buffer(struct musb_request *request,
-				struct musb *musb)
-{
-	struct musb_ep *musb_ep = request->ep;
-
-	if (!is_buffer_mapped(request) || !musb_ep->dma)
-		return;
-
-	if (request->request.dma == DMA_ADDR_INVALID) {
-		dev_vdbg(musb->controller,
-				"not unmapping a never mapped buffer\n");
-		return;
-	}
-	if (request->map_state == MUSB_MAPPED) {
-		dma_unmap_single(musb->controller,
-			request->request.dma,
-			request->request.length,
-			request->tx
-				? DMA_TO_DEVICE
-				: DMA_FROM_DEVICE);
-		request->request.dma = DMA_ADDR_INVALID;
-	} else { /* PRE_MAPPED */
-		dma_sync_single_for_cpu(musb->controller,
-			request->request.dma,
-			request->request.length,
-			request->tx
-				? DMA_TO_DEVICE
-				: DMA_FROM_DEVICE);
-	}
-	request->map_state = UN_MAPPED;
-}
+#include "musb_gadget.h"
 
 /*
  * Immediately complete a request.
@@ -164,9 +67,6 @@ __acquires(ep->musb->lock)
 	ep->busy = 1;
 	spin_unlock(&musb->lock);
 
-	if (!dma_mapping_error(&musb->g.dev, request->dma))
-		unmap_dma_buffer(req, musb);
-
 	if (request->status == 0)
 		dev_dbg(musb->controller, "%s done request %p,  %d/%d\n",
 				ep->end_point.name, request,
@@ -189,40 +89,10 @@ __acquires(ep->musb->lock)
  */
 static void nuke(struct musb_ep *ep, const int status)
 {
-	struct musb		*musb = ep->musb;
 	struct musb_request	*req = NULL;
-	void __iomem *epio = ep->musb->endpoints[ep->current_epnum].regs;
 
 	ep->busy = 1;
 
-	if (is_dma_capable() && ep->dma) {
-		struct dma_controller	*c = ep->musb->dma_controller;
-		int value;
-
-		if (ep->is_in) {
-			/*
-			 * The programming guide says that we must not clear
-			 * the DMAMODE bit before DMAENAB, so we only
-			 * clear it in the second write...
-			 */
-			musb_writew(epio, MUSB_TXCSR,
-				    MUSB_TXCSR_DMAMODE | MUSB_TXCSR_FLUSHFIFO);
-			musb_writew(epio, MUSB_TXCSR,
-					0 | MUSB_TXCSR_FLUSHFIFO);
-		} else {
-			musb_writew(epio, MUSB_RXCSR,
-					0 | MUSB_RXCSR_FLUSHFIFO);
-			musb_writew(epio, MUSB_RXCSR,
-					0 | MUSB_RXCSR_FLUSHFIFO);
-		}
-
-		value = c->channel_abort(ep->dma);
-		dev_dbg(musb->controller, "%s: abort DMA --> %d\n",
-				ep->name, value);
-		c->channel_release(ep->dma);
-		ep->dma = NULL;
-	}
-
 	while (!list_empty(&ep->req_list)) {
 		req = list_first_entry(&ep->req_list, struct musb_request, list);
 		musb_g_giveback(ep, &req->request, status);
@@ -271,12 +141,6 @@ static void txstate(struct musb *musb, struct musb_request *req)
 		return;
 	}
 
-	/* we shouldn't get here while DMA is active ... but we do ... */
-	if (dma_channel_status(musb_ep->dma) == MUSB_DMA_STATUS_BUSY) {
-		dev_dbg(musb->controller, "dma pending...\n");
-		return;
-	}
-
 	/* read TXCSR before */
 	csr = musb_readw(epio, MUSB_TXCSR);
 
@@ -300,124 +164,7 @@ static void txstate(struct musb *musb, struct musb_request *req)
 			epnum, musb_ep->packet_sz, fifo_count,
 			csr);
 
-#ifndef	CONFIG_MUSB_PIO_ONLY
-	if (is_buffer_mapped(req)) {
-		struct dma_controller	*c = musb->dma_controller;
-		size_t request_size;
-
-		/* setup DMA, then program endpoint CSR */
-		request_size = min_t(size_t, request->length - request->actual,
-					musb_ep->dma->max_len);
-
-		use_dma = (request->dma != DMA_ADDR_INVALID && request_size);
-
-		/* MUSB_TXCSR_P_ISO is still set correctly */
-
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
-		{
-			if (request_size < musb_ep->packet_sz)
-				musb_ep->dma->desired_mode = 0;
-			else
-				musb_ep->dma->desired_mode = 1;
-
-			use_dma = use_dma && c->channel_program(
-					musb_ep->dma, musb_ep->packet_sz,
-					musb_ep->dma->desired_mode,
-					request->dma + request->actual, request_size);
-			if (use_dma) {
-				if (musb_ep->dma->desired_mode == 0) {
-					/*
-					 * We must not clear the DMAMODE bit
-					 * before the DMAENAB bit -- and the
-					 * latter doesn't always get cleared
-					 * before we get here...
-					 */
-					csr &= ~(MUSB_TXCSR_AUTOSET
-						| MUSB_TXCSR_DMAENAB);
-					musb_writew(epio, MUSB_TXCSR, csr
-						| MUSB_TXCSR_P_WZC_BITS);
-					csr &= ~MUSB_TXCSR_DMAMODE;
-					csr |= (MUSB_TXCSR_DMAENAB |
-							MUSB_TXCSR_MODE);
-					/* against programming guide */
-				} else {
-					csr |= (MUSB_TXCSR_DMAENAB
-							| MUSB_TXCSR_DMAMODE
-							| MUSB_TXCSR_MODE);
-					/*
-					 * Enable Autoset according to table
-					 * below
-					 * bulk_split hb_mult	Autoset_Enable
-					 *	0	0	Yes(Normal)
-					 *	0	>0	No(High BW ISO)
-					 *	1	0	Yes(HS bulk)
-					 *	1	>0	Yes(FS bulk)
-					 */
-					if (!musb_ep->hb_mult ||
-						(musb_ep->hb_mult &&
-						 can_bulk_split(musb,
-						    musb_ep->type)))
-						csr |= MUSB_TXCSR_AUTOSET;
-				}
-				csr &= ~MUSB_TXCSR_P_UNDERRUN;
-
-				musb_writew(epio, MUSB_TXCSR, csr);
-			}
-		}
-
-#endif
-		if (is_cppi_enabled()) {
-			/* program endpoint CSR first, then setup DMA */
-			csr &= ~(MUSB_TXCSR_P_UNDERRUN | MUSB_TXCSR_TXPKTRDY);
-			csr |= MUSB_TXCSR_DMAENAB | MUSB_TXCSR_DMAMODE |
-				MUSB_TXCSR_MODE;
-			musb_writew(epio, MUSB_TXCSR, (MUSB_TXCSR_P_WZC_BITS &
-						~MUSB_TXCSR_P_UNDERRUN) | csr);
-
-			/* ensure writebuffer is empty */
-			csr = musb_readw(epio, MUSB_TXCSR);
-
-			/*
-			 * NOTE host side sets DMAENAB later than this; both are
-			 * OK since the transfer dma glue (between CPPI and
-			 * Mentor fifos) just tells CPPI it could start. Data
-			 * only moves to the USB TX fifo when both fifos are
-			 * ready.
-			 */
-			/*
-			 * "mode" is irrelevant here; handle terminating ZLPs
-			 * like PIO does, since the hardware RNDIS mode seems
-			 * unreliable except for the
-			 * last-packet-is-already-short case.
-			 */
-			use_dma = use_dma && c->channel_program(
-					musb_ep->dma, musb_ep->packet_sz,
-					0,
-					request->dma + request->actual,
-					request_size);
-			if (!use_dma) {
-				c->channel_release(musb_ep->dma);
-				musb_ep->dma = NULL;
-				csr &= ~MUSB_TXCSR_DMAENAB;
-				musb_writew(epio, MUSB_TXCSR, csr);
-				/* invariant: prequest->buf is non-null */
-			}
-		} else if (tusb_dma_omap())
-			use_dma = use_dma && c->channel_program(
-					musb_ep->dma, musb_ep->packet_sz,
-					request->zero,
-					request->dma + request->actual,
-					request_size);
-	}
-#endif
-
 	if (!use_dma) {
-		/*
-		 * Unmap the dma buffer back to cpu if dma channel
-		 * programming fails
-		 */
-		unmap_dma_buffer(req, musb);
-
 		musb_write_fifo(musb_ep->hw_ep, fifo_count,
 				(u8 *) (request->buf + request->actual));
 		request->actual += fifo_count;
@@ -447,7 +194,6 @@ void musb_g_tx(struct musb *musb, u8 epnum)
 	u8 __iomem		*mbase = musb->mregs;
 	struct musb_ep		*musb_ep = &musb->endpoints[epnum].ep_in;
 	void __iomem		*epio = musb->endpoints[epnum].regs;
-	struct dma_channel	*dma;
 
 	musb_ep_select(mbase, epnum);
 	req = next_request(musb_ep);
@@ -456,8 +202,6 @@ void musb_g_tx(struct musb *musb, u8 epnum)
 	csr = musb_readw(epio, MUSB_TXCSR);
 	dev_dbg(musb->controller, "<== %s, txcsr %04x\n", musb_ep->end_point.name, csr);
 
-	dma = is_dma_capable() ? musb_ep->dma : NULL;
-
 	/*
 	 * REVISIT: for high bandwidth, MUSB_TXCSR_P_INCOMPTX
 	 * probably rates reporting as a host error.
@@ -478,31 +222,7 @@ void musb_g_tx(struct musb *musb, u8 epnum)
 				epnum, request);
 	}
 
-	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-		/*
-		 * SHOULD NOT HAPPEN... has with CPPI though, after
-		 * changing SENDSTALL (and other cases); harmless?
-		 */
-		dev_dbg(musb->controller, "%s dma still busy?\n", musb_ep->end_point.name);
-		return;
-	}
-
 	if (request) {
-		u8	is_dma = 0;
-
-		if (dma && (csr & MUSB_TXCSR_DMAENAB)) {
-			is_dma = 1;
-			csr |= MUSB_TXCSR_P_WZC_BITS;
-			csr &= ~(MUSB_TXCSR_DMAENAB | MUSB_TXCSR_P_UNDERRUN |
-				 MUSB_TXCSR_TXPKTRDY | MUSB_TXCSR_AUTOSET);
-			musb_writew(epio, MUSB_TXCSR, csr);
-			/* Ensure writebuffer is empty. */
-			csr = musb_readw(epio, MUSB_TXCSR);
-			request->actual += musb_ep->dma->actual_len;
-			dev_dbg(musb->controller, "TXCSR%d %04x, DMA off, len %zu, req %p\n",
-				epnum, csr, musb_ep->dma->actual_len, request);
-		}
-
 		/*
 		 * First, maybe a terminating short packet. Some DMA
 		 * engines might handle this by themselves.
@@ -510,11 +230,6 @@ void musb_g_tx(struct musb *musb, u8 epnum)
 		if ((request->zero && request->length
 			&& (request->length % musb_ep->packet_sz == 0)
 			&& (request->actual == request->length))
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
-			|| (is_dma && (!dma->desired_mode ||
-				(request->actual &
-					(musb_ep->packet_sz - 1))))
-#endif
 		) {
 			/*
 			 * On DMA completion, FIFO may not be
@@ -583,45 +298,12 @@ static void rxstate(struct musb *musb, struct musb_request *req)
 		return;
 	}
 
-	/* We shouldn't get here while DMA is active, but we do... */
-	if (dma_channel_status(musb_ep->dma) == MUSB_DMA_STATUS_BUSY) {
-		dev_dbg(musb->controller, "DMA pending...\n");
-		return;
-	}
-
 	if (csr & MUSB_RXCSR_P_SENDSTALL) {
 		dev_dbg(musb->controller, "%s stalling, RXCSR %04x\n",
 		    musb_ep->end_point.name, csr);
 		return;
 	}
 
-	if (is_cppi_enabled() && is_buffer_mapped(req)) {
-		struct dma_controller	*c = musb->dma_controller;
-		struct dma_channel	*channel = musb_ep->dma;
-
-		/* NOTE:  CPPI won't actually stop advancing the DMA
-		 * queue after short packet transfers, so this is almost
-		 * always going to run as IRQ-per-packet DMA so that
-		 * faults will be handled correctly.
-		 */
-		if (c->channel_program(channel,
-				musb_ep->packet_sz,
-				!request->short_not_ok,
-				request->dma + request->actual,
-				request->length - request->actual)) {
-
-			/* make sure that if an rxpkt arrived after the irq,
-			 * the cppi engine will be ready to take it as soon
-			 * as DMA is enabled
-			 */
-			csr &= ~(MUSB_RXCSR_AUTOCLEAR
-					| MUSB_RXCSR_DMAMODE);
-			csr |= MUSB_RXCSR_DMAENAB | MUSB_RXCSR_P_WZC_BITS;
-			musb_writew(epio, MUSB_RXCSR, csr);
-			return;
-		}
-	}
-
 	if (csr & MUSB_RXCSR_RXPKTRDY) {
 		fifo_count = musb_readw(epio, MUSB_RXCOUNT);
 
@@ -637,132 +319,6 @@ static void rxstate(struct musb *musb, struct musb_request *req)
 			use_mode_1 = 0;
 
 		if (request->actual < request->length) {
-#ifdef CONFIG_USB_INVENTRA_DMA
-			if (is_buffer_mapped(req)) {
-				struct dma_controller	*c;
-				struct dma_channel	*channel;
-				int			use_dma = 0;
-				unsigned int transfer_size;
-
-				c = musb->dma_controller;
-				channel = musb_ep->dma;
-
-	/* We use DMA Req mode 0 in rx_csr, and DMA controller operates in
-	 * mode 0 only. So we do not get endpoint interrupts due to DMA
-	 * completion. We only get interrupts from DMA controller.
-	 *
-	 * We could operate in DMA mode 1 if we knew the size of the tranfer
-	 * in advance. For mass storage class, request->length = what the host
-	 * sends, so that'd work.  But for pretty much everything else,
-	 * request->length is routinely more than what the host sends. For
-	 * most these gadgets, end of is signified either by a short packet,
-	 * or filling the last byte of the buffer.  (Sending extra data in
-	 * that last pckate should trigger an overflow fault.)  But in mode 1,
-	 * we don't get DMA completion interrupt for short packets.
-	 *
-	 * Theoretically, we could enable DMAReq irq (MUSB_RXCSR_DMAMODE = 1),
-	 * to get endpoint interrupt on every DMA req, but that didn't seem
-	 * to work reliably.
-	 *
-	 * REVISIT an updated g_file_storage can set req->short_not_ok, which
-	 * then becomes usable as a runtime "use mode 1" hint...
-	 */
-
-				/* Experimental: Mode1 works with mass storage use cases */
-				if (use_mode_1) {
-					csr |= MUSB_RXCSR_AUTOCLEAR;
-					musb_writew(epio, MUSB_RXCSR, csr);
-					csr |= MUSB_RXCSR_DMAENAB;
-					musb_writew(epio, MUSB_RXCSR, csr);
-
-					/*
-					 * this special sequence (enabling and then
-					 * disabling MUSB_RXCSR_DMAMODE) is required
-					 * to get DMAReq to activate
-					 */
-					musb_writew(epio, MUSB_RXCSR,
-						csr | MUSB_RXCSR_DMAMODE);
-					musb_writew(epio, MUSB_RXCSR, csr);
-
-					transfer_size = min_t(unsigned int,
-							request->length -
-							request->actual,
-							channel->max_len);
-					musb_ep->dma->desired_mode = 1;
-				} else {
-					if (!musb_ep->hb_mult &&
-						musb_ep->hw_ep->rx_double_buffered)
-						csr |= MUSB_RXCSR_AUTOCLEAR;
-					csr |= MUSB_RXCSR_DMAENAB;
-					musb_writew(epio, MUSB_RXCSR, csr);
-
-					transfer_size = min(request->length - request->actual,
-							(unsigned)fifo_count);
-					musb_ep->dma->desired_mode = 0;
-				}
-
-				use_dma = c->channel_program(
-						channel,
-						musb_ep->packet_sz,
-						channel->desired_mode,
-						request->dma
-						+ request->actual,
-						transfer_size);
-
-				if (use_dma)
-					return;
-			}
-#elif defined(CONFIG_USB_UX500_DMA)
-			if ((is_buffer_mapped(req)) &&
-				(request->actual < request->length)) {
-
-				struct dma_controller *c;
-				struct dma_channel *channel;
-				unsigned int transfer_size = 0;
-
-				c = musb->dma_controller;
-				channel = musb_ep->dma;
-
-				/* In case first packet is short */
-				if (fifo_count < musb_ep->packet_sz)
-					transfer_size = fifo_count;
-				else if (request->short_not_ok)
-					transfer_size =	min_t(unsigned int,
-							request->length -
-							request->actual,
-							channel->max_len);
-				else
-					transfer_size = min_t(unsigned int,
-							request->length -
-							request->actual,
-							(unsigned)fifo_count);
-
-				csr &= ~MUSB_RXCSR_DMAMODE;
-				csr |= (MUSB_RXCSR_DMAENAB |
-					MUSB_RXCSR_AUTOCLEAR);
-
-				musb_writew(epio, MUSB_RXCSR, csr);
-
-				if (transfer_size <= musb_ep->packet_sz) {
-					musb_ep->dma->desired_mode = 0;
-				} else {
-					musb_ep->dma->desired_mode = 1;
-					/* Mode must be set after DMAENAB */
-					csr |= MUSB_RXCSR_DMAMODE;
-					musb_writew(epio, MUSB_RXCSR, csr);
-				}
-
-				if (c->channel_program(channel,
-							musb_ep->packet_sz,
-							channel->desired_mode,
-							request->dma
-							+ request->actual,
-							transfer_size))
-
-					return;
-			}
-#endif	/* Mentor's DMA */
-
 			len = request->length - request->actual;
 			dev_dbg(musb->controller, "%s OUT/RX pio fifo %d/%d, maxpacket %d\n",
 					musb_ep->end_point.name,
@@ -771,38 +327,6 @@ static void rxstate(struct musb *musb, struct musb_request *req)
 
 			fifo_count = min_t(unsigned, len, fifo_count);
 
-#ifdef	CONFIG_USB_TUSB_OMAP_DMA
-			if (tusb_dma_omap() && is_buffer_mapped(req)) {
-				struct dma_controller *c = musb->dma_controller;
-				struct dma_channel *channel = musb_ep->dma;
-				u32 dma_addr = request->dma + request->actual;
-				int ret;
-
-				ret = c->channel_program(channel,
-						musb_ep->packet_sz,
-						channel->desired_mode,
-						dma_addr,
-						fifo_count);
-				if (ret)
-					return;
-			}
-#endif
-			/*
-			 * Unmap the dma buffer back to cpu if dma channel
-			 * programming fails. This buffer is mapped if the
-			 * channel allocation is successful
-			 */
-			 if (is_buffer_mapped(req)) {
-				unmap_dma_buffer(req, musb);
-
-				/*
-				 * Clear DMAENAB and AUTOCLEAR for the
-				 * PIO mode transfer
-				 */
-				csr &= ~(MUSB_RXCSR_DMAENAB | MUSB_RXCSR_AUTOCLEAR);
-				musb_writew(epio, MUSB_RXCSR, csr);
-			}
-
 			musb_read_fifo(musb_ep->hw_ep, fifo_count, (u8 *)
 					(request->buf + request->actual));
 			request->actual += fifo_count;
@@ -835,7 +359,6 @@ void musb_g_rx(struct musb *musb, u8 epnum)
 	void __iomem		*mbase = musb->mregs;
 	struct musb_ep		*musb_ep;
 	void __iomem		*epio = musb->endpoints[epnum].regs;
-	struct dma_channel	*dma;
 	struct musb_hw_ep	*hw_ep = &musb->endpoints[epnum];
 
 	if (hw_ep->is_shared_fifo)
@@ -852,10 +375,9 @@ void musb_g_rx(struct musb *musb, u8 epnum)
 	request = &req->request;
 
 	csr = musb_readw(epio, MUSB_RXCSR);
-	dma = is_dma_capable() ? musb_ep->dma : NULL;
 
 	dev_dbg(musb->controller, "<== %s, rxcsr %04x%s %p\n", musb_ep->end_point.name,
-			csr, dma ? " (dma)" : "", request);
+			csr, "", request);
 
 	if (csr & MUSB_RXCSR_P_SENTSTALL) {
 		csr |= MUSB_RXCSR_P_WZC_BITS;
@@ -878,71 +400,6 @@ void musb_g_rx(struct musb *musb, u8 epnum)
 		dev_dbg(musb->controller, "%s, incomprx\n", musb_ep->end_point.name);
 	}
 
-	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-		/* "should not happen"; likely RXPKTRDY pending for DMA */
-		dev_dbg(musb->controller, "%s busy, csr %04x\n",
-			musb_ep->end_point.name, csr);
-		return;
-	}
-
-	if (dma && (csr & MUSB_RXCSR_DMAENAB)) {
-		csr &= ~(MUSB_RXCSR_AUTOCLEAR
-				| MUSB_RXCSR_DMAENAB
-				| MUSB_RXCSR_DMAMODE);
-		musb_writew(epio, MUSB_RXCSR,
-			MUSB_RXCSR_P_WZC_BITS | csr);
-
-		request->actual += musb_ep->dma->actual_len;
-
-		dev_dbg(musb->controller, "RXCSR%d %04x, dma off, %04x, len %zu, req %p\n",
-			epnum, csr,
-			musb_readw(epio, MUSB_RXCSR),
-			musb_ep->dma->actual_len, request);
-
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_TUSB_OMAP_DMA) || \
-	defined(CONFIG_USB_UX500_DMA)
-		/* Autoclear doesn't clear RxPktRdy for short packets */
-		if ((dma->desired_mode == 0 && !hw_ep->rx_double_buffered)
-				|| (dma->actual_len
-					& (musb_ep->packet_sz - 1))) {
-			/* ack the read! */
-			csr &= ~MUSB_RXCSR_RXPKTRDY;
-			musb_writew(epio, MUSB_RXCSR, csr);
-		}
-
-		/* incomplete, and not short? wait for next IN packet */
-		if ((request->actual < request->length)
-				&& (musb_ep->dma->actual_len
-					== musb_ep->packet_sz)) {
-			/* In double buffer case, continue to unload fifo if
- 			 * there is Rx packet in FIFO.
- 			 **/
-			csr = musb_readw(epio, MUSB_RXCSR);
-			if ((csr & MUSB_RXCSR_RXPKTRDY) &&
-				hw_ep->rx_double_buffered)
-				goto exit;
-			return;
-		}
-#endif
-		musb_g_giveback(musb_ep, request, 0);
-		/*
-		 * In the giveback function the MUSB lock is
-		 * released and acquired after sometime. During
-		 * this time period the INDEX register could get
-		 * changed by the gadget_queue function especially
-		 * on SMP systems. Reselect the INDEX to be sure
-		 * we are reading/modifying the right registers
-		 */
-		musb_ep_select(mbase, epnum);
-
-		req = next_request(musb_ep);
-		if (!req)
-			return;
-	}
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_TUSB_OMAP_DMA) || \
-	defined(CONFIG_USB_UX500_DMA)
-exit:
-#endif
 	/* Analyze request */
 	rxstate(musb, req);
 }
@@ -1099,17 +556,6 @@ static int musb_gadget_enable(struct usb_ep *ep,
 		musb_writew(regs, MUSB_RXCSR, csr);
 	}
 
-	/* NOTE:  all the I/O code _should_ work fine without DMA, in case
-	 * for some reason you run out of channels here.
-	 */
-	if (is_dma_capable() && musb->dma_controller) {
-		struct dma_controller	*c = musb->dma_controller;
-
-		musb_ep->dma = c->channel_alloc(c, hw_ep,
-				(desc->bEndpointAddress & USB_DIR_IN));
-	} else
-		musb_ep->dma = NULL;
-
 	musb_ep->desc = desc;
 	musb_ep->busy = 0;
 	musb_ep->wedged = 0;
@@ -1123,11 +569,9 @@ static int musb_gadget_enable(struct usb_ep *ep,
 			default:			s = "iso"; break;
 			} s; }),
 			musb_ep->is_in ? "IN" : "OUT",
-			musb_ep->dma ? "dma, " : "",
+			"",
 			musb_ep->packet_sz);
 
-	schedule_work(&musb->irq_work);
-
 fail:
 	spin_unlock_irqrestore(&musb->lock, flags);
 	return status;
@@ -1170,8 +614,6 @@ static int musb_gadget_disable(struct usb_ep *ep)
 	/* abort all pending DMA and requests */
 	nuke(musb_ep, -ESHUTDOWN);
 
-	schedule_work(&musb->irq_work);
-
 	spin_unlock_irqrestore(&(musb->lock), flags);
 
 	dev_dbg(musb->controller, "%s\n", musb_ep->end_point.name);
@@ -1183,7 +625,7 @@ static int musb_gadget_disable(struct usb_ep *ep)
  * Allocate a request for an endpoint.
  * Reused by ep0 code.
  */
-struct usb_request *musb_alloc_request(struct usb_ep *ep, gfp_t gfp_flags)
+struct usb_request *musb_alloc_request(struct usb_ep *ep)
 {
 	struct musb_ep		*musb_ep = to_musb_ep(ep);
 	struct musb		*musb = musb_ep->musb;
@@ -1236,8 +678,7 @@ void musb_ep_restart(struct musb *musb, struct musb_request *req)
 		rxstate(musb, req);
 }
 
-static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req,
-			gfp_t gfp_flags)
+static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req)
 {
 	struct musb_ep		*musb_ep;
 	struct musb_request	*request;
@@ -1267,8 +708,6 @@ static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req,
 	request->epnum = musb_ep->current_epnum;
 	request->tx = musb_ep->is_in;
 
-	map_dma_buffer(request, musb, musb_ep);
-
 	spin_lock_irqsave(&musb->lock, lockflags);
 
 	/* don't queue if the ep is down */
@@ -1276,7 +715,6 @@ static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req,
 		dev_dbg(musb->controller, "req %p queued to %s while ep %s\n",
 				req, ep->name, "disabled");
 		status = -ESHUTDOWN;
-		unmap_dma_buffer(request, musb);
 		goto unlock;
 	}
 
@@ -1317,20 +755,8 @@ static int musb_gadget_dequeue(struct usb_ep *ep, struct usb_request *request)
 	}
 
 	/* if the hardware doesn't have the request, easy ... */
-	if (musb_ep->req_list.next != &req->list || musb_ep->busy)
+	if (musb_ep->req_list.next != &req->list || musb_ep->busy) {
 		musb_g_giveback(musb_ep, request, -ECONNRESET);
-
-	/* ... else abort the dma transfer ... */
-	else if (is_dma_capable() && musb_ep->dma) {
-		struct dma_controller	*c = musb->dma_controller;
-
-		musb_ep_select(musb->mregs, musb_ep->current_epnum);
-		if (c->channel_abort)
-			status = c->channel_abort(musb_ep->dma);
-		else
-			status = -EBUSY;
-		if (status == 0)
-			musb_g_giveback(musb_ep, request, -ECONNRESET);
 	} else {
 		/* NOTE: by sticking to easily tested hardware/driver states,
 		 * we leave counting of in-flight packets imprecise.
@@ -1535,80 +961,6 @@ static int musb_gadget_get_frame(struct usb_gadget *gadget)
 	return (int)musb_readw(musb->mregs, MUSB_FRAME);
 }
 
-static int musb_gadget_wakeup(struct usb_gadget *gadget)
-{
-	struct musb	*musb = gadget_to_musb(gadget);
-	void __iomem	*mregs = musb->mregs;
-	unsigned long	flags;
-	int		status = -EINVAL;
-	u8		power, devctl;
-	int		retries;
-
-	spin_lock_irqsave(&musb->lock, flags);
-
-	switch (musb->xceiv->state) {
-	case OTG_STATE_B_PERIPHERAL:
-		/* NOTE:  OTG state machine doesn't include B_SUSPENDED;
-		 * that's part of the standard usb 1.1 state machine, and
-		 * doesn't affect OTG transitions.
-		 */
-		if (musb->may_wakeup && musb->is_suspended)
-			break;
-		goto done;
-	case OTG_STATE_B_IDLE:
-		/* Start SRP ... OTG not required. */
-		devctl = musb_readb(mregs, MUSB_DEVCTL);
-		dev_dbg(musb->controller, "Sending SRP: devctl: %02x\n", devctl);
-		devctl |= MUSB_DEVCTL_SESSION;
-		musb_writeb(mregs, MUSB_DEVCTL, devctl);
-		devctl = musb_readb(mregs, MUSB_DEVCTL);
-		retries = 100;
-		while (!(devctl & MUSB_DEVCTL_SESSION)) {
-			devctl = musb_readb(mregs, MUSB_DEVCTL);
-			if (retries-- < 1)
-				break;
-		}
-		retries = 10000;
-		while (devctl & MUSB_DEVCTL_SESSION) {
-			devctl = musb_readb(mregs, MUSB_DEVCTL);
-			if (retries-- < 1)
-				break;
-		}
-
-		spin_unlock_irqrestore(&musb->lock, flags);
-		otg_start_srp(musb->xceiv->otg);
-		spin_lock_irqsave(&musb->lock, flags);
-
-		/* Block idling for at least 1s */
-		musb_platform_try_idle(musb,
-			jiffies + msecs_to_jiffies(1 * HZ));
-
-		status = 0;
-		goto done;
-	default:
-		dev_dbg(musb->controller, "Unhandled wake: %s\n",
-			usb_otg_state_string(musb->xceiv->state));
-		goto done;
-	}
-
-	status = 0;
-
-	power = musb_readb(mregs, MUSB_POWER);
-	power |= MUSB_POWER_RESUME;
-	musb_writeb(mregs, MUSB_POWER, power);
-	dev_dbg(musb->controller, "issue wakeup\n");
-
-	/* FIXME do this next chunk in a timer callback, no udelay */
-	mdelay(2);
-
-	power = musb_readb(mregs, MUSB_POWER);
-	power &= ~MUSB_POWER_RESUME;
-	musb_writeb(mregs, MUSB_POWER, power);
-done:
-	spin_unlock_irqrestore(&musb->lock, flags);
-	return status;
-}
-
 static int
 musb_gadget_set_self_powered(struct usb_gadget *gadget, int is_selfpowered)
 {
@@ -1635,20 +987,6 @@ static void musb_pullup(struct musb *musb, int is_on)
 	musb_writeb(musb->mregs, MUSB_POWER, power);
 }
 
-#if 0
-static int musb_gadget_vbus_session(struct usb_gadget *gadget, int is_active)
-{
-	dev_dbg(musb->controller, "<= %s =>\n", __func__);
-
-	/*
-	 * FIXME iff driver's softconnect flag is set (as it is during probe,
-	 * though that can clear it), just musb_pullup().
-	 */
-
-	return -EINVAL;
-}
-#endif
-
 static int musb_gadget_vbus_draw(struct usb_gadget *gadget, unsigned mA)
 {
 	struct musb	*musb = gadget_to_musb(gadget);
@@ -1665,8 +1003,6 @@ static int musb_gadget_pullup(struct usb_gadget *gadget, int is_on)
 
 	is_on = !!is_on;
 
-	pm_runtime_get_sync(musb->controller);
-
 	/* NOTE: this assumes we are sensing vbus; we'd rather
 	 * not pullup unless the B-session is active.
 	 */
@@ -1677,11 +1013,16 @@ static int musb_gadget_pullup(struct usb_gadget *gadget, int is_on)
 	}
 	spin_unlock_irqrestore(&musb->lock, flags);
 
-	pm_runtime_put(musb->controller);
-
 	return 0;
 }
 
+static void musb_gadget_poll(struct usb_gadget *gadget)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+
+	musb->isr(musb);
+}
+
 static int musb_gadget_start(struct usb_gadget *g,
 		struct usb_gadget_driver *driver);
 static int musb_gadget_stop(struct usb_gadget *g,
@@ -1689,13 +1030,13 @@ static int musb_gadget_stop(struct usb_gadget *g,
 
 static const struct usb_gadget_ops musb_gadget_operations = {
 	.get_frame		= musb_gadget_get_frame,
-	.wakeup			= musb_gadget_wakeup,
 	.set_selfpowered	= musb_gadget_set_self_powered,
 	/* .vbus_session		= musb_gadget_vbus_session, */
 	.vbus_draw		= musb_gadget_vbus_draw,
 	.pullup			= musb_gadget_pullup,
 	.udc_start		= musb_gadget_start,
 	.udc_stop		= musb_gadget_stop,
+	.udc_poll		= musb_gadget_poll,
 };
 
 /* ----------------------------------------------------------------------- */
@@ -1791,16 +1132,11 @@ int musb_gadget_setup(struct musb *musb)
 	musb->g.speed = USB_SPEED_UNKNOWN;
 
 	MUSB_DEV_MODE(musb);
-	musb->xceiv->otg->default_a = 0;
-	musb->xceiv->state = OTG_STATE_B_IDLE;
 
 	/* this "gadget" abstracts/virtualizes the controller */
 	musb->g.name = musb_driver_name;
-#if IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
-	musb->g.is_otg = 1;
-#elif IS_ENABLED(CONFIG_USB_MUSB_GADGET)
+
 	musb->g.is_otg = 0;
-#endif
 
 	musb_g_init_endpoints(musb);
 
@@ -1814,7 +1150,6 @@ int musb_gadget_setup(struct musb *musb)
 	return 0;
 err:
 	musb->g.dev.parent = NULL;
-	device_unregister(&musb->g.dev);
 	return status;
 }
 
@@ -1840,7 +1175,6 @@ static int musb_gadget_start(struct usb_gadget *g,
 		struct usb_gadget_driver *driver)
 {
 	struct musb		*musb = gadget_to_musb(g);
-	struct usb_otg		*otg = musb->xceiv->otg;
 	unsigned long		flags;
 	int			retval = 0;
 
@@ -1849,8 +1183,6 @@ static int musb_gadget_start(struct usb_gadget *g,
 		goto err;
 	}
 
-	pm_runtime_get_sync(musb->controller);
-
 	dev_dbg(musb->controller, "registering driver %s\n", driver->function);
 
 	musb->softconnect = 0;
@@ -1859,22 +1191,10 @@ static int musb_gadget_start(struct usb_gadget *g,
 	spin_lock_irqsave(&musb->lock, flags);
 	musb->is_active = 1;
 
-	otg_set_peripheral(otg, &musb->g);
-	musb->xceiv->state = OTG_STATE_B_IDLE;
 	spin_unlock_irqrestore(&musb->lock, flags);
 
 	musb_start(musb);
 
-	/* REVISIT:  funcall to other code, which also
-	 * handles power budgeting ... this way also
-	 * ensures HdrcStart is indirectly called.
-	 */
-	if (musb->xceiv->last_event == USB_EVENT_ID)
-		musb_platform_set_vbus(musb, 1);
-
-	if (musb->xceiv->last_event == USB_EVENT_NONE)
-		pm_runtime_put(musb->controller);
-
 	return 0;
 
 err:
@@ -1931,9 +1251,6 @@ static int musb_gadget_stop(struct usb_gadget *g,
 	struct musb	*musb = gadget_to_musb(g);
 	unsigned long	flags;
 
-	if (musb->xceiv->last_event == USB_EVENT_NONE)
-		pm_runtime_get_sync(musb->controller);
-
 	/*
 	 * REVISIT always use otg_set_peripheral() here too;
 	 * this needs to shut down the OTG engine.
@@ -1941,13 +1258,9 @@ static int musb_gadget_stop(struct usb_gadget *g,
 
 	spin_lock_irqsave(&musb->lock, flags);
 
-	musb_hnp_stop(musb);
-
 	(void) musb_gadget_vbus_draw(&musb->g, 0);
 
-	musb->xceiv->state = OTG_STATE_UNDEFINED;
 	stop_activity(musb, driver);
-	otg_set_peripheral(musb->xceiv->otg, NULL);
 
 	dev_dbg(musb->controller, "unregistering driver %s\n",
 				  driver ? driver->function : "(removed)");
@@ -1963,8 +1276,6 @@ static int musb_gadget_stop(struct usb_gadget *g,
 	 * that currently misbehaves.
 	 */
 
-	pm_runtime_put(musb->controller);
-
 	return 0;
 }
 
@@ -1972,63 +1283,6 @@ static int musb_gadget_stop(struct usb_gadget *g,
 
 /* lifecycle operations called through plat_uds.c */
 
-void musb_g_resume(struct musb *musb)
-{
-	musb->is_suspended = 0;
-	switch (musb->xceiv->state) {
-	case OTG_STATE_B_IDLE:
-		break;
-	case OTG_STATE_B_WAIT_ACON:
-	case OTG_STATE_B_PERIPHERAL:
-		musb->is_active = 1;
-		if (musb->gadget_driver && musb->gadget_driver->resume) {
-			spin_unlock(&musb->lock);
-			musb->gadget_driver->resume(&musb->g);
-			spin_lock(&musb->lock);
-		}
-		break;
-	default:
-		WARNING("unhandled RESUME transition (%s)\n",
-				usb_otg_state_string(musb->xceiv->state));
-	}
-}
-
-/* called when SOF packets stop for 3+ msec */
-void musb_g_suspend(struct musb *musb)
-{
-	u8	devctl;
-
-	devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
-	dev_dbg(musb->controller, "devctl %02x\n", devctl);
-
-	switch (musb->xceiv->state) {
-	case OTG_STATE_B_IDLE:
-		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
-			musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-		break;
-	case OTG_STATE_B_PERIPHERAL:
-		musb->is_suspended = 1;
-		if (musb->gadget_driver && musb->gadget_driver->suspend) {
-			spin_unlock(&musb->lock);
-			musb->gadget_driver->suspend(&musb->g);
-			spin_lock(&musb->lock);
-		}
-		break;
-	default:
-		/* REVISIT if B_HOST, clear DEVCTL.HOSTREQ;
-		 * A_PERIPHERAL may need care too
-		 */
-		WARNING("unhandled SUSPEND transition (%s)\n",
-				usb_otg_state_string(musb->xceiv->state));
-	}
-}
-
-/* Called during SRP */
-void musb_g_wakeup(struct musb *musb)
-{
-	musb_gadget_wakeup(&musb->g);
-}
-
 /* called when VBUS drops below session threshold, and in other cases */
 void musb_g_disconnect(struct musb *musb)
 {
@@ -2050,91 +1304,5 @@ void musb_g_disconnect(struct musb *musb)
 		spin_lock(&musb->lock);
 	}
 
-	switch (musb->xceiv->state) {
-	default:
-		dev_dbg(musb->controller, "Unhandled disconnect %s, setting a_idle\n",
-			usb_otg_state_string(musb->xceiv->state));
-		musb->xceiv->state = OTG_STATE_A_IDLE;
-		MUSB_HST_MODE(musb);
-		break;
-	case OTG_STATE_A_PERIPHERAL:
-		musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
-		MUSB_HST_MODE(musb);
-		break;
-	case OTG_STATE_B_WAIT_ACON:
-	case OTG_STATE_B_HOST:
-	case OTG_STATE_B_PERIPHERAL:
-	case OTG_STATE_B_IDLE:
-		musb->xceiv->state = OTG_STATE_B_IDLE;
-		break;
-	case OTG_STATE_B_SRP_INIT:
-		break;
-	}
-
 	musb->is_active = 0;
 }
-
-void musb_g_reset(struct musb *musb)
-__releases(musb->lock)
-__acquires(musb->lock)
-{
-	void __iomem	*mbase = musb->mregs;
-	u8		devctl = musb_readb(mbase, MUSB_DEVCTL);
-	u8		power;
-
-	dev_dbg(musb->controller, "<== %s driver '%s'\n",
-			(devctl & MUSB_DEVCTL_BDEVICE)
-				? "B-Device" : "A-Device",
-			musb->gadget_driver
-				? musb->gadget_driver->driver.name
-				: NULL
-			);
-
-	/* report disconnect, if we didn't already (flushing EP state) */
-	if (musb->g.speed != USB_SPEED_UNKNOWN)
-		musb_g_disconnect(musb);
-
-	/* clear HR */
-	else if (devctl & MUSB_DEVCTL_HR)
-		musb_writeb(mbase, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
-
-
-	/* what speed did we negotiate? */
-	power = musb_readb(mbase, MUSB_POWER);
-	musb->g.speed = (power & MUSB_POWER_HSMODE)
-			? USB_SPEED_HIGH : USB_SPEED_FULL;
-
-	/* start in USB_STATE_DEFAULT */
-	musb->is_active = 1;
-	musb->is_suspended = 0;
-	MUSB_DEV_MODE(musb);
-	musb->address = 0;
-	musb->ep0_state = MUSB_EP0_STAGE_SETUP;
-
-	musb->may_wakeup = 0;
-	musb->g.b_hnp_enable = 0;
-	musb->g.a_alt_hnp_support = 0;
-	musb->g.a_hnp_support = 0;
-
-	/* Normal reset, as B-Device;
-	 * or else after HNP, as A-Device
-	 */
-	if (!musb->g.is_otg) {
-		/* USB device controllers that are not OTG compatible
-		 * may not have DEVCTL register in silicon.
-		 * In that case, do not rely on devctl for setting
-		 * peripheral mode.
-		 */
-		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-		musb->g.is_a_peripheral = 0;
-	} else if (devctl & MUSB_DEVCTL_BDEVICE) {
-		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
-		musb->g.is_a_peripheral = 0;
-	} else {
-		musb->xceiv->state = OTG_STATE_A_PERIPHERAL;
-		musb->g.is_a_peripheral = 1;
-	}
-
-	/* start with default limits on VBUS power draw */
-	(void) musb_gadget_vbus_draw(&musb->g, 8);
-}
diff --git a/drivers/usb/musb/musb_gadget.h b/drivers/usb/musb/musb_gadget.h
index 0314dfc..456c165 100644
--- a/drivers/usb/musb/musb_gadget.h
+++ b/drivers/usb/musb/musb_gadget.h
@@ -36,9 +36,10 @@
 #define __MUSB_GADGET_H
 
 #include <linux/list.h>
+#include <usb/gadget.h>
 
-#if IS_ENABLED(CONFIG_USB_MUSB_GADGET) || IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
-extern irqreturn_t musb_g_ep0_irq(struct musb *);
+#if IS_ENABLED(CONFIG_USB_MUSB_GADGET)
+extern int musb_g_ep0_irq(struct musb *);
 extern void musb_g_tx(struct musb *, u8);
 extern void musb_g_rx(struct musb *, u8);
 extern void musb_g_reset(struct musb *);
@@ -50,7 +51,7 @@ extern void musb_gadget_cleanup(struct musb *);
 extern int musb_gadget_setup(struct musb *);
 
 #else
-static inline irqreturn_t musb_g_ep0_irq(struct musb *musb)
+static inline int musb_g_ep0_irq(struct musb *musb)
 {
 	return 0;
 }
@@ -90,8 +91,7 @@ static inline struct musb_request *to_musb_request(struct usb_request *req)
 	return req ? container_of(req, struct musb_request, request) : NULL;
 }
 
-extern struct usb_request *
-musb_alloc_request(struct usb_ep *ep, gfp_t gfp_flags);
+extern struct usb_request *musb_alloc_request(struct usb_ep *ep);
 extern void musb_free_request(struct usb_ep *ep, struct usb_request *req);
 
 
diff --git a/drivers/usb/musb/musb_gadget_ep0.c b/drivers/usb/musb/musb_gadget_ep0.c
index 2af45a0..feaa856 100644
--- a/drivers/usb/musb/musb_gadget_ep0.c
+++ b/drivers/usb/musb/musb_gadget_ep0.c
@@ -33,14 +33,11 @@
  *
  */
 
-#include <linux/kernel.h>
-#include <linux/list.h>
-#include <linux/timer.h>
-#include <linux/spinlock.h>
-#include <linux/device.h>
-#include <linux/interrupt.h>
-
+#include <common.h>
+#include <malloc.h>
+#include <clock.h>
 #include "musb_core.h"
+#include "musb_gadget.h"
 
 /* ep0 is always musb->endpoints[0].ep_in */
 #define	next_ep0_request(musb)	next_in_request(&(musb)->endpoints[0])
@@ -638,7 +635,6 @@ musb_read_setup(struct musb *musb, struct usb_ctrlrequest *req)
 		musb_writew(regs, MUSB_CSR0, MUSB_CSR0_P_SVDRXPKTRDY);
 		while ((musb_readw(regs, MUSB_CSR0)
 				& MUSB_CSR0_RXPKTRDY) != 0)
-			cpu_relax();
 		musb->ackpend = 0;
 	} else
 		musb->ep0_state = MUSB_EP0_STAGE_RX;
@@ -708,7 +704,7 @@ irqreturn_t musb_g_ep0_irq(struct musb *musb)
 			musb->ep0_state = MUSB_EP0_STAGE_STATUSIN;
 			break;
 		default:
-			ERR("SetupEnd came in a wrong ep0stage %s\n",
+			dev_err(musb->controller, "SetupEnd came in a wrong ep0stage %s\n",
 			    decode_ep0stage(musb->ep0_state));
 		}
 		csr = musb_readw(regs, MUSB_CSR0);
@@ -801,7 +797,7 @@ setup:
 			int			handled = 0;
 
 			if (len != 8) {
-				ERR("SETUP packet len %d != 8 ?\n", len);
+				dev_err(musb->controller, "SETUP packet len %d != 8 ?\n", len);
 				break;
 			}
 			musb_read_setup(musb, &setup);
@@ -925,7 +921,7 @@ static int musb_g_ep0_disable(struct usb_ep *e)
 }
 
 static int
-musb_g_ep0_queue(struct usb_ep *e, struct usb_request *r, gfp_t gfp_flags)
+musb_g_ep0_queue(struct usb_ep *e, struct usb_request *r)
 {
 	struct musb_ep		*ep;
 	struct musb_request	*req;
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 855793d..32a8f06 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -33,15 +33,8 @@
  *
  */
 
-#include <linux/module.h>
-#include <linux/kernel.h>
-#include <linux/delay.h>
-#include <linux/sched.h>
-#include <linux/slab.h>
-#include <linux/errno.h>
-#include <linux/list.h>
-#include <linux/dma-mapping.h>
-
+#include <common.h>
+#include <malloc.h>
 #include "musb_core.h"
 #include "musb_host.h"
 
@@ -96,7 +89,7 @@
 
 struct musb *hcd_to_musb(struct usb_hcd *hcd)
 {
-	return *(struct musb **) hcd->hcd_priv;
+	return (struct musb *) hcd->hcd_priv;
 }
 
 
@@ -120,19 +113,21 @@ static void musb_h_tx_flush_fifo(struct musb_hw_ep *ep)
 		if (csr != lastcsr)
 			dev_dbg(musb->controller, "Host TX FIFONOTEMPTY csr: %02x\n", csr);
 		lastcsr = csr;
-		csr |= MUSB_TXCSR_FLUSHFIFO | MUSB_TXCSR_TXPKTRDY;
+		csr |= MUSB_TXCSR_FLUSHFIFO;
 		musb_writew(epio, MUSB_TXCSR, csr);
 		csr = musb_readw(epio, MUSB_TXCSR);
-		if (WARN(retries-- < 1,
-				"Could not flush host TX%d fifo: csr: %04x\n",
-				ep->epnum, csr))
+		if (!retries--) {
+			dev_warn(musb->controller, "Could not flush host TX%d fifo: csr: %04x\n",
+				ep->epnum, csr);
 			return;
+		}
 		mdelay(1);
 	}
 }
 
 static void musb_h_ep0_flush_fifo(struct musb_hw_ep *ep)
 {
+	struct musb	*musb = ep->musb;
 	void __iomem	*epio = ep->regs;
 	u16		csr;
 	int		retries = 5;
@@ -147,7 +142,8 @@ static void musb_h_ep0_flush_fifo(struct musb_hw_ep *ep)
 		udelay(10);
 	} while (--retries);
 
-	WARN(!retries, "Could not flush host TX%d fifo: csr: %04x\n",
+	if (!retries)
+		dev_warn(musb->controller, "Could not flush host TX%d fifo: csr: %04x\n",
 			ep->epnum, csr);
 
 	/* and reset for the next transfer */
@@ -232,12 +228,6 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 		buf = urb->setup_packet;
 		len = 8;
 		break;
-	case USB_ENDPOINT_XFER_ISOC:
-		qh->iso_idx = 0;
-		qh->frame = 0;
-		offset = urb->iso_frame_desc[0].offset;
-		len = urb->iso_frame_desc[0].length;
-		break;
 	default:		/* bulk, interrupt */
 		/* actual_length may be nonzero on retry paths */
 		buf = urb->transfer_buffer + urb->actual_length;
@@ -250,7 +240,6 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 			({char *s; switch (qh->type) {
 			case USB_ENDPOINT_XFER_CONTROL:	s = ""; break;
 			case USB_ENDPOINT_XFER_BULK:	s = "-bulk"; break;
-			case USB_ENDPOINT_XFER_ISOC:	s = "-iso"; break;
 			default:			s = "-intr"; break;
 			} s; }),
 			epnum, buf + offset, len);
@@ -265,7 +254,6 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 
 	/* determine if the time is right for a periodic transfer */
 	switch (qh->type) {
-	case USB_ENDPOINT_XFER_ISOC:
 	case USB_ENDPOINT_XFER_INT:
 		dev_dbg(musb->controller, "check whether there's still time for periodic Tx\n");
 		frame = musb_readw(mbase, MUSB_FRAME);
@@ -294,8 +282,6 @@ start:
 
 		if (!hw_ep->tx_channel)
 			musb_h_tx_start(hw_ep);
-		else if (is_cppi_enabled() || tusb_dma_omap())
-			musb_h_tx_dma_start(hw_ep);
 	}
 }
 
@@ -362,10 +348,6 @@ static void musb_advance_schedule(struct musb *musb, struct urb *urb,
 	case USB_ENDPOINT_XFER_INT:
 		musb_save_toggle(qh, is_in, urb);
 		break;
-	case USB_ENDPOINT_XFER_ISOC:
-		if (status == 0 && urb->error_count)
-			status = -EXDEV;
-		break;
 	}
 
 	qh->is_ready = 0;
@@ -412,7 +394,6 @@ static void musb_advance_schedule(struct musb *musb, struct urb *urb,
 				break;
 			}
 
-		case USB_ENDPOINT_XFER_ISOC:
 		case USB_ENDPOINT_XFER_INT:
 			/* this is where periodic bandwidth should be
 			 * de-allocated if it's tracked and allocated;
@@ -465,7 +446,6 @@ musb_host_packet_rx(struct musb *musb, struct urb *urb, u8 epnum, u8 iso_err)
 	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
 	void __iomem		*epio = hw_ep->regs;
 	struct musb_qh		*qh = hw_ep->in_qh;
-	int			pipe = urb->pipe;
 	void			*buffer = urb->transfer_buffer;
 
 	/* musb_ep_select(mbase, epnum); */
@@ -475,34 +455,7 @@ musb_host_packet_rx(struct musb *musb, struct urb *urb, u8 epnum, u8 iso_err)
 			urb->transfer_buffer_length);
 
 	/* unload FIFO */
-	if (usb_pipeisoc(pipe)) {
-		int					status = 0;
-		struct usb_iso_packet_descriptor	*d;
-
-		if (iso_err) {
-			status = -EILSEQ;
-			urb->error_count++;
-		}
-
-		d = urb->iso_frame_desc + qh->iso_idx;
-		buf = buffer + d->offset;
-		length = d->length;
-		if (rx_count > length) {
-			if (status == 0) {
-				status = -EOVERFLOW;
-				urb->error_count++;
-			}
-			dev_dbg(musb->controller, "** OVERFLOW %d into %d\n", rx_count, length);
-			do_flush = 1;
-		} else
-			length = rx_count;
-		urb->actual_length += length;
-		d->actual_length = length;
-
-		d->status = status;
-
-		/* see if we are done */
-		done = (++qh->iso_idx >= urb->number_of_packets);
+	if (0) {
 	} else {
 		/* non-isoch */
 		buf = buffer + qh->offset;
@@ -586,7 +539,7 @@ musb_rx_reinit(struct musb *musb, struct musb_qh *qh, struct musb_hw_ep *ep)
 	} else {
 		csr = musb_readw(ep->regs, MUSB_RXCSR);
 		if (csr & MUSB_RXCSR_RXPKTRDY)
-			WARNING("rx%d, packet/%d ready?\n", ep->epnum,
+			dev_warn(musb->controller, "rx%d, packet/%d ready?\n", ep->epnum,
 				musb_readw(ep->regs, MUSB_RXCOUNT));
 
 		musb_h_flush_rxfifo(ep, MUSB_RXCSR_CLRDATATOG);
@@ -617,78 +570,6 @@ musb_rx_reinit(struct musb *musb, struct musb_qh *qh, struct musb_hw_ep *ep)
 	ep->rx_reinit = 0;
 }
 
-static bool musb_tx_dma_program(struct dma_controller *dma,
-		struct musb_hw_ep *hw_ep, struct musb_qh *qh,
-		struct urb *urb, u32 offset, u32 length)
-{
-	struct dma_channel	*channel = hw_ep->tx_channel;
-	void __iomem		*epio = hw_ep->regs;
-	u16			pkt_size = qh->maxpacket;
-	u16			csr;
-	u8			mode;
-
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
-	if (length > channel->max_len)
-		length = channel->max_len;
-
-	csr = musb_readw(epio, MUSB_TXCSR);
-	if (length > pkt_size) {
-		mode = 1;
-		csr |= MUSB_TXCSR_DMAMODE | MUSB_TXCSR_DMAENAB;
-		/* autoset shouldn't be set in high bandwidth */
-		/*
-		 * Enable Autoset according to table
-		 * below
-		 * bulk_split hb_mult	Autoset_Enable
-		 *	0	1	Yes(Normal)
-		 *	0	>1	No(High BW ISO)
-		 *	1	1	Yes(HS bulk)
-		 *	1	>1	Yes(FS bulk)
-		 */
-		if (qh->hb_mult == 1 || (qh->hb_mult > 1 &&
-					can_bulk_split(hw_ep->musb, qh->type)))
-			csr |= MUSB_TXCSR_AUTOSET;
-	} else {
-		mode = 0;
-		csr &= ~(MUSB_TXCSR_AUTOSET | MUSB_TXCSR_DMAMODE);
-		csr |= MUSB_TXCSR_DMAENAB; /* against programmer's guide */
-	}
-	channel->desired_mode = mode;
-	musb_writew(epio, MUSB_TXCSR, csr);
-#else
-	if (!is_cppi_enabled() && !tusb_dma_omap())
-		return false;
-
-	channel->actual_len = 0;
-
-	/*
-	 * TX uses "RNDIS" mode automatically but needs help
-	 * to identify the zero-length-final-packet case.
-	 */
-	mode = (urb->transfer_flags & URB_ZERO_PACKET) ? 1 : 0;
-#endif
-
-	qh->segsize = length;
-
-	/*
-	 * Ensure the data reaches to main memory before starting
-	 * DMA transfer
-	 */
-	wmb();
-
-	if (!dma->channel_program(channel, pkt_size, mode,
-			urb->transfer_dma + offset, length)) {
-		dma->channel_release(channel);
-		hw_ep->tx_channel = NULL;
-
-		csr = musb_readw(epio, MUSB_TXCSR);
-		csr &= ~(MUSB_TXCSR_AUTOSET | MUSB_TXCSR_DMAENAB);
-		musb_writew(epio, MUSB_TXCSR, csr | MUSB_TXCSR_H_WZC_BITS);
-		return false;
-	}
-	return true;
-}
-
 /*
  * Program an HDRC endpoint as per the given URB
  * Context: irqs blocked, controller lock held
@@ -697,15 +578,11 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 			struct urb *urb, int is_out,
 			u8 *buf, u32 offset, u32 len)
 {
-	struct dma_controller	*dma_controller;
-	struct dma_channel	*dma_channel;
-	u8			dma_ok;
 	void __iomem		*mbase = musb->mregs;
 	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
 	void __iomem		*epio = hw_ep->regs;
 	struct musb_qh		*qh = musb_ep_get_qh(hw_ep, !is_out);
 	u16			packet_sz = qh->maxpacket;
-	u8			use_dma = 1;
 	u16			csr;
 
 	dev_dbg(musb->controller, "%s hw%d urb %p spd%d dev%d ep%d%s "
@@ -719,30 +596,12 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 	musb_ep_select(mbase, epnum);
 
 	if (is_out && !len) {
-		use_dma = 0;
 		csr = musb_readw(epio, MUSB_TXCSR);
 		csr &= ~MUSB_TXCSR_DMAENAB;
 		musb_writew(epio, MUSB_TXCSR, csr);
 		hw_ep->tx_channel = NULL;
 	}
 
-	/* candidate for DMA? */
-	dma_controller = musb->dma_controller;
-	if (use_dma && is_dma_capable() && epnum && dma_controller) {
-		dma_channel = is_out ? hw_ep->tx_channel : hw_ep->rx_channel;
-		if (!dma_channel) {
-			dma_channel = dma_controller->channel_alloc(
-					dma_controller, hw_ep, is_out);
-			if (is_out)
-				hw_ep->tx_channel = dma_channel;
-			else
-				hw_ep->rx_channel = dma_channel;
-		}
-	} else
-		dma_channel = NULL;
-
-	/* make sure we clear DMAEnab, autoSet bits from previous run */
-
 	/* OUT/transmit/EP0 or IN/receive? */
 	if (is_out) {
 		u16	csr;
@@ -838,35 +697,12 @@ static void musb_ep_program(struct musb *musb, u8 epnum,
 		else
 			load_count = min((u32) packet_sz, len);
 
-		if (dma_channel && musb_tx_dma_program(dma_controller,
-					hw_ep, qh, urb, offset, len))
-			load_count = 0;
-
 		if (load_count) {
 			/* PIO to load FIFO */
 			qh->segsize = load_count;
-			if (!buf) {
-				sg_miter_start(&qh->sg_miter, urb->sg, 1,
-						SG_MITER_ATOMIC
-						| SG_MITER_FROM_SG);
-				if (!sg_miter_next(&qh->sg_miter)) {
-					dev_err(musb->controller,
-							"error: sg"
-							"list empty\n");
-					sg_miter_stop(&qh->sg_miter);
-					goto finish;
-				}
-				buf = qh->sg_miter.addr + urb->sg->offset +
-					urb->actual_length;
-				load_count = min_t(u32, load_count,
-						qh->sg_miter.length);
-				musb_write_fifo(hw_ep, load_count, buf);
-				qh->sg_miter.consumed = load_count;
-				sg_miter_stop(&qh->sg_miter);
-			} else
-				musb_write_fifo(hw_ep, load_count, buf);
+			musb_write_fifo(hw_ep, load_count, buf);
 		}
-finish:
+
 		/* re-enable interrupt */
 		musb_writew(mbase, MUSB_INTRTXE, int_txe);
 
@@ -892,7 +728,7 @@ finish:
 			if (csr & (MUSB_RXCSR_RXPKTRDY
 					| MUSB_RXCSR_DMAENAB
 					| MUSB_RXCSR_H_REQPKT))
-				ERR("broken !rx_reinit, ep%d csr %04x\n",
+				dev_err(musb->controller, "broken !rx_reinit, ep%d csr %04x\n",
 						hw_ep->epnum, csr);
 
 			/* scrub any stale state, leaving toggle alone */
@@ -901,31 +737,6 @@ finish:
 
 		/* kick things off */
 
-		if ((is_cppi_enabled() || tusb_dma_omap()) && dma_channel) {
-			/* Candidate for DMA */
-			dma_channel->actual_len = 0L;
-			qh->segsize = len;
-
-			/* AUTOREQ is in a DMA register */
-			musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
-			csr = musb_readw(hw_ep->regs, MUSB_RXCSR);
-
-			/*
-			 * Unless caller treats short RX transfers as
-			 * errors, we dare not queue multiple transfers.
-			 */
-			dma_ok = dma_controller->channel_program(dma_channel,
-					packet_sz, !(urb->transfer_flags &
-						     URB_SHORT_NOT_OK),
-					urb->transfer_dma + offset,
-					qh->segsize);
-			if (!dma_ok) {
-				dma_controller->channel_release(dma_channel);
-				hw_ep->rx_channel = dma_channel = NULL;
-			} else
-				csr |= MUSB_RXCSR_DMAENAB;
-		}
-
 		csr |= MUSB_RXCSR_H_REQPKT;
 		dev_dbg(musb->controller, "RXCSR%d := %04x\n", epnum, csr);
 		musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
@@ -939,7 +750,6 @@ finish:
 static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 	int is_in)
 {
-	struct dma_channel	*dma;
 	struct urb		*urb;
 	void __iomem		*mbase = musb->mregs;
 	void __iomem		*epio = ep->regs;
@@ -948,8 +758,6 @@ static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 
 	musb_ep_select(mbase, ep->epnum);
 	if (is_in) {
-		dma = is_dma_capable() ? ep->rx_channel : NULL;
-
 		/* clear nak timeout bit */
 		rx_csr = musb_readw(epio, MUSB_RXCSR);
 		rx_csr |= MUSB_RXCSR_H_WZC_BITS;
@@ -958,8 +766,6 @@ static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 
 		cur_qh = first_qh(&musb->in_bulk);
 	} else {
-		dma = is_dma_capable() ? ep->tx_channel : NULL;
-
 		/* clear nak timeout bit */
 		tx_csr = musb_readw(epio, MUSB_TXCSR);
 		tx_csr |= MUSB_TXCSR_H_WZC_BITS;
@@ -970,12 +776,6 @@ static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
 	}
 	if (cur_qh) {
 		urb = next_urb(cur_qh);
-		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
-			musb->dma_controller->channel_abort(dma);
-			urb->actual_length += dma->actual_len;
-			dma->actual_len = 0L;
-		}
 		musb_save_toggle(cur_qh, is_in, urb);
 
 		if (is_in) {
@@ -1068,7 +868,7 @@ static bool musb_h_ep0_continue(struct musb *musb, u16 len, struct urb *urb)
 		}
 		break;
 	default:
-		ERR("bogus ep0 stage %d\n", musb->ep0_stage);
+		dev_err(musb->controller, "bogus ep0 stage %d\n", musb->ep0_stage);
 		break;
 	}
 
@@ -1161,7 +961,7 @@ irqreturn_t musb_h_ep0_irq(struct musb *musb)
 	if (unlikely(!urb)) {
 		/* stop endpoint since we have no place for its data, this
 		 * SHOULD NEVER HAPPEN! */
-		ERR("no URB for end 0\n");
+		dev_err(musb->controller, "no URB for end 0\n");
 
 		musb_h_ep0_flush_fifo(hw_ep);
 		goto done;
@@ -1183,9 +983,6 @@ irqreturn_t musb_h_ep0_irq(struct musb *musb)
 				csr = MUSB_CSR0_H_STATUSPKT
 					| MUSB_CSR0_TXPKTRDY;
 
-			/* disable ping token in status phase */
-			csr |= MUSB_CSR0_H_DIS_PING;
-
 			/* flag status stage */
 			musb->ep0_stage = MUSB_EP0_STATUS;
 
@@ -1204,23 +1001,6 @@ done:
 	return retval;
 }
 
-
-#ifdef CONFIG_USB_INVENTRA_DMA
-
-/* Host side TX (OUT) using Mentor DMA works as follows:
-	submit_urb ->
-		- if queue was empty, Program Endpoint
-		- ... which starts DMA to fifo in mode 1 or 0
-
-	DMA Isr (transfer complete) -> TxAvail()
-		- Stop DMA (~DmaEnab)	(<--- Alert ... currently happens
-					only in musb_cleanup_urb)
-		- TxPktRdy has to be set in mode 0 or for
-			short packets in mode 1.
-*/
-
-#endif
-
 /* Service a Tx-Available or dma completion irq for the endpoint */
 void musb_host_tx(struct musb *musb, u8 epnum)
 {
@@ -1235,7 +1015,6 @@ void musb_host_tx(struct musb *musb, u8 epnum)
 	struct urb		*urb = next_urb(qh);
 	u32			status = 0;
 	void __iomem		*mbase = musb->mregs;
-	struct dma_channel	*dma;
 	bool			transfer_pending = false;
 
 	musb_ep_select(mbase, epnum);
@@ -1248,9 +1027,7 @@ void musb_host_tx(struct musb *musb, u8 epnum)
 	}
 
 	pipe = urb->pipe;
-	dma = is_dma_capable() ? hw_ep->tx_channel : NULL;
-	dev_dbg(musb->controller, "OUT/TX%d end, csr %04x%s\n", epnum, tx_csr,
-			dma ? ", dma" : "");
+	dev_dbg(musb->controller, "OUT/TX%d end, csr %04x\n", epnum, tx_csr);
 
 	/* check for errors */
 	if (tx_csr & MUSB_TXCSR_H_RXSTALL) {
@@ -1291,13 +1068,7 @@ void musb_host_tx(struct musb *musb, u8 epnum)
 			return;
 	}
 
-done:
 	if (status) {
-		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
-			musb->dma_controller->channel_abort(dma);
-		}
-
 		/* do the proper sequence to abort the transfer in the
 		 * usb core; the dma engine should already be stopped.
 		 */
@@ -1318,95 +1089,11 @@ done:
 		done = true;
 	}
 
-	/* second cppi case */
-	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-		dev_dbg(musb->controller, "extra TX%d ready, csr %04x\n", epnum, tx_csr);
-		return;
-	}
-
-	if (is_dma_capable() && dma && !status) {
-		/*
-		 * DMA has completed.  But if we're using DMA mode 1 (multi
-		 * packet DMA), we need a terminal TXPKTRDY interrupt before
-		 * we can consider this transfer completed, lest we trash
-		 * its last packet when writing the next URB's data.  So we
-		 * switch back to mode 0 to get that interrupt; we'll come
-		 * back here once it happens.
-		 */
-		if (tx_csr & MUSB_TXCSR_DMAMODE) {
-			/*
-			 * We shouldn't clear DMAMODE with DMAENAB set; so
-			 * clear them in a safe order.  That should be OK
-			 * once TXPKTRDY has been set (and I've never seen
-			 * it being 0 at this moment -- DMA interrupt latency
-			 * is significant) but if it hasn't been then we have
-			 * no choice but to stop being polite and ignore the
-			 * programmer's guide... :-)
-			 *
-			 * Note that we must write TXCSR with TXPKTRDY cleared
-			 * in order not to re-trigger the packet send (this bit
-			 * can't be cleared by CPU), and there's another caveat:
-			 * TXPKTRDY may be set shortly and then cleared in the
-			 * double-buffered FIFO mode, so we do an extra TXCSR
-			 * read for debouncing...
-			 */
-			tx_csr &= musb_readw(epio, MUSB_TXCSR);
-			if (tx_csr & MUSB_TXCSR_TXPKTRDY) {
-				tx_csr &= ~(MUSB_TXCSR_DMAENAB |
-					    MUSB_TXCSR_TXPKTRDY);
-				musb_writew(epio, MUSB_TXCSR,
-					    tx_csr | MUSB_TXCSR_H_WZC_BITS);
-			}
-			tx_csr &= ~(MUSB_TXCSR_DMAMODE |
-				    MUSB_TXCSR_TXPKTRDY);
-			musb_writew(epio, MUSB_TXCSR,
-				    tx_csr | MUSB_TXCSR_H_WZC_BITS);
-
-			/*
-			 * There is no guarantee that we'll get an interrupt
-			 * after clearing DMAMODE as we might have done this
-			 * too late (after TXPKTRDY was cleared by controller).
-			 * Re-read TXCSR as we have spoiled its previous value.
-			 */
-			tx_csr = musb_readw(epio, MUSB_TXCSR);
-		}
-
-		/*
-		 * We may get here from a DMA completion or TXPKTRDY interrupt.
-		 * In any case, we must check the FIFO status here and bail out
-		 * only if the FIFO still has data -- that should prevent the
-		 * "missed" TXPKTRDY interrupts and deal with double-buffered
-		 * FIFO mode too...
-		 */
-		if (tx_csr & (MUSB_TXCSR_FIFONOTEMPTY | MUSB_TXCSR_TXPKTRDY)) {
-			dev_dbg(musb->controller, "DMA complete but packet still in FIFO, "
-			    "CSR %04x\n", tx_csr);
-			return;
-		}
-	}
-
-	if (!status || dma || usb_pipeisoc(pipe)) {
-		if (dma)
-			length = dma->actual_len;
-		else
-			length = qh->segsize;
+	if (!status) {
+		length = qh->segsize;
 		qh->offset += length;
 
-		if (usb_pipeisoc(pipe)) {
-			struct usb_iso_packet_descriptor	*d;
-
-			d = urb->iso_frame_desc + qh->iso_idx;
-			d->actual_length = length;
-			d->status = status;
-			if (++qh->iso_idx >= urb->number_of_packets) {
-				done = true;
-			} else {
-				d++;
-				offset = d->offset;
-				length = d->length;
-			}
-		} else if (dma && urb->transfer_buffer_length == qh->offset) {
-			done = true;
+		if (0) {
 		} else {
 			/* see if we need to send more data, or ZLP */
 			if (qh->segsize < qh->maxpacket)
@@ -1438,13 +1125,6 @@ done:
 		urb->actual_length = qh->offset;
 		musb_advance_schedule(musb, urb, hw_ep, USB_DIR_OUT);
 		return;
-	} else if ((usb_pipeisoc(pipe) || transfer_pending) && dma) {
-		if (musb_tx_dma_program(musb->dma_controller, hw_ep, qh, urb,
-				offset, length)) {
-			if (is_cppi_enabled() || tusb_dma_omap())
-				musb_h_tx_dma_start(hw_ep);
-			return;
-		}
 	} else	if (tx_csr & MUSB_TXCSR_DMAENAB) {
 		dev_dbg(musb->controller, "not complete, but DMA enabled?\n");
 		return;
@@ -1459,85 +1139,16 @@ done:
 	 */
 	if (length > qh->maxpacket)
 		length = qh->maxpacket;
-	/* Unmap the buffer so that CPU can use it */
-	usb_hcd_unmap_urb_for_dma(musb->hcd, urb);
 
-	/*
-	 * We need to map sg if the transfer_buffer is
-	 * NULL.
-	 */
-	if (!urb->transfer_buffer)
-		qh->use_sg = true;
-
-	if (qh->use_sg) {
-		/* sg_miter_start is already done in musb_ep_program */
-		if (!sg_miter_next(&qh->sg_miter)) {
-			dev_err(musb->controller, "error: sg list empty\n");
-			sg_miter_stop(&qh->sg_miter);
-			status = -EINVAL;
-			goto done;
-		}
-		urb->transfer_buffer = qh->sg_miter.addr;
-		length = min_t(u32, length, qh->sg_miter.length);
-		musb_write_fifo(hw_ep, length, urb->transfer_buffer);
-		qh->sg_miter.consumed = length;
-		sg_miter_stop(&qh->sg_miter);
-	} else {
-		musb_write_fifo(hw_ep, length, urb->transfer_buffer + offset);
-	}
+	musb_write_fifo(hw_ep, length, urb->transfer_buffer + offset);
 
 	qh->segsize = length;
 
-	if (qh->use_sg) {
-		if (offset + length >= urb->transfer_buffer_length)
-			qh->use_sg = false;
-	}
-
 	musb_ep_select(mbase, epnum);
 	musb_writew(epio, MUSB_TXCSR,
 			MUSB_TXCSR_H_WZC_BITS | MUSB_TXCSR_TXPKTRDY);
 }
 
-
-#ifdef CONFIG_USB_INVENTRA_DMA
-
-/* Host side RX (IN) using Mentor DMA works as follows:
-	submit_urb ->
-		- if queue was empty, ProgramEndpoint
-		- first IN token is sent out (by setting ReqPkt)
-	LinuxIsr -> RxReady()
-	/\	=> first packet is received
-	|	- Set in mode 0 (DmaEnab, ~ReqPkt)
-	|		-> DMA Isr (transfer complete) -> RxReady()
-	|		    - Ack receive (~RxPktRdy), turn off DMA (~DmaEnab)
-	|		    - if urb not complete, send next IN token (ReqPkt)
-	|			   |		else complete urb.
-	|			   |
-	---------------------------
- *
- * Nuances of mode 1:
- *	For short packets, no ack (+RxPktRdy) is sent automatically
- *	(even if AutoClear is ON)
- *	For full packets, ack (~RxPktRdy) and next IN token (+ReqPkt) is sent
- *	automatically => major problem, as collecting the next packet becomes
- *	difficult. Hence mode 1 is not used.
- *
- * REVISIT
- *	All we care about at this driver level is that
- *       (a) all URBs terminate with REQPKT cleared and fifo(s) empty;
- *       (b) termination conditions are: short RX, or buffer full;
- *       (c) fault modes include
- *           - iff URB_SHORT_NOT_OK, short RX status is -EREMOTEIO.
- *             (and that endpoint's dma queue stops immediately)
- *           - overflow (full, PLUS more bytes in the terminal packet)
- *
- *	So for example, usb-storage sets URB_SHORT_NOT_OK, and would
- *	thus be a great candidate for using mode 1 ... for all but the
- *	last packet of one URB's transfer.
- */
-
-#endif
-
 /*
  * Service an RX interrupt for the given IN endpoint; docs cover bulk, iso,
  * and high-bandwidth IN transfer cases.
@@ -1555,13 +1166,10 @@ void musb_host_rx(struct musb *musb, u8 epnum)
 	bool			iso_err = false;
 	bool			done = false;
 	u32			status;
-	struct dma_channel	*dma;
-	unsigned int sg_flags = SG_MITER_ATOMIC | SG_MITER_TO_SG;
 
 	musb_ep_select(mbase, epnum);
 
 	urb = next_urb(qh);
-	dma = is_dma_capable() ? hw_ep->rx_channel : NULL;
 	status = 0;
 	xfer_len = 0;
 
@@ -1582,8 +1190,7 @@ void musb_host_rx(struct musb *musb, u8 epnum)
 	pipe = urb->pipe;
 
 	dev_dbg(musb->controller, "<== hw %d rxcsr %04x, urb actual %d (+dma %zu)\n",
-		epnum, rx_csr, urb->actual_length,
-		dma ? dma->actual_len : 0);
+		epnum, rx_csr, urb->actual_length, 0);
 
 	/* check for errors, concurrent stall & unlink is not really
 	 * handled yet! */
@@ -1637,129 +1244,32 @@ void musb_host_rx(struct musb *musb, u8 epnum)
 
 	/* faults abort the transfer */
 	if (status) {
-		/* clean up dma and collect transfer count */
-		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
-			musb->dma_controller->channel_abort(dma);
-			xfer_len = dma->actual_len;
-		}
 		musb_h_flush_rxfifo(hw_ep, MUSB_RXCSR_CLRDATATOG);
 		musb_writeb(epio, MUSB_RXINTERVAL, 0);
 		done = true;
 		goto finish;
 	}
 
-	if (unlikely(dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY)) {
-		/* SHOULD NEVER HAPPEN ... but at least DaVinci has done it */
-		ERR("RX%d dma busy, csr %04x\n", epnum, rx_csr);
-		goto finish;
-	}
-
 	/* thorough shutdown for now ... given more precise fault handling
 	 * and better queueing support, we might keep a DMA pipeline going
 	 * while processing this irq for earlier completions.
 	 */
 
-	/* FIXME this is _way_ too much in-line logic for Mentor DMA */
-
-#if !defined(CONFIG_USB_INVENTRA_DMA) && !defined(CONFIG_USB_UX500_DMA)
 	if (rx_csr & MUSB_RXCSR_H_REQPKT)  {
-		/* REVISIT this happened for a while on some short reads...
-		 * the cleanup still needs investigation... looks bad...
-		 * and also duplicates dma cleanup code above ... plus,
-		 * shouldn't this be the "half full" double buffer case?
-		 */
-		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
-			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
-			musb->dma_controller->channel_abort(dma);
-			xfer_len = dma->actual_len;
-			done = true;
-		}
-
 		dev_dbg(musb->controller, "RXCSR%d %04x, reqpkt, len %zu%s\n", epnum, rx_csr,
-				xfer_len, dma ? ", dma" : "");
+				xfer_len, "");
 		rx_csr &= ~MUSB_RXCSR_H_REQPKT;
 
 		musb_ep_select(mbase, epnum);
 		musb_writew(epio, MUSB_RXCSR,
 				MUSB_RXCSR_H_WZC_BITS | rx_csr);
 	}
-#endif
-	if (dma && (rx_csr & MUSB_RXCSR_DMAENAB)) {
-		xfer_len = dma->actual_len;
-
-		val &= ~(MUSB_RXCSR_DMAENAB
-			| MUSB_RXCSR_H_AUTOREQ
-			| MUSB_RXCSR_AUTOCLEAR
-			| MUSB_RXCSR_RXPKTRDY);
-		musb_writew(hw_ep->regs, MUSB_RXCSR, val);
-
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA) || \
-	defined(CONFIG_USB_TI_CPPI41_DMA)
-		if (usb_pipeisoc(pipe)) {
-			struct usb_iso_packet_descriptor *d;
 
-			d = urb->iso_frame_desc + qh->iso_idx;
-			d->actual_length = xfer_len;
-
-			/* even if there was an error, we did the dma
-			 * for iso_frame_desc->length
-			 */
-			if (d->status != -EILSEQ && d->status != -EOVERFLOW)
-				d->status = 0;
-
-			if (++qh->iso_idx >= urb->number_of_packets) {
-				done = true;
-			} else {
-#if defined(CONFIG_USB_TI_CPPI41_DMA)
-				struct dma_controller   *c;
-				dma_addr_t *buf;
-				u32 length, ret;
-
-				c = musb->dma_controller;
-				buf = (void *)
-					urb->iso_frame_desc[qh->iso_idx].offset
-					+ (u32)urb->transfer_dma;
-
-				length =
-					urb->iso_frame_desc[qh->iso_idx].length;
-
-				val |= MUSB_RXCSR_DMAENAB;
-				musb_writew(hw_ep->regs, MUSB_RXCSR, val);
-
-				ret = c->channel_program(dma, qh->maxpacket,
-						0, (u32) buf, length);
-#endif
-				done = false;
-			}
-
-		} else  {
-			/* done if urb buffer is full or short packet is recd */
-			done = (urb->actual_length + xfer_len >=
-					urb->transfer_buffer_length
-				|| dma->actual_len < qh->maxpacket
-				|| dma->rx_packet_done);
-		}
-
-		/* send IN token for next packet, without AUTOREQ */
-		if (!done) {
-			val |= MUSB_RXCSR_H_REQPKT;
-			musb_writew(epio, MUSB_RXCSR,
-				MUSB_RXCSR_H_WZC_BITS | val);
-		}
-
-		dev_dbg(musb->controller, "ep %d dma %s, rxcsr %04x, rxcount %d\n", epnum,
-			done ? "off" : "reset",
-			musb_readw(epio, MUSB_RXCSR),
-			musb_readw(epio, MUSB_RXCOUNT));
-#else
-		done = true;
-#endif
-	} else if (urb->status == -EINPROGRESS) {
+	if (urb->status == -EINPROGRESS) {
 		/* if no errors, be sure a packet is ready for unloading */
 		if (unlikely(!(rx_csr & MUSB_RXCSR_RXPKTRDY))) {
 			status = -EPROTO;
-			ERR("Rx interrupt with no errors or packet!\n");
+			dev_err(musb->controller, "Rx interrupt with no errors or packet!\n");
 
 			/* FIXME this is another "SHOULD NEVER HAPPEN" */
 
@@ -1772,165 +1282,10 @@ void musb_host_rx(struct musb *musb, u8 epnum)
 		}
 
 		/* we are expecting IN packets */
-#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA) || \
-	defined(CONFIG_USB_TI_CPPI41_DMA)
-		if (dma) {
-			struct dma_controller	*c;
-			u16			rx_count;
-			int			ret, length;
-			dma_addr_t		buf;
-
-			rx_count = musb_readw(epio, MUSB_RXCOUNT);
-
-			dev_dbg(musb->controller, "RX%d count %d, buffer 0x%llx len %d/%d\n",
-					epnum, rx_count,
-					(unsigned long long) urb->transfer_dma
-					+ urb->actual_length,
-					qh->offset,
-					urb->transfer_buffer_length);
-
-			c = musb->dma_controller;
-
-			if (usb_pipeisoc(pipe)) {
-				int d_status = 0;
-				struct usb_iso_packet_descriptor *d;
-
-				d = urb->iso_frame_desc + qh->iso_idx;
-
-				if (iso_err) {
-					d_status = -EILSEQ;
-					urb->error_count++;
-				}
-				if (rx_count > d->length) {
-					if (d_status == 0) {
-						d_status = -EOVERFLOW;
-						urb->error_count++;
-					}
-					dev_dbg(musb->controller, "** OVERFLOW %d into %d\n",\
-					    rx_count, d->length);
-
-					length = d->length;
-				} else
-					length = rx_count;
-				d->status = d_status;
-				buf = urb->transfer_dma + d->offset;
-			} else {
-				length = rx_count;
-				buf = urb->transfer_dma +
-						urb->actual_length;
-			}
-
-			dma->desired_mode = 0;
-#ifdef USE_MODE1
-			/* because of the issue below, mode 1 will
-			 * only rarely behave with correct semantics.
-			 */
-			if ((urb->transfer_flags &
-						URB_SHORT_NOT_OK)
-				&& (urb->transfer_buffer_length -
-						urb->actual_length)
-					> qh->maxpacket)
-				dma->desired_mode = 1;
-			if (rx_count < hw_ep->max_packet_sz_rx) {
-				length = rx_count;
-				dma->desired_mode = 0;
-			} else {
-				length = urb->transfer_buffer_length;
-			}
-#endif
-
-/* Disadvantage of using mode 1:
- *	It's basically usable only for mass storage class; essentially all
- *	other protocols also terminate transfers on short packets.
- *
- * Details:
- *	An extra IN token is sent at the end of the transfer (due to AUTOREQ)
- *	If you try to use mode 1 for (transfer_buffer_length - 512), and try
- *	to use the extra IN token to grab the last packet using mode 0, then
- *	the problem is that you cannot be sure when the device will send the
- *	last packet and RxPktRdy set. Sometimes the packet is recd too soon
- *	such that it gets lost when RxCSR is re-set at the end of the mode 1
- *	transfer, while sometimes it is recd just a little late so that if you
- *	try to configure for mode 0 soon after the mode 1 transfer is
- *	completed, you will find rxcount 0. Okay, so you might think why not
- *	wait for an interrupt when the pkt is recd. Well, you won't get any!
- */
-
-			val = musb_readw(epio, MUSB_RXCSR);
-			val &= ~MUSB_RXCSR_H_REQPKT;
-
-			if (dma->desired_mode == 0)
-				val &= ~MUSB_RXCSR_H_AUTOREQ;
-			else
-				val |= MUSB_RXCSR_H_AUTOREQ;
-			val |= MUSB_RXCSR_DMAENAB;
-
-			/* autoclear shouldn't be set in high bandwidth */
-			if (qh->hb_mult == 1)
-				val |= MUSB_RXCSR_AUTOCLEAR;
+		if (1) {
+			done = musb_host_packet_rx(musb, urb,
+					epnum, iso_err);
 
-			musb_writew(epio, MUSB_RXCSR,
-				MUSB_RXCSR_H_WZC_BITS | val);
-
-			/* REVISIT if when actual_length != 0,
-			 * transfer_buffer_length needs to be
-			 * adjusted first...
-			 */
-			ret = c->channel_program(
-				dma, qh->maxpacket,
-				dma->desired_mode, buf, length);
-
-			if (!ret) {
-				c->channel_release(dma);
-				hw_ep->rx_channel = NULL;
-				dma = NULL;
-				val = musb_readw(epio, MUSB_RXCSR);
-				val &= ~(MUSB_RXCSR_DMAENAB
-					| MUSB_RXCSR_H_AUTOREQ
-					| MUSB_RXCSR_AUTOCLEAR);
-				musb_writew(epio, MUSB_RXCSR, val);
-			}
-		}
-#endif	/* Mentor DMA */
-
-		if (!dma) {
-			unsigned int received_len;
-
-			/* Unmap the buffer so that CPU can use it */
-			usb_hcd_unmap_urb_for_dma(musb->hcd, urb);
-
-			/*
-			 * We need to map sg if the transfer_buffer is
-			 * NULL.
-			 */
-			if (!urb->transfer_buffer) {
-				qh->use_sg = true;
-				sg_miter_start(&qh->sg_miter, urb->sg, 1,
-						sg_flags);
-			}
-
-			if (qh->use_sg) {
-				if (!sg_miter_next(&qh->sg_miter)) {
-					dev_err(musb->controller, "error: sg list empty\n");
-					sg_miter_stop(&qh->sg_miter);
-					status = -EINVAL;
-					done = true;
-					goto finish;
-				}
-				urb->transfer_buffer = qh->sg_miter.addr;
-				received_len = urb->actual_length;
-				qh->offset = 0x0;
-				done = musb_host_packet_rx(musb, urb, epnum,
-						iso_err);
-				/* Calculate the number of bytes received */
-				received_len = urb->actual_length -
-					received_len;
-				qh->sg_miter.consumed = received_len;
-				sg_miter_stop(&qh->sg_miter);
-			} else {
-				done = musb_host_packet_rx(musb, urb,
-						epnum, iso_err);
-			}
 			dev_dbg(musb->controller, "read %spacket\n", done ? "last " : "");
 		}
 	}
@@ -1939,8 +1294,6 @@ finish:
 	urb->actual_length += xfer_len;
 	qh->offset += xfer_len;
 	if (done) {
-		if (qh->use_sg)
-			qh->use_sg = false;
 
 		if (urb->status == -EINPROGRESS)
 			urb->status = status;
@@ -1958,7 +1311,7 @@ static int musb_schedule(
 	struct musb_qh		*qh,
 	int			is_in)
 {
-	int			idle = 0;
+	int			idle;
 	int			best_diff;
 	int			best_end, epnum;
 	struct musb_hw_ep	*hw_ep = NULL;
@@ -2038,7 +1391,7 @@ static int musb_schedule(
 			head = &musb->out_bulk;
 
 		/* Enable bulk RX/TX NAK timeout scheme when bulk requests are
-		 * multiplexed. This scheme does not work in high speed to full
+		 * multiplexed.  This scheme doen't work in high speed to full
 		 * speed scenario as NAK interrupts are not coming from a
 		 * full speed device connected to a high speed device.
 		 * NAK timeout interval is 8 (128 uframe or 16ms) for HS and
@@ -2069,7 +1422,17 @@ success:
 	return 0;
 }
 
-static int musb_urb_enqueue(
+
+/* check if transaction translator is needed for device */
+static int tt_needed(struct musb *musb, struct usb_device *dev)
+{
+	if ((musb_readb(musb->mregs, MUSB_POWER) & MUSB_POWER_HSMODE) &&
+			(dev->speed < USB_SPEED_HIGH))
+		return 1;
+	return 0;
+}
+
+int musb_urb_enqueue(
 	struct usb_hcd			*hcd,
 	struct urb			*urb,
 	gfp_t				mem_flags)
@@ -2082,7 +1445,6 @@ static int musb_urb_enqueue(
 	int				ret;
 	unsigned			type_reg;
 	unsigned			interval;
-
 	/* host role must be active */
 	if (!is_host_active(musb) || !musb->is_active)
 		return -ENODEV;
@@ -2203,17 +1565,13 @@ static int musb_urb_enqueue(
 	if (musb->is_multipoint) {
 		struct usb_device	*parent = urb->dev->parent;
 
-		if (parent != hcd->self.root_hub) {
+		if (parent) {
 			qh->h_addr_reg = (u8) parent->devnum;
 
-			/* set up tt info if needed */
-			if (urb->dev->tt) {
-				qh->h_port_reg = (u8) urb->dev->ttport;
-				if (urb->dev->tt->hub)
-					qh->h_addr_reg =
-						(u8) urb->dev->tt->hub->devnum;
-				if (urb->dev->tt->multi)
-					qh->h_addr_reg |= 0x80;
+			if (tt_needed(musb, urb->dev)) {
+				u16 hub_port = find_tt(urb->dev);
+				qh->h_addr_reg = (u8) (hub_port >> 8);
+				qh->h_port_reg = (u8) (hub_port & 0xff);
 			}
 		}
 	}
@@ -2252,16 +1610,14 @@ done:
 	return ret;
 }
 
-
 /*
  * abort a transfer that's at the head of a hardware queue.
  * called with controller locked, irqs blocked
  * that hardware queue advances to the next transfer, unless prevented
  */
-static int musb_cleanup_urb(struct urb *urb, struct musb_qh *qh)
+static noinline int musb_cleanup_urb(struct urb *urb, struct musb_qh *qh)
 {
 	struct musb_hw_ep	*ep = qh->hw_ep;
-	struct musb		*musb = ep->musb;
 	void __iomem		*epio = ep->regs;
 	unsigned		hw_end = ep->epnum;
 	void __iomem		*regs = ep->musb->mregs;
@@ -2271,20 +1627,6 @@ static int musb_cleanup_urb(struct urb *urb, struct musb_qh *qh)
 
 	musb_ep_select(regs, hw_end);
 
-	if (is_dma_capable()) {
-		struct dma_channel	*dma;
-
-		dma = is_in ? ep->rx_channel : ep->tx_channel;
-		if (dma) {
-			status = ep->musb->dma_controller->channel_abort(dma);
-			dev_dbg(musb->controller,
-				"abort %cX%d DMA for urb %p --> %d\n",
-				is_in ? 'R' : 'T', ep->epnum,
-				urb, status);
-			urb->actual_length += dma->actual_len;
-		}
-	}
-
 	/* turn off DMA requests, discard state, stop polling ... */
 	if (ep->epnum && is_in) {
 		/* giveback saves bulk toggle */
@@ -2316,13 +1658,13 @@ static int musb_cleanup_urb(struct urb *urb, struct musb_qh *qh)
 	return status;
 }
 
-static int musb_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
+int musb_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
 {
 	struct musb		*musb = hcd_to_musb(hcd);
 	struct musb_qh		*qh;
 	unsigned long		flags;
 	int			is_in  = usb_pipein(urb->pipe);
-	int			ret;
+	int			ret = 0;
 
 	dev_dbg(musb->controller, "urb=%p, dev%d ep%d%s\n", urb,
 			usb_pipedevice(urb->pipe),
@@ -2330,9 +1672,6 @@ static int musb_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
 			is_in ? "in" : "out");
 
 	spin_lock_irqsave(&musb->lock, flags);
-	ret = usb_hcd_check_unlink_urb(hcd, urb, status);
-	if (ret)
-		goto done;
 
 	qh = urb->hcpriv;
 	if (!qh)
@@ -2374,335 +1713,37 @@ done:
 	return ret;
 }
 
-/* disable an endpoint */
-static void
-musb_h_disable(struct usb_hcd *hcd, struct usb_host_endpoint *hep)
-{
-	u8			is_in = hep->desc.bEndpointAddress & USB_DIR_IN;
-	unsigned long		flags;
-	struct musb		*musb = hcd_to_musb(hcd);
-	struct musb_qh		*qh;
-	struct urb		*urb;
-
-	spin_lock_irqsave(&musb->lock, flags);
-
-	qh = hep->hcpriv;
-	if (qh == NULL)
-		goto exit;
-
-	/* NOTE: qh is invalid unless !list_empty(&hep->urb_list) */
-
-	/* Kick the first URB off the hardware, if needed */
-	qh->is_ready = 0;
-	if (musb_ep_get_qh(qh->hw_ep, is_in) == qh) {
-		urb = next_urb(qh);
-
-		/* make software (then hardware) stop ASAP */
-		if (!urb->unlinked)
-			urb->status = -ESHUTDOWN;
-
-		/* cleanup */
-		musb_cleanup_urb(urb, qh);
-
-		/* Then nuke all the others ... and advance the
-		 * queue on hw_ep (e.g. bulk ring) when we're done.
-		 */
-		while (!list_empty(&hep->urb_list)) {
-			urb = next_urb(qh);
-			urb->status = -ESHUTDOWN;
-			musb_advance_schedule(musb, urb, qh->hw_ep, is_in);
-		}
-	} else {
-		/* Just empty the queue; the hardware is busy with
-		 * other transfers, and since !qh->is_ready nothing
-		 * will activate any of these as it advances.
-		 */
-		while (!list_empty(&hep->urb_list))
-			musb_giveback(musb, next_urb(qh), -ESHUTDOWN);
-
-		hep->hcpriv = NULL;
-		list_del(&qh->ring);
-		kfree(qh);
-	}
-exit:
-	spin_unlock_irqrestore(&musb->lock, flags);
-}
-
-static int musb_h_get_frame_number(struct usb_hcd *hcd)
-{
-	struct musb	*musb = hcd_to_musb(hcd);
-
-	return musb_readw(musb->mregs, MUSB_FRAME);
-}
-
-static int musb_h_start(struct usb_hcd *hcd)
-{
-	struct musb	*musb = hcd_to_musb(hcd);
-
-	/* NOTE: musb_start() is called when the hub driver turns
-	 * on port power, or when (OTG) peripheral starts.
-	 */
-	hcd->state = HC_STATE_RUNNING;
-	musb->port1_status = 0;
-	return 0;
-}
-
-static void musb_h_stop(struct usb_hcd *hcd)
-{
-	musb_stop(hcd_to_musb(hcd));
-	hcd->state = HC_STATE_HALT;
-}
-
-static int musb_bus_suspend(struct usb_hcd *hcd)
-{
-	struct musb	*musb = hcd_to_musb(hcd);
-	u8		devctl;
-
-	musb_port_suspend(musb, true);
-
-	if (!is_host_active(musb))
-		return 0;
-
-	switch (musb->xceiv->state) {
-	case OTG_STATE_A_SUSPEND:
-		return 0;
-	case OTG_STATE_A_WAIT_VRISE:
-		/* ID could be grounded even if there's no device
-		 * on the other end of the cable.  NOTE that the
-		 * A_WAIT_VRISE timers are messy with MUSB...
-		 */
-		devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
-		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
-			musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
-		break;
-	default:
-		break;
-	}
-
-	if (musb->is_active) {
-		WARNING("trying to suspend as %s while active\n",
-				usb_otg_state_string(musb->xceiv->state));
-		return -EBUSY;
-	} else
-		return 0;
-}
-
-static int musb_bus_resume(struct usb_hcd *hcd)
-{
-	struct musb *musb = hcd_to_musb(hcd);
-
-	if (musb->config &&
-	    musb->config->host_port_deassert_reset_at_resume)
-		musb_port_reset(musb, false);
-
-	return 0;
-}
-
-#ifndef CONFIG_MUSB_PIO_ONLY
-
-#define MUSB_USB_DMA_ALIGN 4
-
-struct musb_temp_buffer {
-	void *kmalloc_ptr;
-	void *old_xfer_buffer;
-	u8 data[0];
-};
-
-static void musb_free_temp_buffer(struct urb *urb)
-{
-	enum dma_data_direction dir;
-	struct musb_temp_buffer *temp;
-
-	if (!(urb->transfer_flags & URB_ALIGNED_TEMP_BUFFER))
-		return;
-
-	dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
-
-	temp = container_of(urb->transfer_buffer, struct musb_temp_buffer,
-			    data);
-
-	if (dir == DMA_FROM_DEVICE) {
-		memcpy(temp->old_xfer_buffer, temp->data,
-		       urb->transfer_buffer_length);
-	}
-	urb->transfer_buffer = temp->old_xfer_buffer;
-	kfree(temp->kmalloc_ptr);
-
-	urb->transfer_flags &= ~URB_ALIGNED_TEMP_BUFFER;
-}
-
-static int musb_alloc_temp_buffer(struct urb *urb, gfp_t mem_flags)
-{
-	enum dma_data_direction dir;
-	struct musb_temp_buffer *temp;
-	void *kmalloc_ptr;
-	size_t kmalloc_size;
-
-	if (urb->num_sgs || urb->sg ||
-	    urb->transfer_buffer_length == 0 ||
-	    !((uintptr_t)urb->transfer_buffer & (MUSB_USB_DMA_ALIGN - 1)))
-		return 0;
-
-	dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
-
-	/* Allocate a buffer with enough padding for alignment */
-	kmalloc_size = urb->transfer_buffer_length +
-		sizeof(struct musb_temp_buffer) + MUSB_USB_DMA_ALIGN - 1;
-
-	kmalloc_ptr = kmalloc(kmalloc_size, mem_flags);
-	if (!kmalloc_ptr)
-		return -ENOMEM;
-
-	/* Position our struct temp_buffer such that data is aligned */
-	temp = PTR_ALIGN(kmalloc_ptr, MUSB_USB_DMA_ALIGN);
-
-
-	temp->kmalloc_ptr = kmalloc_ptr;
-	temp->old_xfer_buffer = urb->transfer_buffer;
-	if (dir == DMA_TO_DEVICE)
-		memcpy(temp->data, urb->transfer_buffer,
-		       urb->transfer_buffer_length);
-	urb->transfer_buffer = temp->data;
-
-	urb->transfer_flags |= URB_ALIGNED_TEMP_BUFFER;
-
-	return 0;
-}
-
-static int musb_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
-				      gfp_t mem_flags)
-{
-	struct musb	*musb = hcd_to_musb(hcd);
-	int ret;
-
-	/*
-	 * The DMA engine in RTL1.8 and above cannot handle
-	 * DMA addresses that are not aligned to a 4 byte boundary.
-	 * For such engine implemented (un)map_urb_for_dma hooks.
-	 * Do not use these hooks for RTL<1.8
-	 */
-	if (musb->hwvers < MUSB_HWVERS_1800)
-		return usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
-
-	ret = musb_alloc_temp_buffer(urb, mem_flags);
-	if (ret)
-		return ret;
-
-	ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
-	if (ret)
-		musb_free_temp_buffer(urb);
-
-	return ret;
-}
-
-static void musb_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
-{
-	struct musb	*musb = hcd_to_musb(hcd);
-
-	usb_hcd_unmap_urb_for_dma(hcd, urb);
-
-	/* Do not use this hook for RTL<1.8 (see description above) */
-	if (musb->hwvers < MUSB_HWVERS_1800)
-		return;
-
-	musb_free_temp_buffer(urb);
-}
-#endif /* !CONFIG_MUSB_PIO_ONLY */
-
-static const struct hc_driver musb_hc_driver = {
-	.description		= "musb-hcd",
-	.product_desc		= "MUSB HDRC host driver",
-	.hcd_priv_size		= sizeof(struct musb *),
-	.flags			= HCD_USB2 | HCD_MEMORY,
-
-	/* not using irq handler or reset hooks from usbcore, since
-	 * those must be shared with peripheral code for OTG configs
-	 */
-
-	.start			= musb_h_start,
-	.stop			= musb_h_stop,
-
-	.get_frame_number	= musb_h_get_frame_number,
-
-	.urb_enqueue		= musb_urb_enqueue,
-	.urb_dequeue		= musb_urb_dequeue,
-	.endpoint_disable	= musb_h_disable,
-
-#ifndef CONFIG_MUSB_PIO_ONLY
-	.map_urb_for_dma	= musb_map_urb_for_dma,
-	.unmap_urb_for_dma	= musb_unmap_urb_for_dma,
-#endif
-
-	.hub_status_data	= musb_hub_status_data,
-	.hub_control		= musb_hub_control,
-	.bus_suspend		= musb_bus_suspend,
-	.bus_resume		= musb_bus_resume,
-	/* .start_port_reset	= NULL, */
-	/* .hub_irq_enable	= NULL, */
-};
-
 int musb_host_alloc(struct musb *musb)
 {
-	struct device	*dev = musb->controller;
-
 	/* usbcore sets dev->driver_data to hcd, and sometimes uses that... */
-	musb->hcd = usb_create_hcd(&musb_hc_driver, dev, dev_name(dev));
+	musb->hcd = xzalloc(sizeof(struct usb_hcd));
 	if (!musb->hcd)
 		return -EINVAL;
 
-	*musb->hcd->hcd_priv = (unsigned long) musb;
-	musb->hcd->self.uses_pio_for_control = 1;
-	musb->hcd->uses_new_polling = 1;
-	musb->hcd->has_tt = 1;
+	musb->hcd->hcd_priv = musb;
 
 	return 0;
 }
 
-void musb_host_cleanup(struct musb *musb)
-{
-	if (musb->port_mode == MUSB_PORT_MODE_GADGET)
-		return;
-	usb_remove_hcd(musb->hcd);
-	musb->hcd = NULL;
-}
-
 void musb_host_free(struct musb *musb)
 {
-	usb_put_hcd(musb->hcd);
 }
 
 int musb_host_setup(struct musb *musb, int power_budget)
 {
-	int ret;
 	struct usb_hcd *hcd = musb->hcd;
 
 	MUSB_HST_MODE(musb);
-	musb->xceiv->otg->default_a = 1;
-	musb->xceiv->state = OTG_STATE_A_IDLE;
 
-	otg_set_host(musb->xceiv->otg, &hcd->self);
 	hcd->self.otg_port = 1;
-	musb->xceiv->otg->host = &hcd->self;
-	hcd->power_budget = 2 * (power_budget ? : 250);
 
-	ret = usb_add_hcd(hcd, 0, 0);
-	if (ret < 0)
-		return ret;
-
-	device_wakeup_enable(hcd->self.controller);
 	return 0;
 }
 
 void musb_host_resume_root_hub(struct musb *musb)
 {
-	usb_hcd_resume_root_hub(musb->hcd);
 }
 
 void musb_host_poke_root_hub(struct musb *musb)
 {
-	MUSB_HST_MODE(musb);
-	if (musb->hcd->status_urb)
-		usb_hcd_poll_rh_status(musb->hcd);
-	else
-		usb_hcd_resume_root_hub(musb->hcd);
 }
diff --git a/drivers/usb/musb/musb_host.h b/drivers/usb/musb/musb_host.h
index 7bbf01b..0937808 100644
--- a/drivers/usb/musb/musb_host.h
+++ b/drivers/usb/musb/musb_host.h
@@ -35,7 +35,78 @@
 #ifndef _MUSB_HOST_H
 #define _MUSB_HOST_H
 
-#include <linux/scatterlist.h>
+//#include <linux/scatterlist.h>
+#include <linux/list.h>
+#include <usb/usb.h>
+#include <asm/unaligned.h>
+
+/*
+ * urb->transfer_flags:
+ *
+ * Note: URB_DIR_IN/OUT is automatically set in usb_submit_urb().
+ */
+#define URB_SHORT_NOT_OK   0x0001 /* report short reads as errors. */
+#define URB_ZERO_PACKET    0x0040 /* Finish bulk OUT with short packet */
+
+#define usb_hcd_link_urb_to_ep(hcd, urb)	({		\
+	int ret = 0;						\
+	list_add_tail(&urb->urb_list, &urb->ep->urb_list);	\
+	ret; })
+
+#define usb_hcd_unlink_urb_from_ep(hcd, urb)	list_del_init(&urb->urb_list)
+
+struct ep_device;
+struct urb;
+
+typedef void (*usb_complete_t)(struct urb *urb);
+
+struct urb {
+	void *hcpriv;				/* private data for host controller */
+	struct list_head urb_list;	/* list head for use by the urb's
+								 * current owner */
+	struct usb_device *dev;		/* (in) pointer to associated device */
+	struct usb_host_endpoint *ep;	/* (internal) pointer to endpoint */
+	unsigned int pipe;		/* (in) pipe information */
+	int status;			/* (return) non-ISO status */
+	unsigned int transfer_flags;	/* (in) URB_SHORT_NOT_OK | ...*/
+	void *transfer_buffer;	/* (in) associated data buffer */
+	dma_addr_t transfer_dma;	/* (in) dma addr for transfer_buffer */
+	u32 transfer_buffer_length;	/* (in) data buffer length */
+	u32 actual_length;			/* (return) actual transfer length */
+	unsigned char *setup_packet;	/* (in) setup packet (control only) */
+	int start_frame;			/* (modify) start frame (ISO) */
+	int error_count;			/* (return) number of ISO errors */
+	usb_complete_t complete;	/* (in) completion routine */
+};
+
+#define USB_DT_SS_EP_COMP_SIZE		6
+
+/**
+ * struct usb_host_endpoint - host-side endpoint descriptor and queue
+ * @desc: descriptor for this endpoint, wMaxPacketSize in native byteorder
+ * @ss_ep_comp: SuperSpeed companion descriptor for this endpoint
+ * @urb_list: urbs queued to this endpoint; maintained by usbcore
+ * @hcpriv: for use by HCD; typically holds hardware dma queue head (QH)
+ *	with one or more transfer descriptors (TDs) per urb
+ * @ep_dev: ep_device for sysfs info
+ * @extra: descriptors following this endpoint in the configuration
+ * @extralen: how many bytes of "extra" are valid
+ * @enabled: URBs may be submitted to this endpoint
+ *
+ * USB requests are always queued to a given endpoint, identified by a
+ * descriptor within an active interface in a given USB configuration.
+ */
+struct usb_host_endpoint {
+	struct usb_endpoint_descriptor		desc;
+	struct usb_ss_ep_comp_descriptor	ss_ep_comp;
+	struct list_head		urb_list;
+	void				*hcpriv;
+	//struct ep_device		*ep_dev;	/* For sysfs info */
+
+	unsigned char *extra;   /* Extra descriptors */
+	int extralen;
+	int enabled;
+};
 
 /* stored in "usb_host_endpoint.hcpriv" for scheduled endpoints */
 struct musb_qh {
@@ -63,8 +134,8 @@ struct musb_qh {
 	u16			maxpacket;
 	u16			frame;		/* for periodic schedule */
 	unsigned		iso_idx;	/* in urb->iso_frame_desc[] */
-	struct sg_mapping_iter sg_miter;	/* for highmem in PIO mode */
-	bool			use_sg;		/* to track urb using sglist */
+	//struct sg_mapping_iter sg_miter;	/* for highmem in PIO mode */
+	//bool			use_sg;		/* to track urb using sglist */
 };
 
 /* map from control or bulk queue head to the first qh on that ring */
@@ -75,26 +146,21 @@ static inline struct musb_qh *first_qh(struct list_head *q)
 	return list_entry(q->next, struct musb_qh, ring);
 }
 
+struct usb_hcd;
 
-#if IS_ENABLED(CONFIG_USB_MUSB_HOST) || IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
+#if IS_ENABLED(CONFIG_USB_MUSB_HOST)
 extern struct musb *hcd_to_musb(struct usb_hcd *);
 extern irqreturn_t musb_h_ep0_irq(struct musb *);
 extern int musb_host_alloc(struct musb *);
 extern int musb_host_setup(struct musb *, int);
-extern void musb_host_cleanup(struct musb *);
-extern void musb_host_tx(struct musb *, u8);
-extern void musb_host_rx(struct musb *, u8);
 extern void musb_root_disconnect(struct musb *musb);
 extern void musb_host_free(struct musb *);
 extern void musb_host_cleanup(struct musb *);
 extern void musb_host_tx(struct musb *, u8);
 extern void musb_host_rx(struct musb *, u8);
-extern void musb_root_disconnect(struct musb *musb);
 extern void musb_host_resume_root_hub(struct musb *musb);
 extern void musb_host_poke_root_hub(struct musb *musb);
-extern void musb_port_suspend(struct musb *musb, bool do_suspend);
 extern void musb_port_reset(struct musb *musb, bool do_reset);
-extern void musb_host_finish_resume(struct work_struct *work);
 #else
 static inline struct musb *hcd_to_musb(struct usb_hcd *hcd)
 {
@@ -124,9 +190,7 @@ static inline void musb_root_disconnect(struct musb *musb)	{}
 static inline void musb_host_resume_root_hub(struct musb *musb)	{}
 static inline void musb_host_poll_rh_status(struct musb *musb)	{}
 static inline void musb_host_poke_root_hub(struct musb *musb)	{}
-static inline void musb_port_suspend(struct musb *musb, bool do_suspend) {}
 static inline void musb_port_reset(struct musb *musb, bool do_reset) {}
-static inline void musb_host_finish_resume(struct work_struct *work) {}
 #endif
 
 struct usb_hcd;
@@ -148,4 +212,47 @@ static inline struct urb *next_urb(struct musb_qh *qh)
 	return list_entry(queue->next, struct urb, urb_list);
 }
 
+/*
+ * Endpoints
+ */
+#define USB_ENDPOINT_NUMBER_MASK	0x0f	/* in bEndpointAddress */
+#define USB_ENDPOINT_XFERTYPE_MASK	0x03	/* in bmAttributes */
+
+static inline u16 find_tt(struct usb_device *dev)
+{
+	u8 chid;
+	u8 hub;
+
+	/* Find out the nearest parent which is high speed */
+	while (dev->parent->parent != NULL)
+		if (dev->parent->speed != USB_SPEED_HIGH)
+			dev = dev->parent;
+		else
+			break;
+
+	/* determine the port address at that hub */
+	hub = dev->parent->devnum;
+	for (chid = 0; chid < USB_MAXCHILDREN; chid++)
+		if (dev->parent->children[chid] == dev)
+			break;
+
+	return (hub << 8) | chid;
+}
+
+int musb_urb_enqueue(
+	struct usb_hcd			*hcd,
+	struct urb			*urb,
+	gfp_t				mem_flags);
+
+int musb_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status);
+
+static inline void usb_hcd_giveback_urb(struct usb_hcd *hcd,
+					struct urb *urb,
+					int status)
+{
+	urb->status = status;
+	if (urb->complete)
+		urb->complete(urb);
+}
+
 #endif				/* _MUSB_HOST_H */
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index eebeed7..a4be339 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -35,7 +35,7 @@
 #ifndef __MUSB_LINUX_PLATFORM_ARCH_H__
 #define __MUSB_LINUX_PLATFORM_ARCH_H__
 
-#include <linux/io.h>
+#include <io.h>
 
 #ifndef CONFIG_BLACKFIN
 
diff --git a/drivers/usb/musb/phy-am335x-control.c b/drivers/usb/musb/phy-am335x-control.c
new file mode 100644
index 0000000..a241c84
--- /dev/null
+++ b/drivers/usb/musb/phy-am335x-control.c
@@ -0,0 +1,168 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <linux/err.h>
+
+struct phy_control {
+	void (*phy_power)(struct phy_control *phy_ctrl, u32 id, bool on);
+	void (*phy_wkup)(struct phy_control *phy_ctrl, u32 id, bool on);
+};
+
+struct am335x_control_usb {
+	struct device_d *dev;
+	void __iomem *phy_reg;
+	void __iomem *wkup;
+	spinlock_t lock;
+	struct phy_control phy_ctrl;
+};
+
+#define AM335X_USB0_CTRL		0x0
+#define AM335X_USB1_CTRL		0x8
+#define AM335x_USB_WKUP			0x0
+
+#define USBPHY_CM_PWRDN		(1 << 0)
+#define USBPHY_OTG_PWRDN	(1 << 1)
+#define USBPHY_OTGVDET_EN	(1 << 19)
+#define USBPHY_OTGSESSEND_EN	(1 << 20)
+
+#define AM335X_PHY0_WK_EN	(1 << 0)
+#define AM335X_PHY1_WK_EN	(1 << 8)
+
+static void am335x_phy_wkup(struct  phy_control *phy_ctrl, u32 id, bool on)
+{
+	struct am335x_control_usb *usb_ctrl;
+	u32 val;
+	u32 reg;
+
+	usb_ctrl = container_of(phy_ctrl, struct am335x_control_usb, phy_ctrl);
+
+	switch (id) {
+	case 0:
+		reg = AM335X_PHY0_WK_EN;
+		break;
+	case 1:
+		reg = AM335X_PHY1_WK_EN;
+		break;
+	default:
+		WARN_ON(1);
+		return;
+	}
+
+	spin_lock(&usb_ctrl->lock);
+	val = readl(usb_ctrl->wkup);
+
+	if (on)
+		val |= reg;
+	else
+		val &= ~reg;
+
+	writel(val, usb_ctrl->wkup);
+	spin_unlock(&usb_ctrl->lock);
+}
+
+static void am335x_phy_power(struct phy_control *phy_ctrl, u32 id, bool on)
+{
+	struct am335x_control_usb *usb_ctrl;
+	u32 val;
+	u32 reg;
+
+	usb_ctrl = container_of(phy_ctrl, struct am335x_control_usb, phy_ctrl);
+
+	switch (id) {
+	case 0:
+		reg = AM335X_USB0_CTRL;
+		break;
+	case 1:
+		reg = AM335X_USB1_CTRL;
+		break;
+	default:
+		WARN_ON(1);
+		return;
+	}
+
+	val = readl(usb_ctrl->phy_reg + reg);
+	if (on) {
+		val &= ~(USBPHY_CM_PWRDN | USBPHY_OTG_PWRDN);
+		val |= USBPHY_OTGVDET_EN | USBPHY_OTGSESSEND_EN;
+	} else {
+		val |= USBPHY_CM_PWRDN | USBPHY_OTG_PWRDN;
+	}
+
+	writel(val, usb_ctrl->phy_reg + reg);
+}
+
+static const struct phy_control ctrl_am335x = {
+	.phy_power = am335x_phy_power,
+	.phy_wkup = am335x_phy_wkup,
+};
+
+static __maybe_unused struct of_device_id omap_control_usb_dt_ids[] = {
+	{
+		.compatible = "ti,am335x-usb-ctrl-module", .data = (unsigned long)&ctrl_am335x
+	}, {
+		/* sentinel */
+	},
+};
+
+struct phy_control *am335x_get_phy_control(struct device_d *dev)
+{
+	struct device_node *node;
+	struct am335x_control_usb *ctrl_usb;
+
+	node = of_parse_phandle(dev->device_node, "ti,ctrl_mod", 0);
+	if (!node)
+		return NULL;
+
+	dev = of_find_device_by_node(node);
+	if (!dev)
+		return NULL;
+
+	ctrl_usb = dev->priv;
+	if (!ctrl_usb)
+		return NULL;
+
+	return &ctrl_usb->phy_ctrl;
+}
+EXPORT_SYMBOL(am335x_get_phy_control);
+
+
+static int am335x_control_usb_probe(struct device_d *dev)
+{
+	/*struct resource	*res;*/
+	struct am335x_control_usb *ctrl_usb;
+	const struct phy_control *phy_ctrl;
+	int ret;
+
+	ret = dev_get_drvdata(dev, (unsigned long *)&phy_ctrl);
+	if (ret)
+		return ret;
+
+	ctrl_usb = xzalloc(sizeof(*ctrl_usb));
+	if (!ctrl_usb) {
+		dev_err(dev, "unable to alloc memory for control usb\n");
+		return -ENOMEM;
+	}
+
+	ctrl_usb->dev = dev;
+
+	ctrl_usb->phy_reg = dev_request_mem_region(dev, 0);
+	if (IS_ERR(ctrl_usb->phy_reg))
+		return PTR_ERR(ctrl_usb->phy_reg);
+
+	ctrl_usb->wkup = dev_request_mem_region(dev, 1);
+	if (IS_ERR(ctrl_usb->wkup))
+		return PTR_ERR(ctrl_usb->wkup);
+
+	spin_lock_init(&ctrl_usb->lock);
+	ctrl_usb->phy_ctrl = *phy_ctrl;
+
+	dev->priv = ctrl_usb;
+	return 0;
+};
+
+static struct driver_d am335x_control_driver = {
+	.name   = "am335x-control-usb",
+	.probe  = am335x_control_usb_probe,
+	.of_compatible = DRV_OF_COMPAT(omap_control_usb_dt_ids),
+};
+device_platform_driver(am335x_control_driver);
diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
new file mode 100644
index 0000000..2d58bbe
--- /dev/null
+++ b/drivers/usb/musb/phy-am335x.c
@@ -0,0 +1,86 @@
+#include <common.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <linux/err.h>
+#include "am35x-phy-control.h"
+#include "musb_core.h"
+
+struct am335x_usbphy {
+	void __iomem *base;
+	struct phy_control *phy_ctrl;
+	int id;
+	struct usb_phy phy;
+};
+
+static struct am335x_usbphy *am_usbphy;
+
+struct usb_phy *am335x_get_usb_phy(void)
+{
+	return &am_usbphy->phy;
+}
+
+static int am335x_init(struct usb_phy *phy)
+{
+	struct am335x_usbphy *am_usbphy = container_of(phy, struct am335x_usbphy, phy);
+
+	phy_ctrl_power(am_usbphy->phy_ctrl, am_usbphy->id, true);
+	return 0;
+}
+
+static int am335x_phy_probe(struct device_d *dev)
+{
+	int ret;
+
+	am_usbphy = xzalloc(sizeof(*am_usbphy));
+	if (!am_usbphy)
+		return -ENOMEM;
+
+	am_usbphy->base = dev_request_mem_region(dev, 0);
+	if (!am_usbphy->base) {
+		ret = -ENODEV;
+		goto err_free;
+	}
+
+	am_usbphy->phy_ctrl = am335x_get_phy_control(dev);
+	if (!am_usbphy->phy_ctrl)
+		return -ENODEV;
+
+	am_usbphy->id = of_alias_get_id(dev->device_node, "phy");
+	if (am_usbphy->id < 0) {
+		dev_err(dev, "Missing PHY id: %d\n", am_usbphy->id);
+		return am_usbphy->id;
+	}
+
+	am_usbphy->phy.init = am335x_init;
+	dev->priv = am_usbphy;
+
+	dev_info(dev, "am_usbphy %p enabled\n", &am_usbphy->phy);
+
+	return 0;
+
+err_free:
+	free(am_usbphy);
+
+	return ret;
+};
+
+static __maybe_unused struct of_device_id am335x_phy_dt_ids[] = {
+	{
+		.compatible = "ti,am335x-usb-phy",
+	}, {
+		/* sentinel */
+	},
+};
+
+static struct driver_d am335x_phy_driver = {
+	.name   = "am335x-phy-driver",
+	.probe  = am335x_phy_probe,
+	.of_compatible = DRV_OF_COMPAT(am335x_phy_dt_ids),
+};
+
+static int am335x_phy_init(void)
+{
+	return platform_driver_register(&am335x_phy_driver);
+}
+fs_initcall(am335x_phy_init);
diff --git a/drivers/usb/musb/phy-am335x.h b/drivers/usb/musb/phy-am335x.h
new file mode 100644
index 0000000..27da2e3
--- /dev/null
+++ b/drivers/usb/musb/phy-am335x.h
@@ -0,0 +1,6 @@
+#ifndef _PHY_AM335x_H_
+#define _PHY_AM335x_H_
+
+struct usb_phy *am335x_get_usb_phy(void);
+
+#endif
diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
index 753fb52..d34d1d1 100644
--- a/include/linux/barebox-wrapper.h
+++ b/include/linux/barebox-wrapper.h
@@ -33,11 +33,14 @@ typedef int     gfp_t;
 #define MODULE_AUTHOR(x)
 #define MODULE_DESCRIPTION(x)
 #define MODULE_LICENSE(x)
+#define MODULE_ALIAS(x)
 
 typedef int   spinlock_t;
 #define spin_lock_init(...)
 #define spin_lock(...)
 #define spin_unlock(...)
+static inline void spin_lock_irqsave(spinlock_t *lock, unsigned long flags) {}
+static inline void spin_unlock_irqrestore(spinlock_t *lock, unsigned long flags) {}
 
 #define mutex_init(...)
 #define mutex_lock(...)
@@ -66,4 +69,8 @@ typedef int	wait_queue_head_t;
 
 #define init_waitqueue_head(...)	do { } while (0)
 
+typedef int irqreturn_t;
+#define IRQ_NONE 0
+#define IRQ_HANDLED 0
+
 #endif /* __INCLUDE_LINUX_BAREBOX_WRAPPER_H */
diff --git a/include/usb/gadget.h b/include/usb/gadget.h
index 7106f9d..f663e98 100644
--- a/include/usb/gadget.h
+++ b/include/usb/gadget.h
@@ -483,6 +483,7 @@ struct usb_gadget_ops {
 			struct usb_gadget_driver *);
 	int	(*udc_stop)(struct usb_gadget *,
 			struct usb_gadget_driver *);
+	void	(*udc_poll)(struct usb_gadget *);
 };
 
 /**
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
