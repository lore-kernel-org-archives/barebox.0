Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XXQo3-00052L-04
 for barebox@lists.infradead.org; Fri, 26 Sep 2014 08:23:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 5/9] USB: Add MUSB driver from Linux
Date: Fri, 26 Sep 2014 10:22:11 +0200
Message-Id: <1411719735-30949-6-git-send-email-s.hauer@pengutronix.de>
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
To: barebox@lists.infradead.org

This adds the necessary files from the MUSB driver directly from Linux
3.17-rc5. No changes to the original files have been made so far.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/Makefile                 |    1 +
 drivers/usb/musb/am35x-phy-control.h |   21 +
 drivers/usb/musb/musb_am335x.c       |   43 +
 drivers/usb/musb/musb_core.c         | 2373 +++++++++++++++++++++++++++++
 drivers/usb/musb/musb_core.h         |  590 ++++++++
 drivers/usb/musb/musb_dma.h          |  195 +++
 drivers/usb/musb/musb_dsps.c         |  920 ++++++++++++
 drivers/usb/musb/musb_gadget.c       | 2140 +++++++++++++++++++++++++++
 drivers/usb/musb/musb_gadget.h       |  147 ++
 drivers/usb/musb/musb_gadget_ep0.c   | 1083 ++++++++++++++
 drivers/usb/musb/musb_host.c         | 2708 ++++++++++++++++++++++++++++++++++
 drivers/usb/musb/musb_host.h         |  151 ++
 drivers/usb/musb/musb_io.h           |  122 ++
 drivers/usb/musb/musb_regs.h         |  652 ++++++++
 include/usb/musb.h                   |  152 ++
 15 files changed, 11298 insertions(+)
 create mode 100644 drivers/usb/musb/am35x-phy-control.h
 create mode 100644 drivers/usb/musb/musb_am335x.c
 create mode 100644 drivers/usb/musb/musb_core.c
 create mode 100644 drivers/usb/musb/musb_core.h
 create mode 100644 drivers/usb/musb/musb_dma.h
 create mode 100644 drivers/usb/musb/musb_dsps.c
 create mode 100644 drivers/usb/musb/musb_gadget.c
 create mode 100644 drivers/usb/musb/musb_gadget.h
 create mode 100644 drivers/usb/musb/musb_gadget_ep0.c
 create mode 100644 drivers/usb/musb/musb_host.c
 create mode 100644 drivers/usb/musb/musb_host.h
 create mode 100644 drivers/usb/musb/musb_io.h
 create mode 100644 drivers/usb/musb/musb_regs.h
 create mode 100644 include/usb/musb.h

diff --git a/drivers/usb/Makefile b/drivers/usb/Makefile
index 3cefab7..44cb54a 100644
--- a/drivers/usb/Makefile
+++ b/drivers/usb/Makefile
@@ -1,5 +1,6 @@
 obj-$(CONFIG_USB)		+= core/
 obj-$(CONFIG_USB_IMX_CHIPIDEA)	+= imx/
+obj-$(CONFIG_USB_MUSB_DSPS)	+= am335x/
 obj-$(CONFIG_USB_GADGET)	+= gadget/
 obj-$(CONFIG_USB_STORAGE)	+= storage/
 obj-y += host/
diff --git a/drivers/usb/musb/am35x-phy-control.h b/drivers/usb/musb/am35x-phy-control.h
new file mode 100644
index 0000000..c492d42
--- /dev/null
+++ b/drivers/usb/musb/am35x-phy-control.h
@@ -0,0 +1,21 @@
+#ifndef _AM335x_PHY_CONTROL_H_
+#define _AM335x_PHY_CONTROL_H_
+
+struct phy_control {
+	void (*phy_power)(struct phy_control *phy_ctrl, u32 id, bool on);
+	void (*phy_wkup)(struct phy_control *phy_ctrl, u32 id, bool on);
+};
+
+static inline void phy_ctrl_power(struct phy_control *phy_ctrl, u32 id, bool on)
+{
+	phy_ctrl->phy_power(phy_ctrl, id, on);
+}
+
+static inline void phy_ctrl_wkup(struct phy_control *phy_ctrl, u32 id, bool on)
+{
+	phy_ctrl->phy_wkup(phy_ctrl, id, on);
+}
+
+struct phy_control *am335x_get_phy_control(struct device_d *dev);
+
+#endif
diff --git a/drivers/usb/musb/musb_am335x.c b/drivers/usb/musb/musb_am335x.c
new file mode 100644
index 0000000..1e58ed2
--- /dev/null
+++ b/drivers/usb/musb/musb_am335x.c
@@ -0,0 +1,43 @@
+#include <linux/platform_device.h>
+#include <linux/pm_runtime.h>
+#include <linux/module.h>
+#include <linux/of_platform.h>
+
+static int am335x_child_probe(struct platform_device *pdev)
+{
+	int ret;
+
+	pm_runtime_enable(&pdev->dev);
+
+	ret = of_platform_populate(pdev->dev.of_node, NULL, NULL, &pdev->dev);
+	if (ret)
+		goto err;
+
+	return 0;
+err:
+	pm_runtime_disable(&pdev->dev);
+	return ret;
+}
+
+static const struct of_device_id am335x_child_of_match[] = {
+	{ .compatible = "ti,am33xx-usb" },
+	{  },
+};
+MODULE_DEVICE_TABLE(of, am335x_child_of_match);
+
+static struct platform_driver am335x_child_driver = {
+	.probe		= am335x_child_probe,
+	.driver         = {
+		.name   = "am335x-usb-childs",
+		.of_match_table	= am335x_child_of_match,
+	},
+};
+
+static int __init am335x_child_init(void)
+{
+	return platform_driver_register(&am335x_child_driver);
+}
+module_init(am335x_child_init);
+
+MODULE_DESCRIPTION("AM33xx child devices");
+MODULE_LICENSE("GPL v2");
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
new file mode 100644
index 0000000..b841ee0
--- /dev/null
+++ b/drivers/usb/musb/musb_core.c
@@ -0,0 +1,2373 @@
+/*
+ * MUSB OTG driver core code
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+/*
+ * Inventra (Multipoint) Dual-Role Controller Driver for Linux.
+ *
+ * This consists of a Host Controller Driver (HCD) and a peripheral
+ * controller driver implementing the "Gadget" API; OTG support is
+ * in the works.  These are normal Linux-USB controller drivers which
+ * use IRQs and have no dedicated thread.
+ *
+ * This version of the driver has only been used with products from
+ * Texas Instruments.  Those products integrate the Inventra logic
+ * with other DMA, IRQ, and bus modules, as well as other logic that
+ * needs to be reflected in this driver.
+ *
+ *
+ * NOTE:  the original Mentor code here was pretty much a collection
+ * of mechanisms that don't seem to have been fully integrated/working
+ * for *any* Linux kernel version.  This version aims at Linux 2.6.now,
+ * Key open issues include:
+ *
+ *  - Lack of host-side transaction scheduling, for all transfer types.
+ *    The hardware doesn't do it; instead, software must.
+ *
+ *    This is not an issue for OTG devices that don't support external
+ *    hubs, but for more "normal" USB hosts it's a user issue that the
+ *    "multipoint" support doesn't scale in the expected ways.  That
+ *    includes DaVinci EVM in a common non-OTG mode.
+ *
+ *      * Control and bulk use dedicated endpoints, and there's as
+ *        yet no mechanism to either (a) reclaim the hardware when
+ *        peripherals are NAKing, which gets complicated with bulk
+ *        endpoints, or (b) use more than a single bulk endpoint in
+ *        each direction.
+ *
+ *        RESULT:  one device may be perceived as blocking another one.
+ *
+ *      * Interrupt and isochronous will dynamically allocate endpoint
+ *        hardware, but (a) there's no record keeping for bandwidth;
+ *        (b) in the common case that few endpoints are available, there
+ *        is no mechanism to reuse endpoints to talk to multiple devices.
+ *
+ *        RESULT:  At one extreme, bandwidth can be overcommitted in
+ *        some hardware configurations, no faults will be reported.
+ *        At the other extreme, the bandwidth capabilities which do
+ *        exist tend to be severely undercommitted.  You can't yet hook
+ *        up both a keyboard and a mouse to an external USB hub.
+ */
+
+/*
+ * This gets many kinds of configuration information:
+ *	- Kconfig for everything user-configurable
+ *	- platform_device for addressing, irq, and platform_data
+ *	- platform_data is mostly for board-specific information
+ *	  (plus recentrly, SOC or family details)
+ *
+ * Most of the conditional compilation will (someday) vanish.
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <linux/list.h>
+#include <linux/kobject.h>
+#include <linux/prefetch.h>
+#include <linux/platform_device.h>
+#include <linux/io.h>
+#include <linux/dma-mapping.h>
+
+#include "musb_core.h"
+
+#define TA_WAIT_BCON(m) max_t(int, (m)->a_wait_bcon, OTG_TIME_A_WAIT_BCON)
+
+
+#define DRIVER_AUTHOR "Mentor Graphics, Texas Instruments, Nokia"
+#define DRIVER_DESC "Inventra Dual-Role USB Controller Driver"
+
+#define MUSB_VERSION "6.0"
+
+#define DRIVER_INFO DRIVER_DESC ", v" MUSB_VERSION
+
+#define MUSB_DRIVER_NAME "musb-hdrc"
+const char musb_driver_name[] = MUSB_DRIVER_NAME;
+
+MODULE_DESCRIPTION(DRIVER_INFO);
+MODULE_AUTHOR(DRIVER_AUTHOR);
+MODULE_LICENSE("GPL");
+MODULE_ALIAS("platform:" MUSB_DRIVER_NAME);
+
+
+/*-------------------------------------------------------------------------*/
+
+static inline struct musb *dev_to_musb(struct device *dev)
+{
+	return dev_get_drvdata(dev);
+}
+
+/*-------------------------------------------------------------------------*/
+
+#ifndef CONFIG_BLACKFIN
+static int musb_ulpi_read(struct usb_phy *phy, u32 offset)
+{
+	void __iomem *addr = phy->io_priv;
+	int	i = 0;
+	u8	r;
+	u8	power;
+	int	ret;
+
+	pm_runtime_get_sync(phy->io_dev);
+
+	/* Make sure the transceiver is not in low power mode */
+	power = musb_readb(addr, MUSB_POWER);
+	power &= ~MUSB_POWER_SUSPENDM;
+	musb_writeb(addr, MUSB_POWER, power);
+
+	/* REVISIT: musbhdrc_ulpi_an.pdf recommends setting the
+	 * ULPICarKitControlDisableUTMI after clearing POWER_SUSPENDM.
+	 */
+
+	musb_writeb(addr, MUSB_ULPI_REG_ADDR, (u8)offset);
+	musb_writeb(addr, MUSB_ULPI_REG_CONTROL,
+			MUSB_ULPI_REG_REQ | MUSB_ULPI_RDN_WR);
+
+	while (!(musb_readb(addr, MUSB_ULPI_REG_CONTROL)
+				& MUSB_ULPI_REG_CMPLT)) {
+		i++;
+		if (i == 10000) {
+			ret = -ETIMEDOUT;
+			goto out;
+		}
+
+	}
+	r = musb_readb(addr, MUSB_ULPI_REG_CONTROL);
+	r &= ~MUSB_ULPI_REG_CMPLT;
+	musb_writeb(addr, MUSB_ULPI_REG_CONTROL, r);
+
+	ret = musb_readb(addr, MUSB_ULPI_REG_DATA);
+
+out:
+	pm_runtime_put(phy->io_dev);
+
+	return ret;
+}
+
+static int musb_ulpi_write(struct usb_phy *phy, u32 offset, u32 data)
+{
+	void __iomem *addr = phy->io_priv;
+	int	i = 0;
+	u8	r = 0;
+	u8	power;
+	int	ret = 0;
+
+	pm_runtime_get_sync(phy->io_dev);
+
+	/* Make sure the transceiver is not in low power mode */
+	power = musb_readb(addr, MUSB_POWER);
+	power &= ~MUSB_POWER_SUSPENDM;
+	musb_writeb(addr, MUSB_POWER, power);
+
+	musb_writeb(addr, MUSB_ULPI_REG_ADDR, (u8)offset);
+	musb_writeb(addr, MUSB_ULPI_REG_DATA, (u8)data);
+	musb_writeb(addr, MUSB_ULPI_REG_CONTROL, MUSB_ULPI_REG_REQ);
+
+	while (!(musb_readb(addr, MUSB_ULPI_REG_CONTROL)
+				& MUSB_ULPI_REG_CMPLT)) {
+		i++;
+		if (i == 10000) {
+			ret = -ETIMEDOUT;
+			goto out;
+		}
+	}
+
+	r = musb_readb(addr, MUSB_ULPI_REG_CONTROL);
+	r &= ~MUSB_ULPI_REG_CMPLT;
+	musb_writeb(addr, MUSB_ULPI_REG_CONTROL, r);
+
+out:
+	pm_runtime_put(phy->io_dev);
+
+	return ret;
+}
+#else
+#define musb_ulpi_read		NULL
+#define musb_ulpi_write		NULL
+#endif
+
+static struct usb_phy_io_ops musb_ulpi_access = {
+	.read = musb_ulpi_read,
+	.write = musb_ulpi_write,
+};
+
+/*-------------------------------------------------------------------------*/
+
+#if !defined(CONFIG_USB_MUSB_TUSB6010) && !defined(CONFIG_USB_MUSB_BLACKFIN)
+
+/*
+ * Load an endpoint's FIFO
+ */
+void musb_write_fifo(struct musb_hw_ep *hw_ep, u16 len, const u8 *src)
+{
+	struct musb *musb = hw_ep->musb;
+	void __iomem *fifo = hw_ep->fifo;
+
+	if (unlikely(len == 0))
+		return;
+
+	prefetch((u8 *)src);
+
+	dev_dbg(musb->controller, "%cX ep%d fifo %p count %d buf %p\n",
+			'T', hw_ep->epnum, fifo, len, src);
+
+	/* we can't assume unaligned reads work */
+	if (likely((0x01 & (unsigned long) src) == 0)) {
+		u16	index = 0;
+
+		/* best case is 32bit-aligned source address */
+		if ((0x02 & (unsigned long) src) == 0) {
+			if (len >= 4) {
+				iowrite32_rep(fifo, src + index, len >> 2);
+				index += len & ~0x03;
+			}
+			if (len & 0x02) {
+				musb_writew(fifo, 0, *(u16 *)&src[index]);
+				index += 2;
+			}
+		} else {
+			if (len >= 2) {
+				iowrite16_rep(fifo, src + index, len >> 1);
+				index += len & ~0x01;
+			}
+		}
+		if (len & 0x01)
+			musb_writeb(fifo, 0, src[index]);
+	} else  {
+		/* byte aligned */
+		iowrite8_rep(fifo, src, len);
+	}
+}
+
+#if !defined(CONFIG_USB_MUSB_AM35X)
+/*
+ * Unload an endpoint's FIFO
+ */
+void musb_read_fifo(struct musb_hw_ep *hw_ep, u16 len, u8 *dst)
+{
+	struct musb *musb = hw_ep->musb;
+	void __iomem *fifo = hw_ep->fifo;
+
+	if (unlikely(len == 0))
+		return;
+
+	dev_dbg(musb->controller, "%cX ep%d fifo %p count %d buf %p\n",
+			'R', hw_ep->epnum, fifo, len, dst);
+
+	/* we can't assume unaligned writes work */
+	if (likely((0x01 & (unsigned long) dst) == 0)) {
+		u16	index = 0;
+
+		/* best case is 32bit-aligned destination address */
+		if ((0x02 & (unsigned long) dst) == 0) {
+			if (len >= 4) {
+				ioread32_rep(fifo, dst, len >> 2);
+				index = len & ~0x03;
+			}
+			if (len & 0x02) {
+				*(u16 *)&dst[index] = musb_readw(fifo, 0);
+				index += 2;
+			}
+		} else {
+			if (len >= 2) {
+				ioread16_rep(fifo, dst, len >> 1);
+				index = len & ~0x01;
+			}
+		}
+		if (len & 0x01)
+			dst[index] = musb_readb(fifo, 0);
+	} else  {
+		/* byte aligned */
+		ioread8_rep(fifo, dst, len);
+	}
+}
+#endif
+
+#endif	/* normal PIO */
+
+
+/*-------------------------------------------------------------------------*/
+
+/* for high speed test mode; see USB 2.0 spec 7.1.20 */
+static const u8 musb_test_packet[53] = {
+	/* implicit SYNC then DATA0 to start */
+
+	/* JKJKJKJK x9 */
+	0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
+	/* JJKKJJKK x8 */
+	0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
+	/* JJJJKKKK x8 */
+	0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee, 0xee,
+	/* JJJJJJJKKKKKKK x8 */
+	0xfe, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff,
+	/* JJJJJJJK x8 */
+	0x7f, 0xbf, 0xdf, 0xef, 0xf7, 0xfb, 0xfd,
+	/* JKKKKKKK x10, JK */
+	0xfc, 0x7e, 0xbf, 0xdf, 0xef, 0xf7, 0xfb, 0xfd, 0x7e
+
+	/* implicit CRC16 then EOP to end */
+};
+
+void musb_load_testpacket(struct musb *musb)
+{
+	void __iomem	*regs = musb->endpoints[0].regs;
+
+	musb_ep_select(musb->mregs, 0);
+	musb_write_fifo(musb->control_ep,
+			sizeof(musb_test_packet), musb_test_packet);
+	musb_writew(regs, MUSB_CSR0, MUSB_CSR0_TXPKTRDY);
+}
+
+/*-------------------------------------------------------------------------*/
+
+/*
+ * Handles OTG hnp timeouts, such as b_ase0_brst
+ */
+static void musb_otg_timer_func(unsigned long data)
+{
+	struct musb	*musb = (struct musb *)data;
+	unsigned long	flags;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	switch (musb->xceiv->state) {
+	case OTG_STATE_B_WAIT_ACON:
+		dev_dbg(musb->controller, "HNP: b_wait_acon timeout; back to b_peripheral\n");
+		musb_g_disconnect(musb);
+		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+		musb->is_active = 0;
+		break;
+	case OTG_STATE_A_SUSPEND:
+	case OTG_STATE_A_WAIT_BCON:
+		dev_dbg(musb->controller, "HNP: %s timeout\n",
+			usb_otg_state_string(musb->xceiv->state));
+		musb_platform_set_vbus(musb, 0);
+		musb->xceiv->state = OTG_STATE_A_WAIT_VFALL;
+		break;
+	default:
+		dev_dbg(musb->controller, "HNP: Unhandled mode %s\n",
+			usb_otg_state_string(musb->xceiv->state));
+	}
+	spin_unlock_irqrestore(&musb->lock, flags);
+}
+
+/*
+ * Stops the HNP transition. Caller must take care of locking.
+ */
+void musb_hnp_stop(struct musb *musb)
+{
+	struct usb_hcd	*hcd = musb->hcd;
+	void __iomem	*mbase = musb->mregs;
+	u8	reg;
+
+	dev_dbg(musb->controller, "HNP: stop from %s\n",
+			usb_otg_state_string(musb->xceiv->state));
+
+	switch (musb->xceiv->state) {
+	case OTG_STATE_A_PERIPHERAL:
+		musb_g_disconnect(musb);
+		dev_dbg(musb->controller, "HNP: back to %s\n",
+			usb_otg_state_string(musb->xceiv->state));
+		break;
+	case OTG_STATE_B_HOST:
+		dev_dbg(musb->controller, "HNP: Disabling HR\n");
+		if (hcd)
+			hcd->self.is_b_host = 0;
+		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+		MUSB_DEV_MODE(musb);
+		reg = musb_readb(mbase, MUSB_POWER);
+		reg |= MUSB_POWER_SUSPENDM;
+		musb_writeb(mbase, MUSB_POWER, reg);
+		/* REVISIT: Start SESSION_REQUEST here? */
+		break;
+	default:
+		dev_dbg(musb->controller, "HNP: Stopping in unknown state %s\n",
+			usb_otg_state_string(musb->xceiv->state));
+	}
+
+	/*
+	 * When returning to A state after HNP, avoid hub_port_rebounce(),
+	 * which cause occasional OPT A "Did not receive reset after connect"
+	 * errors.
+	 */
+	musb->port1_status &= ~(USB_PORT_STAT_C_CONNECTION << 16);
+}
+
+/*
+ * Interrupt Service Routine to record USB "global" interrupts.
+ * Since these do not happen often and signify things of
+ * paramount importance, it seems OK to check them individually;
+ * the order of the tests is specified in the manual
+ *
+ * @param musb instance pointer
+ * @param int_usb register contents
+ * @param devctl
+ * @param power
+ */
+
+static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
+				u8 devctl)
+{
+	irqreturn_t handled = IRQ_NONE;
+
+	dev_dbg(musb->controller, "<== DevCtl=%02x, int_usb=0x%x\n", devctl,
+		int_usb);
+
+	/* in host mode, the peripheral may issue remote wakeup.
+	 * in peripheral mode, the host may resume the link.
+	 * spurious RESUME irqs happen too, paired with SUSPEND.
+	 */
+	if (int_usb & MUSB_INTR_RESUME) {
+		handled = IRQ_HANDLED;
+		dev_dbg(musb->controller, "RESUME (%s)\n", usb_otg_state_string(musb->xceiv->state));
+
+		if (devctl & MUSB_DEVCTL_HM) {
+			void __iomem *mbase = musb->mregs;
+			u8 power;
+
+			switch (musb->xceiv->state) {
+			case OTG_STATE_A_SUSPEND:
+				/* remote wakeup?  later, GetPortStatus
+				 * will stop RESUME signaling
+				 */
+
+				power = musb_readb(musb->mregs, MUSB_POWER);
+				if (power & MUSB_POWER_SUSPENDM) {
+					/* spurious */
+					musb->int_usb &= ~MUSB_INTR_SUSPEND;
+					dev_dbg(musb->controller, "Spurious SUSPENDM\n");
+					break;
+				}
+
+				power &= ~MUSB_POWER_SUSPENDM;
+				musb_writeb(mbase, MUSB_POWER,
+						power | MUSB_POWER_RESUME);
+
+				musb->port1_status |=
+						(USB_PORT_STAT_C_SUSPEND << 16)
+						| MUSB_PORT_STAT_RESUME;
+				musb->rh_timer = jiffies
+						 + msecs_to_jiffies(20);
+				schedule_delayed_work(
+					&musb->finish_resume_work,
+					msecs_to_jiffies(20));
+
+				musb->xceiv->state = OTG_STATE_A_HOST;
+				musb->is_active = 1;
+				musb_host_resume_root_hub(musb);
+				break;
+			case OTG_STATE_B_WAIT_ACON:
+				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+				musb->is_active = 1;
+				MUSB_DEV_MODE(musb);
+				break;
+			default:
+				WARNING("bogus %s RESUME (%s)\n",
+					"host",
+					usb_otg_state_string(musb->xceiv->state));
+			}
+		} else {
+			switch (musb->xceiv->state) {
+			case OTG_STATE_A_SUSPEND:
+				/* possibly DISCONNECT is upcoming */
+				musb->xceiv->state = OTG_STATE_A_HOST;
+				musb_host_resume_root_hub(musb);
+				break;
+			case OTG_STATE_B_WAIT_ACON:
+			case OTG_STATE_B_PERIPHERAL:
+				/* disconnect while suspended?  we may
+				 * not get a disconnect irq...
+				 */
+				if ((devctl & MUSB_DEVCTL_VBUS)
+						!= (3 << MUSB_DEVCTL_VBUS_SHIFT)
+						) {
+					musb->int_usb |= MUSB_INTR_DISCONNECT;
+					musb->int_usb &= ~MUSB_INTR_SUSPEND;
+					break;
+				}
+				musb_g_resume(musb);
+				break;
+			case OTG_STATE_B_IDLE:
+				musb->int_usb &= ~MUSB_INTR_SUSPEND;
+				break;
+			default:
+				WARNING("bogus %s RESUME (%s)\n",
+					"peripheral",
+					usb_otg_state_string(musb->xceiv->state));
+			}
+		}
+	}
+
+	/* see manual for the order of the tests */
+	if (int_usb & MUSB_INTR_SESSREQ) {
+		void __iomem *mbase = musb->mregs;
+
+		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS
+				&& (devctl & MUSB_DEVCTL_BDEVICE)) {
+			dev_dbg(musb->controller, "SessReq while on B state\n");
+			return IRQ_HANDLED;
+		}
+
+		dev_dbg(musb->controller, "SESSION_REQUEST (%s)\n",
+			usb_otg_state_string(musb->xceiv->state));
+
+		/* IRQ arrives from ID pin sense or (later, if VBUS power
+		 * is removed) SRP.  responses are time critical:
+		 *  - turn on VBUS (with silicon-specific mechanism)
+		 *  - go through A_WAIT_VRISE
+		 *  - ... to A_WAIT_BCON.
+		 * a_wait_vrise_tmout triggers VBUS_ERROR transitions
+		 */
+		musb_writeb(mbase, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
+		musb->ep0_stage = MUSB_EP0_START;
+		musb->xceiv->state = OTG_STATE_A_IDLE;
+		MUSB_HST_MODE(musb);
+		musb_platform_set_vbus(musb, 1);
+
+		handled = IRQ_HANDLED;
+	}
+
+	if (int_usb & MUSB_INTR_VBUSERROR) {
+		int	ignore = 0;
+
+		/* During connection as an A-Device, we may see a short
+		 * current spikes causing voltage drop, because of cable
+		 * and peripheral capacitance combined with vbus draw.
+		 * (So: less common with truly self-powered devices, where
+		 * vbus doesn't act like a power supply.)
+		 *
+		 * Such spikes are short; usually less than ~500 usec, max
+		 * of ~2 msec.  That is, they're not sustained overcurrent
+		 * errors, though they're reported using VBUSERROR irqs.
+		 *
+		 * Workarounds:  (a) hardware: use self powered devices.
+		 * (b) software:  ignore non-repeated VBUS errors.
+		 *
+		 * REVISIT:  do delays from lots of DEBUG_KERNEL checks
+		 * make trouble here, keeping VBUS < 4.4V ?
+		 */
+		switch (musb->xceiv->state) {
+		case OTG_STATE_A_HOST:
+			/* recovery is dicey once we've gotten past the
+			 * initial stages of enumeration, but if VBUS
+			 * stayed ok at the other end of the link, and
+			 * another reset is due (at least for high speed,
+			 * to redo the chirp etc), it might work OK...
+			 */
+		case OTG_STATE_A_WAIT_BCON:
+		case OTG_STATE_A_WAIT_VRISE:
+			if (musb->vbuserr_retry) {
+				void __iomem *mbase = musb->mregs;
+
+				musb->vbuserr_retry--;
+				ignore = 1;
+				devctl |= MUSB_DEVCTL_SESSION;
+				musb_writeb(mbase, MUSB_DEVCTL, devctl);
+			} else {
+				musb->port1_status |=
+					  USB_PORT_STAT_OVERCURRENT
+					| (USB_PORT_STAT_C_OVERCURRENT << 16);
+			}
+			break;
+		default:
+			break;
+		}
+
+		dev_printk(ignore ? KERN_DEBUG : KERN_ERR, musb->controller,
+				"VBUS_ERROR in %s (%02x, %s), retry #%d, port1 %08x\n",
+				usb_otg_state_string(musb->xceiv->state),
+				devctl,
+				({ char *s;
+				switch (devctl & MUSB_DEVCTL_VBUS) {
+				case 0 << MUSB_DEVCTL_VBUS_SHIFT:
+					s = "<SessEnd"; break;
+				case 1 << MUSB_DEVCTL_VBUS_SHIFT:
+					s = "<AValid"; break;
+				case 2 << MUSB_DEVCTL_VBUS_SHIFT:
+					s = "<VBusValid"; break;
+				/* case 3 << MUSB_DEVCTL_VBUS_SHIFT: */
+				default:
+					s = "VALID"; break;
+				} s; }),
+				VBUSERR_RETRY_COUNT - musb->vbuserr_retry,
+				musb->port1_status);
+
+		/* go through A_WAIT_VFALL then start a new session */
+		if (!ignore)
+			musb_platform_set_vbus(musb, 0);
+		handled = IRQ_HANDLED;
+	}
+
+	if (int_usb & MUSB_INTR_SUSPEND) {
+		dev_dbg(musb->controller, "SUSPEND (%s) devctl %02x\n",
+			usb_otg_state_string(musb->xceiv->state), devctl);
+		handled = IRQ_HANDLED;
+
+		switch (musb->xceiv->state) {
+		case OTG_STATE_A_PERIPHERAL:
+			/* We also come here if the cable is removed, since
+			 * this silicon doesn't report ID-no-longer-grounded.
+			 *
+			 * We depend on T(a_wait_bcon) to shut us down, and
+			 * hope users don't do anything dicey during this
+			 * undesired detour through A_WAIT_BCON.
+			 */
+			musb_hnp_stop(musb);
+			musb_host_resume_root_hub(musb);
+			musb_root_disconnect(musb);
+			musb_platform_try_idle(musb, jiffies
+					+ msecs_to_jiffies(musb->a_wait_bcon
+						? : OTG_TIME_A_WAIT_BCON));
+
+			break;
+		case OTG_STATE_B_IDLE:
+			if (!musb->is_active)
+				break;
+		case OTG_STATE_B_PERIPHERAL:
+			musb_g_suspend(musb);
+			musb->is_active = musb->g.b_hnp_enable;
+			if (musb->is_active) {
+				musb->xceiv->state = OTG_STATE_B_WAIT_ACON;
+				dev_dbg(musb->controller, "HNP: Setting timer for b_ase0_brst\n");
+				mod_timer(&musb->otg_timer, jiffies
+					+ msecs_to_jiffies(
+							OTG_TIME_B_ASE0_BRST));
+			}
+			break;
+		case OTG_STATE_A_WAIT_BCON:
+			if (musb->a_wait_bcon != 0)
+				musb_platform_try_idle(musb, jiffies
+					+ msecs_to_jiffies(musb->a_wait_bcon));
+			break;
+		case OTG_STATE_A_HOST:
+			musb->xceiv->state = OTG_STATE_A_SUSPEND;
+			musb->is_active = musb->hcd->self.b_hnp_enable;
+			break;
+		case OTG_STATE_B_HOST:
+			/* Transition to B_PERIPHERAL, see 6.8.2.6 p 44 */
+			dev_dbg(musb->controller, "REVISIT: SUSPEND as B_HOST\n");
+			break;
+		default:
+			/* "should not happen" */
+			musb->is_active = 0;
+			break;
+		}
+	}
+
+	if (int_usb & MUSB_INTR_CONNECT) {
+		struct usb_hcd *hcd = musb->hcd;
+
+		handled = IRQ_HANDLED;
+		musb->is_active = 1;
+
+		musb->ep0_stage = MUSB_EP0_START;
+
+		/* flush endpoints when transitioning from Device Mode */
+		if (is_peripheral_active(musb)) {
+			/* REVISIT HNP; just force disconnect */
+		}
+		musb->intrtxe = musb->epmask;
+		musb_writew(musb->mregs, MUSB_INTRTXE, musb->intrtxe);
+		musb->intrrxe = musb->epmask & 0xfffe;
+		musb_writew(musb->mregs, MUSB_INTRRXE, musb->intrrxe);
+		musb_writeb(musb->mregs, MUSB_INTRUSBE, 0xf7);
+		musb->port1_status &= ~(USB_PORT_STAT_LOW_SPEED
+					|USB_PORT_STAT_HIGH_SPEED
+					|USB_PORT_STAT_ENABLE
+					);
+		musb->port1_status |= USB_PORT_STAT_CONNECTION
+					|(USB_PORT_STAT_C_CONNECTION << 16);
+
+		/* high vs full speed is just a guess until after reset */
+		if (devctl & MUSB_DEVCTL_LSDEV)
+			musb->port1_status |= USB_PORT_STAT_LOW_SPEED;
+
+		/* indicate new connection to OTG machine */
+		switch (musb->xceiv->state) {
+		case OTG_STATE_B_PERIPHERAL:
+			if (int_usb & MUSB_INTR_SUSPEND) {
+				dev_dbg(musb->controller, "HNP: SUSPEND+CONNECT, now b_host\n");
+				int_usb &= ~MUSB_INTR_SUSPEND;
+				goto b_host;
+			} else
+				dev_dbg(musb->controller, "CONNECT as b_peripheral???\n");
+			break;
+		case OTG_STATE_B_WAIT_ACON:
+			dev_dbg(musb->controller, "HNP: CONNECT, now b_host\n");
+b_host:
+			musb->xceiv->state = OTG_STATE_B_HOST;
+			if (musb->hcd)
+				musb->hcd->self.is_b_host = 1;
+			del_timer(&musb->otg_timer);
+			break;
+		default:
+			if ((devctl & MUSB_DEVCTL_VBUS)
+					== (3 << MUSB_DEVCTL_VBUS_SHIFT)) {
+				musb->xceiv->state = OTG_STATE_A_HOST;
+				if (hcd)
+					hcd->self.is_b_host = 0;
+			}
+			break;
+		}
+
+		musb_host_poke_root_hub(musb);
+
+		dev_dbg(musb->controller, "CONNECT (%s) devctl %02x\n",
+				usb_otg_state_string(musb->xceiv->state), devctl);
+	}
+
+	if (int_usb & MUSB_INTR_DISCONNECT) {
+		dev_dbg(musb->controller, "DISCONNECT (%s) as %s, devctl %02x\n",
+				usb_otg_state_string(musb->xceiv->state),
+				MUSB_MODE(musb), devctl);
+		handled = IRQ_HANDLED;
+
+		switch (musb->xceiv->state) {
+		case OTG_STATE_A_HOST:
+		case OTG_STATE_A_SUSPEND:
+			musb_host_resume_root_hub(musb);
+			musb_root_disconnect(musb);
+			if (musb->a_wait_bcon != 0)
+				musb_platform_try_idle(musb, jiffies
+					+ msecs_to_jiffies(musb->a_wait_bcon));
+			break;
+		case OTG_STATE_B_HOST:
+			/* REVISIT this behaves for "real disconnect"
+			 * cases; make sure the other transitions from
+			 * from B_HOST act right too.  The B_HOST code
+			 * in hnp_stop() is currently not used...
+			 */
+			musb_root_disconnect(musb);
+			if (musb->hcd)
+				musb->hcd->self.is_b_host = 0;
+			musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+			MUSB_DEV_MODE(musb);
+			musb_g_disconnect(musb);
+			break;
+		case OTG_STATE_A_PERIPHERAL:
+			musb_hnp_stop(musb);
+			musb_root_disconnect(musb);
+			/* FALLTHROUGH */
+		case OTG_STATE_B_WAIT_ACON:
+			/* FALLTHROUGH */
+		case OTG_STATE_B_PERIPHERAL:
+		case OTG_STATE_B_IDLE:
+			musb_g_disconnect(musb);
+			break;
+		default:
+			WARNING("unhandled DISCONNECT transition (%s)\n",
+				usb_otg_state_string(musb->xceiv->state));
+			break;
+		}
+	}
+
+	/* mentor saves a bit: bus reset and babble share the same irq.
+	 * only host sees babble; only peripheral sees bus reset.
+	 */
+	if (int_usb & MUSB_INTR_RESET) {
+		handled = IRQ_HANDLED;
+		if ((devctl & MUSB_DEVCTL_HM) != 0) {
+			/*
+			 * Looks like non-HS BABBLE can be ignored, but
+			 * HS BABBLE is an error condition. For HS the solution
+			 * is to avoid babble in the first place and fix what
+			 * caused BABBLE. When HS BABBLE happens we can only
+			 * stop the session.
+			 */
+			if (devctl & (MUSB_DEVCTL_FSDEV | MUSB_DEVCTL_LSDEV))
+				dev_dbg(musb->controller, "BABBLE devctl: %02x\n", devctl);
+			else {
+				ERR("Stopping host session -- babble\n");
+				musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
+			}
+		} else {
+			dev_dbg(musb->controller, "BUS RESET as %s\n",
+				usb_otg_state_string(musb->xceiv->state));
+			switch (musb->xceiv->state) {
+			case OTG_STATE_A_SUSPEND:
+				musb_g_reset(musb);
+				/* FALLTHROUGH */
+			case OTG_STATE_A_WAIT_BCON:	/* OPT TD.4.7-900ms */
+				/* never use invalid T(a_wait_bcon) */
+				dev_dbg(musb->controller, "HNP: in %s, %d msec timeout\n",
+					usb_otg_state_string(musb->xceiv->state),
+					TA_WAIT_BCON(musb));
+				mod_timer(&musb->otg_timer, jiffies
+					+ msecs_to_jiffies(TA_WAIT_BCON(musb)));
+				break;
+			case OTG_STATE_A_PERIPHERAL:
+				del_timer(&musb->otg_timer);
+				musb_g_reset(musb);
+				break;
+			case OTG_STATE_B_WAIT_ACON:
+				dev_dbg(musb->controller, "HNP: RESET (%s), to b_peripheral\n",
+					usb_otg_state_string(musb->xceiv->state));
+				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+				musb_g_reset(musb);
+				break;
+			case OTG_STATE_B_IDLE:
+				musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+				/* FALLTHROUGH */
+			case OTG_STATE_B_PERIPHERAL:
+				musb_g_reset(musb);
+				break;
+			default:
+				dev_dbg(musb->controller, "Unhandled BUS RESET as %s\n",
+					usb_otg_state_string(musb->xceiv->state));
+			}
+		}
+	}
+
+	/* handle babble condition */
+	if (int_usb & MUSB_INTR_BABBLE && is_host_active(musb))
+		schedule_delayed_work(&musb->recover_work,
+				      msecs_to_jiffies(100));
+
+#if 0
+/* REVISIT ... this would be for multiplexing periodic endpoints, or
+ * supporting transfer phasing to prevent exceeding ISO bandwidth
+ * limits of a given frame or microframe.
+ *
+ * It's not needed for peripheral side, which dedicates endpoints;
+ * though it _might_ use SOF irqs for other purposes.
+ *
+ * And it's not currently needed for host side, which also dedicates
+ * endpoints, relies on TX/RX interval registers, and isn't claimed
+ * to support ISO transfers yet.
+ */
+	if (int_usb & MUSB_INTR_SOF) {
+		void __iomem *mbase = musb->mregs;
+		struct musb_hw_ep	*ep;
+		u8 epnum;
+		u16 frame;
+
+		dev_dbg(musb->controller, "START_OF_FRAME\n");
+		handled = IRQ_HANDLED;
+
+		/* start any periodic Tx transfers waiting for current frame */
+		frame = musb_readw(mbase, MUSB_FRAME);
+		ep = musb->endpoints;
+		for (epnum = 1; (epnum < musb->nr_endpoints)
+					&& (musb->epmask >= (1 << epnum));
+				epnum++, ep++) {
+			/*
+			 * FIXME handle framecounter wraps (12 bits)
+			 * eliminate duplicated StartUrb logic
+			 */
+			if (ep->dwWaitFrame >= frame) {
+				ep->dwWaitFrame = 0;
+				pr_debug("SOF --> periodic TX%s on %d\n",
+					ep->tx_channel ? " DMA" : "",
+					epnum);
+				if (!ep->tx_channel)
+					musb_h_tx_start(musb, epnum);
+				else
+					cppi_hostdma_start(musb, epnum);
+			}
+		}		/* end of for loop */
+	}
+#endif
+
+	schedule_work(&musb->irq_work);
+
+	return handled;
+}
+
+/*-------------------------------------------------------------------------*/
+
+static void musb_generic_disable(struct musb *musb)
+{
+	void __iomem	*mbase = musb->mregs;
+	u16	temp;
+
+	/* disable interrupts */
+	musb_writeb(mbase, MUSB_INTRUSBE, 0);
+	musb->intrtxe = 0;
+	musb_writew(mbase, MUSB_INTRTXE, 0);
+	musb->intrrxe = 0;
+	musb_writew(mbase, MUSB_INTRRXE, 0);
+
+	/* off */
+	musb_writeb(mbase, MUSB_DEVCTL, 0);
+
+	/*  flush pending interrupts */
+	temp = musb_readb(mbase, MUSB_INTRUSB);
+	temp = musb_readw(mbase, MUSB_INTRTX);
+	temp = musb_readw(mbase, MUSB_INTRRX);
+
+}
+
+/*
+ * Program the HDRC to start (enable interrupts, dma, etc.).
+ */
+void musb_start(struct musb *musb)
+{
+	void __iomem    *regs = musb->mregs;
+	u8              devctl = musb_readb(regs, MUSB_DEVCTL);
+
+	dev_dbg(musb->controller, "<== devctl %02x\n", devctl);
+
+	/*  Set INT enable registers, enable interrupts */
+	musb->intrtxe = musb->epmask;
+	musb_writew(regs, MUSB_INTRTXE, musb->intrtxe);
+	musb->intrrxe = musb->epmask & 0xfffe;
+	musb_writew(regs, MUSB_INTRRXE, musb->intrrxe);
+	musb_writeb(regs, MUSB_INTRUSBE, 0xf7);
+
+	musb_writeb(regs, MUSB_TESTMODE, 0);
+
+	/* put into basic highspeed mode and start session */
+	musb_writeb(regs, MUSB_POWER, MUSB_POWER_ISOUPDATE
+			| MUSB_POWER_HSENAB
+			/* ENSUSPEND wedges tusb */
+			/* | MUSB_POWER_ENSUSPEND */
+		   );
+
+	musb->is_active = 0;
+	devctl = musb_readb(regs, MUSB_DEVCTL);
+	devctl &= ~MUSB_DEVCTL_SESSION;
+
+	/* session started after:
+	 * (a) ID-grounded irq, host mode;
+	 * (b) vbus present/connect IRQ, peripheral mode;
+	 * (c) peripheral initiates, using SRP
+	 */
+	if (musb->port_mode != MUSB_PORT_MODE_HOST &&
+			(devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS) {
+		musb->is_active = 1;
+	} else {
+		devctl |= MUSB_DEVCTL_SESSION;
+	}
+
+	musb_platform_enable(musb);
+	musb_writeb(regs, MUSB_DEVCTL, devctl);
+}
+
+/*
+ * Make the HDRC stop (disable interrupts, etc.);
+ * reversible by musb_start
+ * called on gadget driver unregister
+ * with controller locked, irqs blocked
+ * acts as a NOP unless some role activated the hardware
+ */
+void musb_stop(struct musb *musb)
+{
+	/* stop IRQs, timers, ... */
+	musb_platform_disable(musb);
+	musb_generic_disable(musb);
+	dev_dbg(musb->controller, "HDRC disabled\n");
+
+	/* FIXME
+	 *  - mark host and/or peripheral drivers unusable/inactive
+	 *  - disable DMA (and enable it in HdrcStart)
+	 *  - make sure we can musb_start() after musb_stop(); with
+	 *    OTG mode, gadget driver module rmmod/modprobe cycles that
+	 *  - ...
+	 */
+	musb_platform_try_idle(musb, 0);
+}
+
+static void musb_shutdown(struct platform_device *pdev)
+{
+	struct musb	*musb = dev_to_musb(&pdev->dev);
+	unsigned long	flags;
+
+	pm_runtime_get_sync(musb->controller);
+
+	musb_host_cleanup(musb);
+	musb_gadget_cleanup(musb);
+
+	spin_lock_irqsave(&musb->lock, flags);
+	musb_platform_disable(musb);
+	musb_generic_disable(musb);
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	musb_writeb(musb->mregs, MUSB_DEVCTL, 0);
+	musb_platform_exit(musb);
+
+	pm_runtime_put(musb->controller);
+	/* FIXME power down */
+}
+
+
+/*-------------------------------------------------------------------------*/
+
+/*
+ * The silicon either has hard-wired endpoint configurations, or else
+ * "dynamic fifo" sizing.  The driver has support for both, though at this
+ * writing only the dynamic sizing is very well tested.   Since we switched
+ * away from compile-time hardware parameters, we can no longer rely on
+ * dead code elimination to leave only the relevant one in the object file.
+ *
+ * We don't currently use dynamic fifo setup capability to do anything
+ * more than selecting one of a bunch of predefined configurations.
+ */
+#if defined(CONFIG_USB_MUSB_TUSB6010)			\
+	|| defined(CONFIG_USB_MUSB_TUSB6010_MODULE)	\
+	|| defined(CONFIG_USB_MUSB_OMAP2PLUS)		\
+	|| defined(CONFIG_USB_MUSB_OMAP2PLUS_MODULE)	\
+	|| defined(CONFIG_USB_MUSB_AM35X)		\
+	|| defined(CONFIG_USB_MUSB_AM35X_MODULE)	\
+	|| defined(CONFIG_USB_MUSB_DSPS)		\
+	|| defined(CONFIG_USB_MUSB_DSPS_MODULE)
+static ushort fifo_mode = 4;
+#elif defined(CONFIG_USB_MUSB_UX500)			\
+	|| defined(CONFIG_USB_MUSB_UX500_MODULE)
+static ushort fifo_mode = 5;
+#else
+static ushort fifo_mode = 2;
+#endif
+
+/* "modprobe ... fifo_mode=1" etc */
+module_param(fifo_mode, ushort, 0);
+MODULE_PARM_DESC(fifo_mode, "initial endpoint configuration");
+
+/*
+ * tables defining fifo_mode values.  define more if you like.
+ * for host side, make sure both halves of ep1 are set up.
+ */
+
+/* mode 0 - fits in 2KB */
+static struct musb_fifo_cfg mode_0_cfg[] = {
+{ .hw_ep_num = 1, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num = 1, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num = 2, .style = FIFO_RXTX, .maxpacket = 512, },
+{ .hw_ep_num = 3, .style = FIFO_RXTX, .maxpacket = 256, },
+{ .hw_ep_num = 4, .style = FIFO_RXTX, .maxpacket = 256, },
+};
+
+/* mode 1 - fits in 4KB */
+static struct musb_fifo_cfg mode_1_cfg[] = {
+{ .hw_ep_num = 1, .style = FIFO_TX,   .maxpacket = 512, .mode = BUF_DOUBLE, },
+{ .hw_ep_num = 1, .style = FIFO_RX,   .maxpacket = 512, .mode = BUF_DOUBLE, },
+{ .hw_ep_num = 2, .style = FIFO_RXTX, .maxpacket = 512, .mode = BUF_DOUBLE, },
+{ .hw_ep_num = 3, .style = FIFO_RXTX, .maxpacket = 256, },
+{ .hw_ep_num = 4, .style = FIFO_RXTX, .maxpacket = 256, },
+};
+
+/* mode 2 - fits in 4KB */
+static struct musb_fifo_cfg mode_2_cfg[] = {
+{ .hw_ep_num = 1, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num = 1, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num = 2, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num = 2, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num = 3, .style = FIFO_RXTX, .maxpacket = 256, },
+{ .hw_ep_num = 4, .style = FIFO_RXTX, .maxpacket = 256, },
+};
+
+/* mode 3 - fits in 4KB */
+static struct musb_fifo_cfg mode_3_cfg[] = {
+{ .hw_ep_num = 1, .style = FIFO_TX,   .maxpacket = 512, .mode = BUF_DOUBLE, },
+{ .hw_ep_num = 1, .style = FIFO_RX,   .maxpacket = 512, .mode = BUF_DOUBLE, },
+{ .hw_ep_num = 2, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num = 2, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num = 3, .style = FIFO_RXTX, .maxpacket = 256, },
+{ .hw_ep_num = 4, .style = FIFO_RXTX, .maxpacket = 256, },
+};
+
+/* mode 4 - fits in 16KB */
+static struct musb_fifo_cfg mode_4_cfg[] = {
+{ .hw_ep_num =  1, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  1, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  2, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  2, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  3, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  3, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  4, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  4, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  5, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  5, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  6, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  6, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  7, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  7, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  8, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  8, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  9, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  9, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num = 10, .style = FIFO_TX,   .maxpacket = 256, },
+{ .hw_ep_num = 10, .style = FIFO_RX,   .maxpacket = 64, },
+{ .hw_ep_num = 11, .style = FIFO_TX,   .maxpacket = 256, },
+{ .hw_ep_num = 11, .style = FIFO_RX,   .maxpacket = 64, },
+{ .hw_ep_num = 12, .style = FIFO_TX,   .maxpacket = 256, },
+{ .hw_ep_num = 12, .style = FIFO_RX,   .maxpacket = 64, },
+{ .hw_ep_num = 13, .style = FIFO_RXTX, .maxpacket = 4096, },
+{ .hw_ep_num = 14, .style = FIFO_RXTX, .maxpacket = 1024, },
+{ .hw_ep_num = 15, .style = FIFO_RXTX, .maxpacket = 1024, },
+};
+
+/* mode 5 - fits in 8KB */
+static struct musb_fifo_cfg mode_5_cfg[] = {
+{ .hw_ep_num =  1, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  1, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  2, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  2, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  3, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  3, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  4, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  4, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  5, .style = FIFO_TX,   .maxpacket = 512, },
+{ .hw_ep_num =  5, .style = FIFO_RX,   .maxpacket = 512, },
+{ .hw_ep_num =  6, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num =  6, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num =  7, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num =  7, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num =  8, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num =  8, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num =  9, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num =  9, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num = 10, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num = 10, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num = 11, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num = 11, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num = 12, .style = FIFO_TX,   .maxpacket = 32, },
+{ .hw_ep_num = 12, .style = FIFO_RX,   .maxpacket = 32, },
+{ .hw_ep_num = 13, .style = FIFO_RXTX, .maxpacket = 512, },
+{ .hw_ep_num = 14, .style = FIFO_RXTX, .maxpacket = 1024, },
+{ .hw_ep_num = 15, .style = FIFO_RXTX, .maxpacket = 1024, },
+};
+
+/*
+ * configure a fifo; for non-shared endpoints, this may be called
+ * once for a tx fifo and once for an rx fifo.
+ *
+ * returns negative errno or offset for next fifo.
+ */
+static int
+fifo_setup(struct musb *musb, struct musb_hw_ep  *hw_ep,
+		const struct musb_fifo_cfg *cfg, u16 offset)
+{
+	void __iomem	*mbase = musb->mregs;
+	int	size = 0;
+	u16	maxpacket = cfg->maxpacket;
+	u16	c_off = offset >> 3;
+	u8	c_size;
+
+	/* expect hw_ep has already been zero-initialized */
+
+	size = ffs(max(maxpacket, (u16) 8)) - 1;
+	maxpacket = 1 << size;
+
+	c_size = size - 3;
+	if (cfg->mode == BUF_DOUBLE) {
+		if ((offset + (maxpacket << 1)) >
+				(1 << (musb->config->ram_bits + 2)))
+			return -EMSGSIZE;
+		c_size |= MUSB_FIFOSZ_DPB;
+	} else {
+		if ((offset + maxpacket) > (1 << (musb->config->ram_bits + 2)))
+			return -EMSGSIZE;
+	}
+
+	/* configure the FIFO */
+	musb_writeb(mbase, MUSB_INDEX, hw_ep->epnum);
+
+	/* EP0 reserved endpoint for control, bidirectional;
+	 * EP1 reserved for bulk, two unidirectional halves.
+	 */
+	if (hw_ep->epnum == 1)
+		musb->bulk_ep = hw_ep;
+	/* REVISIT error check:  be sure ep0 can both rx and tx ... */
+	switch (cfg->style) {
+	case FIFO_TX:
+		musb_write_txfifosz(mbase, c_size);
+		musb_write_txfifoadd(mbase, c_off);
+		hw_ep->tx_double_buffered = !!(c_size & MUSB_FIFOSZ_DPB);
+		hw_ep->max_packet_sz_tx = maxpacket;
+		break;
+	case FIFO_RX:
+		musb_write_rxfifosz(mbase, c_size);
+		musb_write_rxfifoadd(mbase, c_off);
+		hw_ep->rx_double_buffered = !!(c_size & MUSB_FIFOSZ_DPB);
+		hw_ep->max_packet_sz_rx = maxpacket;
+		break;
+	case FIFO_RXTX:
+		musb_write_txfifosz(mbase, c_size);
+		musb_write_txfifoadd(mbase, c_off);
+		hw_ep->rx_double_buffered = !!(c_size & MUSB_FIFOSZ_DPB);
+		hw_ep->max_packet_sz_rx = maxpacket;
+
+		musb_write_rxfifosz(mbase, c_size);
+		musb_write_rxfifoadd(mbase, c_off);
+		hw_ep->tx_double_buffered = hw_ep->rx_double_buffered;
+		hw_ep->max_packet_sz_tx = maxpacket;
+
+		hw_ep->is_shared_fifo = true;
+		break;
+	}
+
+	/* NOTE rx and tx endpoint irqs aren't managed separately,
+	 * which happens to be ok
+	 */
+	musb->epmask |= (1 << hw_ep->epnum);
+
+	return offset + (maxpacket << ((c_size & MUSB_FIFOSZ_DPB) ? 1 : 0));
+}
+
+static struct musb_fifo_cfg ep0_cfg = {
+	.style = FIFO_RXTX, .maxpacket = 64,
+};
+
+static int ep_config_from_table(struct musb *musb)
+{
+	const struct musb_fifo_cfg	*cfg;
+	unsigned		i, n;
+	int			offset;
+	struct musb_hw_ep	*hw_ep = musb->endpoints;
+
+	if (musb->config->fifo_cfg) {
+		cfg = musb->config->fifo_cfg;
+		n = musb->config->fifo_cfg_size;
+		goto done;
+	}
+
+	switch (fifo_mode) {
+	default:
+		fifo_mode = 0;
+		/* FALLTHROUGH */
+	case 0:
+		cfg = mode_0_cfg;
+		n = ARRAY_SIZE(mode_0_cfg);
+		break;
+	case 1:
+		cfg = mode_1_cfg;
+		n = ARRAY_SIZE(mode_1_cfg);
+		break;
+	case 2:
+		cfg = mode_2_cfg;
+		n = ARRAY_SIZE(mode_2_cfg);
+		break;
+	case 3:
+		cfg = mode_3_cfg;
+		n = ARRAY_SIZE(mode_3_cfg);
+		break;
+	case 4:
+		cfg = mode_4_cfg;
+		n = ARRAY_SIZE(mode_4_cfg);
+		break;
+	case 5:
+		cfg = mode_5_cfg;
+		n = ARRAY_SIZE(mode_5_cfg);
+		break;
+	}
+
+	printk(KERN_DEBUG "%s: setup fifo_mode %d\n",
+			musb_driver_name, fifo_mode);
+
+
+done:
+	offset = fifo_setup(musb, hw_ep, &ep0_cfg, 0);
+	/* assert(offset > 0) */
+
+	/* NOTE:  for RTL versions >= 1.400 EPINFO and RAMINFO would
+	 * be better than static musb->config->num_eps and DYN_FIFO_SIZE...
+	 */
+
+	for (i = 0; i < n; i++) {
+		u8	epn = cfg->hw_ep_num;
+
+		if (epn >= musb->config->num_eps) {
+			pr_debug("%s: invalid ep %d\n",
+					musb_driver_name, epn);
+			return -EINVAL;
+		}
+		offset = fifo_setup(musb, hw_ep + epn, cfg++, offset);
+		if (offset < 0) {
+			pr_debug("%s: mem overrun, ep %d\n",
+					musb_driver_name, epn);
+			return offset;
+		}
+		epn++;
+		musb->nr_endpoints = max(epn, musb->nr_endpoints);
+	}
+
+	printk(KERN_DEBUG "%s: %d/%d max ep, %d/%d memory\n",
+			musb_driver_name,
+			n + 1, musb->config->num_eps * 2 - 1,
+			offset, (1 << (musb->config->ram_bits + 2)));
+
+	if (!musb->bulk_ep) {
+		pr_debug("%s: missing bulk\n", musb_driver_name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+
+/*
+ * ep_config_from_hw - when MUSB_C_DYNFIFO_DEF is false
+ * @param musb the controller
+ */
+static int ep_config_from_hw(struct musb *musb)
+{
+	u8 epnum = 0;
+	struct musb_hw_ep *hw_ep;
+	void __iomem *mbase = musb->mregs;
+	int ret = 0;
+
+	dev_dbg(musb->controller, "<== static silicon ep config\n");
+
+	/* FIXME pick up ep0 maxpacket size */
+
+	for (epnum = 1; epnum < musb->config->num_eps; epnum++) {
+		musb_ep_select(mbase, epnum);
+		hw_ep = musb->endpoints + epnum;
+
+		ret = musb_read_fifosize(musb, hw_ep, epnum);
+		if (ret < 0)
+			break;
+
+		/* FIXME set up hw_ep->{rx,tx}_double_buffered */
+
+		/* pick an RX/TX endpoint for bulk */
+		if (hw_ep->max_packet_sz_tx < 512
+				|| hw_ep->max_packet_sz_rx < 512)
+			continue;
+
+		/* REVISIT:  this algorithm is lazy, we should at least
+		 * try to pick a double buffered endpoint.
+		 */
+		if (musb->bulk_ep)
+			continue;
+		musb->bulk_ep = hw_ep;
+	}
+
+	if (!musb->bulk_ep) {
+		pr_debug("%s: missing bulk\n", musb_driver_name);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+enum { MUSB_CONTROLLER_MHDRC, MUSB_CONTROLLER_HDRC, };
+
+/* Initialize MUSB (M)HDRC part of the USB hardware subsystem;
+ * configure endpoints, or take their config from silicon
+ */
+static int musb_core_init(u16 musb_type, struct musb *musb)
+{
+	u8 reg;
+	char *type;
+	char aInfo[90], aRevision[32], aDate[12];
+	void __iomem	*mbase = musb->mregs;
+	int		status = 0;
+	int		i;
+
+	/* log core options (read using indexed model) */
+	reg = musb_read_configdata(mbase);
+
+	strcpy(aInfo, (reg & MUSB_CONFIGDATA_UTMIDW) ? "UTMI-16" : "UTMI-8");
+	if (reg & MUSB_CONFIGDATA_DYNFIFO) {
+		strcat(aInfo, ", dyn FIFOs");
+		musb->dyn_fifo = true;
+	}
+	if (reg & MUSB_CONFIGDATA_MPRXE) {
+		strcat(aInfo, ", bulk combine");
+		musb->bulk_combine = true;
+	}
+	if (reg & MUSB_CONFIGDATA_MPTXE) {
+		strcat(aInfo, ", bulk split");
+		musb->bulk_split = true;
+	}
+	if (reg & MUSB_CONFIGDATA_HBRXE) {
+		strcat(aInfo, ", HB-ISO Rx");
+		musb->hb_iso_rx = true;
+	}
+	if (reg & MUSB_CONFIGDATA_HBTXE) {
+		strcat(aInfo, ", HB-ISO Tx");
+		musb->hb_iso_tx = true;
+	}
+	if (reg & MUSB_CONFIGDATA_SOFTCONE)
+		strcat(aInfo, ", SoftConn");
+
+	printk(KERN_DEBUG "%s: ConfigData=0x%02x (%s)\n",
+			musb_driver_name, reg, aInfo);
+
+	aDate[0] = 0;
+	if (MUSB_CONTROLLER_MHDRC == musb_type) {
+		musb->is_multipoint = 1;
+		type = "M";
+	} else {
+		musb->is_multipoint = 0;
+		type = "";
+#ifndef	CONFIG_USB_OTG_BLACKLIST_HUB
+		printk(KERN_ERR
+			"%s: kernel must blacklist external hubs\n",
+			musb_driver_name);
+#endif
+	}
+
+	/* log release info */
+	musb->hwvers = musb_read_hwvers(mbase);
+	snprintf(aRevision, 32, "%d.%d%s", MUSB_HWVERS_MAJOR(musb->hwvers),
+		MUSB_HWVERS_MINOR(musb->hwvers),
+		(musb->hwvers & MUSB_HWVERS_RC) ? "RC" : "");
+	printk(KERN_DEBUG "%s: %sHDRC RTL version %s %s\n",
+			musb_driver_name, type, aRevision, aDate);
+
+	/* configure ep0 */
+	musb_configure_ep0(musb);
+
+	/* discover endpoint configuration */
+	musb->nr_endpoints = 1;
+	musb->epmask = 1;
+
+	if (musb->dyn_fifo)
+		status = ep_config_from_table(musb);
+	else
+		status = ep_config_from_hw(musb);
+
+	if (status < 0)
+		return status;
+
+	/* finish init, and print endpoint config */
+	for (i = 0; i < musb->nr_endpoints; i++) {
+		struct musb_hw_ep	*hw_ep = musb->endpoints + i;
+
+		hw_ep->fifo = MUSB_FIFO_OFFSET(i) + mbase;
+#if defined(CONFIG_USB_MUSB_TUSB6010) || defined (CONFIG_USB_MUSB_TUSB6010_MODULE)
+		hw_ep->fifo_async = musb->async + 0x400 + MUSB_FIFO_OFFSET(i);
+		hw_ep->fifo_sync = musb->sync + 0x400 + MUSB_FIFO_OFFSET(i);
+		hw_ep->fifo_sync_va =
+			musb->sync_va + 0x400 + MUSB_FIFO_OFFSET(i);
+
+		if (i == 0)
+			hw_ep->conf = mbase - 0x400 + TUSB_EP0_CONF;
+		else
+			hw_ep->conf = mbase + 0x400 + (((i - 1) & 0xf) << 2);
+#endif
+
+		hw_ep->regs = MUSB_EP_OFFSET(i, 0) + mbase;
+		hw_ep->target_regs = musb_read_target_reg_base(i, mbase);
+		hw_ep->rx_reinit = 1;
+		hw_ep->tx_reinit = 1;
+
+		if (hw_ep->max_packet_sz_tx) {
+			dev_dbg(musb->controller,
+				"%s: hw_ep %d%s, %smax %d\n",
+				musb_driver_name, i,
+				hw_ep->is_shared_fifo ? "shared" : "tx",
+				hw_ep->tx_double_buffered
+					? "doublebuffer, " : "",
+				hw_ep->max_packet_sz_tx);
+		}
+		if (hw_ep->max_packet_sz_rx && !hw_ep->is_shared_fifo) {
+			dev_dbg(musb->controller,
+				"%s: hw_ep %d%s, %smax %d\n",
+				musb_driver_name, i,
+				"rx",
+				hw_ep->rx_double_buffered
+					? "doublebuffer, " : "",
+				hw_ep->max_packet_sz_rx);
+		}
+		if (!(hw_ep->max_packet_sz_tx || hw_ep->max_packet_sz_rx))
+			dev_dbg(musb->controller, "hw_ep %d not configured\n", i);
+	}
+
+	return 0;
+}
+
+/*-------------------------------------------------------------------------*/
+
+/*
+ * handle all the irqs defined by the HDRC core. for now we expect:  other
+ * irq sources (phy, dma, etc) will be handled first, musb->int_* values
+ * will be assigned, and the irq will already have been acked.
+ *
+ * called in irq context with spinlock held, irqs blocked
+ */
+irqreturn_t musb_interrupt(struct musb *musb)
+{
+	irqreturn_t	retval = IRQ_NONE;
+	u8		devctl;
+	int		ep_num;
+	u32		reg;
+
+	devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
+
+	dev_dbg(musb->controller, "** IRQ %s usb%04x tx%04x rx%04x\n",
+		is_host_active(musb) ? "host" : "peripheral",
+		musb->int_usb, musb->int_tx, musb->int_rx);
+
+	/* the core can interrupt us for multiple reasons; docs have
+	 * a generic interrupt flowchart to follow
+	 */
+	if (musb->int_usb)
+		retval |= musb_stage0_irq(musb, musb->int_usb,
+				devctl);
+
+	/* "stage 1" is handling endpoint irqs */
+
+	/* handle endpoint 0 first */
+	if (musb->int_tx & 1) {
+		if (is_host_active(musb))
+			retval |= musb_h_ep0_irq(musb);
+		else
+			retval |= musb_g_ep0_irq(musb);
+	}
+
+	/* RX on endpoints 1-15 */
+	reg = musb->int_rx >> 1;
+	ep_num = 1;
+	while (reg) {
+		if (reg & 1) {
+			/* musb_ep_select(musb->mregs, ep_num); */
+			/* REVISIT just retval = ep->rx_irq(...) */
+			retval = IRQ_HANDLED;
+			if (is_host_active(musb))
+				musb_host_rx(musb, ep_num);
+			else
+				musb_g_rx(musb, ep_num);
+		}
+
+		reg >>= 1;
+		ep_num++;
+	}
+
+	/* TX on endpoints 1-15 */
+	reg = musb->int_tx >> 1;
+	ep_num = 1;
+	while (reg) {
+		if (reg & 1) {
+			/* musb_ep_select(musb->mregs, ep_num); */
+			/* REVISIT just retval |= ep->tx_irq(...) */
+			retval = IRQ_HANDLED;
+			if (is_host_active(musb))
+				musb_host_tx(musb, ep_num);
+			else
+				musb_g_tx(musb, ep_num);
+		}
+		reg >>= 1;
+		ep_num++;
+	}
+
+	return retval;
+}
+EXPORT_SYMBOL_GPL(musb_interrupt);
+
+#ifndef CONFIG_MUSB_PIO_ONLY
+static bool use_dma = 1;
+
+/* "modprobe ... use_dma=0" etc */
+module_param(use_dma, bool, 0);
+MODULE_PARM_DESC(use_dma, "enable/disable use of DMA");
+
+void musb_dma_completion(struct musb *musb, u8 epnum, u8 transmit)
+{
+	/* called with controller lock already held */
+
+	if (!epnum) {
+#ifndef CONFIG_USB_TUSB_OMAP_DMA
+		if (!is_cppi_enabled()) {
+			/* endpoint 0 */
+			if (is_host_active(musb))
+				musb_h_ep0_irq(musb);
+			else
+				musb_g_ep0_irq(musb);
+		}
+#endif
+	} else {
+		/* endpoints 1..15 */
+		if (transmit) {
+			if (is_host_active(musb))
+				musb_host_tx(musb, epnum);
+			else
+				musb_g_tx(musb, epnum);
+		} else {
+			/* receive */
+			if (is_host_active(musb))
+				musb_host_rx(musb, epnum);
+			else
+				musb_g_rx(musb, epnum);
+		}
+	}
+}
+EXPORT_SYMBOL_GPL(musb_dma_completion);
+
+#else
+#define use_dma			0
+#endif
+
+/*-------------------------------------------------------------------------*/
+
+static ssize_t
+musb_mode_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct musb *musb = dev_to_musb(dev);
+	unsigned long flags;
+	int ret = -EINVAL;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	ret = sprintf(buf, "%s\n", usb_otg_state_string(musb->xceiv->state));
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return ret;
+}
+
+static ssize_t
+musb_mode_store(struct device *dev, struct device_attribute *attr,
+		const char *buf, size_t n)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	unsigned long	flags;
+	int		status;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	if (sysfs_streq(buf, "host"))
+		status = musb_platform_set_mode(musb, MUSB_HOST);
+	else if (sysfs_streq(buf, "peripheral"))
+		status = musb_platform_set_mode(musb, MUSB_PERIPHERAL);
+	else if (sysfs_streq(buf, "otg"))
+		status = musb_platform_set_mode(musb, MUSB_OTG);
+	else
+		status = -EINVAL;
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return (status == 0) ? n : status;
+}
+static DEVICE_ATTR(mode, 0644, musb_mode_show, musb_mode_store);
+
+static ssize_t
+musb_vbus_store(struct device *dev, struct device_attribute *attr,
+		const char *buf, size_t n)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	unsigned long	flags;
+	unsigned long	val;
+
+	if (sscanf(buf, "%lu", &val) < 1) {
+		dev_err(dev, "Invalid VBUS timeout ms value\n");
+		return -EINVAL;
+	}
+
+	spin_lock_irqsave(&musb->lock, flags);
+	/* force T(a_wait_bcon) to be zero/unlimited *OR* valid */
+	musb->a_wait_bcon = val ? max_t(int, val, OTG_TIME_A_WAIT_BCON) : 0 ;
+	if (musb->xceiv->state == OTG_STATE_A_WAIT_BCON)
+		musb->is_active = 0;
+	musb_platform_try_idle(musb, jiffies + msecs_to_jiffies(val));
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return n;
+}
+
+static ssize_t
+musb_vbus_show(struct device *dev, struct device_attribute *attr, char *buf)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	unsigned long	flags;
+	unsigned long	val;
+	int		vbus;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	val = musb->a_wait_bcon;
+	/* FIXME get_vbus_status() is normally #defined as false...
+	 * and is effectively TUSB-specific.
+	 */
+	vbus = musb_platform_get_vbus_status(musb);
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return sprintf(buf, "Vbus %s, timeout %lu msec\n",
+			vbus ? "on" : "off", val);
+}
+static DEVICE_ATTR(vbus, 0644, musb_vbus_show, musb_vbus_store);
+
+/* Gadget drivers can't know that a host is connected so they might want
+ * to start SRP, but users can.  This allows userspace to trigger SRP.
+ */
+static ssize_t
+musb_srp_store(struct device *dev, struct device_attribute *attr,
+		const char *buf, size_t n)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	unsigned short	srp;
+
+	if (sscanf(buf, "%hu", &srp) != 1
+			|| (srp != 1)) {
+		dev_err(dev, "SRP: Value must be 1\n");
+		return -EINVAL;
+	}
+
+	if (srp == 1)
+		musb_g_wakeup(musb);
+
+	return n;
+}
+static DEVICE_ATTR(srp, 0644, NULL, musb_srp_store);
+
+static struct attribute *musb_attributes[] = {
+	&dev_attr_mode.attr,
+	&dev_attr_vbus.attr,
+	&dev_attr_srp.attr,
+	NULL
+};
+
+static const struct attribute_group musb_attr_group = {
+	.attrs = musb_attributes,
+};
+
+/* Only used to provide driver mode change events */
+static void musb_irq_work(struct work_struct *data)
+{
+	struct musb *musb = container_of(data, struct musb, irq_work);
+
+	if (musb->xceiv->state != musb->xceiv_old_state) {
+		musb->xceiv_old_state = musb->xceiv->state;
+		sysfs_notify(&musb->controller->kobj, NULL, "mode");
+	}
+}
+
+/* Recover from babble interrupt conditions */
+static void musb_recover_work(struct work_struct *data)
+{
+	struct musb *musb = container_of(data, struct musb, recover_work.work);
+	int status, ret;
+
+	ret  = musb_platform_reset(musb);
+	if (ret)
+		return;
+
+	usb_phy_vbus_off(musb->xceiv);
+	usleep_range(100, 200);
+
+	usb_phy_vbus_on(musb->xceiv);
+	usleep_range(100, 200);
+
+	/*
+	 * When a babble condition occurs, the musb controller
+	 * removes the session bit and the endpoint config is lost.
+	 */
+	if (musb->dyn_fifo)
+		status = ep_config_from_table(musb);
+	else
+		status = ep_config_from_hw(musb);
+
+	/* start the session again */
+	if (status == 0)
+		musb_start(musb);
+}
+
+/* --------------------------------------------------------------------------
+ * Init support
+ */
+
+static struct musb *allocate_instance(struct device *dev,
+		struct musb_hdrc_config *config, void __iomem *mbase)
+{
+	struct musb		*musb;
+	struct musb_hw_ep	*ep;
+	int			epnum;
+	int			ret;
+
+	musb = devm_kzalloc(dev, sizeof(*musb), GFP_KERNEL);
+	if (!musb)
+		return NULL;
+
+	INIT_LIST_HEAD(&musb->control);
+	INIT_LIST_HEAD(&musb->in_bulk);
+	INIT_LIST_HEAD(&musb->out_bulk);
+
+	musb->vbuserr_retry = VBUSERR_RETRY_COUNT;
+	musb->a_wait_bcon = OTG_TIME_A_WAIT_BCON;
+	musb->mregs = mbase;
+	musb->ctrl_base = mbase;
+	musb->nIrq = -ENODEV;
+	musb->config = config;
+	BUG_ON(musb->config->num_eps > MUSB_C_NUM_EPS);
+	for (epnum = 0, ep = musb->endpoints;
+			epnum < musb->config->num_eps;
+			epnum++, ep++) {
+		ep->musb = musb;
+		ep->epnum = epnum;
+	}
+
+	musb->controller = dev;
+
+	ret = musb_host_alloc(musb);
+	if (ret < 0)
+		goto err_free;
+
+	dev_set_drvdata(dev, musb);
+
+	return musb;
+
+err_free:
+	return NULL;
+}
+
+static void musb_free(struct musb *musb)
+{
+	/* this has multiple entry modes. it handles fault cleanup after
+	 * probe(), where things may be partially set up, as well as rmmod
+	 * cleanup after everything's been de-activated.
+	 */
+
+#ifdef CONFIG_SYSFS
+	sysfs_remove_group(&musb->controller->kobj, &musb_attr_group);
+#endif
+
+	if (musb->nIrq >= 0) {
+		if (musb->irq_wake)
+			disable_irq_wake(musb->nIrq);
+		free_irq(musb->nIrq, musb);
+	}
+
+	musb_host_free(musb);
+}
+
+static void musb_deassert_reset(struct work_struct *work)
+{
+	struct musb *musb;
+	unsigned long flags;
+
+	musb = container_of(work, struct musb, deassert_reset_work.work);
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	if (musb->port1_status & USB_PORT_STAT_RESET)
+		musb_port_reset(musb, false);
+
+	spin_unlock_irqrestore(&musb->lock, flags);
+}
+
+/*
+ * Perform generic per-controller initialization.
+ *
+ * @dev: the controller (already clocked, etc)
+ * @nIrq: IRQ number
+ * @ctrl: virtual address of controller registers,
+ *	not yet corrected for platform-specific offsets
+ */
+static int
+musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
+{
+	int			status;
+	struct musb		*musb;
+	struct musb_hdrc_platform_data *plat = dev_get_platdata(dev);
+
+	/* The driver might handle more features than the board; OK.
+	 * Fail when the board needs a feature that's not enabled.
+	 */
+	if (!plat) {
+		dev_dbg(dev, "no platform_data?\n");
+		status = -ENODEV;
+		goto fail0;
+	}
+
+	/* allocate */
+	musb = allocate_instance(dev, plat->config, ctrl);
+	if (!musb) {
+		status = -ENOMEM;
+		goto fail0;
+	}
+
+	pm_runtime_use_autosuspend(musb->controller);
+	pm_runtime_set_autosuspend_delay(musb->controller, 200);
+	pm_runtime_enable(musb->controller);
+
+	spin_lock_init(&musb->lock);
+	musb->board_set_power = plat->set_power;
+	musb->min_power = plat->min_power;
+	musb->ops = plat->platform_ops;
+	musb->port_mode = plat->mode;
+
+	/* The musb_platform_init() call:
+	 *   - adjusts musb->mregs
+	 *   - sets the musb->isr
+	 *   - may initialize an integrated transceiver
+	 *   - initializes musb->xceiv, usually by otg_get_phy()
+	 *   - stops powering VBUS
+	 *
+	 * There are various transceiver configurations.  Blackfin,
+	 * DaVinci, TUSB60x0, and others integrate them.  OMAP3 uses
+	 * external/discrete ones in various flavors (twl4030 family,
+	 * isp1504, non-OTG, etc) mostly hooking up through ULPI.
+	 */
+	status = musb_platform_init(musb);
+	if (status < 0)
+		goto fail1;
+
+	if (!musb->isr) {
+		status = -ENODEV;
+		goto fail2;
+	}
+
+	if (!musb->xceiv->io_ops) {
+		musb->xceiv->io_dev = musb->controller;
+		musb->xceiv->io_priv = musb->mregs;
+		musb->xceiv->io_ops = &musb_ulpi_access;
+	}
+
+	pm_runtime_get_sync(musb->controller);
+
+	if (use_dma && dev->dma_mask) {
+		musb->dma_controller = dma_controller_create(musb, musb->mregs);
+		if (IS_ERR(musb->dma_controller)) {
+			status = PTR_ERR(musb->dma_controller);
+			goto fail2_5;
+		}
+	}
+
+	/* be sure interrupts are disabled before connecting ISR */
+	musb_platform_disable(musb);
+	musb_generic_disable(musb);
+
+	/* Init IRQ workqueue before request_irq */
+	INIT_WORK(&musb->irq_work, musb_irq_work);
+	INIT_DELAYED_WORK(&musb->recover_work, musb_recover_work);
+	INIT_DELAYED_WORK(&musb->deassert_reset_work, musb_deassert_reset);
+	INIT_DELAYED_WORK(&musb->finish_resume_work, musb_host_finish_resume);
+
+	/* setup musb parts of the core (especially endpoints) */
+	status = musb_core_init(plat->config->multipoint
+			? MUSB_CONTROLLER_MHDRC
+			: MUSB_CONTROLLER_HDRC, musb);
+	if (status < 0)
+		goto fail3;
+
+	setup_timer(&musb->otg_timer, musb_otg_timer_func, (unsigned long) musb);
+
+	/* attach to the IRQ */
+	if (request_irq(nIrq, musb->isr, 0, dev_name(dev), musb)) {
+		dev_err(dev, "request_irq %d failed!\n", nIrq);
+		status = -ENODEV;
+		goto fail3;
+	}
+	musb->nIrq = nIrq;
+	/* FIXME this handles wakeup irqs wrong */
+	if (enable_irq_wake(nIrq) == 0) {
+		musb->irq_wake = 1;
+		device_init_wakeup(dev, 1);
+	} else {
+		musb->irq_wake = 0;
+	}
+
+	/* program PHY to use external vBus if required */
+	if (plat->extvbus) {
+		u8 busctl = musb_read_ulpi_buscontrol(musb->mregs);
+		busctl |= MUSB_ULPI_USE_EXTVBUS;
+		musb_write_ulpi_buscontrol(musb->mregs, busctl);
+	}
+
+	if (musb->xceiv->otg->default_a) {
+		MUSB_HST_MODE(musb);
+		musb->xceiv->state = OTG_STATE_A_IDLE;
+	} else {
+		MUSB_DEV_MODE(musb);
+		musb->xceiv->state = OTG_STATE_B_IDLE;
+	}
+
+	switch (musb->port_mode) {
+	case MUSB_PORT_MODE_HOST:
+		status = musb_host_setup(musb, plat->power);
+		if (status < 0)
+			goto fail3;
+		status = musb_platform_set_mode(musb, MUSB_HOST);
+		break;
+	case MUSB_PORT_MODE_GADGET:
+		status = musb_gadget_setup(musb);
+		if (status < 0)
+			goto fail3;
+		status = musb_platform_set_mode(musb, MUSB_PERIPHERAL);
+		break;
+	case MUSB_PORT_MODE_DUAL_ROLE:
+		status = musb_host_setup(musb, plat->power);
+		if (status < 0)
+			goto fail3;
+		status = musb_gadget_setup(musb);
+		if (status) {
+			musb_host_cleanup(musb);
+			goto fail3;
+		}
+		status = musb_platform_set_mode(musb, MUSB_OTG);
+		break;
+	default:
+		dev_err(dev, "unsupported port mode %d\n", musb->port_mode);
+		break;
+	}
+
+	if (status < 0)
+		goto fail3;
+
+	status = musb_init_debugfs(musb);
+	if (status < 0)
+		goto fail4;
+
+	status = sysfs_create_group(&musb->controller->kobj, &musb_attr_group);
+	if (status)
+		goto fail5;
+
+	pm_runtime_put(musb->controller);
+
+	return 0;
+
+fail5:
+	musb_exit_debugfs(musb);
+
+fail4:
+	musb_gadget_cleanup(musb);
+	musb_host_cleanup(musb);
+
+fail3:
+	cancel_work_sync(&musb->irq_work);
+	cancel_delayed_work_sync(&musb->recover_work);
+	cancel_delayed_work_sync(&musb->finish_resume_work);
+	cancel_delayed_work_sync(&musb->deassert_reset_work);
+	if (musb->dma_controller)
+		dma_controller_destroy(musb->dma_controller);
+fail2_5:
+	pm_runtime_put_sync(musb->controller);
+
+fail2:
+	if (musb->irq_wake)
+		device_init_wakeup(dev, 0);
+	musb_platform_exit(musb);
+
+fail1:
+	pm_runtime_disable(musb->controller);
+	dev_err(musb->controller,
+		"musb_init_controller failed with status %d\n", status);
+
+	musb_free(musb);
+
+fail0:
+
+	return status;
+
+}
+
+/*-------------------------------------------------------------------------*/
+
+/* all implementations (PCI bridge to FPGA, VLYNQ, etc) should just
+ * bridge to a platform device; this driver then suffices.
+ */
+static int musb_probe(struct platform_device *pdev)
+{
+	struct device	*dev = &pdev->dev;
+	int		irq = platform_get_irq_byname(pdev, "mc");
+	struct resource	*iomem;
+	void __iomem	*base;
+
+	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!iomem || irq <= 0)
+		return -ENODEV;
+
+	base = devm_ioremap_resource(dev, iomem);
+	if (IS_ERR(base))
+		return PTR_ERR(base);
+
+	return musb_init_controller(dev, irq, base);
+}
+
+static int musb_remove(struct platform_device *pdev)
+{
+	struct device	*dev = &pdev->dev;
+	struct musb	*musb = dev_to_musb(dev);
+
+	/* this gets called on rmmod.
+	 *  - Host mode: host may still be active
+	 *  - Peripheral mode: peripheral is deactivated (or never-activated)
+	 *  - OTG mode: both roles are deactivated (or never-activated)
+	 */
+	musb_exit_debugfs(musb);
+	musb_shutdown(pdev);
+
+	if (musb->dma_controller)
+		dma_controller_destroy(musb->dma_controller);
+
+	cancel_work_sync(&musb->irq_work);
+	cancel_delayed_work_sync(&musb->recover_work);
+	cancel_delayed_work_sync(&musb->finish_resume_work);
+	cancel_delayed_work_sync(&musb->deassert_reset_work);
+	musb_free(musb);
+	device_init_wakeup(dev, 0);
+	return 0;
+}
+
+#ifdef	CONFIG_PM
+
+static void musb_save_context(struct musb *musb)
+{
+	int i;
+	void __iomem *musb_base = musb->mregs;
+	void __iomem *epio;
+
+	musb->context.frame = musb_readw(musb_base, MUSB_FRAME);
+	musb->context.testmode = musb_readb(musb_base, MUSB_TESTMODE);
+	musb->context.busctl = musb_read_ulpi_buscontrol(musb->mregs);
+	musb->context.power = musb_readb(musb_base, MUSB_POWER);
+	musb->context.intrusbe = musb_readb(musb_base, MUSB_INTRUSBE);
+	musb->context.index = musb_readb(musb_base, MUSB_INDEX);
+	musb->context.devctl = musb_readb(musb_base, MUSB_DEVCTL);
+
+	for (i = 0; i < musb->config->num_eps; ++i) {
+		struct musb_hw_ep	*hw_ep;
+
+		hw_ep = &musb->endpoints[i];
+		if (!hw_ep)
+			continue;
+
+		epio = hw_ep->regs;
+		if (!epio)
+			continue;
+
+		musb_writeb(musb_base, MUSB_INDEX, i);
+		musb->context.index_regs[i].txmaxp =
+			musb_readw(epio, MUSB_TXMAXP);
+		musb->context.index_regs[i].txcsr =
+			musb_readw(epio, MUSB_TXCSR);
+		musb->context.index_regs[i].rxmaxp =
+			musb_readw(epio, MUSB_RXMAXP);
+		musb->context.index_regs[i].rxcsr =
+			musb_readw(epio, MUSB_RXCSR);
+
+		if (musb->dyn_fifo) {
+			musb->context.index_regs[i].txfifoadd =
+					musb_read_txfifoadd(musb_base);
+			musb->context.index_regs[i].rxfifoadd =
+					musb_read_rxfifoadd(musb_base);
+			musb->context.index_regs[i].txfifosz =
+					musb_read_txfifosz(musb_base);
+			musb->context.index_regs[i].rxfifosz =
+					musb_read_rxfifosz(musb_base);
+		}
+
+		musb->context.index_regs[i].txtype =
+			musb_readb(epio, MUSB_TXTYPE);
+		musb->context.index_regs[i].txinterval =
+			musb_readb(epio, MUSB_TXINTERVAL);
+		musb->context.index_regs[i].rxtype =
+			musb_readb(epio, MUSB_RXTYPE);
+		musb->context.index_regs[i].rxinterval =
+			musb_readb(epio, MUSB_RXINTERVAL);
+
+		musb->context.index_regs[i].txfunaddr =
+			musb_read_txfunaddr(musb_base, i);
+		musb->context.index_regs[i].txhubaddr =
+			musb_read_txhubaddr(musb_base, i);
+		musb->context.index_regs[i].txhubport =
+			musb_read_txhubport(musb_base, i);
+
+		musb->context.index_regs[i].rxfunaddr =
+			musb_read_rxfunaddr(musb_base, i);
+		musb->context.index_regs[i].rxhubaddr =
+			musb_read_rxhubaddr(musb_base, i);
+		musb->context.index_regs[i].rxhubport =
+			musb_read_rxhubport(musb_base, i);
+	}
+}
+
+static void musb_restore_context(struct musb *musb)
+{
+	int i;
+	void __iomem *musb_base = musb->mregs;
+	void __iomem *ep_target_regs;
+	void __iomem *epio;
+	u8 power;
+
+	musb_writew(musb_base, MUSB_FRAME, musb->context.frame);
+	musb_writeb(musb_base, MUSB_TESTMODE, musb->context.testmode);
+	musb_write_ulpi_buscontrol(musb->mregs, musb->context.busctl);
+
+	/* Don't affect SUSPENDM/RESUME bits in POWER reg */
+	power = musb_readb(musb_base, MUSB_POWER);
+	power &= MUSB_POWER_SUSPENDM | MUSB_POWER_RESUME;
+	musb->context.power &= ~(MUSB_POWER_SUSPENDM | MUSB_POWER_RESUME);
+	power |= musb->context.power;
+	musb_writeb(musb_base, MUSB_POWER, power);
+
+	musb_writew(musb_base, MUSB_INTRTXE, musb->intrtxe);
+	musb_writew(musb_base, MUSB_INTRRXE, musb->intrrxe);
+	musb_writeb(musb_base, MUSB_INTRUSBE, musb->context.intrusbe);
+	musb_writeb(musb_base, MUSB_DEVCTL, musb->context.devctl);
+
+	for (i = 0; i < musb->config->num_eps; ++i) {
+		struct musb_hw_ep	*hw_ep;
+
+		hw_ep = &musb->endpoints[i];
+		if (!hw_ep)
+			continue;
+
+		epio = hw_ep->regs;
+		if (!epio)
+			continue;
+
+		musb_writeb(musb_base, MUSB_INDEX, i);
+		musb_writew(epio, MUSB_TXMAXP,
+			musb->context.index_regs[i].txmaxp);
+		musb_writew(epio, MUSB_TXCSR,
+			musb->context.index_regs[i].txcsr);
+		musb_writew(epio, MUSB_RXMAXP,
+			musb->context.index_regs[i].rxmaxp);
+		musb_writew(epio, MUSB_RXCSR,
+			musb->context.index_regs[i].rxcsr);
+
+		if (musb->dyn_fifo) {
+			musb_write_txfifosz(musb_base,
+				musb->context.index_regs[i].txfifosz);
+			musb_write_rxfifosz(musb_base,
+				musb->context.index_regs[i].rxfifosz);
+			musb_write_txfifoadd(musb_base,
+				musb->context.index_regs[i].txfifoadd);
+			musb_write_rxfifoadd(musb_base,
+				musb->context.index_regs[i].rxfifoadd);
+		}
+
+		musb_writeb(epio, MUSB_TXTYPE,
+				musb->context.index_regs[i].txtype);
+		musb_writeb(epio, MUSB_TXINTERVAL,
+				musb->context.index_regs[i].txinterval);
+		musb_writeb(epio, MUSB_RXTYPE,
+				musb->context.index_regs[i].rxtype);
+		musb_writeb(epio, MUSB_RXINTERVAL,
+
+				musb->context.index_regs[i].rxinterval);
+		musb_write_txfunaddr(musb_base, i,
+				musb->context.index_regs[i].txfunaddr);
+		musb_write_txhubaddr(musb_base, i,
+				musb->context.index_regs[i].txhubaddr);
+		musb_write_txhubport(musb_base, i,
+				musb->context.index_regs[i].txhubport);
+
+		ep_target_regs =
+			musb_read_target_reg_base(i, musb_base);
+
+		musb_write_rxfunaddr(ep_target_regs,
+				musb->context.index_regs[i].rxfunaddr);
+		musb_write_rxhubaddr(ep_target_regs,
+				musb->context.index_regs[i].rxhubaddr);
+		musb_write_rxhubport(ep_target_regs,
+				musb->context.index_regs[i].rxhubport);
+	}
+	musb_writeb(musb_base, MUSB_INDEX, musb->context.index);
+}
+
+static int musb_suspend(struct device *dev)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	unsigned long	flags;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	if (is_peripheral_active(musb)) {
+		/* FIXME force disconnect unless we know USB will wake
+		 * the system up quickly enough to respond ...
+		 */
+	} else if (is_host_active(musb)) {
+		/* we know all the children are suspended; sometimes
+		 * they will even be wakeup-enabled.
+		 */
+	}
+
+	musb_save_context(musb);
+
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return 0;
+}
+
+static int musb_resume_noirq(struct device *dev)
+{
+	struct musb	*musb = dev_to_musb(dev);
+
+	/*
+	 * For static cmos like DaVinci, register values were preserved
+	 * unless for some reason the whole soc powered down or the USB
+	 * module got reset through the PSC (vs just being disabled).
+	 *
+	 * For the DSPS glue layer though, a full register restore has to
+	 * be done. As it shouldn't harm other platforms, we do it
+	 * unconditionally.
+	 */
+
+	musb_restore_context(musb);
+
+	return 0;
+}
+
+static int musb_runtime_suspend(struct device *dev)
+{
+	struct musb	*musb = dev_to_musb(dev);
+
+	musb_save_context(musb);
+
+	return 0;
+}
+
+static int musb_runtime_resume(struct device *dev)
+{
+	struct musb	*musb = dev_to_musb(dev);
+	static int	first = 1;
+
+	/*
+	 * When pm_runtime_get_sync called for the first time in driver
+	 * init,  some of the structure is still not initialized which is
+	 * used in restore function. But clock needs to be
+	 * enabled before any register access, so
+	 * pm_runtime_get_sync has to be called.
+	 * Also context restore without save does not make
+	 * any sense
+	 */
+	if (!first)
+		musb_restore_context(musb);
+	first = 0;
+
+	return 0;
+}
+
+static const struct dev_pm_ops musb_dev_pm_ops = {
+	.suspend	= musb_suspend,
+	.resume_noirq	= musb_resume_noirq,
+	.runtime_suspend = musb_runtime_suspend,
+	.runtime_resume = musb_runtime_resume,
+};
+
+#define MUSB_DEV_PM_OPS (&musb_dev_pm_ops)
+#else
+#define	MUSB_DEV_PM_OPS	NULL
+#endif
+
+static struct platform_driver musb_driver = {
+	.driver = {
+		.name		= (char *)musb_driver_name,
+		.bus		= &platform_bus_type,
+		.owner		= THIS_MODULE,
+		.pm		= MUSB_DEV_PM_OPS,
+	},
+	.probe		= musb_probe,
+	.remove		= musb_remove,
+	.shutdown	= musb_shutdown,
+};
+
+module_platform_driver(musb_driver);
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
new file mode 100644
index 0000000..414e57a
--- /dev/null
+++ b/drivers/usb/musb/musb_core.h
@@ -0,0 +1,590 @@
+/*
+ * MUSB OTG driver defines
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef __MUSB_CORE_H__
+#define __MUSB_CORE_H__
+
+#include <linux/slab.h>
+#include <linux/list.h>
+#include <linux/interrupt.h>
+#include <linux/errno.h>
+#include <linux/timer.h>
+#include <linux/device.h>
+#include <linux/usb/ch9.h>
+#include <linux/usb/gadget.h>
+#include <linux/usb.h>
+#include <linux/usb/otg.h>
+#include <linux/usb/musb.h>
+#include <linux/phy/phy.h>
+#include <linux/workqueue.h>
+
+struct musb;
+struct musb_hw_ep;
+struct musb_ep;
+
+/* Helper defines for struct musb->hwvers */
+#define MUSB_HWVERS_MAJOR(x)	((x >> 10) & 0x1f)
+#define MUSB_HWVERS_MINOR(x)	(x & 0x3ff)
+#define MUSB_HWVERS_RC		0x8000
+#define MUSB_HWVERS_1300	0x52C
+#define MUSB_HWVERS_1400	0x590
+#define MUSB_HWVERS_1800	0x720
+#define MUSB_HWVERS_1900	0x784
+#define MUSB_HWVERS_2000	0x800
+
+#include "musb_debug.h"
+#include "musb_dma.h"
+
+#include "musb_io.h"
+#include "musb_regs.h"
+
+#include "musb_gadget.h"
+#include <linux/usb/hcd.h>
+#include "musb_host.h"
+
+/* NOTE:  otg and peripheral-only state machines start at B_IDLE.
+ * OTG or host-only go to A_IDLE when ID is sensed.
+ */
+#define is_peripheral_active(m)		(!(m)->is_host)
+#define is_host_active(m)		((m)->is_host)
+
+enum {
+	MUSB_PORT_MODE_HOST	= 1,
+	MUSB_PORT_MODE_GADGET,
+	MUSB_PORT_MODE_DUAL_ROLE,
+};
+
+/****************************** CONSTANTS ********************************/
+
+#ifndef MUSB_C_NUM_EPS
+#define MUSB_C_NUM_EPS ((u8)16)
+#endif
+
+#ifndef MUSB_MAX_END0_PACKET
+#define MUSB_MAX_END0_PACKET ((u16)MUSB_EP0_FIFOSIZE)
+#endif
+
+/* host side ep0 states */
+enum musb_h_ep0_state {
+	MUSB_EP0_IDLE,
+	MUSB_EP0_START,			/* expect ack of setup */
+	MUSB_EP0_IN,			/* expect IN DATA */
+	MUSB_EP0_OUT,			/* expect ack of OUT DATA */
+	MUSB_EP0_STATUS,		/* expect ack of STATUS */
+} __attribute__ ((packed));
+
+/* peripheral side ep0 states */
+enum musb_g_ep0_state {
+	MUSB_EP0_STAGE_IDLE,		/* idle, waiting for SETUP */
+	MUSB_EP0_STAGE_SETUP,		/* received SETUP */
+	MUSB_EP0_STAGE_TX,		/* IN data */
+	MUSB_EP0_STAGE_RX,		/* OUT data */
+	MUSB_EP0_STAGE_STATUSIN,	/* (after OUT data) */
+	MUSB_EP0_STAGE_STATUSOUT,	/* (after IN data) */
+	MUSB_EP0_STAGE_ACKWAIT,		/* after zlp, before statusin */
+} __attribute__ ((packed));
+
+/*
+ * OTG protocol constants.  See USB OTG 1.3 spec,
+ * sections 5.5 "Device Timings" and 6.6.5 "Timers".
+ */
+#define OTG_TIME_A_WAIT_VRISE	100		/* msec (max) */
+#define OTG_TIME_A_WAIT_BCON	1100		/* min 1 second */
+#define OTG_TIME_A_AIDL_BDIS	200		/* min 200 msec */
+#define OTG_TIME_B_ASE0_BRST	100		/* min 3.125 ms */
+
+
+/*************************** REGISTER ACCESS ********************************/
+
+/* Endpoint registers (other than dynfifo setup) can be accessed either
+ * directly with the "flat" model, or after setting up an index register.
+ */
+
+#if defined(CONFIG_ARCH_DAVINCI) || defined(CONFIG_SOC_OMAP2430) \
+		|| defined(CONFIG_SOC_OMAP3430) || defined(CONFIG_BLACKFIN) \
+		|| defined(CONFIG_ARCH_OMAP4)
+/* REVISIT indexed access seemed to
+ * misbehave (on DaVinci) for at least peripheral IN ...
+ */
+#define	MUSB_FLAT_REG
+#endif
+
+/* TUSB mapping: "flat" plus ep0 special cases */
+#if defined(CONFIG_USB_MUSB_TUSB6010) || \
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+#define musb_ep_select(_mbase, _epnum) \
+	musb_writeb((_mbase), MUSB_INDEX, (_epnum))
+#define	MUSB_EP_OFFSET			MUSB_TUSB_OFFSET
+
+/* "flat" mapping: each endpoint has its own i/o address */
+#elif	defined(MUSB_FLAT_REG)
+#define musb_ep_select(_mbase, _epnum)	(((void)(_mbase)), ((void)(_epnum)))
+#define	MUSB_EP_OFFSET			MUSB_FLAT_OFFSET
+
+/* "indexed" mapping: INDEX register controls register bank select */
+#else
+#define musb_ep_select(_mbase, _epnum) \
+	musb_writeb((_mbase), MUSB_INDEX, (_epnum))
+#define	MUSB_EP_OFFSET			MUSB_INDEXED_OFFSET
+#endif
+
+/****************************** FUNCTIONS ********************************/
+
+#define MUSB_HST_MODE(_musb)\
+	{ (_musb)->is_host = true; }
+#define MUSB_DEV_MODE(_musb) \
+	{ (_musb)->is_host = false; }
+
+#define test_devctl_hst_mode(_x) \
+	(musb_readb((_x)->mregs, MUSB_DEVCTL)&MUSB_DEVCTL_HM)
+
+#define MUSB_MODE(musb) ((musb)->is_host ? "Host" : "Peripheral")
+
+/******************************** TYPES *************************************/
+
+/**
+ * struct musb_platform_ops - Operations passed to musb_core by HW glue layer
+ * @init:	turns on clocks, sets up platform-specific registers, etc
+ * @exit:	undoes @init
+ * @set_mode:	forcefully changes operating mode
+ * @try_ilde:	tries to idle the IP
+ * @vbus_status: returns vbus status if possible
+ * @set_vbus:	forces vbus status
+ * @adjust_channel_params: pre check for standard dma channel_program func
+ */
+struct musb_platform_ops {
+	int	(*init)(struct musb *musb);
+	int	(*exit)(struct musb *musb);
+
+	void	(*enable)(struct musb *musb);
+	void	(*disable)(struct musb *musb);
+
+	int	(*set_mode)(struct musb *musb, u8 mode);
+	void	(*try_idle)(struct musb *musb, unsigned long timeout);
+	int	(*reset)(struct musb *musb);
+
+	int	(*vbus_status)(struct musb *musb);
+	void	(*set_vbus)(struct musb *musb, int on);
+
+	int	(*adjust_channel_params)(struct dma_channel *channel,
+				u16 packet_sz, u8 *mode,
+				dma_addr_t *dma_addr, u32 *len);
+};
+
+/*
+ * struct musb_hw_ep - endpoint hardware (bidirectional)
+ *
+ * Ordered slightly for better cacheline locality.
+ */
+struct musb_hw_ep {
+	struct musb		*musb;
+	void __iomem		*fifo;
+	void __iomem		*regs;
+
+#if defined(CONFIG_USB_MUSB_TUSB6010) || \
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+	void __iomem		*conf;
+#endif
+
+	/* index in musb->endpoints[]  */
+	u8			epnum;
+
+	/* hardware configuration, possibly dynamic */
+	bool			is_shared_fifo;
+	bool			tx_double_buffered;
+	bool			rx_double_buffered;
+	u16			max_packet_sz_tx;
+	u16			max_packet_sz_rx;
+
+	struct dma_channel	*tx_channel;
+	struct dma_channel	*rx_channel;
+
+#if defined(CONFIG_USB_MUSB_TUSB6010) || \
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+	/* TUSB has "asynchronous" and "synchronous" dma modes */
+	dma_addr_t		fifo_async;
+	dma_addr_t		fifo_sync;
+	void __iomem		*fifo_sync_va;
+#endif
+
+	void __iomem		*target_regs;
+
+	/* currently scheduled peripheral endpoint */
+	struct musb_qh		*in_qh;
+	struct musb_qh		*out_qh;
+
+	u8			rx_reinit;
+	u8			tx_reinit;
+
+	/* peripheral side */
+	struct musb_ep		ep_in;			/* TX */
+	struct musb_ep		ep_out;			/* RX */
+};
+
+static inline struct musb_request *next_in_request(struct musb_hw_ep *hw_ep)
+{
+	return next_request(&hw_ep->ep_in);
+}
+
+static inline struct musb_request *next_out_request(struct musb_hw_ep *hw_ep)
+{
+	return next_request(&hw_ep->ep_out);
+}
+
+struct musb_csr_regs {
+	/* FIFO registers */
+	u16 txmaxp, txcsr, rxmaxp, rxcsr;
+	u16 rxfifoadd, txfifoadd;
+	u8 txtype, txinterval, rxtype, rxinterval;
+	u8 rxfifosz, txfifosz;
+	u8 txfunaddr, txhubaddr, txhubport;
+	u8 rxfunaddr, rxhubaddr, rxhubport;
+};
+
+struct musb_context_registers {
+
+	u8 power;
+	u8 intrusbe;
+	u16 frame;
+	u8 index, testmode;
+
+	u8 devctl, busctl, misc;
+	u32 otg_interfsel;
+
+	struct musb_csr_regs index_regs[MUSB_C_NUM_EPS];
+};
+
+/*
+ * struct musb - Driver instance data.
+ */
+struct musb {
+	/* device lock */
+	spinlock_t		lock;
+
+	const struct musb_platform_ops *ops;
+	struct musb_context_registers context;
+
+	irqreturn_t		(*isr)(int, void *);
+	struct work_struct	irq_work;
+	struct delayed_work	recover_work;
+	struct delayed_work	deassert_reset_work;
+	struct delayed_work	finish_resume_work;
+	u16			hwvers;
+
+	u16			intrrxe;
+	u16			intrtxe;
+/* this hub status bit is reserved by USB 2.0 and not seen by usbcore */
+#define MUSB_PORT_STAT_RESUME	(1 << 31)
+
+	u32			port1_status;
+
+	unsigned long		rh_timer;
+
+	enum musb_h_ep0_state	ep0_stage;
+
+	/* bulk traffic normally dedicates endpoint hardware, and each
+	 * direction has its own ring of host side endpoints.
+	 * we try to progress the transfer at the head of each endpoint's
+	 * queue until it completes or NAKs too much; then we try the next
+	 * endpoint.
+	 */
+	struct musb_hw_ep	*bulk_ep;
+
+	struct list_head	control;	/* of musb_qh */
+	struct list_head	in_bulk;	/* of musb_qh */
+	struct list_head	out_bulk;	/* of musb_qh */
+
+	struct timer_list	otg_timer;
+	struct notifier_block	nb;
+
+	struct dma_controller	*dma_controller;
+
+	struct device		*controller;
+	void __iomem		*ctrl_base;
+	void __iomem		*mregs;
+
+#if defined(CONFIG_USB_MUSB_TUSB6010) || \
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+	dma_addr_t		async;
+	dma_addr_t		sync;
+	void __iomem		*sync_va;
+	u8			tusb_revision;
+#endif
+
+	/* passed down from chip/board specific irq handlers */
+	u8			int_usb;
+	u16			int_rx;
+	u16			int_tx;
+
+	struct usb_phy		*xceiv;
+	struct phy		*phy;
+
+	int nIrq;
+	unsigned		irq_wake:1;
+
+	struct musb_hw_ep	 endpoints[MUSB_C_NUM_EPS];
+#define control_ep		endpoints
+
+#define VBUSERR_RETRY_COUNT	3
+	u16			vbuserr_retry;
+	u16 epmask;
+	u8 nr_endpoints;
+
+	int			(*board_set_power)(int state);
+
+	u8			min_power;	/* vbus for periph, in mA/2 */
+
+	int			port_mode;	/* MUSB_PORT_MODE_* */
+	bool			is_host;
+
+	int			a_wait_bcon;	/* VBUS timeout in msecs */
+	unsigned long		idle_timeout;	/* Next timeout in jiffies */
+
+	/* active means connected and not suspended */
+	unsigned		is_active:1;
+
+	unsigned is_multipoint:1;
+
+	unsigned		hb_iso_rx:1;	/* high bandwidth iso rx? */
+	unsigned		hb_iso_tx:1;	/* high bandwidth iso tx? */
+	unsigned		dyn_fifo:1;	/* dynamic FIFO supported? */
+
+	unsigned		bulk_split:1;
+#define	can_bulk_split(musb,type) \
+	(((type) == USB_ENDPOINT_XFER_BULK) && (musb)->bulk_split)
+
+	unsigned		bulk_combine:1;
+#define	can_bulk_combine(musb,type) \
+	(((type) == USB_ENDPOINT_XFER_BULK) && (musb)->bulk_combine)
+
+	/* is_suspended means USB B_PERIPHERAL suspend */
+	unsigned		is_suspended:1;
+
+	/* may_wakeup means remote wakeup is enabled */
+	unsigned		may_wakeup:1;
+
+	/* is_self_powered is reported in device status and the
+	 * config descriptor.  is_bus_powered means B_PERIPHERAL
+	 * draws some VBUS current; both can be true.
+	 */
+	unsigned		is_self_powered:1;
+	unsigned		is_bus_powered:1;
+
+	unsigned		set_address:1;
+	unsigned		test_mode:1;
+	unsigned		softconnect:1;
+
+	u8			address;
+	u8			test_mode_nr;
+	u16			ackpend;		/* ep0 */
+	enum musb_g_ep0_state	ep0_state;
+	struct usb_gadget	g;			/* the gadget */
+	struct usb_gadget_driver *gadget_driver;	/* its driver */
+	struct usb_hcd		*hcd;			/* the usb hcd */
+
+	/*
+	 * FIXME: Remove this flag.
+	 *
+	 * This is only added to allow Blackfin to work
+	 * with current driver. For some unknown reason
+	 * Blackfin doesn't work with double buffering
+	 * and that's enabled by default.
+	 *
+	 * We added this flag to forcefully disable double
+	 * buffering until we get it working.
+	 */
+	unsigned                double_buffer_not_ok:1;
+
+	struct musb_hdrc_config	*config;
+
+	int			xceiv_old_state;
+#ifdef CONFIG_DEBUG_FS
+	struct dentry		*debugfs_root;
+#endif
+};
+
+static inline struct musb *gadget_to_musb(struct usb_gadget *g)
+{
+	return container_of(g, struct musb, g);
+}
+
+#ifdef CONFIG_BLACKFIN
+static inline int musb_read_fifosize(struct musb *musb,
+		struct musb_hw_ep *hw_ep, u8 epnum)
+{
+	musb->nr_endpoints++;
+	musb->epmask |= (1 << epnum);
+
+	if (epnum < 5) {
+		hw_ep->max_packet_sz_tx = 128;
+		hw_ep->max_packet_sz_rx = 128;
+	} else {
+		hw_ep->max_packet_sz_tx = 1024;
+		hw_ep->max_packet_sz_rx = 1024;
+	}
+	hw_ep->is_shared_fifo = false;
+
+	return 0;
+}
+
+static inline void musb_configure_ep0(struct musb *musb)
+{
+	musb->endpoints[0].max_packet_sz_tx = MUSB_EP0_FIFOSIZE;
+	musb->endpoints[0].max_packet_sz_rx = MUSB_EP0_FIFOSIZE;
+	musb->endpoints[0].is_shared_fifo = true;
+}
+
+#else
+
+static inline int musb_read_fifosize(struct musb *musb,
+		struct musb_hw_ep *hw_ep, u8 epnum)
+{
+	void __iomem *mbase = musb->mregs;
+	u8 reg = 0;
+
+	/* read from core using indexed model */
+	reg = musb_readb(mbase, MUSB_EP_OFFSET(epnum, MUSB_FIFOSIZE));
+	/* 0's returned when no more endpoints */
+	if (!reg)
+		return -ENODEV;
+
+	musb->nr_endpoints++;
+	musb->epmask |= (1 << epnum);
+
+	hw_ep->max_packet_sz_tx = 1 << (reg & 0x0f);
+
+	/* shared TX/RX FIFO? */
+	if ((reg & 0xf0) == 0xf0) {
+		hw_ep->max_packet_sz_rx = hw_ep->max_packet_sz_tx;
+		hw_ep->is_shared_fifo = true;
+		return 0;
+	} else {
+		hw_ep->max_packet_sz_rx = 1 << ((reg & 0xf0) >> 4);
+		hw_ep->is_shared_fifo = false;
+	}
+
+	return 0;
+}
+
+static inline void musb_configure_ep0(struct musb *musb)
+{
+	musb->endpoints[0].max_packet_sz_tx = MUSB_EP0_FIFOSIZE;
+	musb->endpoints[0].max_packet_sz_rx = MUSB_EP0_FIFOSIZE;
+	musb->endpoints[0].is_shared_fifo = true;
+}
+#endif /* CONFIG_BLACKFIN */
+
+
+/***************************** Glue it together *****************************/
+
+extern const char musb_driver_name[];
+
+extern void musb_stop(struct musb *musb);
+extern void musb_start(struct musb *musb);
+
+extern void musb_write_fifo(struct musb_hw_ep *ep, u16 len, const u8 *src);
+extern void musb_read_fifo(struct musb_hw_ep *ep, u16 len, u8 *dst);
+
+extern void musb_load_testpacket(struct musb *);
+
+extern irqreturn_t musb_interrupt(struct musb *);
+
+extern void musb_hnp_stop(struct musb *musb);
+
+static inline void musb_platform_set_vbus(struct musb *musb, int is_on)
+{
+	if (musb->ops->set_vbus)
+		musb->ops->set_vbus(musb, is_on);
+}
+
+static inline void musb_platform_enable(struct musb *musb)
+{
+	if (musb->ops->enable)
+		musb->ops->enable(musb);
+}
+
+static inline void musb_platform_disable(struct musb *musb)
+{
+	if (musb->ops->disable)
+		musb->ops->disable(musb);
+}
+
+static inline int musb_platform_set_mode(struct musb *musb, u8 mode)
+{
+	if (!musb->ops->set_mode)
+		return 0;
+
+	return musb->ops->set_mode(musb, mode);
+}
+
+static inline void musb_platform_try_idle(struct musb *musb,
+		unsigned long timeout)
+{
+	if (musb->ops->try_idle)
+		musb->ops->try_idle(musb, timeout);
+}
+
+static inline int  musb_platform_reset(struct musb *musb)
+{
+	if (!musb->ops->reset)
+		return -EINVAL;
+
+	return musb->ops->reset(musb);
+}
+
+static inline int musb_platform_get_vbus_status(struct musb *musb)
+{
+	if (!musb->ops->vbus_status)
+		return 0;
+
+	return musb->ops->vbus_status(musb);
+}
+
+static inline int musb_platform_init(struct musb *musb)
+{
+	if (!musb->ops->init)
+		return -EINVAL;
+
+	return musb->ops->init(musb);
+}
+
+static inline int musb_platform_exit(struct musb *musb)
+{
+	if (!musb->ops->exit)
+		return -EINVAL;
+
+	return musb->ops->exit(musb);
+}
+
+#endif	/* __MUSB_CORE_H__ */
diff --git a/drivers/usb/musb/musb_dma.h b/drivers/usb/musb/musb_dma.h
new file mode 100644
index 0000000..1d44faa
--- /dev/null
+++ b/drivers/usb/musb/musb_dma.h
@@ -0,0 +1,195 @@
+/*
+ * MUSB OTG driver DMA controller abstraction
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef __MUSB_DMA_H__
+#define __MUSB_DMA_H__
+
+struct musb_hw_ep;
+
+/*
+ * DMA Controller Abstraction
+ *
+ * DMA Controllers are abstracted to allow use of a variety of different
+ * implementations of DMA, as allowed by the Inventra USB cores.  On the
+ * host side, usbcore sets up the DMA mappings and flushes caches; on the
+ * peripheral side, the gadget controller driver does.  Responsibilities
+ * of a DMA controller driver include:
+ *
+ *  - Handling the details of moving multiple USB packets
+ *    in cooperation with the Inventra USB core, including especially
+ *    the correct RX side treatment of short packets and buffer-full
+ *    states (both of which terminate transfers).
+ *
+ *  - Knowing the correlation between dma channels and the
+ *    Inventra core's local endpoint resources and data direction.
+ *
+ *  - Maintaining a list of allocated/available channels.
+ *
+ *  - Updating channel status on interrupts,
+ *    whether shared with the Inventra core or separate.
+ */
+
+#define	DMA_ADDR_INVALID	(~(dma_addr_t)0)
+
+#ifdef CONFIG_MUSB_PIO_ONLY
+#define	is_dma_capable()	(0)
+#else
+#define	is_dma_capable()	(1)
+#endif
+
+#if defined(CONFIG_USB_TI_CPPI_DMA) || defined(CONFIG_USB_TI_CPPI41_DMA)
+#define	is_cppi_enabled()	1
+#else
+#define	is_cppi_enabled()	0
+#endif
+
+#ifdef CONFIG_USB_TUSB_OMAP_DMA
+#define tusb_dma_omap()			1
+#else
+#define tusb_dma_omap()			0
+#endif
+
+/* Anomaly 05000456 - USB Receive Interrupt Is Not Generated in DMA Mode 1
+ *	Only allow DMA mode 1 to be used when the USB will actually generate the
+ *	interrupts we expect.
+ */
+#ifdef CONFIG_BLACKFIN
+# undef USE_MODE1
+# if !ANOMALY_05000456
+#  define USE_MODE1
+# endif
+#endif
+
+/*
+ * DMA channel status ... updated by the dma controller driver whenever that
+ * status changes, and protected by the overall controller spinlock.
+ */
+enum dma_channel_status {
+	/* unallocated */
+	MUSB_DMA_STATUS_UNKNOWN,
+	/* allocated ... but not busy, no errors */
+	MUSB_DMA_STATUS_FREE,
+	/* busy ... transactions are active */
+	MUSB_DMA_STATUS_BUSY,
+	/* transaction(s) aborted due to ... dma or memory bus error */
+	MUSB_DMA_STATUS_BUS_ABORT,
+	/* transaction(s) aborted due to ... core error or USB fault */
+	MUSB_DMA_STATUS_CORE_ABORT
+};
+
+struct dma_controller;
+
+/**
+ * struct dma_channel - A DMA channel.
+ * @private_data: channel-private data
+ * @max_len: the maximum number of bytes the channel can move in one
+ *	transaction (typically representing many USB maximum-sized packets)
+ * @actual_len: how many bytes have been transferred
+ * @status: current channel status (updated e.g. on interrupt)
+ * @desired_mode: true if mode 1 is desired; false if mode 0 is desired
+ *
+ * channels are associated with an endpoint for the duration of at least
+ * one usb transfer.
+ */
+struct dma_channel {
+	void			*private_data;
+	/* FIXME not void* private_data, but a dma_controller * */
+	size_t			max_len;
+	size_t			actual_len;
+	enum dma_channel_status	status;
+	bool			desired_mode;
+	bool			rx_packet_done;
+};
+
+/*
+ * dma_channel_status - return status of dma channel
+ * @c: the channel
+ *
+ * Returns the software's view of the channel status.  If that status is BUSY
+ * then it's possible that the hardware has completed (or aborted) a transfer,
+ * so the driver needs to update that status.
+ */
+static inline enum dma_channel_status
+dma_channel_status(struct dma_channel *c)
+{
+	return (is_dma_capable() && c) ? c->status : MUSB_DMA_STATUS_UNKNOWN;
+}
+
+/**
+ * struct dma_controller - A DMA Controller.
+ * @start: call this to start a DMA controller;
+ *	return 0 on success, else negative errno
+ * @stop: call this to stop a DMA controller
+ *	return 0 on success, else negative errno
+ * @channel_alloc: call this to allocate a DMA channel
+ * @channel_release: call this to release a DMA channel
+ * @channel_abort: call this to abort a pending DMA transaction,
+ *	returning it to FREE (but allocated) state
+ *
+ * Controllers manage dma channels.
+ */
+struct dma_controller {
+	struct dma_channel	*(*channel_alloc)(struct dma_controller *,
+					struct musb_hw_ep *, u8 is_tx);
+	void			(*channel_release)(struct dma_channel *);
+	int			(*channel_program)(struct dma_channel *channel,
+							u16 maxpacket, u8 mode,
+							dma_addr_t dma_addr,
+							u32 length);
+	int			(*channel_abort)(struct dma_channel *);
+	int			(*is_compatible)(struct dma_channel *channel,
+							u16 maxpacket,
+							void *buf, u32 length);
+};
+
+/* called after channel_program(), may indicate a fault */
+extern void musb_dma_completion(struct musb *musb, u8 epnum, u8 transmit);
+
+#ifdef CONFIG_MUSB_PIO_ONLY
+static inline struct dma_controller *dma_controller_create(struct musb *m,
+		void __iomem *io)
+{
+	return NULL;
+}
+
+static inline void dma_controller_destroy(struct dma_controller *d) { }
+
+#else
+
+extern struct dma_controller *dma_controller_create(struct musb *, void __iomem *);
+
+extern void dma_controller_destroy(struct dma_controller *);
+#endif
+
+#endif	/* __MUSB_DMA_H__ */
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
new file mode 100644
index 0000000..c791ba5
--- /dev/null
+++ b/drivers/usb/musb/musb_dsps.c
@@ -0,0 +1,920 @@
+/*
+ * Texas Instruments DSPS platforms "glue layer"
+ *
+ * Copyright (C) 2012, by Texas Instruments
+ *
+ * Based on the am35x "glue layer" code.
+ *
+ * This file is part of the Inventra Controller Driver for Linux.
+ *
+ * The Inventra Controller Driver for Linux is free software; you
+ * can redistribute it and/or modify it under the terms of the GNU
+ * General Public License version 2 as published by the Free Software
+ * Foundation.
+ *
+ * The Inventra Controller Driver for Linux is distributed in
+ * the hope that it will be useful, but WITHOUT ANY WARRANTY;
+ * without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public
+ * License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with The Inventra Controller Driver for Linux ; if not,
+ * write to the Free Software Foundation, Inc., 59 Temple Place,
+ * Suite 330, Boston, MA  02111-1307  USA
+ *
+ * musb_dsps.c will be a common file for all the TI DSPS platforms
+ * such as dm64x, dm36x, dm35x, da8x, am35x and ti81x.
+ * For now only ti81x is using this and in future davinci.c, am35x.c
+ * da8xx.c would be merged to this file after testing.
+ */
+
+#include <linux/io.h>
+#include <linux/err.h>
+#include <linux/platform_device.h>
+#include <linux/dma-mapping.h>
+#include <linux/pm_runtime.h>
+#include <linux/module.h>
+#include <linux/usb/usb_phy_generic.h>
+#include <linux/platform_data/usb-omap.h>
+#include <linux/sizes.h>
+
+#include <linux/of.h>
+#include <linux/of_device.h>
+#include <linux/of_address.h>
+#include <linux/of_irq.h>
+#include <linux/usb/of.h>
+
+#include <linux/debugfs.h>
+
+#include "musb_core.h"
+
+static const struct of_device_id musb_dsps_of_match[];
+
+/**
+ * avoid using musb_readx()/musb_writex() as glue layer should not be
+ * dependent on musb core layer symbols.
+ */
+static inline u8 dsps_readb(const void __iomem *addr, unsigned offset)
+{
+	return __raw_readb(addr + offset);
+}
+
+static inline u32 dsps_readl(const void __iomem *addr, unsigned offset)
+{
+	return __raw_readl(addr + offset);
+}
+
+static inline void dsps_writeb(void __iomem *addr, unsigned offset, u8 data)
+{
+	__raw_writeb(data, addr + offset);
+}
+
+static inline void dsps_writel(void __iomem *addr, unsigned offset, u32 data)
+{
+	__raw_writel(data, addr + offset);
+}
+
+/**
+ * DSPS musb wrapper register offset.
+ * FIXME: This should be expanded to have all the wrapper registers from TI DSPS
+ * musb ips.
+ */
+struct dsps_musb_wrapper {
+	u16	revision;
+	u16	control;
+	u16	status;
+	u16	epintr_set;
+	u16	epintr_clear;
+	u16	epintr_status;
+	u16	coreintr_set;
+	u16	coreintr_clear;
+	u16	coreintr_status;
+	u16	phy_utmi;
+	u16	mode;
+	u16	tx_mode;
+	u16	rx_mode;
+
+	/* bit positions for control */
+	unsigned	reset:5;
+
+	/* bit positions for interrupt */
+	unsigned	usb_shift:5;
+	u32		usb_mask;
+	u32		usb_bitmap;
+	unsigned	drvvbus:5;
+
+	unsigned	txep_shift:5;
+	u32		txep_mask;
+	u32		txep_bitmap;
+
+	unsigned	rxep_shift:5;
+	u32		rxep_mask;
+	u32		rxep_bitmap;
+
+	/* bit positions for phy_utmi */
+	unsigned	otg_disable:5;
+
+	/* bit positions for mode */
+	unsigned	iddig:5;
+	unsigned	iddig_mux:5;
+	/* miscellaneous stuff */
+	u8		poll_seconds;
+};
+
+/*
+ * register shadow for suspend
+ */
+struct dsps_context {
+	u32 control;
+	u32 epintr;
+	u32 coreintr;
+	u32 phy_utmi;
+	u32 mode;
+	u32 tx_mode;
+	u32 rx_mode;
+};
+
+/**
+ * DSPS glue structure.
+ */
+struct dsps_glue {
+	struct device *dev;
+	struct platform_device *musb;	/* child musb pdev */
+	const struct dsps_musb_wrapper *wrp; /* wrapper register offsets */
+	struct timer_list timer;	/* otg_workaround timer */
+	unsigned long last_timer;    /* last timer data for each instance */
+	bool sw_babble_enabled;
+
+	struct dsps_context context;
+	struct debugfs_regset32 regset;
+	struct dentry *dbgfs_root;
+};
+
+static const struct debugfs_reg32 dsps_musb_regs[] = {
+	{ "revision",		0x00 },
+	{ "control",		0x14 },
+	{ "status",		0x18 },
+	{ "eoi",		0x24 },
+	{ "intr0_stat",		0x30 },
+	{ "intr1_stat",		0x34 },
+	{ "intr0_set",		0x38 },
+	{ "intr1_set",		0x3c },
+	{ "txmode",		0x70 },
+	{ "rxmode",		0x74 },
+	{ "autoreq",		0xd0 },
+	{ "srpfixtime",		0xd4 },
+	{ "tdown",		0xd8 },
+	{ "phy_utmi",		0xe0 },
+	{ "mode",		0xe8 },
+};
+
+static void dsps_musb_try_idle(struct musb *musb, unsigned long timeout)
+{
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+
+	if (timeout == 0)
+		timeout = jiffies + msecs_to_jiffies(3);
+
+	/* Never idle if active, or when VBUS timeout is not set as host */
+	if (musb->is_active || (musb->a_wait_bcon == 0 &&
+				musb->xceiv->state == OTG_STATE_A_WAIT_BCON)) {
+		dev_dbg(musb->controller, "%s active, deleting timer\n",
+				usb_otg_state_string(musb->xceiv->state));
+		del_timer(&glue->timer);
+		glue->last_timer = jiffies;
+		return;
+	}
+	if (musb->port_mode != MUSB_PORT_MODE_DUAL_ROLE)
+		return;
+
+	if (!musb->g.dev.driver)
+		return;
+
+	if (time_after(glue->last_timer, timeout) &&
+				timer_pending(&glue->timer)) {
+		dev_dbg(musb->controller,
+			"Longer idle timer already pending, ignoring...\n");
+		return;
+	}
+	glue->last_timer = timeout;
+
+	dev_dbg(musb->controller, "%s inactive, starting idle timer for %u ms\n",
+		usb_otg_state_string(musb->xceiv->state),
+			jiffies_to_msecs(timeout - jiffies));
+	mod_timer(&glue->timer, timeout);
+}
+
+/**
+ * dsps_musb_enable - enable interrupts
+ */
+static void dsps_musb_enable(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct platform_device *pdev = to_platform_device(dev->parent);
+	struct dsps_glue *glue = platform_get_drvdata(pdev);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	void __iomem *reg_base = musb->ctrl_base;
+	u32 epmask, coremask;
+
+	/* Workaround: setup IRQs through both register sets. */
+	epmask = ((musb->epmask & wrp->txep_mask) << wrp->txep_shift) |
+	       ((musb->epmask & wrp->rxep_mask) << wrp->rxep_shift);
+	coremask = (wrp->usb_bitmap & ~MUSB_INTR_SOF);
+
+	dsps_writel(reg_base, wrp->epintr_set, epmask);
+	dsps_writel(reg_base, wrp->coreintr_set, coremask);
+	/* Force the DRVVBUS IRQ so we can start polling for ID change. */
+	dsps_writel(reg_base, wrp->coreintr_set,
+		    (1 << wrp->drvvbus) << wrp->usb_shift);
+	dsps_musb_try_idle(musb, 0);
+}
+
+/**
+ * dsps_musb_disable - disable HDRC and flush interrupts
+ */
+static void dsps_musb_disable(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct platform_device *pdev = to_platform_device(dev->parent);
+	struct dsps_glue *glue = platform_get_drvdata(pdev);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	void __iomem *reg_base = musb->ctrl_base;
+
+	dsps_writel(reg_base, wrp->coreintr_clear, wrp->usb_bitmap);
+	dsps_writel(reg_base, wrp->epintr_clear,
+			 wrp->txep_bitmap | wrp->rxep_bitmap);
+	dsps_writeb(musb->mregs, MUSB_DEVCTL, 0);
+}
+
+static void otg_timer(unsigned long _musb)
+{
+	struct musb *musb = (void *)_musb;
+	void __iomem *mregs = musb->mregs;
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	u8 devctl;
+	unsigned long flags;
+	int skip_session = 0;
+
+	/*
+	 * We poll because DSPS IP's won't expose several OTG-critical
+	 * status change events (from the transceiver) otherwise.
+	 */
+	devctl = dsps_readb(mregs, MUSB_DEVCTL);
+	dev_dbg(musb->controller, "Poll devctl %02x (%s)\n", devctl,
+				usb_otg_state_string(musb->xceiv->state));
+
+	spin_lock_irqsave(&musb->lock, flags);
+	switch (musb->xceiv->state) {
+	case OTG_STATE_A_WAIT_BCON:
+		dsps_writeb(musb->mregs, MUSB_DEVCTL, 0);
+		skip_session = 1;
+		/* fall */
+
+	case OTG_STATE_A_IDLE:
+	case OTG_STATE_B_IDLE:
+		if (devctl & MUSB_DEVCTL_BDEVICE) {
+			musb->xceiv->state = OTG_STATE_B_IDLE;
+			MUSB_DEV_MODE(musb);
+		} else {
+			musb->xceiv->state = OTG_STATE_A_IDLE;
+			MUSB_HST_MODE(musb);
+		}
+		if (!(devctl & MUSB_DEVCTL_SESSION) && !skip_session)
+			dsps_writeb(mregs, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
+		mod_timer(&glue->timer, jiffies + wrp->poll_seconds * HZ);
+		break;
+	case OTG_STATE_A_WAIT_VFALL:
+		musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
+		dsps_writel(musb->ctrl_base, wrp->coreintr_set,
+			    MUSB_INTR_VBUSERROR << wrp->usb_shift);
+		break;
+	default:
+		break;
+	}
+	spin_unlock_irqrestore(&musb->lock, flags);
+}
+
+static irqreturn_t dsps_interrupt(int irq, void *hci)
+{
+	struct musb  *musb = hci;
+	void __iomem *reg_base = musb->ctrl_base;
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	unsigned long flags;
+	irqreturn_t ret = IRQ_NONE;
+	u32 epintr, usbintr;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	/* Get endpoint interrupts */
+	epintr = dsps_readl(reg_base, wrp->epintr_status);
+	musb->int_rx = (epintr & wrp->rxep_bitmap) >> wrp->rxep_shift;
+	musb->int_tx = (epintr & wrp->txep_bitmap) >> wrp->txep_shift;
+
+	if (epintr)
+		dsps_writel(reg_base, wrp->epintr_status, epintr);
+
+	/* Get usb core interrupts */
+	usbintr = dsps_readl(reg_base, wrp->coreintr_status);
+	if (!usbintr && !epintr)
+		goto out;
+
+	musb->int_usb =	(usbintr & wrp->usb_bitmap) >> wrp->usb_shift;
+	if (usbintr)
+		dsps_writel(reg_base, wrp->coreintr_status, usbintr);
+
+	dev_dbg(musb->controller, "usbintr (%x) epintr(%x)\n",
+			usbintr, epintr);
+	/*
+	 * DRVVBUS IRQs are the only proxy we have (a very poor one!) for
+	 * DSPS IP's missing ID change IRQ.  We need an ID change IRQ to
+	 * switch appropriately between halves of the OTG state machine.
+	 * Managing DEVCTL.SESSION per Mentor docs requires that we know its
+	 * value but DEVCTL.BDEVICE is invalid without DEVCTL.SESSION set.
+	 * Also, DRVVBUS pulses for SRP (but not at 5V) ...
+	 */
+	if (is_host_active(musb) && usbintr & MUSB_INTR_BABBLE) {
+		pr_info("CAUTION: musb: Babble Interrupt Occurred\n");
+
+		/*
+		 * When a babble condition occurs, the musb controller removes
+		 * the session and is no longer in host mode. Hence, all
+		 * devices connected to its root hub get disconnected.
+		 *
+		 * Hand this error down to the musb core isr, so it can
+		 * recover.
+		 */
+		musb->int_usb = MUSB_INTR_BABBLE | MUSB_INTR_DISCONNECT;
+		musb->int_tx = musb->int_rx = 0;
+	}
+
+	if (usbintr & ((1 << wrp->drvvbus) << wrp->usb_shift)) {
+		int drvvbus = dsps_readl(reg_base, wrp->status);
+		void __iomem *mregs = musb->mregs;
+		u8 devctl = dsps_readb(mregs, MUSB_DEVCTL);
+		int err;
+
+		err = musb->int_usb & MUSB_INTR_VBUSERROR;
+		if (err) {
+			/*
+			 * The Mentor core doesn't debounce VBUS as needed
+			 * to cope with device connect current spikes. This
+			 * means it's not uncommon for bus-powered devices
+			 * to get VBUS errors during enumeration.
+			 *
+			 * This is a workaround, but newer RTL from Mentor
+			 * seems to allow a better one: "re"-starting sessions
+			 * without waiting for VBUS to stop registering in
+			 * devctl.
+			 */
+			musb->int_usb &= ~MUSB_INTR_VBUSERROR;
+			musb->xceiv->state = OTG_STATE_A_WAIT_VFALL;
+			mod_timer(&glue->timer,
+					jiffies + wrp->poll_seconds * HZ);
+			WARNING("VBUS error workaround (delay coming)\n");
+		} else if (drvvbus) {
+			MUSB_HST_MODE(musb);
+			musb->xceiv->otg->default_a = 1;
+			musb->xceiv->state = OTG_STATE_A_WAIT_VRISE;
+			del_timer(&glue->timer);
+		} else {
+			musb->is_active = 0;
+			MUSB_DEV_MODE(musb);
+			musb->xceiv->otg->default_a = 0;
+			musb->xceiv->state = OTG_STATE_B_IDLE;
+		}
+
+		/* NOTE: this must complete power-on within 100 ms. */
+		dev_dbg(musb->controller, "VBUS %s (%s)%s, devctl %02x\n",
+				drvvbus ? "on" : "off",
+				usb_otg_state_string(musb->xceiv->state),
+				err ? " ERROR" : "",
+				devctl);
+		ret = IRQ_HANDLED;
+	}
+
+	if (musb->int_tx || musb->int_rx || musb->int_usb)
+		ret |= musb_interrupt(musb);
+
+	/* Poll for ID change in OTG port mode */
+	if (musb->xceiv->state == OTG_STATE_B_IDLE &&
+			musb->port_mode == MUSB_PORT_MODE_DUAL_ROLE)
+		mod_timer(&glue->timer, jiffies + wrp->poll_seconds * HZ);
+out:
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	return ret;
+}
+
+static int dsps_musb_dbg_init(struct musb *musb, struct dsps_glue *glue)
+{
+	struct dentry *root;
+	struct dentry *file;
+	char buf[128];
+
+	sprintf(buf, "%s.dsps", dev_name(musb->controller));
+	root = debugfs_create_dir(buf, NULL);
+	if (!root)
+		return -ENOMEM;
+	glue->dbgfs_root = root;
+
+	glue->regset.regs = dsps_musb_regs;
+	glue->regset.nregs = ARRAY_SIZE(dsps_musb_regs);
+	glue->regset.base = musb->ctrl_base;
+
+	file = debugfs_create_regset32("regdump", S_IRUGO, root, &glue->regset);
+	if (!file) {
+		debugfs_remove_recursive(root);
+		return -ENOMEM;
+	}
+	return 0;
+}
+
+static int dsps_musb_init(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	struct platform_device *parent = to_platform_device(dev->parent);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	void __iomem *reg_base;
+	struct resource *r;
+	u32 rev, val;
+	int ret;
+
+	r = platform_get_resource_byname(parent, IORESOURCE_MEM, "control");
+	if (!r)
+		return -EINVAL;
+
+	reg_base = devm_ioremap_resource(dev, r);
+	if (IS_ERR(reg_base))
+		return PTR_ERR(reg_base);
+	musb->ctrl_base = reg_base;
+
+	/* NOP driver needs change if supporting dual instance */
+	musb->xceiv = devm_usb_get_phy_by_phandle(dev, "phys", 0);
+	if (IS_ERR(musb->xceiv))
+		return PTR_ERR(musb->xceiv);
+
+	/* Returns zero if e.g. not clocked */
+	rev = dsps_readl(reg_base, wrp->revision);
+	if (!rev)
+		return -ENODEV;
+
+	usb_phy_init(musb->xceiv);
+	setup_timer(&glue->timer, otg_timer, (unsigned long) musb);
+
+	/* Reset the musb */
+	dsps_writel(reg_base, wrp->control, (1 << wrp->reset));
+
+	musb->isr = dsps_interrupt;
+
+	/* reset the otgdisable bit, needed for host mode to work */
+	val = dsps_readl(reg_base, wrp->phy_utmi);
+	val &= ~(1 << wrp->otg_disable);
+	dsps_writel(musb->ctrl_base, wrp->phy_utmi, val);
+
+	/*
+	 *  Check whether the dsps version has babble control enabled.
+	 * In latest silicon revision the babble control logic is enabled.
+	 * If MUSB_BABBLE_CTL returns 0x4 then we have the babble control
+	 * logic enabled.
+	 */
+	val = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
+	if (val == MUSB_BABBLE_RCV_DISABLE) {
+		glue->sw_babble_enabled = true;
+		val |= MUSB_BABBLE_SW_SESSION_CTRL;
+		dsps_writeb(musb->mregs, MUSB_BABBLE_CTL, val);
+	}
+
+	ret = dsps_musb_dbg_init(musb, glue);
+	if (ret)
+		return ret;
+
+	return 0;
+}
+
+static int dsps_musb_exit(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+
+	del_timer_sync(&glue->timer);
+	usb_phy_shutdown(musb->xceiv);
+	debugfs_remove_recursive(glue->dbgfs_root);
+
+	return 0;
+}
+
+static int dsps_musb_set_mode(struct musb *musb, u8 mode)
+{
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	void __iomem *ctrl_base = musb->ctrl_base;
+	u32 reg;
+
+	reg = dsps_readl(ctrl_base, wrp->mode);
+
+	switch (mode) {
+	case MUSB_HOST:
+		reg &= ~(1 << wrp->iddig);
+
+		/*
+		 * if we're setting mode to host-only or device-only, we're
+		 * going to ignore whatever the PHY sends us and just force
+		 * ID pin status by SW
+		 */
+		reg |= (1 << wrp->iddig_mux);
+
+		dsps_writel(ctrl_base, wrp->mode, reg);
+		dsps_writel(ctrl_base, wrp->phy_utmi, 0x02);
+		break;
+	case MUSB_PERIPHERAL:
+		reg |= (1 << wrp->iddig);
+
+		/*
+		 * if we're setting mode to host-only or device-only, we're
+		 * going to ignore whatever the PHY sends us and just force
+		 * ID pin status by SW
+		 */
+		reg |= (1 << wrp->iddig_mux);
+
+		dsps_writel(ctrl_base, wrp->mode, reg);
+		break;
+	case MUSB_OTG:
+		dsps_writel(ctrl_base, wrp->phy_utmi, 0x02);
+		break;
+	default:
+		dev_err(glue->dev, "unsupported mode %d\n", mode);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static bool  sw_babble_control(struct musb *musb)
+{
+	u8 babble_ctl;
+	bool session_restart =  false;
+
+	babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
+	dev_dbg(musb->controller, "babble: MUSB_BABBLE_CTL value %x\n",
+		babble_ctl);
+	/*
+	 * check line monitor flag to check whether babble is
+	 * due to noise
+	 */
+	dev_dbg(musb->controller, "STUCK_J is %s\n",
+		babble_ctl & MUSB_BABBLE_STUCK_J ? "set" : "reset");
+
+	if (babble_ctl & MUSB_BABBLE_STUCK_J) {
+		int timeout = 10;
+
+		/*
+		 * babble is due to noise, then set transmit idle (d7 bit)
+		 * to resume normal operation
+		 */
+		babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
+		babble_ctl |= MUSB_BABBLE_FORCE_TXIDLE;
+		dsps_writeb(musb->mregs, MUSB_BABBLE_CTL, babble_ctl);
+
+		/* wait till line monitor flag cleared */
+		dev_dbg(musb->controller, "Set TXIDLE, wait J to clear\n");
+		do {
+			babble_ctl = dsps_readb(musb->mregs, MUSB_BABBLE_CTL);
+			udelay(1);
+		} while ((babble_ctl & MUSB_BABBLE_STUCK_J) && timeout--);
+
+		/* check whether stuck_at_j bit cleared */
+		if (babble_ctl & MUSB_BABBLE_STUCK_J) {
+			/*
+			 * real babble condition has occurred
+			 * restart the controller to start the
+			 * session again
+			 */
+			dev_dbg(musb->controller, "J not cleared, misc (%x)\n",
+				babble_ctl);
+			session_restart = true;
+		}
+	} else {
+		session_restart = true;
+	}
+
+	return session_restart;
+}
+
+static int dsps_musb_reset(struct musb *musb)
+{
+	struct device *dev = musb->controller;
+	struct dsps_glue *glue = dev_get_drvdata(dev->parent);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	int session_restart = 0;
+
+	if (glue->sw_babble_enabled)
+		session_restart = sw_babble_control(musb);
+	/*
+	 * In case of new silicon version babble condition can be recovered
+	 * without resetting the MUSB. But for older silicon versions, MUSB
+	 * reset is needed
+	 */
+	if (session_restart || !glue->sw_babble_enabled) {
+		dev_info(musb->controller, "Restarting MUSB to recover from Babble\n");
+		dsps_writel(musb->ctrl_base, wrp->control, (1 << wrp->reset));
+		usleep_range(100, 200);
+		usb_phy_shutdown(musb->xceiv);
+		usleep_range(100, 200);
+		usb_phy_init(musb->xceiv);
+		session_restart = 1;
+	}
+
+	return !session_restart;
+}
+
+static struct musb_platform_ops dsps_ops = {
+	.init		= dsps_musb_init,
+	.exit		= dsps_musb_exit,
+
+	.enable		= dsps_musb_enable,
+	.disable	= dsps_musb_disable,
+
+	.try_idle	= dsps_musb_try_idle,
+	.set_mode	= dsps_musb_set_mode,
+	.reset		= dsps_musb_reset,
+};
+
+static u64 musb_dmamask = DMA_BIT_MASK(32);
+
+static int get_int_prop(struct device_node *dn, const char *s)
+{
+	int ret;
+	u32 val;
+
+	ret = of_property_read_u32(dn, s, &val);
+	if (ret)
+		return 0;
+	return val;
+}
+
+static int get_musb_port_mode(struct device *dev)
+{
+	enum usb_dr_mode mode;
+
+	mode = of_usb_get_dr_mode(dev->of_node);
+	switch (mode) {
+	case USB_DR_MODE_HOST:
+		return MUSB_PORT_MODE_HOST;
+
+	case USB_DR_MODE_PERIPHERAL:
+		return MUSB_PORT_MODE_GADGET;
+
+	case USB_DR_MODE_UNKNOWN:
+	case USB_DR_MODE_OTG:
+	default:
+		return MUSB_PORT_MODE_DUAL_ROLE;
+	}
+}
+
+static int dsps_create_musb_pdev(struct dsps_glue *glue,
+		struct platform_device *parent)
+{
+	struct musb_hdrc_platform_data pdata;
+	struct resource	resources[2];
+	struct resource	*res;
+	struct device *dev = &parent->dev;
+	struct musb_hdrc_config	*config;
+	struct platform_device *musb;
+	struct device_node *dn = parent->dev.of_node;
+	int ret;
+
+	memset(resources, 0, sizeof(resources));
+	res = platform_get_resource_byname(parent, IORESOURCE_MEM, "mc");
+	if (!res) {
+		dev_err(dev, "failed to get memory.\n");
+		return -EINVAL;
+	}
+	resources[0] = *res;
+
+	res = platform_get_resource_byname(parent, IORESOURCE_IRQ, "mc");
+	if (!res) {
+		dev_err(dev, "failed to get irq.\n");
+		return -EINVAL;
+	}
+	resources[1] = *res;
+
+	/* allocate the child platform device */
+	musb = platform_device_alloc("musb-hdrc", PLATFORM_DEVID_AUTO);
+	if (!musb) {
+		dev_err(dev, "failed to allocate musb device\n");
+		return -ENOMEM;
+	}
+
+	musb->dev.parent		= dev;
+	musb->dev.dma_mask		= &musb_dmamask;
+	musb->dev.coherent_dma_mask	= musb_dmamask;
+	musb->dev.of_node		= of_node_get(dn);
+
+	glue->musb = musb;
+
+	ret = platform_device_add_resources(musb, resources,
+			ARRAY_SIZE(resources));
+	if (ret) {
+		dev_err(dev, "failed to add resources\n");
+		goto err;
+	}
+
+	config = devm_kzalloc(&parent->dev, sizeof(*config), GFP_KERNEL);
+	if (!config) {
+		dev_err(dev, "failed to allocate musb hdrc config\n");
+		ret = -ENOMEM;
+		goto err;
+	}
+	pdata.config = config;
+	pdata.platform_ops = &dsps_ops;
+
+	config->num_eps = get_int_prop(dn, "mentor,num-eps");
+	config->ram_bits = get_int_prop(dn, "mentor,ram-bits");
+	config->host_port_deassert_reset_at_resume = 1;
+	pdata.mode = get_musb_port_mode(dev);
+	/* DT keeps this entry in mA, musb expects it as per USB spec */
+	pdata.power = get_int_prop(dn, "mentor,power") / 2;
+	config->multipoint = of_property_read_bool(dn, "mentor,multipoint");
+
+	ret = platform_device_add_data(musb, &pdata, sizeof(pdata));
+	if (ret) {
+		dev_err(dev, "failed to add platform_data\n");
+		goto err;
+	}
+
+	ret = platform_device_add(musb);
+	if (ret) {
+		dev_err(dev, "failed to register musb device\n");
+		goto err;
+	}
+	return 0;
+
+err:
+	platform_device_put(musb);
+	return ret;
+}
+
+static int dsps_probe(struct platform_device *pdev)
+{
+	const struct of_device_id *match;
+	const struct dsps_musb_wrapper *wrp;
+	struct dsps_glue *glue;
+	int ret;
+
+	if (!strcmp(pdev->name, "musb-hdrc"))
+		return -ENODEV;
+
+	match = of_match_node(musb_dsps_of_match, pdev->dev.of_node);
+	if (!match) {
+		dev_err(&pdev->dev, "fail to get matching of_match struct\n");
+		return -EINVAL;
+	}
+	wrp = match->data;
+
+	/* allocate glue */
+	glue = devm_kzalloc(&pdev->dev, sizeof(*glue), GFP_KERNEL);
+	if (!glue) {
+		dev_err(&pdev->dev, "unable to allocate glue memory\n");
+		return -ENOMEM;
+	}
+
+	glue->dev = &pdev->dev;
+	glue->wrp = wrp;
+
+	platform_set_drvdata(pdev, glue);
+	pm_runtime_enable(&pdev->dev);
+
+	ret = pm_runtime_get_sync(&pdev->dev);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "pm_runtime_get_sync FAILED");
+		goto err2;
+	}
+
+	ret = dsps_create_musb_pdev(glue, pdev);
+	if (ret)
+		goto err3;
+
+	return 0;
+
+err3:
+	pm_runtime_put(&pdev->dev);
+err2:
+	pm_runtime_disable(&pdev->dev);
+	return ret;
+}
+
+static int dsps_remove(struct platform_device *pdev)
+{
+	struct dsps_glue *glue = platform_get_drvdata(pdev);
+
+	platform_device_unregister(glue->musb);
+
+	/* disable usbss clocks */
+	pm_runtime_put(&pdev->dev);
+	pm_runtime_disable(&pdev->dev);
+
+	return 0;
+}
+
+static const struct dsps_musb_wrapper am33xx_driver_data = {
+	.revision		= 0x00,
+	.control		= 0x14,
+	.status			= 0x18,
+	.epintr_set		= 0x38,
+	.epintr_clear		= 0x40,
+	.epintr_status		= 0x30,
+	.coreintr_set		= 0x3c,
+	.coreintr_clear		= 0x44,
+	.coreintr_status	= 0x34,
+	.phy_utmi		= 0xe0,
+	.mode			= 0xe8,
+	.tx_mode		= 0x70,
+	.rx_mode		= 0x74,
+	.reset			= 0,
+	.otg_disable		= 21,
+	.iddig			= 8,
+	.iddig_mux		= 7,
+	.usb_shift		= 0,
+	.usb_mask		= 0x1ff,
+	.usb_bitmap		= (0x1ff << 0),
+	.drvvbus		= 8,
+	.txep_shift		= 0,
+	.txep_mask		= 0xffff,
+	.txep_bitmap		= (0xffff << 0),
+	.rxep_shift		= 16,
+	.rxep_mask		= 0xfffe,
+	.rxep_bitmap		= (0xfffe << 16),
+	.poll_seconds		= 2,
+};
+
+static const struct of_device_id musb_dsps_of_match[] = {
+	{ .compatible = "ti,musb-am33xx",
+		.data = (void *) &am33xx_driver_data, },
+	{  },
+};
+MODULE_DEVICE_TABLE(of, musb_dsps_of_match);
+
+#ifdef CONFIG_PM_SLEEP
+static int dsps_suspend(struct device *dev)
+{
+	struct dsps_glue *glue = dev_get_drvdata(dev);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	struct musb *musb = platform_get_drvdata(glue->musb);
+	void __iomem *mbase = musb->ctrl_base;
+
+	glue->context.control = dsps_readl(mbase, wrp->control);
+	glue->context.epintr = dsps_readl(mbase, wrp->epintr_set);
+	glue->context.coreintr = dsps_readl(mbase, wrp->coreintr_set);
+	glue->context.phy_utmi = dsps_readl(mbase, wrp->phy_utmi);
+	glue->context.mode = dsps_readl(mbase, wrp->mode);
+	glue->context.tx_mode = dsps_readl(mbase, wrp->tx_mode);
+	glue->context.rx_mode = dsps_readl(mbase, wrp->rx_mode);
+
+	return 0;
+}
+
+static int dsps_resume(struct device *dev)
+{
+	struct dsps_glue *glue = dev_get_drvdata(dev);
+	const struct dsps_musb_wrapper *wrp = glue->wrp;
+	struct musb *musb = platform_get_drvdata(glue->musb);
+	void __iomem *mbase = musb->ctrl_base;
+
+	dsps_writel(mbase, wrp->control, glue->context.control);
+	dsps_writel(mbase, wrp->epintr_set, glue->context.epintr);
+	dsps_writel(mbase, wrp->coreintr_set, glue->context.coreintr);
+	dsps_writel(mbase, wrp->phy_utmi, glue->context.phy_utmi);
+	dsps_writel(mbase, wrp->mode, glue->context.mode);
+	dsps_writel(mbase, wrp->tx_mode, glue->context.tx_mode);
+	dsps_writel(mbase, wrp->rx_mode, glue->context.rx_mode);
+
+	return 0;
+}
+#endif
+
+static SIMPLE_DEV_PM_OPS(dsps_pm_ops, dsps_suspend, dsps_resume);
+
+static struct platform_driver dsps_usbss_driver = {
+	.probe		= dsps_probe,
+	.remove         = dsps_remove,
+	.driver         = {
+		.name   = "musb-dsps",
+		.pm	= &dsps_pm_ops,
+		.of_match_table	= musb_dsps_of_match,
+	},
+};
+
+MODULE_DESCRIPTION("TI DSPS MUSB Glue Layer");
+MODULE_AUTHOR("Ravi B <ravibabu@ti.com>");
+MODULE_AUTHOR("Ajay Kumar Gupta <ajay.gupta@ti.com>");
+MODULE_LICENSE("GPL v2");
+
+module_platform_driver(dsps_usbss_driver);
diff --git a/drivers/usb/musb/musb_gadget.c b/drivers/usb/musb/musb_gadget.c
new file mode 100644
index 0000000..d4aa779
--- /dev/null
+++ b/drivers/usb/musb/musb_gadget.c
@@ -0,0 +1,2140 @@
+/*
+ * MUSB OTG driver peripheral support
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ * Copyright (C) 2009 MontaVista Software, Inc. <source@mvista.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/timer.h>
+#include <linux/module.h>
+#include <linux/smp.h>
+#include <linux/spinlock.h>
+#include <linux/delay.h>
+#include <linux/dma-mapping.h>
+#include <linux/slab.h>
+
+#include "musb_core.h"
+
+
+/* ----------------------------------------------------------------------- */
+
+#define is_buffer_mapped(req) (is_dma_capable() && \
+					(req->map_state != UN_MAPPED))
+
+/* Maps the buffer to dma  */
+
+static inline void map_dma_buffer(struct musb_request *request,
+			struct musb *musb, struct musb_ep *musb_ep)
+{
+	int compatible = true;
+	struct dma_controller *dma = musb->dma_controller;
+
+	request->map_state = UN_MAPPED;
+
+	if (!is_dma_capable() || !musb_ep->dma)
+		return;
+
+	/* Check if DMA engine can handle this request.
+	 * DMA code must reject the USB request explicitly.
+	 * Default behaviour is to map the request.
+	 */
+	if (dma->is_compatible)
+		compatible = dma->is_compatible(musb_ep->dma,
+				musb_ep->packet_sz, request->request.buf,
+				request->request.length);
+	if (!compatible)
+		return;
+
+	if (request->request.dma == DMA_ADDR_INVALID) {
+		dma_addr_t dma_addr;
+		int ret;
+
+		dma_addr = dma_map_single(
+				musb->controller,
+				request->request.buf,
+				request->request.length,
+				request->tx
+					? DMA_TO_DEVICE
+					: DMA_FROM_DEVICE);
+		ret = dma_mapping_error(musb->controller, dma_addr);
+		if (ret)
+			return;
+
+		request->request.dma = dma_addr;
+		request->map_state = MUSB_MAPPED;
+	} else {
+		dma_sync_single_for_device(musb->controller,
+			request->request.dma,
+			request->request.length,
+			request->tx
+				? DMA_TO_DEVICE
+				: DMA_FROM_DEVICE);
+		request->map_state = PRE_MAPPED;
+	}
+}
+
+/* Unmap the buffer from dma and maps it back to cpu */
+static inline void unmap_dma_buffer(struct musb_request *request,
+				struct musb *musb)
+{
+	struct musb_ep *musb_ep = request->ep;
+
+	if (!is_buffer_mapped(request) || !musb_ep->dma)
+		return;
+
+	if (request->request.dma == DMA_ADDR_INVALID) {
+		dev_vdbg(musb->controller,
+				"not unmapping a never mapped buffer\n");
+		return;
+	}
+	if (request->map_state == MUSB_MAPPED) {
+		dma_unmap_single(musb->controller,
+			request->request.dma,
+			request->request.length,
+			request->tx
+				? DMA_TO_DEVICE
+				: DMA_FROM_DEVICE);
+		request->request.dma = DMA_ADDR_INVALID;
+	} else { /* PRE_MAPPED */
+		dma_sync_single_for_cpu(musb->controller,
+			request->request.dma,
+			request->request.length,
+			request->tx
+				? DMA_TO_DEVICE
+				: DMA_FROM_DEVICE);
+	}
+	request->map_state = UN_MAPPED;
+}
+
+/*
+ * Immediately complete a request.
+ *
+ * @param request the request to complete
+ * @param status the status to complete the request with
+ * Context: controller locked, IRQs blocked.
+ */
+void musb_g_giveback(
+	struct musb_ep		*ep,
+	struct usb_request	*request,
+	int			status)
+__releases(ep->musb->lock)
+__acquires(ep->musb->lock)
+{
+	struct musb_request	*req;
+	struct musb		*musb;
+	int			busy = ep->busy;
+
+	req = to_musb_request(request);
+
+	list_del(&req->list);
+	if (req->request.status == -EINPROGRESS)
+		req->request.status = status;
+	musb = req->musb;
+
+	ep->busy = 1;
+	spin_unlock(&musb->lock);
+
+	if (!dma_mapping_error(&musb->g.dev, request->dma))
+		unmap_dma_buffer(req, musb);
+
+	if (request->status == 0)
+		dev_dbg(musb->controller, "%s done request %p,  %d/%d\n",
+				ep->end_point.name, request,
+				req->request.actual, req->request.length);
+	else
+		dev_dbg(musb->controller, "%s request %p, %d/%d fault %d\n",
+				ep->end_point.name, request,
+				req->request.actual, req->request.length,
+				request->status);
+	req->request.complete(&req->ep->end_point, &req->request);
+	spin_lock(&musb->lock);
+	ep->busy = busy;
+}
+
+/* ----------------------------------------------------------------------- */
+
+/*
+ * Abort requests queued to an endpoint using the status. Synchronous.
+ * caller locked controller and blocked irqs, and selected this ep.
+ */
+static void nuke(struct musb_ep *ep, const int status)
+{
+	struct musb		*musb = ep->musb;
+	struct musb_request	*req = NULL;
+	void __iomem *epio = ep->musb->endpoints[ep->current_epnum].regs;
+
+	ep->busy = 1;
+
+	if (is_dma_capable() && ep->dma) {
+		struct dma_controller	*c = ep->musb->dma_controller;
+		int value;
+
+		if (ep->is_in) {
+			/*
+			 * The programming guide says that we must not clear
+			 * the DMAMODE bit before DMAENAB, so we only
+			 * clear it in the second write...
+			 */
+			musb_writew(epio, MUSB_TXCSR,
+				    MUSB_TXCSR_DMAMODE | MUSB_TXCSR_FLUSHFIFO);
+			musb_writew(epio, MUSB_TXCSR,
+					0 | MUSB_TXCSR_FLUSHFIFO);
+		} else {
+			musb_writew(epio, MUSB_RXCSR,
+					0 | MUSB_RXCSR_FLUSHFIFO);
+			musb_writew(epio, MUSB_RXCSR,
+					0 | MUSB_RXCSR_FLUSHFIFO);
+		}
+
+		value = c->channel_abort(ep->dma);
+		dev_dbg(musb->controller, "%s: abort DMA --> %d\n",
+				ep->name, value);
+		c->channel_release(ep->dma);
+		ep->dma = NULL;
+	}
+
+	while (!list_empty(&ep->req_list)) {
+		req = list_first_entry(&ep->req_list, struct musb_request, list);
+		musb_g_giveback(ep, &req->request, status);
+	}
+}
+
+/* ----------------------------------------------------------------------- */
+
+/* Data transfers - pure PIO, pure DMA, or mixed mode */
+
+/*
+ * This assumes the separate CPPI engine is responding to DMA requests
+ * from the usb core ... sequenced a bit differently from mentor dma.
+ */
+
+static inline int max_ep_writesize(struct musb *musb, struct musb_ep *ep)
+{
+	if (can_bulk_split(musb, ep->type))
+		return ep->hw_ep->max_packet_sz_tx;
+	else
+		return ep->packet_sz;
+}
+
+/*
+ * An endpoint is transmitting data. This can be called either from
+ * the IRQ routine or from ep.queue() to kickstart a request on an
+ * endpoint.
+ *
+ * Context: controller locked, IRQs blocked, endpoint selected
+ */
+static void txstate(struct musb *musb, struct musb_request *req)
+{
+	u8			epnum = req->epnum;
+	struct musb_ep		*musb_ep;
+	void __iomem		*epio = musb->endpoints[epnum].regs;
+	struct usb_request	*request;
+	u16			fifo_count = 0, csr;
+	int			use_dma = 0;
+
+	musb_ep = req->ep;
+
+	/* Check if EP is disabled */
+	if (!musb_ep->desc) {
+		dev_dbg(musb->controller, "ep:%s disabled - ignore request\n",
+						musb_ep->end_point.name);
+		return;
+	}
+
+	/* we shouldn't get here while DMA is active ... but we do ... */
+	if (dma_channel_status(musb_ep->dma) == MUSB_DMA_STATUS_BUSY) {
+		dev_dbg(musb->controller, "dma pending...\n");
+		return;
+	}
+
+	/* read TXCSR before */
+	csr = musb_readw(epio, MUSB_TXCSR);
+
+	request = &req->request;
+	fifo_count = min(max_ep_writesize(musb, musb_ep),
+			(int)(request->length - request->actual));
+
+	if (csr & MUSB_TXCSR_TXPKTRDY) {
+		dev_dbg(musb->controller, "%s old packet still ready , txcsr %03x\n",
+				musb_ep->end_point.name, csr);
+		return;
+	}
+
+	if (csr & MUSB_TXCSR_P_SENDSTALL) {
+		dev_dbg(musb->controller, "%s stalling, txcsr %03x\n",
+				musb_ep->end_point.name, csr);
+		return;
+	}
+
+	dev_dbg(musb->controller, "hw_ep%d, maxpacket %d, fifo count %d, txcsr %03x\n",
+			epnum, musb_ep->packet_sz, fifo_count,
+			csr);
+
+#ifndef	CONFIG_MUSB_PIO_ONLY
+	if (is_buffer_mapped(req)) {
+		struct dma_controller	*c = musb->dma_controller;
+		size_t request_size;
+
+		/* setup DMA, then program endpoint CSR */
+		request_size = min_t(size_t, request->length - request->actual,
+					musb_ep->dma->max_len);
+
+		use_dma = (request->dma != DMA_ADDR_INVALID && request_size);
+
+		/* MUSB_TXCSR_P_ISO is still set correctly */
+
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
+		{
+			if (request_size < musb_ep->packet_sz)
+				musb_ep->dma->desired_mode = 0;
+			else
+				musb_ep->dma->desired_mode = 1;
+
+			use_dma = use_dma && c->channel_program(
+					musb_ep->dma, musb_ep->packet_sz,
+					musb_ep->dma->desired_mode,
+					request->dma + request->actual, request_size);
+			if (use_dma) {
+				if (musb_ep->dma->desired_mode == 0) {
+					/*
+					 * We must not clear the DMAMODE bit
+					 * before the DMAENAB bit -- and the
+					 * latter doesn't always get cleared
+					 * before we get here...
+					 */
+					csr &= ~(MUSB_TXCSR_AUTOSET
+						| MUSB_TXCSR_DMAENAB);
+					musb_writew(epio, MUSB_TXCSR, csr
+						| MUSB_TXCSR_P_WZC_BITS);
+					csr &= ~MUSB_TXCSR_DMAMODE;
+					csr |= (MUSB_TXCSR_DMAENAB |
+							MUSB_TXCSR_MODE);
+					/* against programming guide */
+				} else {
+					csr |= (MUSB_TXCSR_DMAENAB
+							| MUSB_TXCSR_DMAMODE
+							| MUSB_TXCSR_MODE);
+					/*
+					 * Enable Autoset according to table
+					 * below
+					 * bulk_split hb_mult	Autoset_Enable
+					 *	0	0	Yes(Normal)
+					 *	0	>0	No(High BW ISO)
+					 *	1	0	Yes(HS bulk)
+					 *	1	>0	Yes(FS bulk)
+					 */
+					if (!musb_ep->hb_mult ||
+						(musb_ep->hb_mult &&
+						 can_bulk_split(musb,
+						    musb_ep->type)))
+						csr |= MUSB_TXCSR_AUTOSET;
+				}
+				csr &= ~MUSB_TXCSR_P_UNDERRUN;
+
+				musb_writew(epio, MUSB_TXCSR, csr);
+			}
+		}
+
+#endif
+		if (is_cppi_enabled()) {
+			/* program endpoint CSR first, then setup DMA */
+			csr &= ~(MUSB_TXCSR_P_UNDERRUN | MUSB_TXCSR_TXPKTRDY);
+			csr |= MUSB_TXCSR_DMAENAB | MUSB_TXCSR_DMAMODE |
+				MUSB_TXCSR_MODE;
+			musb_writew(epio, MUSB_TXCSR, (MUSB_TXCSR_P_WZC_BITS &
+						~MUSB_TXCSR_P_UNDERRUN) | csr);
+
+			/* ensure writebuffer is empty */
+			csr = musb_readw(epio, MUSB_TXCSR);
+
+			/*
+			 * NOTE host side sets DMAENAB later than this; both are
+			 * OK since the transfer dma glue (between CPPI and
+			 * Mentor fifos) just tells CPPI it could start. Data
+			 * only moves to the USB TX fifo when both fifos are
+			 * ready.
+			 */
+			/*
+			 * "mode" is irrelevant here; handle terminating ZLPs
+			 * like PIO does, since the hardware RNDIS mode seems
+			 * unreliable except for the
+			 * last-packet-is-already-short case.
+			 */
+			use_dma = use_dma && c->channel_program(
+					musb_ep->dma, musb_ep->packet_sz,
+					0,
+					request->dma + request->actual,
+					request_size);
+			if (!use_dma) {
+				c->channel_release(musb_ep->dma);
+				musb_ep->dma = NULL;
+				csr &= ~MUSB_TXCSR_DMAENAB;
+				musb_writew(epio, MUSB_TXCSR, csr);
+				/* invariant: prequest->buf is non-null */
+			}
+		} else if (tusb_dma_omap())
+			use_dma = use_dma && c->channel_program(
+					musb_ep->dma, musb_ep->packet_sz,
+					request->zero,
+					request->dma + request->actual,
+					request_size);
+	}
+#endif
+
+	if (!use_dma) {
+		/*
+		 * Unmap the dma buffer back to cpu if dma channel
+		 * programming fails
+		 */
+		unmap_dma_buffer(req, musb);
+
+		musb_write_fifo(musb_ep->hw_ep, fifo_count,
+				(u8 *) (request->buf + request->actual));
+		request->actual += fifo_count;
+		csr |= MUSB_TXCSR_TXPKTRDY;
+		csr &= ~MUSB_TXCSR_P_UNDERRUN;
+		musb_writew(epio, MUSB_TXCSR, csr);
+	}
+
+	/* host may already have the data when this message shows... */
+	dev_dbg(musb->controller, "%s TX/IN %s len %d/%d, txcsr %04x, fifo %d/%d\n",
+			musb_ep->end_point.name, use_dma ? "dma" : "pio",
+			request->actual, request->length,
+			musb_readw(epio, MUSB_TXCSR),
+			fifo_count,
+			musb_readw(epio, MUSB_TXMAXP));
+}
+
+/*
+ * FIFO state update (e.g. data ready).
+ * Called from IRQ,  with controller locked.
+ */
+void musb_g_tx(struct musb *musb, u8 epnum)
+{
+	u16			csr;
+	struct musb_request	*req;
+	struct usb_request	*request;
+	u8 __iomem		*mbase = musb->mregs;
+	struct musb_ep		*musb_ep = &musb->endpoints[epnum].ep_in;
+	void __iomem		*epio = musb->endpoints[epnum].regs;
+	struct dma_channel	*dma;
+
+	musb_ep_select(mbase, epnum);
+	req = next_request(musb_ep);
+	request = &req->request;
+
+	csr = musb_readw(epio, MUSB_TXCSR);
+	dev_dbg(musb->controller, "<== %s, txcsr %04x\n", musb_ep->end_point.name, csr);
+
+	dma = is_dma_capable() ? musb_ep->dma : NULL;
+
+	/*
+	 * REVISIT: for high bandwidth, MUSB_TXCSR_P_INCOMPTX
+	 * probably rates reporting as a host error.
+	 */
+	if (csr & MUSB_TXCSR_P_SENTSTALL) {
+		csr |=	MUSB_TXCSR_P_WZC_BITS;
+		csr &= ~MUSB_TXCSR_P_SENTSTALL;
+		musb_writew(epio, MUSB_TXCSR, csr);
+		return;
+	}
+
+	if (csr & MUSB_TXCSR_P_UNDERRUN) {
+		/* We NAKed, no big deal... little reason to care. */
+		csr |=	 MUSB_TXCSR_P_WZC_BITS;
+		csr &= ~(MUSB_TXCSR_P_UNDERRUN | MUSB_TXCSR_TXPKTRDY);
+		musb_writew(epio, MUSB_TXCSR, csr);
+		dev_vdbg(musb->controller, "underrun on ep%d, req %p\n",
+				epnum, request);
+	}
+
+	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+		/*
+		 * SHOULD NOT HAPPEN... has with CPPI though, after
+		 * changing SENDSTALL (and other cases); harmless?
+		 */
+		dev_dbg(musb->controller, "%s dma still busy?\n", musb_ep->end_point.name);
+		return;
+	}
+
+	if (request) {
+		u8	is_dma = 0;
+
+		if (dma && (csr & MUSB_TXCSR_DMAENAB)) {
+			is_dma = 1;
+			csr |= MUSB_TXCSR_P_WZC_BITS;
+			csr &= ~(MUSB_TXCSR_DMAENAB | MUSB_TXCSR_P_UNDERRUN |
+				 MUSB_TXCSR_TXPKTRDY | MUSB_TXCSR_AUTOSET);
+			musb_writew(epio, MUSB_TXCSR, csr);
+			/* Ensure writebuffer is empty. */
+			csr = musb_readw(epio, MUSB_TXCSR);
+			request->actual += musb_ep->dma->actual_len;
+			dev_dbg(musb->controller, "TXCSR%d %04x, DMA off, len %zu, req %p\n",
+				epnum, csr, musb_ep->dma->actual_len, request);
+		}
+
+		/*
+		 * First, maybe a terminating short packet. Some DMA
+		 * engines might handle this by themselves.
+		 */
+		if ((request->zero && request->length
+			&& (request->length % musb_ep->packet_sz == 0)
+			&& (request->actual == request->length))
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
+			|| (is_dma && (!dma->desired_mode ||
+				(request->actual &
+					(musb_ep->packet_sz - 1))))
+#endif
+		) {
+			/*
+			 * On DMA completion, FIFO may not be
+			 * available yet...
+			 */
+			if (csr & MUSB_TXCSR_TXPKTRDY)
+				return;
+
+			dev_dbg(musb->controller, "sending zero pkt\n");
+			musb_writew(epio, MUSB_TXCSR, MUSB_TXCSR_MODE
+					| MUSB_TXCSR_TXPKTRDY);
+			request->zero = 0;
+		}
+
+		if (request->actual == request->length) {
+			musb_g_giveback(musb_ep, request, 0);
+			/*
+			 * In the giveback function the MUSB lock is
+			 * released and acquired after sometime. During
+			 * this time period the INDEX register could get
+			 * changed by the gadget_queue function especially
+			 * on SMP systems. Reselect the INDEX to be sure
+			 * we are reading/modifying the right registers
+			 */
+			musb_ep_select(mbase, epnum);
+			req = musb_ep->desc ? next_request(musb_ep) : NULL;
+			if (!req) {
+				dev_dbg(musb->controller, "%s idle now\n",
+					musb_ep->end_point.name);
+				return;
+			}
+		}
+
+		txstate(musb, req);
+	}
+}
+
+/* ------------------------------------------------------------ */
+
+/*
+ * Context: controller locked, IRQs blocked, endpoint selected
+ */
+static void rxstate(struct musb *musb, struct musb_request *req)
+{
+	const u8		epnum = req->epnum;
+	struct usb_request	*request = &req->request;
+	struct musb_ep		*musb_ep;
+	void __iomem		*epio = musb->endpoints[epnum].regs;
+	unsigned		len = 0;
+	u16			fifo_count;
+	u16			csr = musb_readw(epio, MUSB_RXCSR);
+	struct musb_hw_ep	*hw_ep = &musb->endpoints[epnum];
+	u8			use_mode_1;
+
+	if (hw_ep->is_shared_fifo)
+		musb_ep = &hw_ep->ep_in;
+	else
+		musb_ep = &hw_ep->ep_out;
+
+	fifo_count = musb_ep->packet_sz;
+
+	/* Check if EP is disabled */
+	if (!musb_ep->desc) {
+		dev_dbg(musb->controller, "ep:%s disabled - ignore request\n",
+						musb_ep->end_point.name);
+		return;
+	}
+
+	/* We shouldn't get here while DMA is active, but we do... */
+	if (dma_channel_status(musb_ep->dma) == MUSB_DMA_STATUS_BUSY) {
+		dev_dbg(musb->controller, "DMA pending...\n");
+		return;
+	}
+
+	if (csr & MUSB_RXCSR_P_SENDSTALL) {
+		dev_dbg(musb->controller, "%s stalling, RXCSR %04x\n",
+		    musb_ep->end_point.name, csr);
+		return;
+	}
+
+	if (is_cppi_enabled() && is_buffer_mapped(req)) {
+		struct dma_controller	*c = musb->dma_controller;
+		struct dma_channel	*channel = musb_ep->dma;
+
+		/* NOTE:  CPPI won't actually stop advancing the DMA
+		 * queue after short packet transfers, so this is almost
+		 * always going to run as IRQ-per-packet DMA so that
+		 * faults will be handled correctly.
+		 */
+		if (c->channel_program(channel,
+				musb_ep->packet_sz,
+				!request->short_not_ok,
+				request->dma + request->actual,
+				request->length - request->actual)) {
+
+			/* make sure that if an rxpkt arrived after the irq,
+			 * the cppi engine will be ready to take it as soon
+			 * as DMA is enabled
+			 */
+			csr &= ~(MUSB_RXCSR_AUTOCLEAR
+					| MUSB_RXCSR_DMAMODE);
+			csr |= MUSB_RXCSR_DMAENAB | MUSB_RXCSR_P_WZC_BITS;
+			musb_writew(epio, MUSB_RXCSR, csr);
+			return;
+		}
+	}
+
+	if (csr & MUSB_RXCSR_RXPKTRDY) {
+		fifo_count = musb_readw(epio, MUSB_RXCOUNT);
+
+		/*
+		 * Enable Mode 1 on RX transfers only when short_not_ok flag
+		 * is set. Currently short_not_ok flag is set only from
+		 * file_storage and f_mass_storage drivers
+		 */
+
+		if (request->short_not_ok && fifo_count == musb_ep->packet_sz)
+			use_mode_1 = 1;
+		else
+			use_mode_1 = 0;
+
+		if (request->actual < request->length) {
+#ifdef CONFIG_USB_INVENTRA_DMA
+			if (is_buffer_mapped(req)) {
+				struct dma_controller	*c;
+				struct dma_channel	*channel;
+				int			use_dma = 0;
+				unsigned int transfer_size;
+
+				c = musb->dma_controller;
+				channel = musb_ep->dma;
+
+	/* We use DMA Req mode 0 in rx_csr, and DMA controller operates in
+	 * mode 0 only. So we do not get endpoint interrupts due to DMA
+	 * completion. We only get interrupts from DMA controller.
+	 *
+	 * We could operate in DMA mode 1 if we knew the size of the tranfer
+	 * in advance. For mass storage class, request->length = what the host
+	 * sends, so that'd work.  But for pretty much everything else,
+	 * request->length is routinely more than what the host sends. For
+	 * most these gadgets, end of is signified either by a short packet,
+	 * or filling the last byte of the buffer.  (Sending extra data in
+	 * that last pckate should trigger an overflow fault.)  But in mode 1,
+	 * we don't get DMA completion interrupt for short packets.
+	 *
+	 * Theoretically, we could enable DMAReq irq (MUSB_RXCSR_DMAMODE = 1),
+	 * to get endpoint interrupt on every DMA req, but that didn't seem
+	 * to work reliably.
+	 *
+	 * REVISIT an updated g_file_storage can set req->short_not_ok, which
+	 * then becomes usable as a runtime "use mode 1" hint...
+	 */
+
+				/* Experimental: Mode1 works with mass storage use cases */
+				if (use_mode_1) {
+					csr |= MUSB_RXCSR_AUTOCLEAR;
+					musb_writew(epio, MUSB_RXCSR, csr);
+					csr |= MUSB_RXCSR_DMAENAB;
+					musb_writew(epio, MUSB_RXCSR, csr);
+
+					/*
+					 * this special sequence (enabling and then
+					 * disabling MUSB_RXCSR_DMAMODE) is required
+					 * to get DMAReq to activate
+					 */
+					musb_writew(epio, MUSB_RXCSR,
+						csr | MUSB_RXCSR_DMAMODE);
+					musb_writew(epio, MUSB_RXCSR, csr);
+
+					transfer_size = min_t(unsigned int,
+							request->length -
+							request->actual,
+							channel->max_len);
+					musb_ep->dma->desired_mode = 1;
+				} else {
+					if (!musb_ep->hb_mult &&
+						musb_ep->hw_ep->rx_double_buffered)
+						csr |= MUSB_RXCSR_AUTOCLEAR;
+					csr |= MUSB_RXCSR_DMAENAB;
+					musb_writew(epio, MUSB_RXCSR, csr);
+
+					transfer_size = min(request->length - request->actual,
+							(unsigned)fifo_count);
+					musb_ep->dma->desired_mode = 0;
+				}
+
+				use_dma = c->channel_program(
+						channel,
+						musb_ep->packet_sz,
+						channel->desired_mode,
+						request->dma
+						+ request->actual,
+						transfer_size);
+
+				if (use_dma)
+					return;
+			}
+#elif defined(CONFIG_USB_UX500_DMA)
+			if ((is_buffer_mapped(req)) &&
+				(request->actual < request->length)) {
+
+				struct dma_controller *c;
+				struct dma_channel *channel;
+				unsigned int transfer_size = 0;
+
+				c = musb->dma_controller;
+				channel = musb_ep->dma;
+
+				/* In case first packet is short */
+				if (fifo_count < musb_ep->packet_sz)
+					transfer_size = fifo_count;
+				else if (request->short_not_ok)
+					transfer_size =	min_t(unsigned int,
+							request->length -
+							request->actual,
+							channel->max_len);
+				else
+					transfer_size = min_t(unsigned int,
+							request->length -
+							request->actual,
+							(unsigned)fifo_count);
+
+				csr &= ~MUSB_RXCSR_DMAMODE;
+				csr |= (MUSB_RXCSR_DMAENAB |
+					MUSB_RXCSR_AUTOCLEAR);
+
+				musb_writew(epio, MUSB_RXCSR, csr);
+
+				if (transfer_size <= musb_ep->packet_sz) {
+					musb_ep->dma->desired_mode = 0;
+				} else {
+					musb_ep->dma->desired_mode = 1;
+					/* Mode must be set after DMAENAB */
+					csr |= MUSB_RXCSR_DMAMODE;
+					musb_writew(epio, MUSB_RXCSR, csr);
+				}
+
+				if (c->channel_program(channel,
+							musb_ep->packet_sz,
+							channel->desired_mode,
+							request->dma
+							+ request->actual,
+							transfer_size))
+
+					return;
+			}
+#endif	/* Mentor's DMA */
+
+			len = request->length - request->actual;
+			dev_dbg(musb->controller, "%s OUT/RX pio fifo %d/%d, maxpacket %d\n",
+					musb_ep->end_point.name,
+					fifo_count, len,
+					musb_ep->packet_sz);
+
+			fifo_count = min_t(unsigned, len, fifo_count);
+
+#ifdef	CONFIG_USB_TUSB_OMAP_DMA
+			if (tusb_dma_omap() && is_buffer_mapped(req)) {
+				struct dma_controller *c = musb->dma_controller;
+				struct dma_channel *channel = musb_ep->dma;
+				u32 dma_addr = request->dma + request->actual;
+				int ret;
+
+				ret = c->channel_program(channel,
+						musb_ep->packet_sz,
+						channel->desired_mode,
+						dma_addr,
+						fifo_count);
+				if (ret)
+					return;
+			}
+#endif
+			/*
+			 * Unmap the dma buffer back to cpu if dma channel
+			 * programming fails. This buffer is mapped if the
+			 * channel allocation is successful
+			 */
+			 if (is_buffer_mapped(req)) {
+				unmap_dma_buffer(req, musb);
+
+				/*
+				 * Clear DMAENAB and AUTOCLEAR for the
+				 * PIO mode transfer
+				 */
+				csr &= ~(MUSB_RXCSR_DMAENAB | MUSB_RXCSR_AUTOCLEAR);
+				musb_writew(epio, MUSB_RXCSR, csr);
+			}
+
+			musb_read_fifo(musb_ep->hw_ep, fifo_count, (u8 *)
+					(request->buf + request->actual));
+			request->actual += fifo_count;
+
+			/* REVISIT if we left anything in the fifo, flush
+			 * it and report -EOVERFLOW
+			 */
+
+			/* ack the read! */
+			csr |= MUSB_RXCSR_P_WZC_BITS;
+			csr &= ~MUSB_RXCSR_RXPKTRDY;
+			musb_writew(epio, MUSB_RXCSR, csr);
+		}
+	}
+
+	/* reach the end or short packet detected */
+	if (request->actual == request->length ||
+	    fifo_count < musb_ep->packet_sz)
+		musb_g_giveback(musb_ep, request, 0);
+}
+
+/*
+ * Data ready for a request; called from IRQ
+ */
+void musb_g_rx(struct musb *musb, u8 epnum)
+{
+	u16			csr;
+	struct musb_request	*req;
+	struct usb_request	*request;
+	void __iomem		*mbase = musb->mregs;
+	struct musb_ep		*musb_ep;
+	void __iomem		*epio = musb->endpoints[epnum].regs;
+	struct dma_channel	*dma;
+	struct musb_hw_ep	*hw_ep = &musb->endpoints[epnum];
+
+	if (hw_ep->is_shared_fifo)
+		musb_ep = &hw_ep->ep_in;
+	else
+		musb_ep = &hw_ep->ep_out;
+
+	musb_ep_select(mbase, epnum);
+
+	req = next_request(musb_ep);
+	if (!req)
+		return;
+
+	request = &req->request;
+
+	csr = musb_readw(epio, MUSB_RXCSR);
+	dma = is_dma_capable() ? musb_ep->dma : NULL;
+
+	dev_dbg(musb->controller, "<== %s, rxcsr %04x%s %p\n", musb_ep->end_point.name,
+			csr, dma ? " (dma)" : "", request);
+
+	if (csr & MUSB_RXCSR_P_SENTSTALL) {
+		csr |= MUSB_RXCSR_P_WZC_BITS;
+		csr &= ~MUSB_RXCSR_P_SENTSTALL;
+		musb_writew(epio, MUSB_RXCSR, csr);
+		return;
+	}
+
+	if (csr & MUSB_RXCSR_P_OVERRUN) {
+		/* csr |= MUSB_RXCSR_P_WZC_BITS; */
+		csr &= ~MUSB_RXCSR_P_OVERRUN;
+		musb_writew(epio, MUSB_RXCSR, csr);
+
+		dev_dbg(musb->controller, "%s iso overrun on %p\n", musb_ep->name, request);
+		if (request->status == -EINPROGRESS)
+			request->status = -EOVERFLOW;
+	}
+	if (csr & MUSB_RXCSR_INCOMPRX) {
+		/* REVISIT not necessarily an error */
+		dev_dbg(musb->controller, "%s, incomprx\n", musb_ep->end_point.name);
+	}
+
+	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+		/* "should not happen"; likely RXPKTRDY pending for DMA */
+		dev_dbg(musb->controller, "%s busy, csr %04x\n",
+			musb_ep->end_point.name, csr);
+		return;
+	}
+
+	if (dma && (csr & MUSB_RXCSR_DMAENAB)) {
+		csr &= ~(MUSB_RXCSR_AUTOCLEAR
+				| MUSB_RXCSR_DMAENAB
+				| MUSB_RXCSR_DMAMODE);
+		musb_writew(epio, MUSB_RXCSR,
+			MUSB_RXCSR_P_WZC_BITS | csr);
+
+		request->actual += musb_ep->dma->actual_len;
+
+		dev_dbg(musb->controller, "RXCSR%d %04x, dma off, %04x, len %zu, req %p\n",
+			epnum, csr,
+			musb_readw(epio, MUSB_RXCSR),
+			musb_ep->dma->actual_len, request);
+
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_TUSB_OMAP_DMA) || \
+	defined(CONFIG_USB_UX500_DMA)
+		/* Autoclear doesn't clear RxPktRdy for short packets */
+		if ((dma->desired_mode == 0 && !hw_ep->rx_double_buffered)
+				|| (dma->actual_len
+					& (musb_ep->packet_sz - 1))) {
+			/* ack the read! */
+			csr &= ~MUSB_RXCSR_RXPKTRDY;
+			musb_writew(epio, MUSB_RXCSR, csr);
+		}
+
+		/* incomplete, and not short? wait for next IN packet */
+		if ((request->actual < request->length)
+				&& (musb_ep->dma->actual_len
+					== musb_ep->packet_sz)) {
+			/* In double buffer case, continue to unload fifo if
+ 			 * there is Rx packet in FIFO.
+ 			 **/
+			csr = musb_readw(epio, MUSB_RXCSR);
+			if ((csr & MUSB_RXCSR_RXPKTRDY) &&
+				hw_ep->rx_double_buffered)
+				goto exit;
+			return;
+		}
+#endif
+		musb_g_giveback(musb_ep, request, 0);
+		/*
+		 * In the giveback function the MUSB lock is
+		 * released and acquired after sometime. During
+		 * this time period the INDEX register could get
+		 * changed by the gadget_queue function especially
+		 * on SMP systems. Reselect the INDEX to be sure
+		 * we are reading/modifying the right registers
+		 */
+		musb_ep_select(mbase, epnum);
+
+		req = next_request(musb_ep);
+		if (!req)
+			return;
+	}
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_TUSB_OMAP_DMA) || \
+	defined(CONFIG_USB_UX500_DMA)
+exit:
+#endif
+	/* Analyze request */
+	rxstate(musb, req);
+}
+
+/* ------------------------------------------------------------ */
+
+static int musb_gadget_enable(struct usb_ep *ep,
+			const struct usb_endpoint_descriptor *desc)
+{
+	unsigned long		flags;
+	struct musb_ep		*musb_ep;
+	struct musb_hw_ep	*hw_ep;
+	void __iomem		*regs;
+	struct musb		*musb;
+	void __iomem	*mbase;
+	u8		epnum;
+	u16		csr;
+	unsigned	tmp;
+	int		status = -EINVAL;
+
+	if (!ep || !desc)
+		return -EINVAL;
+
+	musb_ep = to_musb_ep(ep);
+	hw_ep = musb_ep->hw_ep;
+	regs = hw_ep->regs;
+	musb = musb_ep->musb;
+	mbase = musb->mregs;
+	epnum = musb_ep->current_epnum;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	if (musb_ep->desc) {
+		status = -EBUSY;
+		goto fail;
+	}
+	musb_ep->type = usb_endpoint_type(desc);
+
+	/* check direction and (later) maxpacket size against endpoint */
+	if (usb_endpoint_num(desc) != epnum)
+		goto fail;
+
+	/* REVISIT this rules out high bandwidth periodic transfers */
+	tmp = usb_endpoint_maxp(desc);
+	if (tmp & ~0x07ff) {
+		int ok;
+
+		if (usb_endpoint_dir_in(desc))
+			ok = musb->hb_iso_tx;
+		else
+			ok = musb->hb_iso_rx;
+
+		if (!ok) {
+			dev_dbg(musb->controller, "no support for high bandwidth ISO\n");
+			goto fail;
+		}
+		musb_ep->hb_mult = (tmp >> 11) & 3;
+	} else {
+		musb_ep->hb_mult = 0;
+	}
+
+	musb_ep->packet_sz = tmp & 0x7ff;
+	tmp = musb_ep->packet_sz * (musb_ep->hb_mult + 1);
+
+	/* enable the interrupts for the endpoint, set the endpoint
+	 * packet size (or fail), set the mode, clear the fifo
+	 */
+	musb_ep_select(mbase, epnum);
+	if (usb_endpoint_dir_in(desc)) {
+
+		if (hw_ep->is_shared_fifo)
+			musb_ep->is_in = 1;
+		if (!musb_ep->is_in)
+			goto fail;
+
+		if (tmp > hw_ep->max_packet_sz_tx) {
+			dev_dbg(musb->controller, "packet size beyond hardware FIFO size\n");
+			goto fail;
+		}
+
+		musb->intrtxe |= (1 << epnum);
+		musb_writew(mbase, MUSB_INTRTXE, musb->intrtxe);
+
+		/* REVISIT if can_bulk_split(), use by updating "tmp";
+		 * likewise high bandwidth periodic tx
+		 */
+		/* Set TXMAXP with the FIFO size of the endpoint
+		 * to disable double buffering mode.
+		 */
+		if (musb->double_buffer_not_ok) {
+			musb_writew(regs, MUSB_TXMAXP, hw_ep->max_packet_sz_tx);
+		} else {
+			if (can_bulk_split(musb, musb_ep->type))
+				musb_ep->hb_mult = (hw_ep->max_packet_sz_tx /
+							musb_ep->packet_sz) - 1;
+			musb_writew(regs, MUSB_TXMAXP, musb_ep->packet_sz
+					| (musb_ep->hb_mult << 11));
+		}
+
+		csr = MUSB_TXCSR_MODE | MUSB_TXCSR_CLRDATATOG;
+		if (musb_readw(regs, MUSB_TXCSR)
+				& MUSB_TXCSR_FIFONOTEMPTY)
+			csr |= MUSB_TXCSR_FLUSHFIFO;
+		if (musb_ep->type == USB_ENDPOINT_XFER_ISOC)
+			csr |= MUSB_TXCSR_P_ISO;
+
+		/* set twice in case of double buffering */
+		musb_writew(regs, MUSB_TXCSR, csr);
+		/* REVISIT may be inappropriate w/o FIFONOTEMPTY ... */
+		musb_writew(regs, MUSB_TXCSR, csr);
+
+	} else {
+
+		if (hw_ep->is_shared_fifo)
+			musb_ep->is_in = 0;
+		if (musb_ep->is_in)
+			goto fail;
+
+		if (tmp > hw_ep->max_packet_sz_rx) {
+			dev_dbg(musb->controller, "packet size beyond hardware FIFO size\n");
+			goto fail;
+		}
+
+		musb->intrrxe |= (1 << epnum);
+		musb_writew(mbase, MUSB_INTRRXE, musb->intrrxe);
+
+		/* REVISIT if can_bulk_combine() use by updating "tmp"
+		 * likewise high bandwidth periodic rx
+		 */
+		/* Set RXMAXP with the FIFO size of the endpoint
+		 * to disable double buffering mode.
+		 */
+		if (musb->double_buffer_not_ok)
+			musb_writew(regs, MUSB_RXMAXP, hw_ep->max_packet_sz_tx);
+		else
+			musb_writew(regs, MUSB_RXMAXP, musb_ep->packet_sz
+					| (musb_ep->hb_mult << 11));
+
+		/* force shared fifo to OUT-only mode */
+		if (hw_ep->is_shared_fifo) {
+			csr = musb_readw(regs, MUSB_TXCSR);
+			csr &= ~(MUSB_TXCSR_MODE | MUSB_TXCSR_TXPKTRDY);
+			musb_writew(regs, MUSB_TXCSR, csr);
+		}
+
+		csr = MUSB_RXCSR_FLUSHFIFO | MUSB_RXCSR_CLRDATATOG;
+		if (musb_ep->type == USB_ENDPOINT_XFER_ISOC)
+			csr |= MUSB_RXCSR_P_ISO;
+		else if (musb_ep->type == USB_ENDPOINT_XFER_INT)
+			csr |= MUSB_RXCSR_DISNYET;
+
+		/* set twice in case of double buffering */
+		musb_writew(regs, MUSB_RXCSR, csr);
+		musb_writew(regs, MUSB_RXCSR, csr);
+	}
+
+	/* NOTE:  all the I/O code _should_ work fine without DMA, in case
+	 * for some reason you run out of channels here.
+	 */
+	if (is_dma_capable() && musb->dma_controller) {
+		struct dma_controller	*c = musb->dma_controller;
+
+		musb_ep->dma = c->channel_alloc(c, hw_ep,
+				(desc->bEndpointAddress & USB_DIR_IN));
+	} else
+		musb_ep->dma = NULL;
+
+	musb_ep->desc = desc;
+	musb_ep->busy = 0;
+	musb_ep->wedged = 0;
+	status = 0;
+
+	pr_debug("%s periph: enabled %s for %s %s, %smaxpacket %d\n",
+			musb_driver_name, musb_ep->end_point.name,
+			({ char *s; switch (musb_ep->type) {
+			case USB_ENDPOINT_XFER_BULK:	s = "bulk"; break;
+			case USB_ENDPOINT_XFER_INT:	s = "int"; break;
+			default:			s = "iso"; break;
+			} s; }),
+			musb_ep->is_in ? "IN" : "OUT",
+			musb_ep->dma ? "dma, " : "",
+			musb_ep->packet_sz);
+
+	schedule_work(&musb->irq_work);
+
+fail:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return status;
+}
+
+/*
+ * Disable an endpoint flushing all requests queued.
+ */
+static int musb_gadget_disable(struct usb_ep *ep)
+{
+	unsigned long	flags;
+	struct musb	*musb;
+	u8		epnum;
+	struct musb_ep	*musb_ep;
+	void __iomem	*epio;
+	int		status = 0;
+
+	musb_ep = to_musb_ep(ep);
+	musb = musb_ep->musb;
+	epnum = musb_ep->current_epnum;
+	epio = musb->endpoints[epnum].regs;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	musb_ep_select(musb->mregs, epnum);
+
+	/* zero the endpoint sizes */
+	if (musb_ep->is_in) {
+		musb->intrtxe &= ~(1 << epnum);
+		musb_writew(musb->mregs, MUSB_INTRTXE, musb->intrtxe);
+		musb_writew(epio, MUSB_TXMAXP, 0);
+	} else {
+		musb->intrrxe &= ~(1 << epnum);
+		musb_writew(musb->mregs, MUSB_INTRRXE, musb->intrrxe);
+		musb_writew(epio, MUSB_RXMAXP, 0);
+	}
+
+	musb_ep->desc = NULL;
+	musb_ep->end_point.desc = NULL;
+
+	/* abort all pending DMA and requests */
+	nuke(musb_ep, -ESHUTDOWN);
+
+	schedule_work(&musb->irq_work);
+
+	spin_unlock_irqrestore(&(musb->lock), flags);
+
+	dev_dbg(musb->controller, "%s\n", musb_ep->end_point.name);
+
+	return status;
+}
+
+/*
+ * Allocate a request for an endpoint.
+ * Reused by ep0 code.
+ */
+struct usb_request *musb_alloc_request(struct usb_ep *ep, gfp_t gfp_flags)
+{
+	struct musb_ep		*musb_ep = to_musb_ep(ep);
+	struct musb		*musb = musb_ep->musb;
+	struct musb_request	*request = NULL;
+
+	request = kzalloc(sizeof *request, gfp_flags);
+	if (!request) {
+		dev_dbg(musb->controller, "not enough memory\n");
+		return NULL;
+	}
+
+	request->request.dma = DMA_ADDR_INVALID;
+	request->epnum = musb_ep->current_epnum;
+	request->ep = musb_ep;
+
+	return &request->request;
+}
+
+/*
+ * Free a request
+ * Reused by ep0 code.
+ */
+void musb_free_request(struct usb_ep *ep, struct usb_request *req)
+{
+	kfree(to_musb_request(req));
+}
+
+static LIST_HEAD(buffers);
+
+struct free_record {
+	struct list_head	list;
+	struct device		*dev;
+	unsigned		bytes;
+	dma_addr_t		dma;
+};
+
+/*
+ * Context: controller locked, IRQs blocked.
+ */
+void musb_ep_restart(struct musb *musb, struct musb_request *req)
+{
+	dev_dbg(musb->controller, "<== %s request %p len %u on hw_ep%d\n",
+		req->tx ? "TX/IN" : "RX/OUT",
+		&req->request, req->request.length, req->epnum);
+
+	musb_ep_select(musb->mregs, req->epnum);
+	if (req->tx)
+		txstate(musb, req);
+	else
+		rxstate(musb, req);
+}
+
+static int musb_gadget_queue(struct usb_ep *ep, struct usb_request *req,
+			gfp_t gfp_flags)
+{
+	struct musb_ep		*musb_ep;
+	struct musb_request	*request;
+	struct musb		*musb;
+	int			status = 0;
+	unsigned long		lockflags;
+
+	if (!ep || !req)
+		return -EINVAL;
+	if (!req->buf)
+		return -ENODATA;
+
+	musb_ep = to_musb_ep(ep);
+	musb = musb_ep->musb;
+
+	request = to_musb_request(req);
+	request->musb = musb;
+
+	if (request->ep != musb_ep)
+		return -EINVAL;
+
+	dev_dbg(musb->controller, "<== to %s request=%p\n", ep->name, req);
+
+	/* request is mine now... */
+	request->request.actual = 0;
+	request->request.status = -EINPROGRESS;
+	request->epnum = musb_ep->current_epnum;
+	request->tx = musb_ep->is_in;
+
+	map_dma_buffer(request, musb, musb_ep);
+
+	spin_lock_irqsave(&musb->lock, lockflags);
+
+	/* don't queue if the ep is down */
+	if (!musb_ep->desc) {
+		dev_dbg(musb->controller, "req %p queued to %s while ep %s\n",
+				req, ep->name, "disabled");
+		status = -ESHUTDOWN;
+		unmap_dma_buffer(request, musb);
+		goto unlock;
+	}
+
+	/* add request to the list */
+	list_add_tail(&request->list, &musb_ep->req_list);
+
+	/* it this is the head of the queue, start i/o ... */
+	if (!musb_ep->busy && &request->list == musb_ep->req_list.next)
+		musb_ep_restart(musb, request);
+
+unlock:
+	spin_unlock_irqrestore(&musb->lock, lockflags);
+	return status;
+}
+
+static int musb_gadget_dequeue(struct usb_ep *ep, struct usb_request *request)
+{
+	struct musb_ep		*musb_ep = to_musb_ep(ep);
+	struct musb_request	*req = to_musb_request(request);
+	struct musb_request	*r;
+	unsigned long		flags;
+	int			status = 0;
+	struct musb		*musb = musb_ep->musb;
+
+	if (!ep || !request || to_musb_request(request)->ep != musb_ep)
+		return -EINVAL;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	list_for_each_entry(r, &musb_ep->req_list, list) {
+		if (r == req)
+			break;
+	}
+	if (r != req) {
+		dev_dbg(musb->controller, "request %p not queued to %s\n", request, ep->name);
+		status = -EINVAL;
+		goto done;
+	}
+
+	/* if the hardware doesn't have the request, easy ... */
+	if (musb_ep->req_list.next != &req->list || musb_ep->busy)
+		musb_g_giveback(musb_ep, request, -ECONNRESET);
+
+	/* ... else abort the dma transfer ... */
+	else if (is_dma_capable() && musb_ep->dma) {
+		struct dma_controller	*c = musb->dma_controller;
+
+		musb_ep_select(musb->mregs, musb_ep->current_epnum);
+		if (c->channel_abort)
+			status = c->channel_abort(musb_ep->dma);
+		else
+			status = -EBUSY;
+		if (status == 0)
+			musb_g_giveback(musb_ep, request, -ECONNRESET);
+	} else {
+		/* NOTE: by sticking to easily tested hardware/driver states,
+		 * we leave counting of in-flight packets imprecise.
+		 */
+		musb_g_giveback(musb_ep, request, -ECONNRESET);
+	}
+
+done:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return status;
+}
+
+/*
+ * Set or clear the halt bit of an endpoint. A halted enpoint won't tx/rx any
+ * data but will queue requests.
+ *
+ * exported to ep0 code
+ */
+static int musb_gadget_set_halt(struct usb_ep *ep, int value)
+{
+	struct musb_ep		*musb_ep = to_musb_ep(ep);
+	u8			epnum = musb_ep->current_epnum;
+	struct musb		*musb = musb_ep->musb;
+	void __iomem		*epio = musb->endpoints[epnum].regs;
+	void __iomem		*mbase;
+	unsigned long		flags;
+	u16			csr;
+	struct musb_request	*request;
+	int			status = 0;
+
+	if (!ep)
+		return -EINVAL;
+	mbase = musb->mregs;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	if ((USB_ENDPOINT_XFER_ISOC == musb_ep->type)) {
+		status = -EINVAL;
+		goto done;
+	}
+
+	musb_ep_select(mbase, epnum);
+
+	request = next_request(musb_ep);
+	if (value) {
+		if (request) {
+			dev_dbg(musb->controller, "request in progress, cannot halt %s\n",
+			    ep->name);
+			status = -EAGAIN;
+			goto done;
+		}
+		/* Cannot portably stall with non-empty FIFO */
+		if (musb_ep->is_in) {
+			csr = musb_readw(epio, MUSB_TXCSR);
+			if (csr & MUSB_TXCSR_FIFONOTEMPTY) {
+				dev_dbg(musb->controller, "FIFO busy, cannot halt %s\n", ep->name);
+				status = -EAGAIN;
+				goto done;
+			}
+		}
+	} else
+		musb_ep->wedged = 0;
+
+	/* set/clear the stall and toggle bits */
+	dev_dbg(musb->controller, "%s: %s stall\n", ep->name, value ? "set" : "clear");
+	if (musb_ep->is_in) {
+		csr = musb_readw(epio, MUSB_TXCSR);
+		csr |= MUSB_TXCSR_P_WZC_BITS
+			| MUSB_TXCSR_CLRDATATOG;
+		if (value)
+			csr |= MUSB_TXCSR_P_SENDSTALL;
+		else
+			csr &= ~(MUSB_TXCSR_P_SENDSTALL
+				| MUSB_TXCSR_P_SENTSTALL);
+		csr &= ~MUSB_TXCSR_TXPKTRDY;
+		musb_writew(epio, MUSB_TXCSR, csr);
+	} else {
+		csr = musb_readw(epio, MUSB_RXCSR);
+		csr |= MUSB_RXCSR_P_WZC_BITS
+			| MUSB_RXCSR_FLUSHFIFO
+			| MUSB_RXCSR_CLRDATATOG;
+		if (value)
+			csr |= MUSB_RXCSR_P_SENDSTALL;
+		else
+			csr &= ~(MUSB_RXCSR_P_SENDSTALL
+				| MUSB_RXCSR_P_SENTSTALL);
+		musb_writew(epio, MUSB_RXCSR, csr);
+	}
+
+	/* maybe start the first request in the queue */
+	if (!musb_ep->busy && !value && request) {
+		dev_dbg(musb->controller, "restarting the request\n");
+		musb_ep_restart(musb, request);
+	}
+
+done:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return status;
+}
+
+/*
+ * Sets the halt feature with the clear requests ignored
+ */
+static int musb_gadget_set_wedge(struct usb_ep *ep)
+{
+	struct musb_ep		*musb_ep = to_musb_ep(ep);
+
+	if (!ep)
+		return -EINVAL;
+
+	musb_ep->wedged = 1;
+
+	return usb_ep_set_halt(ep);
+}
+
+static int musb_gadget_fifo_status(struct usb_ep *ep)
+{
+	struct musb_ep		*musb_ep = to_musb_ep(ep);
+	void __iomem		*epio = musb_ep->hw_ep->regs;
+	int			retval = -EINVAL;
+
+	if (musb_ep->desc && !musb_ep->is_in) {
+		struct musb		*musb = musb_ep->musb;
+		int			epnum = musb_ep->current_epnum;
+		void __iomem		*mbase = musb->mregs;
+		unsigned long		flags;
+
+		spin_lock_irqsave(&musb->lock, flags);
+
+		musb_ep_select(mbase, epnum);
+		/* FIXME return zero unless RXPKTRDY is set */
+		retval = musb_readw(epio, MUSB_RXCOUNT);
+
+		spin_unlock_irqrestore(&musb->lock, flags);
+	}
+	return retval;
+}
+
+static void musb_gadget_fifo_flush(struct usb_ep *ep)
+{
+	struct musb_ep	*musb_ep = to_musb_ep(ep);
+	struct musb	*musb = musb_ep->musb;
+	u8		epnum = musb_ep->current_epnum;
+	void __iomem	*epio = musb->endpoints[epnum].regs;
+	void __iomem	*mbase;
+	unsigned long	flags;
+	u16		csr;
+
+	mbase = musb->mregs;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	musb_ep_select(mbase, (u8) epnum);
+
+	/* disable interrupts */
+	musb_writew(mbase, MUSB_INTRTXE, musb->intrtxe & ~(1 << epnum));
+
+	if (musb_ep->is_in) {
+		csr = musb_readw(epio, MUSB_TXCSR);
+		if (csr & MUSB_TXCSR_FIFONOTEMPTY) {
+			csr |= MUSB_TXCSR_FLUSHFIFO | MUSB_TXCSR_P_WZC_BITS;
+			/*
+			 * Setting both TXPKTRDY and FLUSHFIFO makes controller
+			 * to interrupt current FIFO loading, but not flushing
+			 * the already loaded ones.
+			 */
+			csr &= ~MUSB_TXCSR_TXPKTRDY;
+			musb_writew(epio, MUSB_TXCSR, csr);
+			/* REVISIT may be inappropriate w/o FIFONOTEMPTY ... */
+			musb_writew(epio, MUSB_TXCSR, csr);
+		}
+	} else {
+		csr = musb_readw(epio, MUSB_RXCSR);
+		csr |= MUSB_RXCSR_FLUSHFIFO | MUSB_RXCSR_P_WZC_BITS;
+		musb_writew(epio, MUSB_RXCSR, csr);
+		musb_writew(epio, MUSB_RXCSR, csr);
+	}
+
+	/* re-enable interrupt */
+	musb_writew(mbase, MUSB_INTRTXE, musb->intrtxe);
+	spin_unlock_irqrestore(&musb->lock, flags);
+}
+
+static const struct usb_ep_ops musb_ep_ops = {
+	.enable		= musb_gadget_enable,
+	.disable	= musb_gadget_disable,
+	.alloc_request	= musb_alloc_request,
+	.free_request	= musb_free_request,
+	.queue		= musb_gadget_queue,
+	.dequeue	= musb_gadget_dequeue,
+	.set_halt	= musb_gadget_set_halt,
+	.set_wedge	= musb_gadget_set_wedge,
+	.fifo_status	= musb_gadget_fifo_status,
+	.fifo_flush	= musb_gadget_fifo_flush
+};
+
+/* ----------------------------------------------------------------------- */
+
+static int musb_gadget_get_frame(struct usb_gadget *gadget)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+
+	return (int)musb_readw(musb->mregs, MUSB_FRAME);
+}
+
+static int musb_gadget_wakeup(struct usb_gadget *gadget)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+	void __iomem	*mregs = musb->mregs;
+	unsigned long	flags;
+	int		status = -EINVAL;
+	u8		power, devctl;
+	int		retries;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	switch (musb->xceiv->state) {
+	case OTG_STATE_B_PERIPHERAL:
+		/* NOTE:  OTG state machine doesn't include B_SUSPENDED;
+		 * that's part of the standard usb 1.1 state machine, and
+		 * doesn't affect OTG transitions.
+		 */
+		if (musb->may_wakeup && musb->is_suspended)
+			break;
+		goto done;
+	case OTG_STATE_B_IDLE:
+		/* Start SRP ... OTG not required. */
+		devctl = musb_readb(mregs, MUSB_DEVCTL);
+		dev_dbg(musb->controller, "Sending SRP: devctl: %02x\n", devctl);
+		devctl |= MUSB_DEVCTL_SESSION;
+		musb_writeb(mregs, MUSB_DEVCTL, devctl);
+		devctl = musb_readb(mregs, MUSB_DEVCTL);
+		retries = 100;
+		while (!(devctl & MUSB_DEVCTL_SESSION)) {
+			devctl = musb_readb(mregs, MUSB_DEVCTL);
+			if (retries-- < 1)
+				break;
+		}
+		retries = 10000;
+		while (devctl & MUSB_DEVCTL_SESSION) {
+			devctl = musb_readb(mregs, MUSB_DEVCTL);
+			if (retries-- < 1)
+				break;
+		}
+
+		spin_unlock_irqrestore(&musb->lock, flags);
+		otg_start_srp(musb->xceiv->otg);
+		spin_lock_irqsave(&musb->lock, flags);
+
+		/* Block idling for at least 1s */
+		musb_platform_try_idle(musb,
+			jiffies + msecs_to_jiffies(1 * HZ));
+
+		status = 0;
+		goto done;
+	default:
+		dev_dbg(musb->controller, "Unhandled wake: %s\n",
+			usb_otg_state_string(musb->xceiv->state));
+		goto done;
+	}
+
+	status = 0;
+
+	power = musb_readb(mregs, MUSB_POWER);
+	power |= MUSB_POWER_RESUME;
+	musb_writeb(mregs, MUSB_POWER, power);
+	dev_dbg(musb->controller, "issue wakeup\n");
+
+	/* FIXME do this next chunk in a timer callback, no udelay */
+	mdelay(2);
+
+	power = musb_readb(mregs, MUSB_POWER);
+	power &= ~MUSB_POWER_RESUME;
+	musb_writeb(mregs, MUSB_POWER, power);
+done:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return status;
+}
+
+static int
+musb_gadget_set_self_powered(struct usb_gadget *gadget, int is_selfpowered)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+
+	musb->is_self_powered = !!is_selfpowered;
+	return 0;
+}
+
+static void musb_pullup(struct musb *musb, int is_on)
+{
+	u8 power;
+
+	power = musb_readb(musb->mregs, MUSB_POWER);
+	if (is_on)
+		power |= MUSB_POWER_SOFTCONN;
+	else
+		power &= ~MUSB_POWER_SOFTCONN;
+
+	/* FIXME if on, HdrcStart; if off, HdrcStop */
+
+	dev_dbg(musb->controller, "gadget D+ pullup %s\n",
+		is_on ? "on" : "off");
+	musb_writeb(musb->mregs, MUSB_POWER, power);
+}
+
+#if 0
+static int musb_gadget_vbus_session(struct usb_gadget *gadget, int is_active)
+{
+	dev_dbg(musb->controller, "<= %s =>\n", __func__);
+
+	/*
+	 * FIXME iff driver's softconnect flag is set (as it is during probe,
+	 * though that can clear it), just musb_pullup().
+	 */
+
+	return -EINVAL;
+}
+#endif
+
+static int musb_gadget_vbus_draw(struct usb_gadget *gadget, unsigned mA)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+
+	if (!musb->xceiv->set_power)
+		return -EOPNOTSUPP;
+	return usb_phy_set_power(musb->xceiv, mA);
+}
+
+static int musb_gadget_pullup(struct usb_gadget *gadget, int is_on)
+{
+	struct musb	*musb = gadget_to_musb(gadget);
+	unsigned long	flags;
+
+	is_on = !!is_on;
+
+	pm_runtime_get_sync(musb->controller);
+
+	/* NOTE: this assumes we are sensing vbus; we'd rather
+	 * not pullup unless the B-session is active.
+	 */
+	spin_lock_irqsave(&musb->lock, flags);
+	if (is_on != musb->softconnect) {
+		musb->softconnect = is_on;
+		musb_pullup(musb, is_on);
+	}
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	pm_runtime_put(musb->controller);
+
+	return 0;
+}
+
+static int musb_gadget_start(struct usb_gadget *g,
+		struct usb_gadget_driver *driver);
+static int musb_gadget_stop(struct usb_gadget *g,
+		struct usb_gadget_driver *driver);
+
+static const struct usb_gadget_ops musb_gadget_operations = {
+	.get_frame		= musb_gadget_get_frame,
+	.wakeup			= musb_gadget_wakeup,
+	.set_selfpowered	= musb_gadget_set_self_powered,
+	/* .vbus_session		= musb_gadget_vbus_session, */
+	.vbus_draw		= musb_gadget_vbus_draw,
+	.pullup			= musb_gadget_pullup,
+	.udc_start		= musb_gadget_start,
+	.udc_stop		= musb_gadget_stop,
+};
+
+/* ----------------------------------------------------------------------- */
+
+/* Registration */
+
+/* Only this registration code "knows" the rule (from USB standards)
+ * about there being only one external upstream port.  It assumes
+ * all peripheral ports are external...
+ */
+
+static void
+init_peripheral_ep(struct musb *musb, struct musb_ep *ep, u8 epnum, int is_in)
+{
+	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
+
+	memset(ep, 0, sizeof *ep);
+
+	ep->current_epnum = epnum;
+	ep->musb = musb;
+	ep->hw_ep = hw_ep;
+	ep->is_in = is_in;
+
+	INIT_LIST_HEAD(&ep->req_list);
+
+	sprintf(ep->name, "ep%d%s", epnum,
+			(!epnum || hw_ep->is_shared_fifo) ? "" : (
+				is_in ? "in" : "out"));
+	ep->end_point.name = ep->name;
+	INIT_LIST_HEAD(&ep->end_point.ep_list);
+	if (!epnum) {
+		usb_ep_set_maxpacket_limit(&ep->end_point, 64);
+		ep->end_point.ops = &musb_g_ep0_ops;
+		musb->g.ep0 = &ep->end_point;
+	} else {
+		if (is_in)
+			usb_ep_set_maxpacket_limit(&ep->end_point, hw_ep->max_packet_sz_tx);
+		else
+			usb_ep_set_maxpacket_limit(&ep->end_point, hw_ep->max_packet_sz_rx);
+		ep->end_point.ops = &musb_ep_ops;
+		list_add_tail(&ep->end_point.ep_list, &musb->g.ep_list);
+	}
+}
+
+/*
+ * Initialize the endpoints exposed to peripheral drivers, with backlinks
+ * to the rest of the driver state.
+ */
+static inline void musb_g_init_endpoints(struct musb *musb)
+{
+	u8			epnum;
+	struct musb_hw_ep	*hw_ep;
+	unsigned		count = 0;
+
+	/* initialize endpoint list just once */
+	INIT_LIST_HEAD(&(musb->g.ep_list));
+
+	for (epnum = 0, hw_ep = musb->endpoints;
+			epnum < musb->nr_endpoints;
+			epnum++, hw_ep++) {
+		if (hw_ep->is_shared_fifo /* || !epnum */) {
+			init_peripheral_ep(musb, &hw_ep->ep_in, epnum, 0);
+			count++;
+		} else {
+			if (hw_ep->max_packet_sz_tx) {
+				init_peripheral_ep(musb, &hw_ep->ep_in,
+							epnum, 1);
+				count++;
+			}
+			if (hw_ep->max_packet_sz_rx) {
+				init_peripheral_ep(musb, &hw_ep->ep_out,
+							epnum, 0);
+				count++;
+			}
+		}
+	}
+}
+
+/* called once during driver setup to initialize and link into
+ * the driver model; memory is zeroed.
+ */
+int musb_gadget_setup(struct musb *musb)
+{
+	int status;
+
+	/* REVISIT minor race:  if (erroneously) setting up two
+	 * musb peripherals at the same time, only the bus lock
+	 * is probably held.
+	 */
+
+	musb->g.ops = &musb_gadget_operations;
+	musb->g.max_speed = USB_SPEED_HIGH;
+	musb->g.speed = USB_SPEED_UNKNOWN;
+
+	MUSB_DEV_MODE(musb);
+	musb->xceiv->otg->default_a = 0;
+	musb->xceiv->state = OTG_STATE_B_IDLE;
+
+	/* this "gadget" abstracts/virtualizes the controller */
+	musb->g.name = musb_driver_name;
+#if IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
+	musb->g.is_otg = 1;
+#elif IS_ENABLED(CONFIG_USB_MUSB_GADGET)
+	musb->g.is_otg = 0;
+#endif
+
+	musb_g_init_endpoints(musb);
+
+	musb->is_active = 0;
+	musb_platform_try_idle(musb, 0);
+
+	status = usb_add_gadget_udc(musb->controller, &musb->g);
+	if (status)
+		goto err;
+
+	return 0;
+err:
+	musb->g.dev.parent = NULL;
+	device_unregister(&musb->g.dev);
+	return status;
+}
+
+void musb_gadget_cleanup(struct musb *musb)
+{
+	if (musb->port_mode == MUSB_PORT_MODE_HOST)
+		return;
+	usb_del_gadget_udc(&musb->g);
+}
+
+/*
+ * Register the gadget driver. Used by gadget drivers when
+ * registering themselves with the controller.
+ *
+ * -EINVAL something went wrong (not driver)
+ * -EBUSY another gadget is already using the controller
+ * -ENOMEM no memory to perform the operation
+ *
+ * @param driver the gadget driver
+ * @return <0 if error, 0 if everything is fine
+ */
+static int musb_gadget_start(struct usb_gadget *g,
+		struct usb_gadget_driver *driver)
+{
+	struct musb		*musb = gadget_to_musb(g);
+	struct usb_otg		*otg = musb->xceiv->otg;
+	unsigned long		flags;
+	int			retval = 0;
+
+	if (driver->max_speed < USB_SPEED_HIGH) {
+		retval = -EINVAL;
+		goto err;
+	}
+
+	pm_runtime_get_sync(musb->controller);
+
+	dev_dbg(musb->controller, "registering driver %s\n", driver->function);
+
+	musb->softconnect = 0;
+	musb->gadget_driver = driver;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	musb->is_active = 1;
+
+	otg_set_peripheral(otg, &musb->g);
+	musb->xceiv->state = OTG_STATE_B_IDLE;
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	musb_start(musb);
+
+	/* REVISIT:  funcall to other code, which also
+	 * handles power budgeting ... this way also
+	 * ensures HdrcStart is indirectly called.
+	 */
+	if (musb->xceiv->last_event == USB_EVENT_ID)
+		musb_platform_set_vbus(musb, 1);
+
+	if (musb->xceiv->last_event == USB_EVENT_NONE)
+		pm_runtime_put(musb->controller);
+
+	return 0;
+
+err:
+	return retval;
+}
+
+static void stop_activity(struct musb *musb, struct usb_gadget_driver *driver)
+{
+	int			i;
+	struct musb_hw_ep	*hw_ep;
+
+	/* don't disconnect if it's not connected */
+	if (musb->g.speed == USB_SPEED_UNKNOWN)
+		driver = NULL;
+	else
+		musb->g.speed = USB_SPEED_UNKNOWN;
+
+	/* deactivate the hardware */
+	if (musb->softconnect) {
+		musb->softconnect = 0;
+		musb_pullup(musb, 0);
+	}
+	musb_stop(musb);
+
+	/* killing any outstanding requests will quiesce the driver;
+	 * then report disconnect
+	 */
+	if (driver) {
+		for (i = 0, hw_ep = musb->endpoints;
+				i < musb->nr_endpoints;
+				i++, hw_ep++) {
+			musb_ep_select(musb->mregs, i);
+			if (hw_ep->is_shared_fifo /* || !epnum */) {
+				nuke(&hw_ep->ep_in, -ESHUTDOWN);
+			} else {
+				if (hw_ep->max_packet_sz_tx)
+					nuke(&hw_ep->ep_in, -ESHUTDOWN);
+				if (hw_ep->max_packet_sz_rx)
+					nuke(&hw_ep->ep_out, -ESHUTDOWN);
+			}
+		}
+	}
+}
+
+/*
+ * Unregister the gadget driver. Used by gadget drivers when
+ * unregistering themselves from the controller.
+ *
+ * @param driver the gadget driver to unregister
+ */
+static int musb_gadget_stop(struct usb_gadget *g,
+		struct usb_gadget_driver *driver)
+{
+	struct musb	*musb = gadget_to_musb(g);
+	unsigned long	flags;
+
+	if (musb->xceiv->last_event == USB_EVENT_NONE)
+		pm_runtime_get_sync(musb->controller);
+
+	/*
+	 * REVISIT always use otg_set_peripheral() here too;
+	 * this needs to shut down the OTG engine.
+	 */
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	musb_hnp_stop(musb);
+
+	(void) musb_gadget_vbus_draw(&musb->g, 0);
+
+	musb->xceiv->state = OTG_STATE_UNDEFINED;
+	stop_activity(musb, driver);
+	otg_set_peripheral(musb->xceiv->otg, NULL);
+
+	dev_dbg(musb->controller, "unregistering driver %s\n",
+				  driver ? driver->function : "(removed)");
+
+	musb->is_active = 0;
+	musb->gadget_driver = NULL;
+	musb_platform_try_idle(musb, 0);
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	/*
+	 * FIXME we need to be able to register another
+	 * gadget driver here and have everything work;
+	 * that currently misbehaves.
+	 */
+
+	pm_runtime_put(musb->controller);
+
+	return 0;
+}
+
+/* ----------------------------------------------------------------------- */
+
+/* lifecycle operations called through plat_uds.c */
+
+void musb_g_resume(struct musb *musb)
+{
+	musb->is_suspended = 0;
+	switch (musb->xceiv->state) {
+	case OTG_STATE_B_IDLE:
+		break;
+	case OTG_STATE_B_WAIT_ACON:
+	case OTG_STATE_B_PERIPHERAL:
+		musb->is_active = 1;
+		if (musb->gadget_driver && musb->gadget_driver->resume) {
+			spin_unlock(&musb->lock);
+			musb->gadget_driver->resume(&musb->g);
+			spin_lock(&musb->lock);
+		}
+		break;
+	default:
+		WARNING("unhandled RESUME transition (%s)\n",
+				usb_otg_state_string(musb->xceiv->state));
+	}
+}
+
+/* called when SOF packets stop for 3+ msec */
+void musb_g_suspend(struct musb *musb)
+{
+	u8	devctl;
+
+	devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
+	dev_dbg(musb->controller, "devctl %02x\n", devctl);
+
+	switch (musb->xceiv->state) {
+	case OTG_STATE_B_IDLE:
+		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
+			musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+		break;
+	case OTG_STATE_B_PERIPHERAL:
+		musb->is_suspended = 1;
+		if (musb->gadget_driver && musb->gadget_driver->suspend) {
+			spin_unlock(&musb->lock);
+			musb->gadget_driver->suspend(&musb->g);
+			spin_lock(&musb->lock);
+		}
+		break;
+	default:
+		/* REVISIT if B_HOST, clear DEVCTL.HOSTREQ;
+		 * A_PERIPHERAL may need care too
+		 */
+		WARNING("unhandled SUSPEND transition (%s)\n",
+				usb_otg_state_string(musb->xceiv->state));
+	}
+}
+
+/* Called during SRP */
+void musb_g_wakeup(struct musb *musb)
+{
+	musb_gadget_wakeup(&musb->g);
+}
+
+/* called when VBUS drops below session threshold, and in other cases */
+void musb_g_disconnect(struct musb *musb)
+{
+	void __iomem	*mregs = musb->mregs;
+	u8	devctl = musb_readb(mregs, MUSB_DEVCTL);
+
+	dev_dbg(musb->controller, "devctl %02x\n", devctl);
+
+	/* clear HR */
+	musb_writeb(mregs, MUSB_DEVCTL, devctl & MUSB_DEVCTL_SESSION);
+
+	/* don't draw vbus until new b-default session */
+	(void) musb_gadget_vbus_draw(&musb->g, 0);
+
+	musb->g.speed = USB_SPEED_UNKNOWN;
+	if (musb->gadget_driver && musb->gadget_driver->disconnect) {
+		spin_unlock(&musb->lock);
+		musb->gadget_driver->disconnect(&musb->g);
+		spin_lock(&musb->lock);
+	}
+
+	switch (musb->xceiv->state) {
+	default:
+		dev_dbg(musb->controller, "Unhandled disconnect %s, setting a_idle\n",
+			usb_otg_state_string(musb->xceiv->state));
+		musb->xceiv->state = OTG_STATE_A_IDLE;
+		MUSB_HST_MODE(musb);
+		break;
+	case OTG_STATE_A_PERIPHERAL:
+		musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
+		MUSB_HST_MODE(musb);
+		break;
+	case OTG_STATE_B_WAIT_ACON:
+	case OTG_STATE_B_HOST:
+	case OTG_STATE_B_PERIPHERAL:
+	case OTG_STATE_B_IDLE:
+		musb->xceiv->state = OTG_STATE_B_IDLE;
+		break;
+	case OTG_STATE_B_SRP_INIT:
+		break;
+	}
+
+	musb->is_active = 0;
+}
+
+void musb_g_reset(struct musb *musb)
+__releases(musb->lock)
+__acquires(musb->lock)
+{
+	void __iomem	*mbase = musb->mregs;
+	u8		devctl = musb_readb(mbase, MUSB_DEVCTL);
+	u8		power;
+
+	dev_dbg(musb->controller, "<== %s driver '%s'\n",
+			(devctl & MUSB_DEVCTL_BDEVICE)
+				? "B-Device" : "A-Device",
+			musb->gadget_driver
+				? musb->gadget_driver->driver.name
+				: NULL
+			);
+
+	/* report disconnect, if we didn't already (flushing EP state) */
+	if (musb->g.speed != USB_SPEED_UNKNOWN)
+		musb_g_disconnect(musb);
+
+	/* clear HR */
+	else if (devctl & MUSB_DEVCTL_HR)
+		musb_writeb(mbase, MUSB_DEVCTL, MUSB_DEVCTL_SESSION);
+
+
+	/* what speed did we negotiate? */
+	power = musb_readb(mbase, MUSB_POWER);
+	musb->g.speed = (power & MUSB_POWER_HSMODE)
+			? USB_SPEED_HIGH : USB_SPEED_FULL;
+
+	/* start in USB_STATE_DEFAULT */
+	musb->is_active = 1;
+	musb->is_suspended = 0;
+	MUSB_DEV_MODE(musb);
+	musb->address = 0;
+	musb->ep0_state = MUSB_EP0_STAGE_SETUP;
+
+	musb->may_wakeup = 0;
+	musb->g.b_hnp_enable = 0;
+	musb->g.a_alt_hnp_support = 0;
+	musb->g.a_hnp_support = 0;
+
+	/* Normal reset, as B-Device;
+	 * or else after HNP, as A-Device
+	 */
+	if (!musb->g.is_otg) {
+		/* USB device controllers that are not OTG compatible
+		 * may not have DEVCTL register in silicon.
+		 * In that case, do not rely on devctl for setting
+		 * peripheral mode.
+		 */
+		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+		musb->g.is_a_peripheral = 0;
+	} else if (devctl & MUSB_DEVCTL_BDEVICE) {
+		musb->xceiv->state = OTG_STATE_B_PERIPHERAL;
+		musb->g.is_a_peripheral = 0;
+	} else {
+		musb->xceiv->state = OTG_STATE_A_PERIPHERAL;
+		musb->g.is_a_peripheral = 1;
+	}
+
+	/* start with default limits on VBUS power draw */
+	(void) musb_gadget_vbus_draw(&musb->g, 8);
+}
diff --git a/drivers/usb/musb/musb_gadget.h b/drivers/usb/musb/musb_gadget.h
new file mode 100644
index 0000000..0314dfc
--- /dev/null
+++ b/drivers/usb/musb/musb_gadget.h
@@ -0,0 +1,147 @@
+/*
+ * MUSB OTG driver peripheral defines
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef __MUSB_GADGET_H
+#define __MUSB_GADGET_H
+
+#include <linux/list.h>
+
+#if IS_ENABLED(CONFIG_USB_MUSB_GADGET) || IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
+extern irqreturn_t musb_g_ep0_irq(struct musb *);
+extern void musb_g_tx(struct musb *, u8);
+extern void musb_g_rx(struct musb *, u8);
+extern void musb_g_reset(struct musb *);
+extern void musb_g_suspend(struct musb *);
+extern void musb_g_resume(struct musb *);
+extern void musb_g_wakeup(struct musb *);
+extern void musb_g_disconnect(struct musb *);
+extern void musb_gadget_cleanup(struct musb *);
+extern int musb_gadget_setup(struct musb *);
+
+#else
+static inline irqreturn_t musb_g_ep0_irq(struct musb *musb)
+{
+	return 0;
+}
+
+static inline void musb_g_tx(struct musb *musb, u8 epnum)	{}
+static inline void musb_g_rx(struct musb *musb, u8 epnum)	{}
+static inline void musb_g_reset(struct musb *musb)		{}
+static inline void musb_g_suspend(struct musb *musb)		{}
+static inline void musb_g_resume(struct musb *musb)		{}
+static inline void musb_g_wakeup(struct musb *musb)		{}
+static inline void musb_g_disconnect(struct musb *musb)		{}
+static inline void musb_gadget_cleanup(struct musb *musb)	{}
+static inline int musb_gadget_setup(struct musb *musb)
+{
+	return 0;
+}
+#endif
+
+enum buffer_map_state {
+	UN_MAPPED = 0,
+	PRE_MAPPED,
+	MUSB_MAPPED
+};
+
+struct musb_request {
+	struct usb_request	request;
+	struct list_head	list;
+	struct musb_ep		*ep;
+	struct musb		*musb;
+	u8 tx;			/* endpoint direction */
+	u8 epnum;
+	enum buffer_map_state map_state;
+};
+
+static inline struct musb_request *to_musb_request(struct usb_request *req)
+{
+	return req ? container_of(req, struct musb_request, request) : NULL;
+}
+
+extern struct usb_request *
+musb_alloc_request(struct usb_ep *ep, gfp_t gfp_flags);
+extern void musb_free_request(struct usb_ep *ep, struct usb_request *req);
+
+
+/*
+ * struct musb_ep - peripheral side view of endpoint rx or tx side
+ */
+struct musb_ep {
+	/* stuff towards the head is basically write-once. */
+	struct usb_ep			end_point;
+	char				name[12];
+	struct musb_hw_ep		*hw_ep;
+	struct musb			*musb;
+	u8				current_epnum;
+
+	/* ... when enabled/disabled ... */
+	u8				type;
+	u8				is_in;
+	u16				packet_sz;
+	const struct usb_endpoint_descriptor	*desc;
+	struct dma_channel		*dma;
+
+	/* later things are modified based on usage */
+	struct list_head		req_list;
+
+	u8				wedged;
+
+	/* true if lock must be dropped but req_list may not be advanced */
+	u8				busy;
+
+	u8				hb_mult;
+};
+
+static inline struct musb_ep *to_musb_ep(struct usb_ep *ep)
+{
+	return ep ? container_of(ep, struct musb_ep, end_point) : NULL;
+}
+
+static inline struct musb_request *next_request(struct musb_ep *ep)
+{
+	struct list_head	*queue = &ep->req_list;
+
+	if (list_empty(queue))
+		return NULL;
+	return container_of(queue->next, struct musb_request, list);
+}
+
+extern const struct usb_ep_ops musb_g_ep0_ops;
+
+extern void musb_g_giveback(struct musb_ep *, struct usb_request *, int);
+
+extern void musb_ep_restart(struct musb *, struct musb_request *);
+
+#endif		/* __MUSB_GADGET_H */
diff --git a/drivers/usb/musb/musb_gadget_ep0.c b/drivers/usb/musb/musb_gadget_ep0.c
new file mode 100644
index 0000000..2af45a0
--- /dev/null
+++ b/drivers/usb/musb/musb_gadget_ep0.c
@@ -0,0 +1,1083 @@
+/*
+ * MUSB OTG peripheral driver ep0 handling
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ * Copyright (C) 2008-2009 MontaVista Software, Inc. <source@mvista.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#include <linux/kernel.h>
+#include <linux/list.h>
+#include <linux/timer.h>
+#include <linux/spinlock.h>
+#include <linux/device.h>
+#include <linux/interrupt.h>
+
+#include "musb_core.h"
+
+/* ep0 is always musb->endpoints[0].ep_in */
+#define	next_ep0_request(musb)	next_in_request(&(musb)->endpoints[0])
+
+/*
+ * locking note:  we use only the controller lock, for simpler correctness.
+ * It's always held with IRQs blocked.
+ *
+ * It protects the ep0 request queue as well as ep0_state, not just the
+ * controller and indexed registers.  And that lock stays held unless it
+ * needs to be dropped to allow reentering this driver ... like upcalls to
+ * the gadget driver, or adjusting endpoint halt status.
+ */
+
+static char *decode_ep0stage(u8 stage)
+{
+	switch (stage) {
+	case MUSB_EP0_STAGE_IDLE:	return "idle";
+	case MUSB_EP0_STAGE_SETUP:	return "setup";
+	case MUSB_EP0_STAGE_TX:		return "in";
+	case MUSB_EP0_STAGE_RX:		return "out";
+	case MUSB_EP0_STAGE_ACKWAIT:	return "wait";
+	case MUSB_EP0_STAGE_STATUSIN:	return "in/status";
+	case MUSB_EP0_STAGE_STATUSOUT:	return "out/status";
+	default:			return "?";
+	}
+}
+
+/* handle a standard GET_STATUS request
+ * Context:  caller holds controller lock
+ */
+static int service_tx_status_request(
+	struct musb *musb,
+	const struct usb_ctrlrequest *ctrlrequest)
+{
+	void __iomem	*mbase = musb->mregs;
+	int handled = 1;
+	u8 result[2], epnum = 0;
+	const u8 recip = ctrlrequest->bRequestType & USB_RECIP_MASK;
+
+	result[1] = 0;
+
+	switch (recip) {
+	case USB_RECIP_DEVICE:
+		result[0] = musb->is_self_powered << USB_DEVICE_SELF_POWERED;
+		result[0] |= musb->may_wakeup << USB_DEVICE_REMOTE_WAKEUP;
+		if (musb->g.is_otg) {
+			result[0] |= musb->g.b_hnp_enable
+				<< USB_DEVICE_B_HNP_ENABLE;
+			result[0] |= musb->g.a_alt_hnp_support
+				<< USB_DEVICE_A_ALT_HNP_SUPPORT;
+			result[0] |= musb->g.a_hnp_support
+				<< USB_DEVICE_A_HNP_SUPPORT;
+		}
+		break;
+
+	case USB_RECIP_INTERFACE:
+		result[0] = 0;
+		break;
+
+	case USB_RECIP_ENDPOINT: {
+		int		is_in;
+		struct musb_ep	*ep;
+		u16		tmp;
+		void __iomem	*regs;
+
+		epnum = (u8) ctrlrequest->wIndex;
+		if (!epnum) {
+			result[0] = 0;
+			break;
+		}
+
+		is_in = epnum & USB_DIR_IN;
+		if (is_in) {
+			epnum &= 0x0f;
+			ep = &musb->endpoints[epnum].ep_in;
+		} else {
+			ep = &musb->endpoints[epnum].ep_out;
+		}
+		regs = musb->endpoints[epnum].regs;
+
+		if (epnum >= MUSB_C_NUM_EPS || !ep->desc) {
+			handled = -EINVAL;
+			break;
+		}
+
+		musb_ep_select(mbase, epnum);
+		if (is_in)
+			tmp = musb_readw(regs, MUSB_TXCSR)
+						& MUSB_TXCSR_P_SENDSTALL;
+		else
+			tmp = musb_readw(regs, MUSB_RXCSR)
+						& MUSB_RXCSR_P_SENDSTALL;
+		musb_ep_select(mbase, 0);
+
+		result[0] = tmp ? 1 : 0;
+		} break;
+
+	default:
+		/* class, vendor, etc ... delegate */
+		handled = 0;
+		break;
+	}
+
+	/* fill up the fifo; caller updates csr0 */
+	if (handled > 0) {
+		u16	len = le16_to_cpu(ctrlrequest->wLength);
+
+		if (len > 2)
+			len = 2;
+		musb_write_fifo(&musb->endpoints[0], len, result);
+	}
+
+	return handled;
+}
+
+/*
+ * handle a control-IN request, the end0 buffer contains the current request
+ * that is supposed to be a standard control request. Assumes the fifo to
+ * be at least 2 bytes long.
+ *
+ * @return 0 if the request was NOT HANDLED,
+ * < 0 when error
+ * > 0 when the request is processed
+ *
+ * Context:  caller holds controller lock
+ */
+static int
+service_in_request(struct musb *musb, const struct usb_ctrlrequest *ctrlrequest)
+{
+	int handled = 0;	/* not handled */
+
+	if ((ctrlrequest->bRequestType & USB_TYPE_MASK)
+			== USB_TYPE_STANDARD) {
+		switch (ctrlrequest->bRequest) {
+		case USB_REQ_GET_STATUS:
+			handled = service_tx_status_request(musb,
+					ctrlrequest);
+			break;
+
+		/* case USB_REQ_SYNC_FRAME: */
+
+		default:
+			break;
+		}
+	}
+	return handled;
+}
+
+/*
+ * Context:  caller holds controller lock
+ */
+static void musb_g_ep0_giveback(struct musb *musb, struct usb_request *req)
+{
+	musb_g_giveback(&musb->endpoints[0].ep_in, req, 0);
+}
+
+/*
+ * Tries to start B-device HNP negotiation if enabled via sysfs
+ */
+static inline void musb_try_b_hnp_enable(struct musb *musb)
+{
+	void __iomem	*mbase = musb->mregs;
+	u8		devctl;
+
+	dev_dbg(musb->controller, "HNP: Setting HR\n");
+	devctl = musb_readb(mbase, MUSB_DEVCTL);
+	musb_writeb(mbase, MUSB_DEVCTL, devctl | MUSB_DEVCTL_HR);
+}
+
+/*
+ * Handle all control requests with no DATA stage, including standard
+ * requests such as:
+ * USB_REQ_SET_CONFIGURATION, USB_REQ_SET_INTERFACE, unrecognized
+ *	always delegated to the gadget driver
+ * USB_REQ_SET_ADDRESS, USB_REQ_CLEAR_FEATURE, USB_REQ_SET_FEATURE
+ *	always handled here, except for class/vendor/... features
+ *
+ * Context:  caller holds controller lock
+ */
+static int
+service_zero_data_request(struct musb *musb,
+		struct usb_ctrlrequest *ctrlrequest)
+__releases(musb->lock)
+__acquires(musb->lock)
+{
+	int handled = -EINVAL;
+	void __iomem *mbase = musb->mregs;
+	const u8 recip = ctrlrequest->bRequestType & USB_RECIP_MASK;
+
+	/* the gadget driver handles everything except what we MUST handle */
+	if ((ctrlrequest->bRequestType & USB_TYPE_MASK)
+			== USB_TYPE_STANDARD) {
+		switch (ctrlrequest->bRequest) {
+		case USB_REQ_SET_ADDRESS:
+			/* change it after the status stage */
+			musb->set_address = true;
+			musb->address = (u8) (ctrlrequest->wValue & 0x7f);
+			handled = 1;
+			break;
+
+		case USB_REQ_CLEAR_FEATURE:
+			switch (recip) {
+			case USB_RECIP_DEVICE:
+				if (ctrlrequest->wValue
+						!= USB_DEVICE_REMOTE_WAKEUP)
+					break;
+				musb->may_wakeup = 0;
+				handled = 1;
+				break;
+			case USB_RECIP_INTERFACE:
+				break;
+			case USB_RECIP_ENDPOINT:{
+				const u8		epnum =
+					ctrlrequest->wIndex & 0x0f;
+				struct musb_ep		*musb_ep;
+				struct musb_hw_ep	*ep;
+				struct musb_request	*request;
+				void __iomem		*regs;
+				int			is_in;
+				u16			csr;
+
+				if (epnum == 0 || epnum >= MUSB_C_NUM_EPS ||
+				    ctrlrequest->wValue != USB_ENDPOINT_HALT)
+					break;
+
+				ep = musb->endpoints + epnum;
+				regs = ep->regs;
+				is_in = ctrlrequest->wIndex & USB_DIR_IN;
+				if (is_in)
+					musb_ep = &ep->ep_in;
+				else
+					musb_ep = &ep->ep_out;
+				if (!musb_ep->desc)
+					break;
+
+				handled = 1;
+				/* Ignore request if endpoint is wedged */
+				if (musb_ep->wedged)
+					break;
+
+				musb_ep_select(mbase, epnum);
+				if (is_in) {
+					csr  = musb_readw(regs, MUSB_TXCSR);
+					csr |= MUSB_TXCSR_CLRDATATOG |
+					       MUSB_TXCSR_P_WZC_BITS;
+					csr &= ~(MUSB_TXCSR_P_SENDSTALL |
+						 MUSB_TXCSR_P_SENTSTALL |
+						 MUSB_TXCSR_TXPKTRDY);
+					musb_writew(regs, MUSB_TXCSR, csr);
+				} else {
+					csr  = musb_readw(regs, MUSB_RXCSR);
+					csr |= MUSB_RXCSR_CLRDATATOG |
+					       MUSB_RXCSR_P_WZC_BITS;
+					csr &= ~(MUSB_RXCSR_P_SENDSTALL |
+						 MUSB_RXCSR_P_SENTSTALL);
+					musb_writew(regs, MUSB_RXCSR, csr);
+				}
+
+				/* Maybe start the first request in the queue */
+				request = next_request(musb_ep);
+				if (!musb_ep->busy && request) {
+					dev_dbg(musb->controller, "restarting the request\n");
+					musb_ep_restart(musb, request);
+				}
+
+				/* select ep0 again */
+				musb_ep_select(mbase, 0);
+				} break;
+			default:
+				/* class, vendor, etc ... delegate */
+				handled = 0;
+				break;
+			}
+			break;
+
+		case USB_REQ_SET_FEATURE:
+			switch (recip) {
+			case USB_RECIP_DEVICE:
+				handled = 1;
+				switch (ctrlrequest->wValue) {
+				case USB_DEVICE_REMOTE_WAKEUP:
+					musb->may_wakeup = 1;
+					break;
+				case USB_DEVICE_TEST_MODE:
+					if (musb->g.speed != USB_SPEED_HIGH)
+						goto stall;
+					if (ctrlrequest->wIndex & 0xff)
+						goto stall;
+
+					switch (ctrlrequest->wIndex >> 8) {
+					case 1:
+						pr_debug("TEST_J\n");
+						/* TEST_J */
+						musb->test_mode_nr =
+							MUSB_TEST_J;
+						break;
+					case 2:
+						/* TEST_K */
+						pr_debug("TEST_K\n");
+						musb->test_mode_nr =
+							MUSB_TEST_K;
+						break;
+					case 3:
+						/* TEST_SE0_NAK */
+						pr_debug("TEST_SE0_NAK\n");
+						musb->test_mode_nr =
+							MUSB_TEST_SE0_NAK;
+						break;
+					case 4:
+						/* TEST_PACKET */
+						pr_debug("TEST_PACKET\n");
+						musb->test_mode_nr =
+							MUSB_TEST_PACKET;
+						break;
+
+					case 0xc0:
+						/* TEST_FORCE_HS */
+						pr_debug("TEST_FORCE_HS\n");
+						musb->test_mode_nr =
+							MUSB_TEST_FORCE_HS;
+						break;
+					case 0xc1:
+						/* TEST_FORCE_FS */
+						pr_debug("TEST_FORCE_FS\n");
+						musb->test_mode_nr =
+							MUSB_TEST_FORCE_FS;
+						break;
+					case 0xc2:
+						/* TEST_FIFO_ACCESS */
+						pr_debug("TEST_FIFO_ACCESS\n");
+						musb->test_mode_nr =
+							MUSB_TEST_FIFO_ACCESS;
+						break;
+					case 0xc3:
+						/* TEST_FORCE_HOST */
+						pr_debug("TEST_FORCE_HOST\n");
+						musb->test_mode_nr =
+							MUSB_TEST_FORCE_HOST;
+						break;
+					default:
+						goto stall;
+					}
+
+					/* enter test mode after irq */
+					if (handled > 0)
+						musb->test_mode = true;
+					break;
+				case USB_DEVICE_B_HNP_ENABLE:
+					if (!musb->g.is_otg)
+						goto stall;
+					musb->g.b_hnp_enable = 1;
+					musb_try_b_hnp_enable(musb);
+					break;
+				case USB_DEVICE_A_HNP_SUPPORT:
+					if (!musb->g.is_otg)
+						goto stall;
+					musb->g.a_hnp_support = 1;
+					break;
+				case USB_DEVICE_A_ALT_HNP_SUPPORT:
+					if (!musb->g.is_otg)
+						goto stall;
+					musb->g.a_alt_hnp_support = 1;
+					break;
+				case USB_DEVICE_DEBUG_MODE:
+					handled = 0;
+					break;
+stall:
+				default:
+					handled = -EINVAL;
+					break;
+				}
+				break;
+
+			case USB_RECIP_INTERFACE:
+				break;
+
+			case USB_RECIP_ENDPOINT:{
+				const u8		epnum =
+					ctrlrequest->wIndex & 0x0f;
+				struct musb_ep		*musb_ep;
+				struct musb_hw_ep	*ep;
+				void __iomem		*regs;
+				int			is_in;
+				u16			csr;
+
+				if (epnum == 0 || epnum >= MUSB_C_NUM_EPS ||
+				    ctrlrequest->wValue	!= USB_ENDPOINT_HALT)
+					break;
+
+				ep = musb->endpoints + epnum;
+				regs = ep->regs;
+				is_in = ctrlrequest->wIndex & USB_DIR_IN;
+				if (is_in)
+					musb_ep = &ep->ep_in;
+				else
+					musb_ep = &ep->ep_out;
+				if (!musb_ep->desc)
+					break;
+
+				musb_ep_select(mbase, epnum);
+				if (is_in) {
+					csr = musb_readw(regs, MUSB_TXCSR);
+					if (csr & MUSB_TXCSR_FIFONOTEMPTY)
+						csr |= MUSB_TXCSR_FLUSHFIFO;
+					csr |= MUSB_TXCSR_P_SENDSTALL
+						| MUSB_TXCSR_CLRDATATOG
+						| MUSB_TXCSR_P_WZC_BITS;
+					musb_writew(regs, MUSB_TXCSR, csr);
+				} else {
+					csr = musb_readw(regs, MUSB_RXCSR);
+					csr |= MUSB_RXCSR_P_SENDSTALL
+						| MUSB_RXCSR_FLUSHFIFO
+						| MUSB_RXCSR_CLRDATATOG
+						| MUSB_RXCSR_P_WZC_BITS;
+					musb_writew(regs, MUSB_RXCSR, csr);
+				}
+
+				/* select ep0 again */
+				musb_ep_select(mbase, 0);
+				handled = 1;
+				} break;
+
+			default:
+				/* class, vendor, etc ... delegate */
+				handled = 0;
+				break;
+			}
+			break;
+		default:
+			/* delegate SET_CONFIGURATION, etc */
+			handled = 0;
+		}
+	} else
+		handled = 0;
+	return handled;
+}
+
+/* we have an ep0out data packet
+ * Context:  caller holds controller lock
+ */
+static void ep0_rxstate(struct musb *musb)
+{
+	void __iomem		*regs = musb->control_ep->regs;
+	struct musb_request	*request;
+	struct usb_request	*req;
+	u16			count, csr;
+
+	request = next_ep0_request(musb);
+	req = &request->request;
+
+	/* read packet and ack; or stall because of gadget driver bug:
+	 * should have provided the rx buffer before setup() returned.
+	 */
+	if (req) {
+		void		*buf = req->buf + req->actual;
+		unsigned	len = req->length - req->actual;
+
+		/* read the buffer */
+		count = musb_readb(regs, MUSB_COUNT0);
+		if (count > len) {
+			req->status = -EOVERFLOW;
+			count = len;
+		}
+		if (count > 0) {
+			musb_read_fifo(&musb->endpoints[0], count, buf);
+			req->actual += count;
+		}
+		csr = MUSB_CSR0_P_SVDRXPKTRDY;
+		if (count < 64 || req->actual == req->length) {
+			musb->ep0_state = MUSB_EP0_STAGE_STATUSIN;
+			csr |= MUSB_CSR0_P_DATAEND;
+		} else
+			req = NULL;
+	} else
+		csr = MUSB_CSR0_P_SVDRXPKTRDY | MUSB_CSR0_P_SENDSTALL;
+
+
+	/* Completion handler may choose to stall, e.g. because the
+	 * message just received holds invalid data.
+	 */
+	if (req) {
+		musb->ackpend = csr;
+		musb_g_ep0_giveback(musb, req);
+		if (!musb->ackpend)
+			return;
+		musb->ackpend = 0;
+	}
+	musb_ep_select(musb->mregs, 0);
+	musb_writew(regs, MUSB_CSR0, csr);
+}
+
+/*
+ * transmitting to the host (IN), this code might be called from IRQ
+ * and from kernel thread.
+ *
+ * Context:  caller holds controller lock
+ */
+static void ep0_txstate(struct musb *musb)
+{
+	void __iomem		*regs = musb->control_ep->regs;
+	struct musb_request	*req = next_ep0_request(musb);
+	struct usb_request	*request;
+	u16			csr = MUSB_CSR0_TXPKTRDY;
+	u8			*fifo_src;
+	u8			fifo_count;
+
+	if (!req) {
+		/* WARN_ON(1); */
+		dev_dbg(musb->controller, "odd; csr0 %04x\n", musb_readw(regs, MUSB_CSR0));
+		return;
+	}
+
+	request = &req->request;
+
+	/* load the data */
+	fifo_src = (u8 *) request->buf + request->actual;
+	fifo_count = min((unsigned) MUSB_EP0_FIFOSIZE,
+		request->length - request->actual);
+	musb_write_fifo(&musb->endpoints[0], fifo_count, fifo_src);
+	request->actual += fifo_count;
+
+	/* update the flags */
+	if (fifo_count < MUSB_MAX_END0_PACKET
+			|| (request->actual == request->length
+				&& !request->zero)) {
+		musb->ep0_state = MUSB_EP0_STAGE_STATUSOUT;
+		csr |= MUSB_CSR0_P_DATAEND;
+	} else
+		request = NULL;
+
+	/* report completions as soon as the fifo's loaded; there's no
+	 * win in waiting till this last packet gets acked.  (other than
+	 * very precise fault reporting, needed by USB TMC; possible with
+	 * this hardware, but not usable from portable gadget drivers.)
+	 */
+	if (request) {
+		musb->ackpend = csr;
+		musb_g_ep0_giveback(musb, request);
+		if (!musb->ackpend)
+			return;
+		musb->ackpend = 0;
+	}
+
+	/* send it out, triggering a "txpktrdy cleared" irq */
+	musb_ep_select(musb->mregs, 0);
+	musb_writew(regs, MUSB_CSR0, csr);
+}
+
+/*
+ * Read a SETUP packet (struct usb_ctrlrequest) from the hardware.
+ * Fields are left in USB byte-order.
+ *
+ * Context:  caller holds controller lock.
+ */
+static void
+musb_read_setup(struct musb *musb, struct usb_ctrlrequest *req)
+{
+	struct musb_request	*r;
+	void __iomem		*regs = musb->control_ep->regs;
+
+	musb_read_fifo(&musb->endpoints[0], sizeof *req, (u8 *)req);
+
+	/* NOTE:  earlier 2.6 versions changed setup packets to host
+	 * order, but now USB packets always stay in USB byte order.
+	 */
+	dev_dbg(musb->controller, "SETUP req%02x.%02x v%04x i%04x l%d\n",
+		req->bRequestType,
+		req->bRequest,
+		le16_to_cpu(req->wValue),
+		le16_to_cpu(req->wIndex),
+		le16_to_cpu(req->wLength));
+
+	/* clean up any leftover transfers */
+	r = next_ep0_request(musb);
+	if (r)
+		musb_g_ep0_giveback(musb, &r->request);
+
+	/* For zero-data requests we want to delay the STATUS stage to
+	 * avoid SETUPEND errors.  If we read data (OUT), delay accepting
+	 * packets until there's a buffer to store them in.
+	 *
+	 * If we write data, the controller acts happier if we enable
+	 * the TX FIFO right away, and give the controller a moment
+	 * to switch modes...
+	 */
+	musb->set_address = false;
+	musb->ackpend = MUSB_CSR0_P_SVDRXPKTRDY;
+	if (req->wLength == 0) {
+		if (req->bRequestType & USB_DIR_IN)
+			musb->ackpend |= MUSB_CSR0_TXPKTRDY;
+		musb->ep0_state = MUSB_EP0_STAGE_ACKWAIT;
+	} else if (req->bRequestType & USB_DIR_IN) {
+		musb->ep0_state = MUSB_EP0_STAGE_TX;
+		musb_writew(regs, MUSB_CSR0, MUSB_CSR0_P_SVDRXPKTRDY);
+		while ((musb_readw(regs, MUSB_CSR0)
+				& MUSB_CSR0_RXPKTRDY) != 0)
+			cpu_relax();
+		musb->ackpend = 0;
+	} else
+		musb->ep0_state = MUSB_EP0_STAGE_RX;
+}
+
+static int
+forward_to_driver(struct musb *musb, const struct usb_ctrlrequest *ctrlrequest)
+__releases(musb->lock)
+__acquires(musb->lock)
+{
+	int retval;
+	if (!musb->gadget_driver)
+		return -EOPNOTSUPP;
+	spin_unlock(&musb->lock);
+	retval = musb->gadget_driver->setup(&musb->g, ctrlrequest);
+	spin_lock(&musb->lock);
+	return retval;
+}
+
+/*
+ * Handle peripheral ep0 interrupt
+ *
+ * Context: irq handler; we won't re-enter the driver that way.
+ */
+irqreturn_t musb_g_ep0_irq(struct musb *musb)
+{
+	u16		csr;
+	u16		len;
+	void __iomem	*mbase = musb->mregs;
+	void __iomem	*regs = musb->endpoints[0].regs;
+	irqreturn_t	retval = IRQ_NONE;
+
+	musb_ep_select(mbase, 0);	/* select ep0 */
+	csr = musb_readw(regs, MUSB_CSR0);
+	len = musb_readb(regs, MUSB_COUNT0);
+
+	dev_dbg(musb->controller, "csr %04x, count %d, ep0stage %s\n",
+			csr, len, decode_ep0stage(musb->ep0_state));
+
+	if (csr & MUSB_CSR0_P_DATAEND) {
+		/*
+		 * If DATAEND is set we should not call the callback,
+		 * hence the status stage is not complete.
+		 */
+		return IRQ_HANDLED;
+	}
+
+	/* I sent a stall.. need to acknowledge it now.. */
+	if (csr & MUSB_CSR0_P_SENTSTALL) {
+		musb_writew(regs, MUSB_CSR0,
+				csr & ~MUSB_CSR0_P_SENTSTALL);
+		retval = IRQ_HANDLED;
+		musb->ep0_state = MUSB_EP0_STAGE_IDLE;
+		csr = musb_readw(regs, MUSB_CSR0);
+	}
+
+	/* request ended "early" */
+	if (csr & MUSB_CSR0_P_SETUPEND) {
+		musb_writew(regs, MUSB_CSR0, MUSB_CSR0_P_SVDSETUPEND);
+		retval = IRQ_HANDLED;
+		/* Transition into the early status phase */
+		switch (musb->ep0_state) {
+		case MUSB_EP0_STAGE_TX:
+			musb->ep0_state = MUSB_EP0_STAGE_STATUSOUT;
+			break;
+		case MUSB_EP0_STAGE_RX:
+			musb->ep0_state = MUSB_EP0_STAGE_STATUSIN;
+			break;
+		default:
+			ERR("SetupEnd came in a wrong ep0stage %s\n",
+			    decode_ep0stage(musb->ep0_state));
+		}
+		csr = musb_readw(regs, MUSB_CSR0);
+		/* NOTE:  request may need completion */
+	}
+
+	/* docs from Mentor only describe tx, rx, and idle/setup states.
+	 * we need to handle nuances around status stages, and also the
+	 * case where status and setup stages come back-to-back ...
+	 */
+	switch (musb->ep0_state) {
+
+	case MUSB_EP0_STAGE_TX:
+		/* irq on clearing txpktrdy */
+		if ((csr & MUSB_CSR0_TXPKTRDY) == 0) {
+			ep0_txstate(musb);
+			retval = IRQ_HANDLED;
+		}
+		break;
+
+	case MUSB_EP0_STAGE_RX:
+		/* irq on set rxpktrdy */
+		if (csr & MUSB_CSR0_RXPKTRDY) {
+			ep0_rxstate(musb);
+			retval = IRQ_HANDLED;
+		}
+		break;
+
+	case MUSB_EP0_STAGE_STATUSIN:
+		/* end of sequence #2 (OUT/RX state) or #3 (no data) */
+
+		/* update address (if needed) only @ the end of the
+		 * status phase per usb spec, which also guarantees
+		 * we get 10 msec to receive this irq... until this
+		 * is done we won't see the next packet.
+		 */
+		if (musb->set_address) {
+			musb->set_address = false;
+			musb_writeb(mbase, MUSB_FADDR, musb->address);
+		}
+
+		/* enter test mode if needed (exit by reset) */
+		else if (musb->test_mode) {
+			dev_dbg(musb->controller, "entering TESTMODE\n");
+
+			if (MUSB_TEST_PACKET == musb->test_mode_nr)
+				musb_load_testpacket(musb);
+
+			musb_writeb(mbase, MUSB_TESTMODE,
+					musb->test_mode_nr);
+		}
+		/* FALLTHROUGH */
+
+	case MUSB_EP0_STAGE_STATUSOUT:
+		/* end of sequence #1: write to host (TX state) */
+		{
+			struct musb_request	*req;
+
+			req = next_ep0_request(musb);
+			if (req)
+				musb_g_ep0_giveback(musb, &req->request);
+		}
+
+		/*
+		 * In case when several interrupts can get coalesced,
+		 * check to see if we've already received a SETUP packet...
+		 */
+		if (csr & MUSB_CSR0_RXPKTRDY)
+			goto setup;
+
+		retval = IRQ_HANDLED;
+		musb->ep0_state = MUSB_EP0_STAGE_IDLE;
+		break;
+
+	case MUSB_EP0_STAGE_IDLE:
+		/*
+		 * This state is typically (but not always) indiscernible
+		 * from the status states since the corresponding interrupts
+		 * tend to happen within too little period of time (with only
+		 * a zero-length packet in between) and so get coalesced...
+		 */
+		retval = IRQ_HANDLED;
+		musb->ep0_state = MUSB_EP0_STAGE_SETUP;
+		/* FALLTHROUGH */
+
+	case MUSB_EP0_STAGE_SETUP:
+setup:
+		if (csr & MUSB_CSR0_RXPKTRDY) {
+			struct usb_ctrlrequest	setup;
+			int			handled = 0;
+
+			if (len != 8) {
+				ERR("SETUP packet len %d != 8 ?\n", len);
+				break;
+			}
+			musb_read_setup(musb, &setup);
+			retval = IRQ_HANDLED;
+
+			/* sometimes the RESET won't be reported */
+			if (unlikely(musb->g.speed == USB_SPEED_UNKNOWN)) {
+				u8	power;
+
+				printk(KERN_NOTICE "%s: peripheral reset "
+						"irq lost!\n",
+						musb_driver_name);
+				power = musb_readb(mbase, MUSB_POWER);
+				musb->g.speed = (power & MUSB_POWER_HSMODE)
+					? USB_SPEED_HIGH : USB_SPEED_FULL;
+
+			}
+
+			switch (musb->ep0_state) {
+
+			/* sequence #3 (no data stage), includes requests
+			 * we can't forward (notably SET_ADDRESS and the
+			 * device/endpoint feature set/clear operations)
+			 * plus SET_CONFIGURATION and others we must
+			 */
+			case MUSB_EP0_STAGE_ACKWAIT:
+				handled = service_zero_data_request(
+						musb, &setup);
+
+				/*
+				 * We're expecting no data in any case, so
+				 * always set the DATAEND bit -- doing this
+				 * here helps avoid SetupEnd interrupt coming
+				 * in the idle stage when we're stalling...
+				 */
+				musb->ackpend |= MUSB_CSR0_P_DATAEND;
+
+				/* status stage might be immediate */
+				if (handled > 0)
+					musb->ep0_state =
+						MUSB_EP0_STAGE_STATUSIN;
+				break;
+
+			/* sequence #1 (IN to host), includes GET_STATUS
+			 * requests that we can't forward, GET_DESCRIPTOR
+			 * and others that we must
+			 */
+			case MUSB_EP0_STAGE_TX:
+				handled = service_in_request(musb, &setup);
+				if (handled > 0) {
+					musb->ackpend = MUSB_CSR0_TXPKTRDY
+						| MUSB_CSR0_P_DATAEND;
+					musb->ep0_state =
+						MUSB_EP0_STAGE_STATUSOUT;
+				}
+				break;
+
+			/* sequence #2 (OUT from host), always forward */
+			default:		/* MUSB_EP0_STAGE_RX */
+				break;
+			}
+
+			dev_dbg(musb->controller, "handled %d, csr %04x, ep0stage %s\n",
+				handled, csr,
+				decode_ep0stage(musb->ep0_state));
+
+			/* unless we need to delegate this to the gadget
+			 * driver, we know how to wrap this up:  csr0 has
+			 * not yet been written.
+			 */
+			if (handled < 0)
+				goto stall;
+			else if (handled > 0)
+				goto finish;
+
+			handled = forward_to_driver(musb, &setup);
+			if (handled < 0) {
+				musb_ep_select(mbase, 0);
+stall:
+				dev_dbg(musb->controller, "stall (%d)\n", handled);
+				musb->ackpend |= MUSB_CSR0_P_SENDSTALL;
+				musb->ep0_state = MUSB_EP0_STAGE_IDLE;
+finish:
+				musb_writew(regs, MUSB_CSR0,
+						musb->ackpend);
+				musb->ackpend = 0;
+			}
+		}
+		break;
+
+	case MUSB_EP0_STAGE_ACKWAIT:
+		/* This should not happen. But happens with tusb6010 with
+		 * g_file_storage and high speed. Do nothing.
+		 */
+		retval = IRQ_HANDLED;
+		break;
+
+	default:
+		/* "can't happen" */
+		WARN_ON(1);
+		musb_writew(regs, MUSB_CSR0, MUSB_CSR0_P_SENDSTALL);
+		musb->ep0_state = MUSB_EP0_STAGE_IDLE;
+		break;
+	}
+
+	return retval;
+}
+
+
+static int
+musb_g_ep0_enable(struct usb_ep *ep, const struct usb_endpoint_descriptor *desc)
+{
+	/* always enabled */
+	return -EINVAL;
+}
+
+static int musb_g_ep0_disable(struct usb_ep *e)
+{
+	/* always enabled */
+	return -EINVAL;
+}
+
+static int
+musb_g_ep0_queue(struct usb_ep *e, struct usb_request *r, gfp_t gfp_flags)
+{
+	struct musb_ep		*ep;
+	struct musb_request	*req;
+	struct musb		*musb;
+	int			status;
+	unsigned long		lockflags;
+	void __iomem		*regs;
+
+	if (!e || !r)
+		return -EINVAL;
+
+	ep = to_musb_ep(e);
+	musb = ep->musb;
+	regs = musb->control_ep->regs;
+
+	req = to_musb_request(r);
+	req->musb = musb;
+	req->request.actual = 0;
+	req->request.status = -EINPROGRESS;
+	req->tx = ep->is_in;
+
+	spin_lock_irqsave(&musb->lock, lockflags);
+
+	if (!list_empty(&ep->req_list)) {
+		status = -EBUSY;
+		goto cleanup;
+	}
+
+	switch (musb->ep0_state) {
+	case MUSB_EP0_STAGE_RX:		/* control-OUT data */
+	case MUSB_EP0_STAGE_TX:		/* control-IN data */
+	case MUSB_EP0_STAGE_ACKWAIT:	/* zero-length data */
+		status = 0;
+		break;
+	default:
+		dev_dbg(musb->controller, "ep0 request queued in state %d\n",
+				musb->ep0_state);
+		status = -EINVAL;
+		goto cleanup;
+	}
+
+	/* add request to the list */
+	list_add_tail(&req->list, &ep->req_list);
+
+	dev_dbg(musb->controller, "queue to %s (%s), length=%d\n",
+			ep->name, ep->is_in ? "IN/TX" : "OUT/RX",
+			req->request.length);
+
+	musb_ep_select(musb->mregs, 0);
+
+	/* sequence #1, IN ... start writing the data */
+	if (musb->ep0_state == MUSB_EP0_STAGE_TX)
+		ep0_txstate(musb);
+
+	/* sequence #3, no-data ... issue IN status */
+	else if (musb->ep0_state == MUSB_EP0_STAGE_ACKWAIT) {
+		if (req->request.length)
+			status = -EINVAL;
+		else {
+			musb->ep0_state = MUSB_EP0_STAGE_STATUSIN;
+			musb_writew(regs, MUSB_CSR0,
+					musb->ackpend | MUSB_CSR0_P_DATAEND);
+			musb->ackpend = 0;
+			musb_g_ep0_giveback(ep->musb, r);
+		}
+
+	/* else for sequence #2 (OUT), caller provides a buffer
+	 * before the next packet arrives.  deferred responses
+	 * (after SETUP is acked) are racey.
+	 */
+	} else if (musb->ackpend) {
+		musb_writew(regs, MUSB_CSR0, musb->ackpend);
+		musb->ackpend = 0;
+	}
+
+cleanup:
+	spin_unlock_irqrestore(&musb->lock, lockflags);
+	return status;
+}
+
+static int musb_g_ep0_dequeue(struct usb_ep *ep, struct usb_request *req)
+{
+	/* we just won't support this */
+	return -EINVAL;
+}
+
+static int musb_g_ep0_halt(struct usb_ep *e, int value)
+{
+	struct musb_ep		*ep;
+	struct musb		*musb;
+	void __iomem		*base, *regs;
+	unsigned long		flags;
+	int			status;
+	u16			csr;
+
+	if (!e || !value)
+		return -EINVAL;
+
+	ep = to_musb_ep(e);
+	musb = ep->musb;
+	base = musb->mregs;
+	regs = musb->control_ep->regs;
+	status = 0;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	if (!list_empty(&ep->req_list)) {
+		status = -EBUSY;
+		goto cleanup;
+	}
+
+	musb_ep_select(base, 0);
+	csr = musb->ackpend;
+
+	switch (musb->ep0_state) {
+
+	/* Stalls are usually issued after parsing SETUP packet, either
+	 * directly in irq context from setup() or else later.
+	 */
+	case MUSB_EP0_STAGE_TX:		/* control-IN data */
+	case MUSB_EP0_STAGE_ACKWAIT:	/* STALL for zero-length data */
+	case MUSB_EP0_STAGE_RX:		/* control-OUT data */
+		csr = musb_readw(regs, MUSB_CSR0);
+		/* FALLTHROUGH */
+
+	/* It's also OK to issue stalls during callbacks when a non-empty
+	 * DATA stage buffer has been read (or even written).
+	 */
+	case MUSB_EP0_STAGE_STATUSIN:	/* control-OUT status */
+	case MUSB_EP0_STAGE_STATUSOUT:	/* control-IN status */
+
+		csr |= MUSB_CSR0_P_SENDSTALL;
+		musb_writew(regs, MUSB_CSR0, csr);
+		musb->ep0_state = MUSB_EP0_STAGE_IDLE;
+		musb->ackpend = 0;
+		break;
+	default:
+		dev_dbg(musb->controller, "ep0 can't halt in state %d\n", musb->ep0_state);
+		status = -EINVAL;
+	}
+
+cleanup:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return status;
+}
+
+const struct usb_ep_ops musb_g_ep0_ops = {
+	.enable		= musb_g_ep0_enable,
+	.disable	= musb_g_ep0_disable,
+	.alloc_request	= musb_alloc_request,
+	.free_request	= musb_free_request,
+	.queue		= musb_g_ep0_queue,
+	.dequeue	= musb_g_ep0_dequeue,
+	.set_halt	= musb_g_ep0_halt,
+};
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
new file mode 100644
index 0000000..855793d
--- /dev/null
+++ b/drivers/usb/musb/musb_host.c
@@ -0,0 +1,2708 @@
+/*
+ * MUSB OTG driver host support
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ * Copyright (C) 2008-2009 MontaVista Software, Inc. <source@mvista.com>
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#include <linux/module.h>
+#include <linux/kernel.h>
+#include <linux/delay.h>
+#include <linux/sched.h>
+#include <linux/slab.h>
+#include <linux/errno.h>
+#include <linux/list.h>
+#include <linux/dma-mapping.h>
+
+#include "musb_core.h"
+#include "musb_host.h"
+
+/* MUSB HOST status 22-mar-2006
+ *
+ * - There's still lots of partial code duplication for fault paths, so
+ *   they aren't handled as consistently as they need to be.
+ *
+ * - PIO mostly behaved when last tested.
+ *     + including ep0, with all usbtest cases 9, 10
+ *     + usbtest 14 (ep0out) doesn't seem to run at all
+ *     + double buffered OUT/TX endpoints saw stalls(!) with certain usbtest
+ *       configurations, but otherwise double buffering passes basic tests.
+ *     + for 2.6.N, for N > ~10, needs API changes for hcd framework.
+ *
+ * - DMA (CPPI) ... partially behaves, not currently recommended
+ *     + about 1/15 the speed of typical EHCI implementations (PCI)
+ *     + RX, all too often reqpkt seems to misbehave after tx
+ *     + TX, no known issues (other than evident silicon issue)
+ *
+ * - DMA (Mentor/OMAP) ...has at least toggle update problems
+ *
+ * - [23-feb-2009] minimal traffic scheduling to avoid bulk RX packet
+ *   starvation ... nothing yet for TX, interrupt, or bulk.
+ *
+ * - Not tested with HNP, but some SRP paths seem to behave.
+ *
+ * NOTE 24-August-2006:
+ *
+ * - Bulk traffic finally uses both sides of hardware ep1, freeing up an
+ *   extra endpoint for periodic use enabling hub + keybd + mouse.  That
+ *   mostly works, except that with "usbnet" it's easy to trigger cases
+ *   with "ping" where RX loses.  (a) ping to davinci, even "ping -f",
+ *   fine; but (b) ping _from_ davinci, even "ping -c 1", ICMP RX loses
+ *   although ARP RX wins.  (That test was done with a full speed link.)
+ */
+
+
+/*
+ * NOTE on endpoint usage:
+ *
+ * CONTROL transfers all go through ep0.  BULK ones go through dedicated IN
+ * and OUT endpoints ... hardware is dedicated for those "async" queue(s).
+ * (Yes, bulk _could_ use more of the endpoints than that, and would even
+ * benefit from it.)
+ *
+ * INTERUPPT and ISOCHRONOUS transfers are scheduled to the other endpoints.
+ * So far that scheduling is both dumb and optimistic:  the endpoint will be
+ * "claimed" until its software queue is no longer refilled.  No multiplexing
+ * of transfers between endpoints, or anything clever.
+ */
+
+struct musb *hcd_to_musb(struct usb_hcd *hcd)
+{
+	return *(struct musb **) hcd->hcd_priv;
+}
+
+
+static void musb_ep_program(struct musb *musb, u8 epnum,
+			struct urb *urb, int is_out,
+			u8 *buf, u32 offset, u32 len);
+
+/*
+ * Clear TX fifo. Needed to avoid BABBLE errors.
+ */
+static void musb_h_tx_flush_fifo(struct musb_hw_ep *ep)
+{
+	struct musb	*musb = ep->musb;
+	void __iomem	*epio = ep->regs;
+	u16		csr;
+	u16		lastcsr = 0;
+	int		retries = 1000;
+
+	csr = musb_readw(epio, MUSB_TXCSR);
+	while (csr & MUSB_TXCSR_FIFONOTEMPTY) {
+		if (csr != lastcsr)
+			dev_dbg(musb->controller, "Host TX FIFONOTEMPTY csr: %02x\n", csr);
+		lastcsr = csr;
+		csr |= MUSB_TXCSR_FLUSHFIFO | MUSB_TXCSR_TXPKTRDY;
+		musb_writew(epio, MUSB_TXCSR, csr);
+		csr = musb_readw(epio, MUSB_TXCSR);
+		if (WARN(retries-- < 1,
+				"Could not flush host TX%d fifo: csr: %04x\n",
+				ep->epnum, csr))
+			return;
+		mdelay(1);
+	}
+}
+
+static void musb_h_ep0_flush_fifo(struct musb_hw_ep *ep)
+{
+	void __iomem	*epio = ep->regs;
+	u16		csr;
+	int		retries = 5;
+
+	/* scrub any data left in the fifo */
+	do {
+		csr = musb_readw(epio, MUSB_TXCSR);
+		if (!(csr & (MUSB_CSR0_TXPKTRDY | MUSB_CSR0_RXPKTRDY)))
+			break;
+		musb_writew(epio, MUSB_TXCSR, MUSB_CSR0_FLUSHFIFO);
+		csr = musb_readw(epio, MUSB_TXCSR);
+		udelay(10);
+	} while (--retries);
+
+	WARN(!retries, "Could not flush host TX%d fifo: csr: %04x\n",
+			ep->epnum, csr);
+
+	/* and reset for the next transfer */
+	musb_writew(epio, MUSB_TXCSR, 0);
+}
+
+/*
+ * Start transmit. Caller is responsible for locking shared resources.
+ * musb must be locked.
+ */
+static inline void musb_h_tx_start(struct musb_hw_ep *ep)
+{
+	u16	txcsr;
+
+	/* NOTE: no locks here; caller should lock and select EP */
+	if (ep->epnum) {
+		txcsr = musb_readw(ep->regs, MUSB_TXCSR);
+		txcsr |= MUSB_TXCSR_TXPKTRDY | MUSB_TXCSR_H_WZC_BITS;
+		musb_writew(ep->regs, MUSB_TXCSR, txcsr);
+	} else {
+		txcsr = MUSB_CSR0_H_SETUPPKT | MUSB_CSR0_TXPKTRDY;
+		musb_writew(ep->regs, MUSB_CSR0, txcsr);
+	}
+
+}
+
+static inline void musb_h_tx_dma_start(struct musb_hw_ep *ep)
+{
+	u16	txcsr;
+
+	/* NOTE: no locks here; caller should lock and select EP */
+	txcsr = musb_readw(ep->regs, MUSB_TXCSR);
+	txcsr |= MUSB_TXCSR_DMAENAB | MUSB_TXCSR_H_WZC_BITS;
+	if (is_cppi_enabled())
+		txcsr |= MUSB_TXCSR_DMAMODE;
+	musb_writew(ep->regs, MUSB_TXCSR, txcsr);
+}
+
+static void musb_ep_set_qh(struct musb_hw_ep *ep, int is_in, struct musb_qh *qh)
+{
+	if (is_in != 0 || ep->is_shared_fifo)
+		ep->in_qh  = qh;
+	if (is_in == 0 || ep->is_shared_fifo)
+		ep->out_qh = qh;
+}
+
+static struct musb_qh *musb_ep_get_qh(struct musb_hw_ep *ep, int is_in)
+{
+	return is_in ? ep->in_qh : ep->out_qh;
+}
+
+/*
+ * Start the URB at the front of an endpoint's queue
+ * end must be claimed from the caller.
+ *
+ * Context: controller locked, irqs blocked
+ */
+static void
+musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
+{
+	u16			frame;
+	u32			len;
+	void __iomem		*mbase =  musb->mregs;
+	struct urb		*urb = next_urb(qh);
+	void			*buf = urb->transfer_buffer;
+	u32			offset = 0;
+	struct musb_hw_ep	*hw_ep = qh->hw_ep;
+	unsigned		pipe = urb->pipe;
+	u8			address = usb_pipedevice(pipe);
+	int			epnum = hw_ep->epnum;
+
+	/* initialize software qh state */
+	qh->offset = 0;
+	qh->segsize = 0;
+
+	/* gather right source of data */
+	switch (qh->type) {
+	case USB_ENDPOINT_XFER_CONTROL:
+		/* control transfers always start with SETUP */
+		is_in = 0;
+		musb->ep0_stage = MUSB_EP0_START;
+		buf = urb->setup_packet;
+		len = 8;
+		break;
+	case USB_ENDPOINT_XFER_ISOC:
+		qh->iso_idx = 0;
+		qh->frame = 0;
+		offset = urb->iso_frame_desc[0].offset;
+		len = urb->iso_frame_desc[0].length;
+		break;
+	default:		/* bulk, interrupt */
+		/* actual_length may be nonzero on retry paths */
+		buf = urb->transfer_buffer + urb->actual_length;
+		len = urb->transfer_buffer_length - urb->actual_length;
+	}
+
+	dev_dbg(musb->controller, "qh %p urb %p dev%d ep%d%s%s, hw_ep %d, %p/%d\n",
+			qh, urb, address, qh->epnum,
+			is_in ? "in" : "out",
+			({char *s; switch (qh->type) {
+			case USB_ENDPOINT_XFER_CONTROL:	s = ""; break;
+			case USB_ENDPOINT_XFER_BULK:	s = "-bulk"; break;
+			case USB_ENDPOINT_XFER_ISOC:	s = "-iso"; break;
+			default:			s = "-intr"; break;
+			} s; }),
+			epnum, buf + offset, len);
+
+	/* Configure endpoint */
+	musb_ep_set_qh(hw_ep, is_in, qh);
+	musb_ep_program(musb, epnum, urb, !is_in, buf, offset, len);
+
+	/* transmit may have more work: start it when it is time */
+	if (is_in)
+		return;
+
+	/* determine if the time is right for a periodic transfer */
+	switch (qh->type) {
+	case USB_ENDPOINT_XFER_ISOC:
+	case USB_ENDPOINT_XFER_INT:
+		dev_dbg(musb->controller, "check whether there's still time for periodic Tx\n");
+		frame = musb_readw(mbase, MUSB_FRAME);
+		/* FIXME this doesn't implement that scheduling policy ...
+		 * or handle framecounter wrapping
+		 */
+		if (1) {	/* Always assume URB_ISO_ASAP */
+			/* REVISIT the SOF irq handler shouldn't duplicate
+			 * this code; and we don't init urb->start_frame...
+			 */
+			qh->frame = 0;
+			goto start;
+		} else {
+			qh->frame = urb->start_frame;
+			/* enable SOF interrupt so we can count down */
+			dev_dbg(musb->controller, "SOF for %d\n", epnum);
+#if 1 /* ifndef	CONFIG_ARCH_DAVINCI */
+			musb_writeb(mbase, MUSB_INTRUSBE, 0xff);
+#endif
+		}
+		break;
+	default:
+start:
+		dev_dbg(musb->controller, "Start TX%d %s\n", epnum,
+			hw_ep->tx_channel ? "dma" : "pio");
+
+		if (!hw_ep->tx_channel)
+			musb_h_tx_start(hw_ep);
+		else if (is_cppi_enabled() || tusb_dma_omap())
+			musb_h_tx_dma_start(hw_ep);
+	}
+}
+
+/* Context: caller owns controller lock, IRQs are blocked */
+static void musb_giveback(struct musb *musb, struct urb *urb, int status)
+__releases(musb->lock)
+__acquires(musb->lock)
+{
+	dev_dbg(musb->controller,
+			"complete %p %pF (%d), dev%d ep%d%s, %d/%d\n",
+			urb, urb->complete, status,
+			usb_pipedevice(urb->pipe),
+			usb_pipeendpoint(urb->pipe),
+			usb_pipein(urb->pipe) ? "in" : "out",
+			urb->actual_length, urb->transfer_buffer_length
+			);
+
+	usb_hcd_unlink_urb_from_ep(musb->hcd, urb);
+	spin_unlock(&musb->lock);
+	usb_hcd_giveback_urb(musb->hcd, urb, status);
+	spin_lock(&musb->lock);
+}
+
+/* For bulk/interrupt endpoints only */
+static inline void musb_save_toggle(struct musb_qh *qh, int is_in,
+				    struct urb *urb)
+{
+	void __iomem		*epio = qh->hw_ep->regs;
+	u16			csr;
+
+	/*
+	 * FIXME: the current Mentor DMA code seems to have
+	 * problems getting toggle correct.
+	 */
+
+	if (is_in)
+		csr = musb_readw(epio, MUSB_RXCSR) & MUSB_RXCSR_H_DATATOGGLE;
+	else
+		csr = musb_readw(epio, MUSB_TXCSR) & MUSB_TXCSR_H_DATATOGGLE;
+
+	usb_settoggle(urb->dev, qh->epnum, !is_in, csr ? 1 : 0);
+}
+
+/*
+ * Advance this hardware endpoint's queue, completing the specified URB and
+ * advancing to either the next URB queued to that qh, or else invalidating
+ * that qh and advancing to the next qh scheduled after the current one.
+ *
+ * Context: caller owns controller lock, IRQs are blocked
+ */
+static void musb_advance_schedule(struct musb *musb, struct urb *urb,
+				  struct musb_hw_ep *hw_ep, int is_in)
+{
+	struct musb_qh		*qh = musb_ep_get_qh(hw_ep, is_in);
+	struct musb_hw_ep	*ep = qh->hw_ep;
+	int			ready = qh->is_ready;
+	int			status;
+
+	status = (urb->status == -EINPROGRESS) ? 0 : urb->status;
+
+	/* save toggle eagerly, for paranoia */
+	switch (qh->type) {
+	case USB_ENDPOINT_XFER_BULK:
+	case USB_ENDPOINT_XFER_INT:
+		musb_save_toggle(qh, is_in, urb);
+		break;
+	case USB_ENDPOINT_XFER_ISOC:
+		if (status == 0 && urb->error_count)
+			status = -EXDEV;
+		break;
+	}
+
+	qh->is_ready = 0;
+	musb_giveback(musb, urb, status);
+	qh->is_ready = ready;
+
+	/* reclaim resources (and bandwidth) ASAP; deschedule it, and
+	 * invalidate qh as soon as list_empty(&hep->urb_list)
+	 */
+	if (list_empty(&qh->hep->urb_list)) {
+		struct list_head	*head;
+		struct dma_controller	*dma = musb->dma_controller;
+
+		if (is_in) {
+			ep->rx_reinit = 1;
+			if (ep->rx_channel) {
+				dma->channel_release(ep->rx_channel);
+				ep->rx_channel = NULL;
+			}
+		} else {
+			ep->tx_reinit = 1;
+			if (ep->tx_channel) {
+				dma->channel_release(ep->tx_channel);
+				ep->tx_channel = NULL;
+			}
+		}
+
+		/* Clobber old pointers to this qh */
+		musb_ep_set_qh(ep, is_in, NULL);
+		qh->hep->hcpriv = NULL;
+
+		switch (qh->type) {
+
+		case USB_ENDPOINT_XFER_CONTROL:
+		case USB_ENDPOINT_XFER_BULK:
+			/* fifo policy for these lists, except that NAKing
+			 * should rotate a qh to the end (for fairness).
+			 */
+			if (qh->mux == 1) {
+				head = qh->ring.prev;
+				list_del(&qh->ring);
+				kfree(qh);
+				qh = first_qh(head);
+				break;
+			}
+
+		case USB_ENDPOINT_XFER_ISOC:
+		case USB_ENDPOINT_XFER_INT:
+			/* this is where periodic bandwidth should be
+			 * de-allocated if it's tracked and allocated;
+			 * and where we'd update the schedule tree...
+			 */
+			kfree(qh);
+			qh = NULL;
+			break;
+		}
+	}
+
+	if (qh != NULL && qh->is_ready) {
+		dev_dbg(musb->controller, "... next ep%d %cX urb %p\n",
+		    hw_ep->epnum, is_in ? 'R' : 'T', next_urb(qh));
+		musb_start_urb(musb, is_in, qh);
+	}
+}
+
+static u16 musb_h_flush_rxfifo(struct musb_hw_ep *hw_ep, u16 csr)
+{
+	/* we don't want fifo to fill itself again;
+	 * ignore dma (various models),
+	 * leave toggle alone (may not have been saved yet)
+	 */
+	csr |= MUSB_RXCSR_FLUSHFIFO | MUSB_RXCSR_RXPKTRDY;
+	csr &= ~(MUSB_RXCSR_H_REQPKT
+		| MUSB_RXCSR_H_AUTOREQ
+		| MUSB_RXCSR_AUTOCLEAR);
+
+	/* write 2x to allow double buffering */
+	musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
+	musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
+
+	/* flush writebuffer */
+	return musb_readw(hw_ep->regs, MUSB_RXCSR);
+}
+
+/*
+ * PIO RX for a packet (or part of it).
+ */
+static bool
+musb_host_packet_rx(struct musb *musb, struct urb *urb, u8 epnum, u8 iso_err)
+{
+	u16			rx_count;
+	u8			*buf;
+	u16			csr;
+	bool			done = false;
+	u32			length;
+	int			do_flush = 0;
+	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
+	void __iomem		*epio = hw_ep->regs;
+	struct musb_qh		*qh = hw_ep->in_qh;
+	int			pipe = urb->pipe;
+	void			*buffer = urb->transfer_buffer;
+
+	/* musb_ep_select(mbase, epnum); */
+	rx_count = musb_readw(epio, MUSB_RXCOUNT);
+	dev_dbg(musb->controller, "RX%d count %d, buffer %p len %d/%d\n", epnum, rx_count,
+			urb->transfer_buffer, qh->offset,
+			urb->transfer_buffer_length);
+
+	/* unload FIFO */
+	if (usb_pipeisoc(pipe)) {
+		int					status = 0;
+		struct usb_iso_packet_descriptor	*d;
+
+		if (iso_err) {
+			status = -EILSEQ;
+			urb->error_count++;
+		}
+
+		d = urb->iso_frame_desc + qh->iso_idx;
+		buf = buffer + d->offset;
+		length = d->length;
+		if (rx_count > length) {
+			if (status == 0) {
+				status = -EOVERFLOW;
+				urb->error_count++;
+			}
+			dev_dbg(musb->controller, "** OVERFLOW %d into %d\n", rx_count, length);
+			do_flush = 1;
+		} else
+			length = rx_count;
+		urb->actual_length += length;
+		d->actual_length = length;
+
+		d->status = status;
+
+		/* see if we are done */
+		done = (++qh->iso_idx >= urb->number_of_packets);
+	} else {
+		/* non-isoch */
+		buf = buffer + qh->offset;
+		length = urb->transfer_buffer_length - qh->offset;
+		if (rx_count > length) {
+			if (urb->status == -EINPROGRESS)
+				urb->status = -EOVERFLOW;
+			dev_dbg(musb->controller, "** OVERFLOW %d into %d\n", rx_count, length);
+			do_flush = 1;
+		} else
+			length = rx_count;
+		urb->actual_length += length;
+		qh->offset += length;
+
+		/* see if we are done */
+		done = (urb->actual_length == urb->transfer_buffer_length)
+			|| (rx_count < qh->maxpacket)
+			|| (urb->status != -EINPROGRESS);
+		if (done
+				&& (urb->status == -EINPROGRESS)
+				&& (urb->transfer_flags & URB_SHORT_NOT_OK)
+				&& (urb->actual_length
+					< urb->transfer_buffer_length))
+			urb->status = -EREMOTEIO;
+	}
+
+	musb_read_fifo(hw_ep, length, buf);
+
+	csr = musb_readw(epio, MUSB_RXCSR);
+	csr |= MUSB_RXCSR_H_WZC_BITS;
+	if (unlikely(do_flush))
+		musb_h_flush_rxfifo(hw_ep, csr);
+	else {
+		/* REVISIT this assumes AUTOCLEAR is never set */
+		csr &= ~(MUSB_RXCSR_RXPKTRDY | MUSB_RXCSR_H_REQPKT);
+		if (!done)
+			csr |= MUSB_RXCSR_H_REQPKT;
+		musb_writew(epio, MUSB_RXCSR, csr);
+	}
+
+	return done;
+}
+
+/* we don't always need to reinit a given side of an endpoint...
+ * when we do, use tx/rx reinit routine and then construct a new CSR
+ * to address data toggle, NYET, and DMA or PIO.
+ *
+ * it's possible that driver bugs (especially for DMA) or aborting a
+ * transfer might have left the endpoint busier than it should be.
+ * the busy/not-empty tests are basically paranoia.
+ */
+static void
+musb_rx_reinit(struct musb *musb, struct musb_qh *qh, struct musb_hw_ep *ep)
+{
+	u16	csr;
+
+	/* NOTE:  we know the "rx" fifo reinit never triggers for ep0.
+	 * That always uses tx_reinit since ep0 repurposes TX register
+	 * offsets; the initial SETUP packet is also a kind of OUT.
+	 */
+
+	/* if programmed for Tx, put it in RX mode */
+	if (ep->is_shared_fifo) {
+		csr = musb_readw(ep->regs, MUSB_TXCSR);
+		if (csr & MUSB_TXCSR_MODE) {
+			musb_h_tx_flush_fifo(ep);
+			csr = musb_readw(ep->regs, MUSB_TXCSR);
+			musb_writew(ep->regs, MUSB_TXCSR,
+				    csr | MUSB_TXCSR_FRCDATATOG);
+		}
+
+		/*
+		 * Clear the MODE bit (and everything else) to enable Rx.
+		 * NOTE: we mustn't clear the DMAMODE bit before DMAENAB.
+		 */
+		if (csr & MUSB_TXCSR_DMAMODE)
+			musb_writew(ep->regs, MUSB_TXCSR, MUSB_TXCSR_DMAMODE);
+		musb_writew(ep->regs, MUSB_TXCSR, 0);
+
+	/* scrub all previous state, clearing toggle */
+	} else {
+		csr = musb_readw(ep->regs, MUSB_RXCSR);
+		if (csr & MUSB_RXCSR_RXPKTRDY)
+			WARNING("rx%d, packet/%d ready?\n", ep->epnum,
+				musb_readw(ep->regs, MUSB_RXCOUNT));
+
+		musb_h_flush_rxfifo(ep, MUSB_RXCSR_CLRDATATOG);
+	}
+
+	/* target addr and (for multipoint) hub addr/port */
+	if (musb->is_multipoint) {
+		musb_write_rxfunaddr(ep->target_regs, qh->addr_reg);
+		musb_write_rxhubaddr(ep->target_regs, qh->h_addr_reg);
+		musb_write_rxhubport(ep->target_regs, qh->h_port_reg);
+
+	} else
+		musb_writeb(musb->mregs, MUSB_FADDR, qh->addr_reg);
+
+	/* protocol/endpoint, interval/NAKlimit, i/o size */
+	musb_writeb(ep->regs, MUSB_RXTYPE, qh->type_reg);
+	musb_writeb(ep->regs, MUSB_RXINTERVAL, qh->intv_reg);
+	/* NOTE: bulk combining rewrites high bits of maxpacket */
+	/* Set RXMAXP with the FIFO size of the endpoint
+	 * to disable double buffer mode.
+	 */
+	if (musb->double_buffer_not_ok)
+		musb_writew(ep->regs, MUSB_RXMAXP, ep->max_packet_sz_rx);
+	else
+		musb_writew(ep->regs, MUSB_RXMAXP,
+				qh->maxpacket | ((qh->hb_mult - 1) << 11));
+
+	ep->rx_reinit = 0;
+}
+
+static bool musb_tx_dma_program(struct dma_controller *dma,
+		struct musb_hw_ep *hw_ep, struct musb_qh *qh,
+		struct urb *urb, u32 offset, u32 length)
+{
+	struct dma_channel	*channel = hw_ep->tx_channel;
+	void __iomem		*epio = hw_ep->regs;
+	u16			pkt_size = qh->maxpacket;
+	u16			csr;
+	u8			mode;
+
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA)
+	if (length > channel->max_len)
+		length = channel->max_len;
+
+	csr = musb_readw(epio, MUSB_TXCSR);
+	if (length > pkt_size) {
+		mode = 1;
+		csr |= MUSB_TXCSR_DMAMODE | MUSB_TXCSR_DMAENAB;
+		/* autoset shouldn't be set in high bandwidth */
+		/*
+		 * Enable Autoset according to table
+		 * below
+		 * bulk_split hb_mult	Autoset_Enable
+		 *	0	1	Yes(Normal)
+		 *	0	>1	No(High BW ISO)
+		 *	1	1	Yes(HS bulk)
+		 *	1	>1	Yes(FS bulk)
+		 */
+		if (qh->hb_mult == 1 || (qh->hb_mult > 1 &&
+					can_bulk_split(hw_ep->musb, qh->type)))
+			csr |= MUSB_TXCSR_AUTOSET;
+	} else {
+		mode = 0;
+		csr &= ~(MUSB_TXCSR_AUTOSET | MUSB_TXCSR_DMAMODE);
+		csr |= MUSB_TXCSR_DMAENAB; /* against programmer's guide */
+	}
+	channel->desired_mode = mode;
+	musb_writew(epio, MUSB_TXCSR, csr);
+#else
+	if (!is_cppi_enabled() && !tusb_dma_omap())
+		return false;
+
+	channel->actual_len = 0;
+
+	/*
+	 * TX uses "RNDIS" mode automatically but needs help
+	 * to identify the zero-length-final-packet case.
+	 */
+	mode = (urb->transfer_flags & URB_ZERO_PACKET) ? 1 : 0;
+#endif
+
+	qh->segsize = length;
+
+	/*
+	 * Ensure the data reaches to main memory before starting
+	 * DMA transfer
+	 */
+	wmb();
+
+	if (!dma->channel_program(channel, pkt_size, mode,
+			urb->transfer_dma + offset, length)) {
+		dma->channel_release(channel);
+		hw_ep->tx_channel = NULL;
+
+		csr = musb_readw(epio, MUSB_TXCSR);
+		csr &= ~(MUSB_TXCSR_AUTOSET | MUSB_TXCSR_DMAENAB);
+		musb_writew(epio, MUSB_TXCSR, csr | MUSB_TXCSR_H_WZC_BITS);
+		return false;
+	}
+	return true;
+}
+
+/*
+ * Program an HDRC endpoint as per the given URB
+ * Context: irqs blocked, controller lock held
+ */
+static void musb_ep_program(struct musb *musb, u8 epnum,
+			struct urb *urb, int is_out,
+			u8 *buf, u32 offset, u32 len)
+{
+	struct dma_controller	*dma_controller;
+	struct dma_channel	*dma_channel;
+	u8			dma_ok;
+	void __iomem		*mbase = musb->mregs;
+	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
+	void __iomem		*epio = hw_ep->regs;
+	struct musb_qh		*qh = musb_ep_get_qh(hw_ep, !is_out);
+	u16			packet_sz = qh->maxpacket;
+	u8			use_dma = 1;
+	u16			csr;
+
+	dev_dbg(musb->controller, "%s hw%d urb %p spd%d dev%d ep%d%s "
+				"h_addr%02x h_port%02x bytes %d\n",
+			is_out ? "-->" : "<--",
+			epnum, urb, urb->dev->speed,
+			qh->addr_reg, qh->epnum, is_out ? "out" : "in",
+			qh->h_addr_reg, qh->h_port_reg,
+			len);
+
+	musb_ep_select(mbase, epnum);
+
+	if (is_out && !len) {
+		use_dma = 0;
+		csr = musb_readw(epio, MUSB_TXCSR);
+		csr &= ~MUSB_TXCSR_DMAENAB;
+		musb_writew(epio, MUSB_TXCSR, csr);
+		hw_ep->tx_channel = NULL;
+	}
+
+	/* candidate for DMA? */
+	dma_controller = musb->dma_controller;
+	if (use_dma && is_dma_capable() && epnum && dma_controller) {
+		dma_channel = is_out ? hw_ep->tx_channel : hw_ep->rx_channel;
+		if (!dma_channel) {
+			dma_channel = dma_controller->channel_alloc(
+					dma_controller, hw_ep, is_out);
+			if (is_out)
+				hw_ep->tx_channel = dma_channel;
+			else
+				hw_ep->rx_channel = dma_channel;
+		}
+	} else
+		dma_channel = NULL;
+
+	/* make sure we clear DMAEnab, autoSet bits from previous run */
+
+	/* OUT/transmit/EP0 or IN/receive? */
+	if (is_out) {
+		u16	csr;
+		u16	int_txe;
+		u16	load_count;
+
+		csr = musb_readw(epio, MUSB_TXCSR);
+
+		/* disable interrupt in case we flush */
+		int_txe = musb->intrtxe;
+		musb_writew(mbase, MUSB_INTRTXE, int_txe & ~(1 << epnum));
+
+		/* general endpoint setup */
+		if (epnum) {
+			/* flush all old state, set default */
+			/*
+			 * We could be flushing valid
+			 * packets in double buffering
+			 * case
+			 */
+			if (!hw_ep->tx_double_buffered)
+				musb_h_tx_flush_fifo(hw_ep);
+
+			/*
+			 * We must not clear the DMAMODE bit before or in
+			 * the same cycle with the DMAENAB bit, so we clear
+			 * the latter first...
+			 */
+			csr &= ~(MUSB_TXCSR_H_NAKTIMEOUT
+					| MUSB_TXCSR_AUTOSET
+					| MUSB_TXCSR_DMAENAB
+					| MUSB_TXCSR_FRCDATATOG
+					| MUSB_TXCSR_H_RXSTALL
+					| MUSB_TXCSR_H_ERROR
+					| MUSB_TXCSR_TXPKTRDY
+					);
+			csr |= MUSB_TXCSR_MODE;
+
+			if (!hw_ep->tx_double_buffered) {
+				if (usb_gettoggle(urb->dev, qh->epnum, 1))
+					csr |= MUSB_TXCSR_H_WR_DATATOGGLE
+						| MUSB_TXCSR_H_DATATOGGLE;
+				else
+					csr |= MUSB_TXCSR_CLRDATATOG;
+			}
+
+			musb_writew(epio, MUSB_TXCSR, csr);
+			/* REVISIT may need to clear FLUSHFIFO ... */
+			csr &= ~MUSB_TXCSR_DMAMODE;
+			musb_writew(epio, MUSB_TXCSR, csr);
+			csr = musb_readw(epio, MUSB_TXCSR);
+		} else {
+			/* endpoint 0: just flush */
+			musb_h_ep0_flush_fifo(hw_ep);
+		}
+
+		/* target addr and (for multipoint) hub addr/port */
+		if (musb->is_multipoint) {
+			musb_write_txfunaddr(mbase, epnum, qh->addr_reg);
+			musb_write_txhubaddr(mbase, epnum, qh->h_addr_reg);
+			musb_write_txhubport(mbase, epnum, qh->h_port_reg);
+/* FIXME if !epnum, do the same for RX ... */
+		} else
+			musb_writeb(mbase, MUSB_FADDR, qh->addr_reg);
+
+		/* protocol/endpoint/interval/NAKlimit */
+		if (epnum) {
+			musb_writeb(epio, MUSB_TXTYPE, qh->type_reg);
+			if (musb->double_buffer_not_ok) {
+				musb_writew(epio, MUSB_TXMAXP,
+						hw_ep->max_packet_sz_tx);
+			} else if (can_bulk_split(musb, qh->type)) {
+				qh->hb_mult = hw_ep->max_packet_sz_tx
+						/ packet_sz;
+				musb_writew(epio, MUSB_TXMAXP, packet_sz
+					| ((qh->hb_mult) - 1) << 11);
+			} else {
+				musb_writew(epio, MUSB_TXMAXP,
+						qh->maxpacket |
+						((qh->hb_mult - 1) << 11));
+			}
+			musb_writeb(epio, MUSB_TXINTERVAL, qh->intv_reg);
+		} else {
+			musb_writeb(epio, MUSB_NAKLIMIT0, qh->intv_reg);
+			if (musb->is_multipoint)
+				musb_writeb(epio, MUSB_TYPE0,
+						qh->type_reg);
+		}
+
+		if (can_bulk_split(musb, qh->type))
+			load_count = min((u32) hw_ep->max_packet_sz_tx,
+						len);
+		else
+			load_count = min((u32) packet_sz, len);
+
+		if (dma_channel && musb_tx_dma_program(dma_controller,
+					hw_ep, qh, urb, offset, len))
+			load_count = 0;
+
+		if (load_count) {
+			/* PIO to load FIFO */
+			qh->segsize = load_count;
+			if (!buf) {
+				sg_miter_start(&qh->sg_miter, urb->sg, 1,
+						SG_MITER_ATOMIC
+						| SG_MITER_FROM_SG);
+				if (!sg_miter_next(&qh->sg_miter)) {
+					dev_err(musb->controller,
+							"error: sg"
+							"list empty\n");
+					sg_miter_stop(&qh->sg_miter);
+					goto finish;
+				}
+				buf = qh->sg_miter.addr + urb->sg->offset +
+					urb->actual_length;
+				load_count = min_t(u32, load_count,
+						qh->sg_miter.length);
+				musb_write_fifo(hw_ep, load_count, buf);
+				qh->sg_miter.consumed = load_count;
+				sg_miter_stop(&qh->sg_miter);
+			} else
+				musb_write_fifo(hw_ep, load_count, buf);
+		}
+finish:
+		/* re-enable interrupt */
+		musb_writew(mbase, MUSB_INTRTXE, int_txe);
+
+	/* IN/receive */
+	} else {
+		u16	csr;
+
+		if (hw_ep->rx_reinit) {
+			musb_rx_reinit(musb, qh, hw_ep);
+
+			/* init new state: toggle and NYET, maybe DMA later */
+			if (usb_gettoggle(urb->dev, qh->epnum, 0))
+				csr = MUSB_RXCSR_H_WR_DATATOGGLE
+					| MUSB_RXCSR_H_DATATOGGLE;
+			else
+				csr = 0;
+			if (qh->type == USB_ENDPOINT_XFER_INT)
+				csr |= MUSB_RXCSR_DISNYET;
+
+		} else {
+			csr = musb_readw(hw_ep->regs, MUSB_RXCSR);
+
+			if (csr & (MUSB_RXCSR_RXPKTRDY
+					| MUSB_RXCSR_DMAENAB
+					| MUSB_RXCSR_H_REQPKT))
+				ERR("broken !rx_reinit, ep%d csr %04x\n",
+						hw_ep->epnum, csr);
+
+			/* scrub any stale state, leaving toggle alone */
+			csr &= MUSB_RXCSR_DISNYET;
+		}
+
+		/* kick things off */
+
+		if ((is_cppi_enabled() || tusb_dma_omap()) && dma_channel) {
+			/* Candidate for DMA */
+			dma_channel->actual_len = 0L;
+			qh->segsize = len;
+
+			/* AUTOREQ is in a DMA register */
+			musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
+			csr = musb_readw(hw_ep->regs, MUSB_RXCSR);
+
+			/*
+			 * Unless caller treats short RX transfers as
+			 * errors, we dare not queue multiple transfers.
+			 */
+			dma_ok = dma_controller->channel_program(dma_channel,
+					packet_sz, !(urb->transfer_flags &
+						     URB_SHORT_NOT_OK),
+					urb->transfer_dma + offset,
+					qh->segsize);
+			if (!dma_ok) {
+				dma_controller->channel_release(dma_channel);
+				hw_ep->rx_channel = dma_channel = NULL;
+			} else
+				csr |= MUSB_RXCSR_DMAENAB;
+		}
+
+		csr |= MUSB_RXCSR_H_REQPKT;
+		dev_dbg(musb->controller, "RXCSR%d := %04x\n", epnum, csr);
+		musb_writew(hw_ep->regs, MUSB_RXCSR, csr);
+		csr = musb_readw(hw_ep->regs, MUSB_RXCSR);
+	}
+}
+
+/* Schedule next QH from musb->in_bulk/out_bulk and move the current qh to
+ * the end; avoids starvation for other endpoints.
+ */
+static void musb_bulk_nak_timeout(struct musb *musb, struct musb_hw_ep *ep,
+	int is_in)
+{
+	struct dma_channel	*dma;
+	struct urb		*urb;
+	void __iomem		*mbase = musb->mregs;
+	void __iomem		*epio = ep->regs;
+	struct musb_qh		*cur_qh, *next_qh;
+	u16			rx_csr, tx_csr;
+
+	musb_ep_select(mbase, ep->epnum);
+	if (is_in) {
+		dma = is_dma_capable() ? ep->rx_channel : NULL;
+
+		/* clear nak timeout bit */
+		rx_csr = musb_readw(epio, MUSB_RXCSR);
+		rx_csr |= MUSB_RXCSR_H_WZC_BITS;
+		rx_csr &= ~MUSB_RXCSR_DATAERROR;
+		musb_writew(epio, MUSB_RXCSR, rx_csr);
+
+		cur_qh = first_qh(&musb->in_bulk);
+	} else {
+		dma = is_dma_capable() ? ep->tx_channel : NULL;
+
+		/* clear nak timeout bit */
+		tx_csr = musb_readw(epio, MUSB_TXCSR);
+		tx_csr |= MUSB_TXCSR_H_WZC_BITS;
+		tx_csr &= ~MUSB_TXCSR_H_NAKTIMEOUT;
+		musb_writew(epio, MUSB_TXCSR, tx_csr);
+
+		cur_qh = first_qh(&musb->out_bulk);
+	}
+	if (cur_qh) {
+		urb = next_urb(cur_qh);
+		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
+			musb->dma_controller->channel_abort(dma);
+			urb->actual_length += dma->actual_len;
+			dma->actual_len = 0L;
+		}
+		musb_save_toggle(cur_qh, is_in, urb);
+
+		if (is_in) {
+			/* move cur_qh to end of queue */
+			list_move_tail(&cur_qh->ring, &musb->in_bulk);
+
+			/* get the next qh from musb->in_bulk */
+			next_qh = first_qh(&musb->in_bulk);
+
+			/* set rx_reinit and schedule the next qh */
+			ep->rx_reinit = 1;
+		} else {
+			/* move cur_qh to end of queue */
+			list_move_tail(&cur_qh->ring, &musb->out_bulk);
+
+			/* get the next qh from musb->out_bulk */
+			next_qh = first_qh(&musb->out_bulk);
+
+			/* set tx_reinit and schedule the next qh */
+			ep->tx_reinit = 1;
+		}
+		musb_start_urb(musb, is_in, next_qh);
+	}
+}
+
+/*
+ * Service the default endpoint (ep0) as host.
+ * Return true until it's time to start the status stage.
+ */
+static bool musb_h_ep0_continue(struct musb *musb, u16 len, struct urb *urb)
+{
+	bool			 more = false;
+	u8			*fifo_dest = NULL;
+	u16			fifo_count = 0;
+	struct musb_hw_ep	*hw_ep = musb->control_ep;
+	struct musb_qh		*qh = hw_ep->in_qh;
+	struct usb_ctrlrequest	*request;
+
+	switch (musb->ep0_stage) {
+	case MUSB_EP0_IN:
+		fifo_dest = urb->transfer_buffer + urb->actual_length;
+		fifo_count = min_t(size_t, len, urb->transfer_buffer_length -
+				   urb->actual_length);
+		if (fifo_count < len)
+			urb->status = -EOVERFLOW;
+
+		musb_read_fifo(hw_ep, fifo_count, fifo_dest);
+
+		urb->actual_length += fifo_count;
+		if (len < qh->maxpacket) {
+			/* always terminate on short read; it's
+			 * rarely reported as an error.
+			 */
+		} else if (urb->actual_length <
+				urb->transfer_buffer_length)
+			more = true;
+		break;
+	case MUSB_EP0_START:
+		request = (struct usb_ctrlrequest *) urb->setup_packet;
+
+		if (!request->wLength) {
+			dev_dbg(musb->controller, "start no-DATA\n");
+			break;
+		} else if (request->bRequestType & USB_DIR_IN) {
+			dev_dbg(musb->controller, "start IN-DATA\n");
+			musb->ep0_stage = MUSB_EP0_IN;
+			more = true;
+			break;
+		} else {
+			dev_dbg(musb->controller, "start OUT-DATA\n");
+			musb->ep0_stage = MUSB_EP0_OUT;
+			more = true;
+		}
+		/* FALLTHROUGH */
+	case MUSB_EP0_OUT:
+		fifo_count = min_t(size_t, qh->maxpacket,
+				   urb->transfer_buffer_length -
+				   urb->actual_length);
+		if (fifo_count) {
+			fifo_dest = (u8 *) (urb->transfer_buffer
+					+ urb->actual_length);
+			dev_dbg(musb->controller, "Sending %d byte%s to ep0 fifo %p\n",
+					fifo_count,
+					(fifo_count == 1) ? "" : "s",
+					fifo_dest);
+			musb_write_fifo(hw_ep, fifo_count, fifo_dest);
+
+			urb->actual_length += fifo_count;
+			more = true;
+		}
+		break;
+	default:
+		ERR("bogus ep0 stage %d\n", musb->ep0_stage);
+		break;
+	}
+
+	return more;
+}
+
+/*
+ * Handle default endpoint interrupt as host. Only called in IRQ time
+ * from musb_interrupt().
+ *
+ * called with controller irqlocked
+ */
+irqreturn_t musb_h_ep0_irq(struct musb *musb)
+{
+	struct urb		*urb;
+	u16			csr, len;
+	int			status = 0;
+	void __iomem		*mbase = musb->mregs;
+	struct musb_hw_ep	*hw_ep = musb->control_ep;
+	void __iomem		*epio = hw_ep->regs;
+	struct musb_qh		*qh = hw_ep->in_qh;
+	bool			complete = false;
+	irqreturn_t		retval = IRQ_NONE;
+
+	/* ep0 only has one queue, "in" */
+	urb = next_urb(qh);
+
+	musb_ep_select(mbase, 0);
+	csr = musb_readw(epio, MUSB_CSR0);
+	len = (csr & MUSB_CSR0_RXPKTRDY)
+			? musb_readb(epio, MUSB_COUNT0)
+			: 0;
+
+	dev_dbg(musb->controller, "<== csr0 %04x, qh %p, count %d, urb %p, stage %d\n",
+		csr, qh, len, urb, musb->ep0_stage);
+
+	/* if we just did status stage, we are done */
+	if (MUSB_EP0_STATUS == musb->ep0_stage) {
+		retval = IRQ_HANDLED;
+		complete = true;
+	}
+
+	/* prepare status */
+	if (csr & MUSB_CSR0_H_RXSTALL) {
+		dev_dbg(musb->controller, "STALLING ENDPOINT\n");
+		status = -EPIPE;
+
+	} else if (csr & MUSB_CSR0_H_ERROR) {
+		dev_dbg(musb->controller, "no response, csr0 %04x\n", csr);
+		status = -EPROTO;
+
+	} else if (csr & MUSB_CSR0_H_NAKTIMEOUT) {
+		dev_dbg(musb->controller, "control NAK timeout\n");
+
+		/* NOTE:  this code path would be a good place to PAUSE a
+		 * control transfer, if another one is queued, so that
+		 * ep0 is more likely to stay busy.  That's already done
+		 * for bulk RX transfers.
+		 *
+		 * if (qh->ring.next != &musb->control), then
+		 * we have a candidate... NAKing is *NOT* an error
+		 */
+		musb_writew(epio, MUSB_CSR0, 0);
+		retval = IRQ_HANDLED;
+	}
+
+	if (status) {
+		dev_dbg(musb->controller, "aborting\n");
+		retval = IRQ_HANDLED;
+		if (urb)
+			urb->status = status;
+		complete = true;
+
+		/* use the proper sequence to abort the transfer */
+		if (csr & MUSB_CSR0_H_REQPKT) {
+			csr &= ~MUSB_CSR0_H_REQPKT;
+			musb_writew(epio, MUSB_CSR0, csr);
+			csr &= ~MUSB_CSR0_H_NAKTIMEOUT;
+			musb_writew(epio, MUSB_CSR0, csr);
+		} else {
+			musb_h_ep0_flush_fifo(hw_ep);
+		}
+
+		musb_writeb(epio, MUSB_NAKLIMIT0, 0);
+
+		/* clear it */
+		musb_writew(epio, MUSB_CSR0, 0);
+	}
+
+	if (unlikely(!urb)) {
+		/* stop endpoint since we have no place for its data, this
+		 * SHOULD NEVER HAPPEN! */
+		ERR("no URB for end 0\n");
+
+		musb_h_ep0_flush_fifo(hw_ep);
+		goto done;
+	}
+
+	if (!complete) {
+		/* call common logic and prepare response */
+		if (musb_h_ep0_continue(musb, len, urb)) {
+			/* more packets required */
+			csr = (MUSB_EP0_IN == musb->ep0_stage)
+				?  MUSB_CSR0_H_REQPKT : MUSB_CSR0_TXPKTRDY;
+		} else {
+			/* data transfer complete; perform status phase */
+			if (usb_pipeout(urb->pipe)
+					|| !urb->transfer_buffer_length)
+				csr = MUSB_CSR0_H_STATUSPKT
+					| MUSB_CSR0_H_REQPKT;
+			else
+				csr = MUSB_CSR0_H_STATUSPKT
+					| MUSB_CSR0_TXPKTRDY;
+
+			/* disable ping token in status phase */
+			csr |= MUSB_CSR0_H_DIS_PING;
+
+			/* flag status stage */
+			musb->ep0_stage = MUSB_EP0_STATUS;
+
+			dev_dbg(musb->controller, "ep0 STATUS, csr %04x\n", csr);
+
+		}
+		musb_writew(epio, MUSB_CSR0, csr);
+		retval = IRQ_HANDLED;
+	} else
+		musb->ep0_stage = MUSB_EP0_IDLE;
+
+	/* call completion handler if done */
+	if (complete)
+		musb_advance_schedule(musb, urb, hw_ep, 1);
+done:
+	return retval;
+}
+
+
+#ifdef CONFIG_USB_INVENTRA_DMA
+
+/* Host side TX (OUT) using Mentor DMA works as follows:
+	submit_urb ->
+		- if queue was empty, Program Endpoint
+		- ... which starts DMA to fifo in mode 1 or 0
+
+	DMA Isr (transfer complete) -> TxAvail()
+		- Stop DMA (~DmaEnab)	(<--- Alert ... currently happens
+					only in musb_cleanup_urb)
+		- TxPktRdy has to be set in mode 0 or for
+			short packets in mode 1.
+*/
+
+#endif
+
+/* Service a Tx-Available or dma completion irq for the endpoint */
+void musb_host_tx(struct musb *musb, u8 epnum)
+{
+	int			pipe;
+	bool			done = false;
+	u16			tx_csr;
+	size_t			length = 0;
+	size_t			offset = 0;
+	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
+	void __iomem		*epio = hw_ep->regs;
+	struct musb_qh		*qh = hw_ep->out_qh;
+	struct urb		*urb = next_urb(qh);
+	u32			status = 0;
+	void __iomem		*mbase = musb->mregs;
+	struct dma_channel	*dma;
+	bool			transfer_pending = false;
+
+	musb_ep_select(mbase, epnum);
+	tx_csr = musb_readw(epio, MUSB_TXCSR);
+
+	/* with CPPI, DMA sometimes triggers "extra" irqs */
+	if (!urb) {
+		dev_dbg(musb->controller, "extra TX%d ready, csr %04x\n", epnum, tx_csr);
+		return;
+	}
+
+	pipe = urb->pipe;
+	dma = is_dma_capable() ? hw_ep->tx_channel : NULL;
+	dev_dbg(musb->controller, "OUT/TX%d end, csr %04x%s\n", epnum, tx_csr,
+			dma ? ", dma" : "");
+
+	/* check for errors */
+	if (tx_csr & MUSB_TXCSR_H_RXSTALL) {
+		/* dma was disabled, fifo flushed */
+		dev_dbg(musb->controller, "TX end %d stall\n", epnum);
+
+		/* stall; record URB status */
+		status = -EPIPE;
+
+	} else if (tx_csr & MUSB_TXCSR_H_ERROR) {
+		/* (NON-ISO) dma was disabled, fifo flushed */
+		dev_dbg(musb->controller, "TX 3strikes on ep=%d\n", epnum);
+
+		status = -ETIMEDOUT;
+
+	} else if (tx_csr & MUSB_TXCSR_H_NAKTIMEOUT) {
+		if (USB_ENDPOINT_XFER_BULK == qh->type && qh->mux == 1
+				&& !list_is_singular(&musb->out_bulk)) {
+			dev_dbg(musb->controller,
+				"NAK timeout on TX%d ep\n", epnum);
+			musb_bulk_nak_timeout(musb, hw_ep, 0);
+		} else {
+			dev_dbg(musb->controller,
+				"TX end=%d device not responding\n", epnum);
+			/* NOTE:  this code path would be a good place to PAUSE a
+			 * transfer, if there's some other (nonperiodic) tx urb
+			 * that could use this fifo.  (dma complicates it...)
+			 * That's already done for bulk RX transfers.
+			 *
+			 * if (bulk && qh->ring.next != &musb->out_bulk), then
+			 * we have a candidate... NAKing is *NOT* an error
+			 */
+			musb_ep_select(mbase, epnum);
+			musb_writew(epio, MUSB_TXCSR,
+					MUSB_TXCSR_H_WZC_BITS
+					| MUSB_TXCSR_TXPKTRDY);
+		}
+			return;
+	}
+
+done:
+	if (status) {
+		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
+			musb->dma_controller->channel_abort(dma);
+		}
+
+		/* do the proper sequence to abort the transfer in the
+		 * usb core; the dma engine should already be stopped.
+		 */
+		musb_h_tx_flush_fifo(hw_ep);
+		tx_csr &= ~(MUSB_TXCSR_AUTOSET
+				| MUSB_TXCSR_DMAENAB
+				| MUSB_TXCSR_H_ERROR
+				| MUSB_TXCSR_H_RXSTALL
+				| MUSB_TXCSR_H_NAKTIMEOUT
+				);
+
+		musb_ep_select(mbase, epnum);
+		musb_writew(epio, MUSB_TXCSR, tx_csr);
+		/* REVISIT may need to clear FLUSHFIFO ... */
+		musb_writew(epio, MUSB_TXCSR, tx_csr);
+		musb_writeb(epio, MUSB_TXINTERVAL, 0);
+
+		done = true;
+	}
+
+	/* second cppi case */
+	if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+		dev_dbg(musb->controller, "extra TX%d ready, csr %04x\n", epnum, tx_csr);
+		return;
+	}
+
+	if (is_dma_capable() && dma && !status) {
+		/*
+		 * DMA has completed.  But if we're using DMA mode 1 (multi
+		 * packet DMA), we need a terminal TXPKTRDY interrupt before
+		 * we can consider this transfer completed, lest we trash
+		 * its last packet when writing the next URB's data.  So we
+		 * switch back to mode 0 to get that interrupt; we'll come
+		 * back here once it happens.
+		 */
+		if (tx_csr & MUSB_TXCSR_DMAMODE) {
+			/*
+			 * We shouldn't clear DMAMODE with DMAENAB set; so
+			 * clear them in a safe order.  That should be OK
+			 * once TXPKTRDY has been set (and I've never seen
+			 * it being 0 at this moment -- DMA interrupt latency
+			 * is significant) but if it hasn't been then we have
+			 * no choice but to stop being polite and ignore the
+			 * programmer's guide... :-)
+			 *
+			 * Note that we must write TXCSR with TXPKTRDY cleared
+			 * in order not to re-trigger the packet send (this bit
+			 * can't be cleared by CPU), and there's another caveat:
+			 * TXPKTRDY may be set shortly and then cleared in the
+			 * double-buffered FIFO mode, so we do an extra TXCSR
+			 * read for debouncing...
+			 */
+			tx_csr &= musb_readw(epio, MUSB_TXCSR);
+			if (tx_csr & MUSB_TXCSR_TXPKTRDY) {
+				tx_csr &= ~(MUSB_TXCSR_DMAENAB |
+					    MUSB_TXCSR_TXPKTRDY);
+				musb_writew(epio, MUSB_TXCSR,
+					    tx_csr | MUSB_TXCSR_H_WZC_BITS);
+			}
+			tx_csr &= ~(MUSB_TXCSR_DMAMODE |
+				    MUSB_TXCSR_TXPKTRDY);
+			musb_writew(epio, MUSB_TXCSR,
+				    tx_csr | MUSB_TXCSR_H_WZC_BITS);
+
+			/*
+			 * There is no guarantee that we'll get an interrupt
+			 * after clearing DMAMODE as we might have done this
+			 * too late (after TXPKTRDY was cleared by controller).
+			 * Re-read TXCSR as we have spoiled its previous value.
+			 */
+			tx_csr = musb_readw(epio, MUSB_TXCSR);
+		}
+
+		/*
+		 * We may get here from a DMA completion or TXPKTRDY interrupt.
+		 * In any case, we must check the FIFO status here and bail out
+		 * only if the FIFO still has data -- that should prevent the
+		 * "missed" TXPKTRDY interrupts and deal with double-buffered
+		 * FIFO mode too...
+		 */
+		if (tx_csr & (MUSB_TXCSR_FIFONOTEMPTY | MUSB_TXCSR_TXPKTRDY)) {
+			dev_dbg(musb->controller, "DMA complete but packet still in FIFO, "
+			    "CSR %04x\n", tx_csr);
+			return;
+		}
+	}
+
+	if (!status || dma || usb_pipeisoc(pipe)) {
+		if (dma)
+			length = dma->actual_len;
+		else
+			length = qh->segsize;
+		qh->offset += length;
+
+		if (usb_pipeisoc(pipe)) {
+			struct usb_iso_packet_descriptor	*d;
+
+			d = urb->iso_frame_desc + qh->iso_idx;
+			d->actual_length = length;
+			d->status = status;
+			if (++qh->iso_idx >= urb->number_of_packets) {
+				done = true;
+			} else {
+				d++;
+				offset = d->offset;
+				length = d->length;
+			}
+		} else if (dma && urb->transfer_buffer_length == qh->offset) {
+			done = true;
+		} else {
+			/* see if we need to send more data, or ZLP */
+			if (qh->segsize < qh->maxpacket)
+				done = true;
+			else if (qh->offset == urb->transfer_buffer_length
+					&& !(urb->transfer_flags
+						& URB_ZERO_PACKET))
+				done = true;
+			if (!done) {
+				offset = qh->offset;
+				length = urb->transfer_buffer_length - offset;
+				transfer_pending = true;
+			}
+		}
+	}
+
+	/* urb->status != -EINPROGRESS means request has been faulted,
+	 * so we must abort this transfer after cleanup
+	 */
+	if (urb->status != -EINPROGRESS) {
+		done = true;
+		if (status == 0)
+			status = urb->status;
+	}
+
+	if (done) {
+		/* set status */
+		urb->status = status;
+		urb->actual_length = qh->offset;
+		musb_advance_schedule(musb, urb, hw_ep, USB_DIR_OUT);
+		return;
+	} else if ((usb_pipeisoc(pipe) || transfer_pending) && dma) {
+		if (musb_tx_dma_program(musb->dma_controller, hw_ep, qh, urb,
+				offset, length)) {
+			if (is_cppi_enabled() || tusb_dma_omap())
+				musb_h_tx_dma_start(hw_ep);
+			return;
+		}
+	} else	if (tx_csr & MUSB_TXCSR_DMAENAB) {
+		dev_dbg(musb->controller, "not complete, but DMA enabled?\n");
+		return;
+	}
+
+	/*
+	 * PIO: start next packet in this URB.
+	 *
+	 * REVISIT: some docs say that when hw_ep->tx_double_buffered,
+	 * (and presumably, FIFO is not half-full) we should write *two*
+	 * packets before updating TXCSR; other docs disagree...
+	 */
+	if (length > qh->maxpacket)
+		length = qh->maxpacket;
+	/* Unmap the buffer so that CPU can use it */
+	usb_hcd_unmap_urb_for_dma(musb->hcd, urb);
+
+	/*
+	 * We need to map sg if the transfer_buffer is
+	 * NULL.
+	 */
+	if (!urb->transfer_buffer)
+		qh->use_sg = true;
+
+	if (qh->use_sg) {
+		/* sg_miter_start is already done in musb_ep_program */
+		if (!sg_miter_next(&qh->sg_miter)) {
+			dev_err(musb->controller, "error: sg list empty\n");
+			sg_miter_stop(&qh->sg_miter);
+			status = -EINVAL;
+			goto done;
+		}
+		urb->transfer_buffer = qh->sg_miter.addr;
+		length = min_t(u32, length, qh->sg_miter.length);
+		musb_write_fifo(hw_ep, length, urb->transfer_buffer);
+		qh->sg_miter.consumed = length;
+		sg_miter_stop(&qh->sg_miter);
+	} else {
+		musb_write_fifo(hw_ep, length, urb->transfer_buffer + offset);
+	}
+
+	qh->segsize = length;
+
+	if (qh->use_sg) {
+		if (offset + length >= urb->transfer_buffer_length)
+			qh->use_sg = false;
+	}
+
+	musb_ep_select(mbase, epnum);
+	musb_writew(epio, MUSB_TXCSR,
+			MUSB_TXCSR_H_WZC_BITS | MUSB_TXCSR_TXPKTRDY);
+}
+
+
+#ifdef CONFIG_USB_INVENTRA_DMA
+
+/* Host side RX (IN) using Mentor DMA works as follows:
+	submit_urb ->
+		- if queue was empty, ProgramEndpoint
+		- first IN token is sent out (by setting ReqPkt)
+	LinuxIsr -> RxReady()
+	/\	=> first packet is received
+	|	- Set in mode 0 (DmaEnab, ~ReqPkt)
+	|		-> DMA Isr (transfer complete) -> RxReady()
+	|		    - Ack receive (~RxPktRdy), turn off DMA (~DmaEnab)
+	|		    - if urb not complete, send next IN token (ReqPkt)
+	|			   |		else complete urb.
+	|			   |
+	---------------------------
+ *
+ * Nuances of mode 1:
+ *	For short packets, no ack (+RxPktRdy) is sent automatically
+ *	(even if AutoClear is ON)
+ *	For full packets, ack (~RxPktRdy) and next IN token (+ReqPkt) is sent
+ *	automatically => major problem, as collecting the next packet becomes
+ *	difficult. Hence mode 1 is not used.
+ *
+ * REVISIT
+ *	All we care about at this driver level is that
+ *       (a) all URBs terminate with REQPKT cleared and fifo(s) empty;
+ *       (b) termination conditions are: short RX, or buffer full;
+ *       (c) fault modes include
+ *           - iff URB_SHORT_NOT_OK, short RX status is -EREMOTEIO.
+ *             (and that endpoint's dma queue stops immediately)
+ *           - overflow (full, PLUS more bytes in the terminal packet)
+ *
+ *	So for example, usb-storage sets URB_SHORT_NOT_OK, and would
+ *	thus be a great candidate for using mode 1 ... for all but the
+ *	last packet of one URB's transfer.
+ */
+
+#endif
+
+/*
+ * Service an RX interrupt for the given IN endpoint; docs cover bulk, iso,
+ * and high-bandwidth IN transfer cases.
+ */
+void musb_host_rx(struct musb *musb, u8 epnum)
+{
+	struct urb		*urb;
+	struct musb_hw_ep	*hw_ep = musb->endpoints + epnum;
+	void __iomem		*epio = hw_ep->regs;
+	struct musb_qh		*qh = hw_ep->in_qh;
+	size_t			xfer_len;
+	void __iomem		*mbase = musb->mregs;
+	int			pipe;
+	u16			rx_csr, val;
+	bool			iso_err = false;
+	bool			done = false;
+	u32			status;
+	struct dma_channel	*dma;
+	unsigned int sg_flags = SG_MITER_ATOMIC | SG_MITER_TO_SG;
+
+	musb_ep_select(mbase, epnum);
+
+	urb = next_urb(qh);
+	dma = is_dma_capable() ? hw_ep->rx_channel : NULL;
+	status = 0;
+	xfer_len = 0;
+
+	rx_csr = musb_readw(epio, MUSB_RXCSR);
+	val = rx_csr;
+
+	if (unlikely(!urb)) {
+		/* REVISIT -- THIS SHOULD NEVER HAPPEN ... but, at least
+		 * usbtest #11 (unlinks) triggers it regularly, sometimes
+		 * with fifo full.  (Only with DMA??)
+		 */
+		dev_dbg(musb->controller, "BOGUS RX%d ready, csr %04x, count %d\n", epnum, val,
+			musb_readw(epio, MUSB_RXCOUNT));
+		musb_h_flush_rxfifo(hw_ep, MUSB_RXCSR_CLRDATATOG);
+		return;
+	}
+
+	pipe = urb->pipe;
+
+	dev_dbg(musb->controller, "<== hw %d rxcsr %04x, urb actual %d (+dma %zu)\n",
+		epnum, rx_csr, urb->actual_length,
+		dma ? dma->actual_len : 0);
+
+	/* check for errors, concurrent stall & unlink is not really
+	 * handled yet! */
+	if (rx_csr & MUSB_RXCSR_H_RXSTALL) {
+		dev_dbg(musb->controller, "RX end %d STALL\n", epnum);
+
+		/* stall; record URB status */
+		status = -EPIPE;
+
+	} else if (rx_csr & MUSB_RXCSR_H_ERROR) {
+		dev_dbg(musb->controller, "end %d RX proto error\n", epnum);
+
+		status = -EPROTO;
+		musb_writeb(epio, MUSB_RXINTERVAL, 0);
+
+	} else if (rx_csr & MUSB_RXCSR_DATAERROR) {
+
+		if (USB_ENDPOINT_XFER_ISOC != qh->type) {
+			dev_dbg(musb->controller, "RX end %d NAK timeout\n", epnum);
+
+			/* NOTE: NAKing is *NOT* an error, so we want to
+			 * continue.  Except ... if there's a request for
+			 * another QH, use that instead of starving it.
+			 *
+			 * Devices like Ethernet and serial adapters keep
+			 * reads posted at all times, which will starve
+			 * other devices without this logic.
+			 */
+			if (usb_pipebulk(urb->pipe)
+					&& qh->mux == 1
+					&& !list_is_singular(&musb->in_bulk)) {
+				musb_bulk_nak_timeout(musb, hw_ep, 1);
+				return;
+			}
+			musb_ep_select(mbase, epnum);
+			rx_csr |= MUSB_RXCSR_H_WZC_BITS;
+			rx_csr &= ~MUSB_RXCSR_DATAERROR;
+			musb_writew(epio, MUSB_RXCSR, rx_csr);
+
+			goto finish;
+		} else {
+			dev_dbg(musb->controller, "RX end %d ISO data error\n", epnum);
+			/* packet error reported later */
+			iso_err = true;
+		}
+	} else if (rx_csr & MUSB_RXCSR_INCOMPRX) {
+		dev_dbg(musb->controller, "end %d high bandwidth incomplete ISO packet RX\n",
+				epnum);
+		status = -EPROTO;
+	}
+
+	/* faults abort the transfer */
+	if (status) {
+		/* clean up dma and collect transfer count */
+		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
+			musb->dma_controller->channel_abort(dma);
+			xfer_len = dma->actual_len;
+		}
+		musb_h_flush_rxfifo(hw_ep, MUSB_RXCSR_CLRDATATOG);
+		musb_writeb(epio, MUSB_RXINTERVAL, 0);
+		done = true;
+		goto finish;
+	}
+
+	if (unlikely(dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY)) {
+		/* SHOULD NEVER HAPPEN ... but at least DaVinci has done it */
+		ERR("RX%d dma busy, csr %04x\n", epnum, rx_csr);
+		goto finish;
+	}
+
+	/* thorough shutdown for now ... given more precise fault handling
+	 * and better queueing support, we might keep a DMA pipeline going
+	 * while processing this irq for earlier completions.
+	 */
+
+	/* FIXME this is _way_ too much in-line logic for Mentor DMA */
+
+#if !defined(CONFIG_USB_INVENTRA_DMA) && !defined(CONFIG_USB_UX500_DMA)
+	if (rx_csr & MUSB_RXCSR_H_REQPKT)  {
+		/* REVISIT this happened for a while on some short reads...
+		 * the cleanup still needs investigation... looks bad...
+		 * and also duplicates dma cleanup code above ... plus,
+		 * shouldn't this be the "half full" double buffer case?
+		 */
+		if (dma_channel_status(dma) == MUSB_DMA_STATUS_BUSY) {
+			dma->status = MUSB_DMA_STATUS_CORE_ABORT;
+			musb->dma_controller->channel_abort(dma);
+			xfer_len = dma->actual_len;
+			done = true;
+		}
+
+		dev_dbg(musb->controller, "RXCSR%d %04x, reqpkt, len %zu%s\n", epnum, rx_csr,
+				xfer_len, dma ? ", dma" : "");
+		rx_csr &= ~MUSB_RXCSR_H_REQPKT;
+
+		musb_ep_select(mbase, epnum);
+		musb_writew(epio, MUSB_RXCSR,
+				MUSB_RXCSR_H_WZC_BITS | rx_csr);
+	}
+#endif
+	if (dma && (rx_csr & MUSB_RXCSR_DMAENAB)) {
+		xfer_len = dma->actual_len;
+
+		val &= ~(MUSB_RXCSR_DMAENAB
+			| MUSB_RXCSR_H_AUTOREQ
+			| MUSB_RXCSR_AUTOCLEAR
+			| MUSB_RXCSR_RXPKTRDY);
+		musb_writew(hw_ep->regs, MUSB_RXCSR, val);
+
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA) || \
+	defined(CONFIG_USB_TI_CPPI41_DMA)
+		if (usb_pipeisoc(pipe)) {
+			struct usb_iso_packet_descriptor *d;
+
+			d = urb->iso_frame_desc + qh->iso_idx;
+			d->actual_length = xfer_len;
+
+			/* even if there was an error, we did the dma
+			 * for iso_frame_desc->length
+			 */
+			if (d->status != -EILSEQ && d->status != -EOVERFLOW)
+				d->status = 0;
+
+			if (++qh->iso_idx >= urb->number_of_packets) {
+				done = true;
+			} else {
+#if defined(CONFIG_USB_TI_CPPI41_DMA)
+				struct dma_controller   *c;
+				dma_addr_t *buf;
+				u32 length, ret;
+
+				c = musb->dma_controller;
+				buf = (void *)
+					urb->iso_frame_desc[qh->iso_idx].offset
+					+ (u32)urb->transfer_dma;
+
+				length =
+					urb->iso_frame_desc[qh->iso_idx].length;
+
+				val |= MUSB_RXCSR_DMAENAB;
+				musb_writew(hw_ep->regs, MUSB_RXCSR, val);
+
+				ret = c->channel_program(dma, qh->maxpacket,
+						0, (u32) buf, length);
+#endif
+				done = false;
+			}
+
+		} else  {
+			/* done if urb buffer is full or short packet is recd */
+			done = (urb->actual_length + xfer_len >=
+					urb->transfer_buffer_length
+				|| dma->actual_len < qh->maxpacket
+				|| dma->rx_packet_done);
+		}
+
+		/* send IN token for next packet, without AUTOREQ */
+		if (!done) {
+			val |= MUSB_RXCSR_H_REQPKT;
+			musb_writew(epio, MUSB_RXCSR,
+				MUSB_RXCSR_H_WZC_BITS | val);
+		}
+
+		dev_dbg(musb->controller, "ep %d dma %s, rxcsr %04x, rxcount %d\n", epnum,
+			done ? "off" : "reset",
+			musb_readw(epio, MUSB_RXCSR),
+			musb_readw(epio, MUSB_RXCOUNT));
+#else
+		done = true;
+#endif
+	} else if (urb->status == -EINPROGRESS) {
+		/* if no errors, be sure a packet is ready for unloading */
+		if (unlikely(!(rx_csr & MUSB_RXCSR_RXPKTRDY))) {
+			status = -EPROTO;
+			ERR("Rx interrupt with no errors or packet!\n");
+
+			/* FIXME this is another "SHOULD NEVER HAPPEN" */
+
+/* SCRUB (RX) */
+			/* do the proper sequence to abort the transfer */
+			musb_ep_select(mbase, epnum);
+			val &= ~MUSB_RXCSR_H_REQPKT;
+			musb_writew(epio, MUSB_RXCSR, val);
+			goto finish;
+		}
+
+		/* we are expecting IN packets */
+#if defined(CONFIG_USB_INVENTRA_DMA) || defined(CONFIG_USB_UX500_DMA) || \
+	defined(CONFIG_USB_TI_CPPI41_DMA)
+		if (dma) {
+			struct dma_controller	*c;
+			u16			rx_count;
+			int			ret, length;
+			dma_addr_t		buf;
+
+			rx_count = musb_readw(epio, MUSB_RXCOUNT);
+
+			dev_dbg(musb->controller, "RX%d count %d, buffer 0x%llx len %d/%d\n",
+					epnum, rx_count,
+					(unsigned long long) urb->transfer_dma
+					+ urb->actual_length,
+					qh->offset,
+					urb->transfer_buffer_length);
+
+			c = musb->dma_controller;
+
+			if (usb_pipeisoc(pipe)) {
+				int d_status = 0;
+				struct usb_iso_packet_descriptor *d;
+
+				d = urb->iso_frame_desc + qh->iso_idx;
+
+				if (iso_err) {
+					d_status = -EILSEQ;
+					urb->error_count++;
+				}
+				if (rx_count > d->length) {
+					if (d_status == 0) {
+						d_status = -EOVERFLOW;
+						urb->error_count++;
+					}
+					dev_dbg(musb->controller, "** OVERFLOW %d into %d\n",\
+					    rx_count, d->length);
+
+					length = d->length;
+				} else
+					length = rx_count;
+				d->status = d_status;
+				buf = urb->transfer_dma + d->offset;
+			} else {
+				length = rx_count;
+				buf = urb->transfer_dma +
+						urb->actual_length;
+			}
+
+			dma->desired_mode = 0;
+#ifdef USE_MODE1
+			/* because of the issue below, mode 1 will
+			 * only rarely behave with correct semantics.
+			 */
+			if ((urb->transfer_flags &
+						URB_SHORT_NOT_OK)
+				&& (urb->transfer_buffer_length -
+						urb->actual_length)
+					> qh->maxpacket)
+				dma->desired_mode = 1;
+			if (rx_count < hw_ep->max_packet_sz_rx) {
+				length = rx_count;
+				dma->desired_mode = 0;
+			} else {
+				length = urb->transfer_buffer_length;
+			}
+#endif
+
+/* Disadvantage of using mode 1:
+ *	It's basically usable only for mass storage class; essentially all
+ *	other protocols also terminate transfers on short packets.
+ *
+ * Details:
+ *	An extra IN token is sent at the end of the transfer (due to AUTOREQ)
+ *	If you try to use mode 1 for (transfer_buffer_length - 512), and try
+ *	to use the extra IN token to grab the last packet using mode 0, then
+ *	the problem is that you cannot be sure when the device will send the
+ *	last packet and RxPktRdy set. Sometimes the packet is recd too soon
+ *	such that it gets lost when RxCSR is re-set at the end of the mode 1
+ *	transfer, while sometimes it is recd just a little late so that if you
+ *	try to configure for mode 0 soon after the mode 1 transfer is
+ *	completed, you will find rxcount 0. Okay, so you might think why not
+ *	wait for an interrupt when the pkt is recd. Well, you won't get any!
+ */
+
+			val = musb_readw(epio, MUSB_RXCSR);
+			val &= ~MUSB_RXCSR_H_REQPKT;
+
+			if (dma->desired_mode == 0)
+				val &= ~MUSB_RXCSR_H_AUTOREQ;
+			else
+				val |= MUSB_RXCSR_H_AUTOREQ;
+			val |= MUSB_RXCSR_DMAENAB;
+
+			/* autoclear shouldn't be set in high bandwidth */
+			if (qh->hb_mult == 1)
+				val |= MUSB_RXCSR_AUTOCLEAR;
+
+			musb_writew(epio, MUSB_RXCSR,
+				MUSB_RXCSR_H_WZC_BITS | val);
+
+			/* REVISIT if when actual_length != 0,
+			 * transfer_buffer_length needs to be
+			 * adjusted first...
+			 */
+			ret = c->channel_program(
+				dma, qh->maxpacket,
+				dma->desired_mode, buf, length);
+
+			if (!ret) {
+				c->channel_release(dma);
+				hw_ep->rx_channel = NULL;
+				dma = NULL;
+				val = musb_readw(epio, MUSB_RXCSR);
+				val &= ~(MUSB_RXCSR_DMAENAB
+					| MUSB_RXCSR_H_AUTOREQ
+					| MUSB_RXCSR_AUTOCLEAR);
+				musb_writew(epio, MUSB_RXCSR, val);
+			}
+		}
+#endif	/* Mentor DMA */
+
+		if (!dma) {
+			unsigned int received_len;
+
+			/* Unmap the buffer so that CPU can use it */
+			usb_hcd_unmap_urb_for_dma(musb->hcd, urb);
+
+			/*
+			 * We need to map sg if the transfer_buffer is
+			 * NULL.
+			 */
+			if (!urb->transfer_buffer) {
+				qh->use_sg = true;
+				sg_miter_start(&qh->sg_miter, urb->sg, 1,
+						sg_flags);
+			}
+
+			if (qh->use_sg) {
+				if (!sg_miter_next(&qh->sg_miter)) {
+					dev_err(musb->controller, "error: sg list empty\n");
+					sg_miter_stop(&qh->sg_miter);
+					status = -EINVAL;
+					done = true;
+					goto finish;
+				}
+				urb->transfer_buffer = qh->sg_miter.addr;
+				received_len = urb->actual_length;
+				qh->offset = 0x0;
+				done = musb_host_packet_rx(musb, urb, epnum,
+						iso_err);
+				/* Calculate the number of bytes received */
+				received_len = urb->actual_length -
+					received_len;
+				qh->sg_miter.consumed = received_len;
+				sg_miter_stop(&qh->sg_miter);
+			} else {
+				done = musb_host_packet_rx(musb, urb,
+						epnum, iso_err);
+			}
+			dev_dbg(musb->controller, "read %spacket\n", done ? "last " : "");
+		}
+	}
+
+finish:
+	urb->actual_length += xfer_len;
+	qh->offset += xfer_len;
+	if (done) {
+		if (qh->use_sg)
+			qh->use_sg = false;
+
+		if (urb->status == -EINPROGRESS)
+			urb->status = status;
+		musb_advance_schedule(musb, urb, hw_ep, USB_DIR_IN);
+	}
+}
+
+/* schedule nodes correspond to peripheral endpoints, like an OHCI QH.
+ * the software schedule associates multiple such nodes with a given
+ * host side hardware endpoint + direction; scheduling may activate
+ * that hardware endpoint.
+ */
+static int musb_schedule(
+	struct musb		*musb,
+	struct musb_qh		*qh,
+	int			is_in)
+{
+	int			idle = 0;
+	int			best_diff;
+	int			best_end, epnum;
+	struct musb_hw_ep	*hw_ep = NULL;
+	struct list_head	*head = NULL;
+	u8			toggle;
+	u8			txtype;
+	struct urb		*urb = next_urb(qh);
+
+	/* use fixed hardware for control and bulk */
+	if (qh->type == USB_ENDPOINT_XFER_CONTROL) {
+		head = &musb->control;
+		hw_ep = musb->control_ep;
+		goto success;
+	}
+
+	/* else, periodic transfers get muxed to other endpoints */
+
+	/*
+	 * We know this qh hasn't been scheduled, so all we need to do
+	 * is choose which hardware endpoint to put it on ...
+	 *
+	 * REVISIT what we really want here is a regular schedule tree
+	 * like e.g. OHCI uses.
+	 */
+	best_diff = 4096;
+	best_end = -1;
+
+	for (epnum = 1, hw_ep = musb->endpoints + 1;
+			epnum < musb->nr_endpoints;
+			epnum++, hw_ep++) {
+		int	diff;
+
+		if (musb_ep_get_qh(hw_ep, is_in) != NULL)
+			continue;
+
+		if (hw_ep == musb->bulk_ep)
+			continue;
+
+		if (is_in)
+			diff = hw_ep->max_packet_sz_rx;
+		else
+			diff = hw_ep->max_packet_sz_tx;
+		diff -= (qh->maxpacket * qh->hb_mult);
+
+		if (diff >= 0 && best_diff > diff) {
+
+			/*
+			 * Mentor controller has a bug in that if we schedule
+			 * a BULK Tx transfer on an endpoint that had earlier
+			 * handled ISOC then the BULK transfer has to start on
+			 * a zero toggle.  If the BULK transfer starts on a 1
+			 * toggle then this transfer will fail as the mentor
+			 * controller starts the Bulk transfer on a 0 toggle
+			 * irrespective of the programming of the toggle bits
+			 * in the TXCSR register.  Check for this condition
+			 * while allocating the EP for a Tx Bulk transfer.  If
+			 * so skip this EP.
+			 */
+			hw_ep = musb->endpoints + epnum;
+			toggle = usb_gettoggle(urb->dev, qh->epnum, !is_in);
+			txtype = (musb_readb(hw_ep->regs, MUSB_TXTYPE)
+					>> 4) & 0x3;
+			if (!is_in && (qh->type == USB_ENDPOINT_XFER_BULK) &&
+				toggle && (txtype == USB_ENDPOINT_XFER_ISOC))
+				continue;
+
+			best_diff = diff;
+			best_end = epnum;
+		}
+	}
+	/* use bulk reserved ep1 if no other ep is free */
+	if (best_end < 0 && qh->type == USB_ENDPOINT_XFER_BULK) {
+		hw_ep = musb->bulk_ep;
+		if (is_in)
+			head = &musb->in_bulk;
+		else
+			head = &musb->out_bulk;
+
+		/* Enable bulk RX/TX NAK timeout scheme when bulk requests are
+		 * multiplexed. This scheme does not work in high speed to full
+		 * speed scenario as NAK interrupts are not coming from a
+		 * full speed device connected to a high speed device.
+		 * NAK timeout interval is 8 (128 uframe or 16ms) for HS and
+		 * 4 (8 frame or 8ms) for FS device.
+		 */
+		if (qh->dev)
+			qh->intv_reg =
+				(USB_SPEED_HIGH == qh->dev->speed) ? 8 : 4;
+		goto success;
+	} else if (best_end < 0) {
+		return -ENOSPC;
+	}
+
+	idle = 1;
+	qh->mux = 0;
+	hw_ep = musb->endpoints + best_end;
+	dev_dbg(musb->controller, "qh %p periodic slot %d\n", qh, best_end);
+success:
+	if (head) {
+		idle = list_empty(head);
+		list_add_tail(&qh->ring, head);
+		qh->mux = 1;
+	}
+	qh->hw_ep = hw_ep;
+	qh->hep->hcpriv = qh;
+	if (idle)
+		musb_start_urb(musb, is_in, qh);
+	return 0;
+}
+
+static int musb_urb_enqueue(
+	struct usb_hcd			*hcd,
+	struct urb			*urb,
+	gfp_t				mem_flags)
+{
+	unsigned long			flags;
+	struct musb			*musb = hcd_to_musb(hcd);
+	struct usb_host_endpoint	*hep = urb->ep;
+	struct musb_qh			*qh;
+	struct usb_endpoint_descriptor	*epd = &hep->desc;
+	int				ret;
+	unsigned			type_reg;
+	unsigned			interval;
+
+	/* host role must be active */
+	if (!is_host_active(musb) || !musb->is_active)
+		return -ENODEV;
+
+	spin_lock_irqsave(&musb->lock, flags);
+	ret = usb_hcd_link_urb_to_ep(hcd, urb);
+	qh = ret ? NULL : hep->hcpriv;
+	if (qh)
+		urb->hcpriv = qh;
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+	/* DMA mapping was already done, if needed, and this urb is on
+	 * hep->urb_list now ... so we're done, unless hep wasn't yet
+	 * scheduled onto a live qh.
+	 *
+	 * REVISIT best to keep hep->hcpriv valid until the endpoint gets
+	 * disabled, testing for empty qh->ring and avoiding qh setup costs
+	 * except for the first urb queued after a config change.
+	 */
+	if (qh || ret)
+		return ret;
+
+	/* Allocate and initialize qh, minimizing the work done each time
+	 * hw_ep gets reprogrammed, or with irqs blocked.  Then schedule it.
+	 *
+	 * REVISIT consider a dedicated qh kmem_cache, so it's harder
+	 * for bugs in other kernel code to break this driver...
+	 */
+	qh = kzalloc(sizeof *qh, mem_flags);
+	if (!qh) {
+		spin_lock_irqsave(&musb->lock, flags);
+		usb_hcd_unlink_urb_from_ep(hcd, urb);
+		spin_unlock_irqrestore(&musb->lock, flags);
+		return -ENOMEM;
+	}
+
+	qh->hep = hep;
+	qh->dev = urb->dev;
+	INIT_LIST_HEAD(&qh->ring);
+	qh->is_ready = 1;
+
+	qh->maxpacket = usb_endpoint_maxp(epd);
+	qh->type = usb_endpoint_type(epd);
+
+	/* Bits 11 & 12 of wMaxPacketSize encode high bandwidth multiplier.
+	 * Some musb cores don't support high bandwidth ISO transfers; and
+	 * we don't (yet!) support high bandwidth interrupt transfers.
+	 */
+	qh->hb_mult = 1 + ((qh->maxpacket >> 11) & 0x03);
+	if (qh->hb_mult > 1) {
+		int ok = (qh->type == USB_ENDPOINT_XFER_ISOC);
+
+		if (ok)
+			ok = (usb_pipein(urb->pipe) && musb->hb_iso_rx)
+				|| (usb_pipeout(urb->pipe) && musb->hb_iso_tx);
+		if (!ok) {
+			ret = -EMSGSIZE;
+			goto done;
+		}
+		qh->maxpacket &= 0x7ff;
+	}
+
+	qh->epnum = usb_endpoint_num(epd);
+
+	/* NOTE: urb->dev->devnum is wrong during SET_ADDRESS */
+	qh->addr_reg = (u8) usb_pipedevice(urb->pipe);
+
+	/* precompute rxtype/txtype/type0 register */
+	type_reg = (qh->type << 4) | qh->epnum;
+	switch (urb->dev->speed) {
+	case USB_SPEED_LOW:
+		type_reg |= 0xc0;
+		break;
+	case USB_SPEED_FULL:
+		type_reg |= 0x80;
+		break;
+	default:
+		type_reg |= 0x40;
+	}
+	qh->type_reg = type_reg;
+
+	/* Precompute RXINTERVAL/TXINTERVAL register */
+	switch (qh->type) {
+	case USB_ENDPOINT_XFER_INT:
+		/*
+		 * Full/low speeds use the  linear encoding,
+		 * high speed uses the logarithmic encoding.
+		 */
+		if (urb->dev->speed <= USB_SPEED_FULL) {
+			interval = max_t(u8, epd->bInterval, 1);
+			break;
+		}
+		/* FALLTHROUGH */
+	case USB_ENDPOINT_XFER_ISOC:
+		/* ISO always uses logarithmic encoding */
+		interval = min_t(u8, epd->bInterval, 16);
+		break;
+	default:
+		/* REVISIT we actually want to use NAK limits, hinting to the
+		 * transfer scheduling logic to try some other qh, e.g. try
+		 * for 2 msec first:
+		 *
+		 * interval = (USB_SPEED_HIGH == urb->dev->speed) ? 16 : 2;
+		 *
+		 * The downside of disabling this is that transfer scheduling
+		 * gets VERY unfair for nonperiodic transfers; a misbehaving
+		 * peripheral could make that hurt.  That's perfectly normal
+		 * for reads from network or serial adapters ... so we have
+		 * partial NAKlimit support for bulk RX.
+		 *
+		 * The upside of disabling it is simpler transfer scheduling.
+		 */
+		interval = 0;
+	}
+	qh->intv_reg = interval;
+
+	/* precompute addressing for external hub/tt ports */
+	if (musb->is_multipoint) {
+		struct usb_device	*parent = urb->dev->parent;
+
+		if (parent != hcd->self.root_hub) {
+			qh->h_addr_reg = (u8) parent->devnum;
+
+			/* set up tt info if needed */
+			if (urb->dev->tt) {
+				qh->h_port_reg = (u8) urb->dev->ttport;
+				if (urb->dev->tt->hub)
+					qh->h_addr_reg =
+						(u8) urb->dev->tt->hub->devnum;
+				if (urb->dev->tt->multi)
+					qh->h_addr_reg |= 0x80;
+			}
+		}
+	}
+
+	/* invariant: hep->hcpriv is null OR the qh that's already scheduled.
+	 * until we get real dma queues (with an entry for each urb/buffer),
+	 * we only have work to do in the former case.
+	 */
+	spin_lock_irqsave(&musb->lock, flags);
+	if (hep->hcpriv || !next_urb(qh)) {
+		/* some concurrent activity submitted another urb to hep...
+		 * odd, rare, error prone, but legal.
+		 */
+		kfree(qh);
+		qh = NULL;
+		ret = 0;
+	} else
+		ret = musb_schedule(musb, qh,
+				epd->bEndpointAddress & USB_ENDPOINT_DIR_MASK);
+
+	if (ret == 0) {
+		urb->hcpriv = qh;
+		/* FIXME set urb->start_frame for iso/intr, it's tested in
+		 * musb_start_urb(), but otherwise only konicawc cares ...
+		 */
+	}
+	spin_unlock_irqrestore(&musb->lock, flags);
+
+done:
+	if (ret != 0) {
+		spin_lock_irqsave(&musb->lock, flags);
+		usb_hcd_unlink_urb_from_ep(hcd, urb);
+		spin_unlock_irqrestore(&musb->lock, flags);
+		kfree(qh);
+	}
+	return ret;
+}
+
+
+/*
+ * abort a transfer that's at the head of a hardware queue.
+ * called with controller locked, irqs blocked
+ * that hardware queue advances to the next transfer, unless prevented
+ */
+static int musb_cleanup_urb(struct urb *urb, struct musb_qh *qh)
+{
+	struct musb_hw_ep	*ep = qh->hw_ep;
+	struct musb		*musb = ep->musb;
+	void __iomem		*epio = ep->regs;
+	unsigned		hw_end = ep->epnum;
+	void __iomem		*regs = ep->musb->mregs;
+	int			is_in = usb_pipein(urb->pipe);
+	int			status = 0;
+	u16			csr;
+
+	musb_ep_select(regs, hw_end);
+
+	if (is_dma_capable()) {
+		struct dma_channel	*dma;
+
+		dma = is_in ? ep->rx_channel : ep->tx_channel;
+		if (dma) {
+			status = ep->musb->dma_controller->channel_abort(dma);
+			dev_dbg(musb->controller,
+				"abort %cX%d DMA for urb %p --> %d\n",
+				is_in ? 'R' : 'T', ep->epnum,
+				urb, status);
+			urb->actual_length += dma->actual_len;
+		}
+	}
+
+	/* turn off DMA requests, discard state, stop polling ... */
+	if (ep->epnum && is_in) {
+		/* giveback saves bulk toggle */
+		csr = musb_h_flush_rxfifo(ep, 0);
+
+		/* REVISIT we still get an irq; should likely clear the
+		 * endpoint's irq status here to avoid bogus irqs.
+		 * clearing that status is platform-specific...
+		 */
+	} else if (ep->epnum) {
+		musb_h_tx_flush_fifo(ep);
+		csr = musb_readw(epio, MUSB_TXCSR);
+		csr &= ~(MUSB_TXCSR_AUTOSET
+			| MUSB_TXCSR_DMAENAB
+			| MUSB_TXCSR_H_RXSTALL
+			| MUSB_TXCSR_H_NAKTIMEOUT
+			| MUSB_TXCSR_H_ERROR
+			| MUSB_TXCSR_TXPKTRDY);
+		musb_writew(epio, MUSB_TXCSR, csr);
+		/* REVISIT may need to clear FLUSHFIFO ... */
+		musb_writew(epio, MUSB_TXCSR, csr);
+		/* flush cpu writebuffer */
+		csr = musb_readw(epio, MUSB_TXCSR);
+	} else  {
+		musb_h_ep0_flush_fifo(ep);
+	}
+	if (status == 0)
+		musb_advance_schedule(ep->musb, urb, ep, is_in);
+	return status;
+}
+
+static int musb_urb_dequeue(struct usb_hcd *hcd, struct urb *urb, int status)
+{
+	struct musb		*musb = hcd_to_musb(hcd);
+	struct musb_qh		*qh;
+	unsigned long		flags;
+	int			is_in  = usb_pipein(urb->pipe);
+	int			ret;
+
+	dev_dbg(musb->controller, "urb=%p, dev%d ep%d%s\n", urb,
+			usb_pipedevice(urb->pipe),
+			usb_pipeendpoint(urb->pipe),
+			is_in ? "in" : "out");
+
+	spin_lock_irqsave(&musb->lock, flags);
+	ret = usb_hcd_check_unlink_urb(hcd, urb, status);
+	if (ret)
+		goto done;
+
+	qh = urb->hcpriv;
+	if (!qh)
+		goto done;
+
+	/*
+	 * Any URB not actively programmed into endpoint hardware can be
+	 * immediately given back; that's any URB not at the head of an
+	 * endpoint queue, unless someday we get real DMA queues.  And even
+	 * if it's at the head, it might not be known to the hardware...
+	 *
+	 * Otherwise abort current transfer, pending DMA, etc.; urb->status
+	 * has already been updated.  This is a synchronous abort; it'd be
+	 * OK to hold off until after some IRQ, though.
+	 *
+	 * NOTE: qh is invalid unless !list_empty(&hep->urb_list)
+	 */
+	if (!qh->is_ready
+			|| urb->urb_list.prev != &qh->hep->urb_list
+			|| musb_ep_get_qh(qh->hw_ep, is_in) != qh) {
+		int	ready = qh->is_ready;
+
+		qh->is_ready = 0;
+		musb_giveback(musb, urb, 0);
+		qh->is_ready = ready;
+
+		/* If nothing else (usually musb_giveback) is using it
+		 * and its URB list has emptied, recycle this qh.
+		 */
+		if (ready && list_empty(&qh->hep->urb_list)) {
+			qh->hep->hcpriv = NULL;
+			list_del(&qh->ring);
+			kfree(qh);
+		}
+	} else
+		ret = musb_cleanup_urb(urb, qh);
+done:
+	spin_unlock_irqrestore(&musb->lock, flags);
+	return ret;
+}
+
+/* disable an endpoint */
+static void
+musb_h_disable(struct usb_hcd *hcd, struct usb_host_endpoint *hep)
+{
+	u8			is_in = hep->desc.bEndpointAddress & USB_DIR_IN;
+	unsigned long		flags;
+	struct musb		*musb = hcd_to_musb(hcd);
+	struct musb_qh		*qh;
+	struct urb		*urb;
+
+	spin_lock_irqsave(&musb->lock, flags);
+
+	qh = hep->hcpriv;
+	if (qh == NULL)
+		goto exit;
+
+	/* NOTE: qh is invalid unless !list_empty(&hep->urb_list) */
+
+	/* Kick the first URB off the hardware, if needed */
+	qh->is_ready = 0;
+	if (musb_ep_get_qh(qh->hw_ep, is_in) == qh) {
+		urb = next_urb(qh);
+
+		/* make software (then hardware) stop ASAP */
+		if (!urb->unlinked)
+			urb->status = -ESHUTDOWN;
+
+		/* cleanup */
+		musb_cleanup_urb(urb, qh);
+
+		/* Then nuke all the others ... and advance the
+		 * queue on hw_ep (e.g. bulk ring) when we're done.
+		 */
+		while (!list_empty(&hep->urb_list)) {
+			urb = next_urb(qh);
+			urb->status = -ESHUTDOWN;
+			musb_advance_schedule(musb, urb, qh->hw_ep, is_in);
+		}
+	} else {
+		/* Just empty the queue; the hardware is busy with
+		 * other transfers, and since !qh->is_ready nothing
+		 * will activate any of these as it advances.
+		 */
+		while (!list_empty(&hep->urb_list))
+			musb_giveback(musb, next_urb(qh), -ESHUTDOWN);
+
+		hep->hcpriv = NULL;
+		list_del(&qh->ring);
+		kfree(qh);
+	}
+exit:
+	spin_unlock_irqrestore(&musb->lock, flags);
+}
+
+static int musb_h_get_frame_number(struct usb_hcd *hcd)
+{
+	struct musb	*musb = hcd_to_musb(hcd);
+
+	return musb_readw(musb->mregs, MUSB_FRAME);
+}
+
+static int musb_h_start(struct usb_hcd *hcd)
+{
+	struct musb	*musb = hcd_to_musb(hcd);
+
+	/* NOTE: musb_start() is called when the hub driver turns
+	 * on port power, or when (OTG) peripheral starts.
+	 */
+	hcd->state = HC_STATE_RUNNING;
+	musb->port1_status = 0;
+	return 0;
+}
+
+static void musb_h_stop(struct usb_hcd *hcd)
+{
+	musb_stop(hcd_to_musb(hcd));
+	hcd->state = HC_STATE_HALT;
+}
+
+static int musb_bus_suspend(struct usb_hcd *hcd)
+{
+	struct musb	*musb = hcd_to_musb(hcd);
+	u8		devctl;
+
+	musb_port_suspend(musb, true);
+
+	if (!is_host_active(musb))
+		return 0;
+
+	switch (musb->xceiv->state) {
+	case OTG_STATE_A_SUSPEND:
+		return 0;
+	case OTG_STATE_A_WAIT_VRISE:
+		/* ID could be grounded even if there's no device
+		 * on the other end of the cable.  NOTE that the
+		 * A_WAIT_VRISE timers are messy with MUSB...
+		 */
+		devctl = musb_readb(musb->mregs, MUSB_DEVCTL);
+		if ((devctl & MUSB_DEVCTL_VBUS) == MUSB_DEVCTL_VBUS)
+			musb->xceiv->state = OTG_STATE_A_WAIT_BCON;
+		break;
+	default:
+		break;
+	}
+
+	if (musb->is_active) {
+		WARNING("trying to suspend as %s while active\n",
+				usb_otg_state_string(musb->xceiv->state));
+		return -EBUSY;
+	} else
+		return 0;
+}
+
+static int musb_bus_resume(struct usb_hcd *hcd)
+{
+	struct musb *musb = hcd_to_musb(hcd);
+
+	if (musb->config &&
+	    musb->config->host_port_deassert_reset_at_resume)
+		musb_port_reset(musb, false);
+
+	return 0;
+}
+
+#ifndef CONFIG_MUSB_PIO_ONLY
+
+#define MUSB_USB_DMA_ALIGN 4
+
+struct musb_temp_buffer {
+	void *kmalloc_ptr;
+	void *old_xfer_buffer;
+	u8 data[0];
+};
+
+static void musb_free_temp_buffer(struct urb *urb)
+{
+	enum dma_data_direction dir;
+	struct musb_temp_buffer *temp;
+
+	if (!(urb->transfer_flags & URB_ALIGNED_TEMP_BUFFER))
+		return;
+
+	dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
+
+	temp = container_of(urb->transfer_buffer, struct musb_temp_buffer,
+			    data);
+
+	if (dir == DMA_FROM_DEVICE) {
+		memcpy(temp->old_xfer_buffer, temp->data,
+		       urb->transfer_buffer_length);
+	}
+	urb->transfer_buffer = temp->old_xfer_buffer;
+	kfree(temp->kmalloc_ptr);
+
+	urb->transfer_flags &= ~URB_ALIGNED_TEMP_BUFFER;
+}
+
+static int musb_alloc_temp_buffer(struct urb *urb, gfp_t mem_flags)
+{
+	enum dma_data_direction dir;
+	struct musb_temp_buffer *temp;
+	void *kmalloc_ptr;
+	size_t kmalloc_size;
+
+	if (urb->num_sgs || urb->sg ||
+	    urb->transfer_buffer_length == 0 ||
+	    !((uintptr_t)urb->transfer_buffer & (MUSB_USB_DMA_ALIGN - 1)))
+		return 0;
+
+	dir = usb_urb_dir_in(urb) ? DMA_FROM_DEVICE : DMA_TO_DEVICE;
+
+	/* Allocate a buffer with enough padding for alignment */
+	kmalloc_size = urb->transfer_buffer_length +
+		sizeof(struct musb_temp_buffer) + MUSB_USB_DMA_ALIGN - 1;
+
+	kmalloc_ptr = kmalloc(kmalloc_size, mem_flags);
+	if (!kmalloc_ptr)
+		return -ENOMEM;
+
+	/* Position our struct temp_buffer such that data is aligned */
+	temp = PTR_ALIGN(kmalloc_ptr, MUSB_USB_DMA_ALIGN);
+
+
+	temp->kmalloc_ptr = kmalloc_ptr;
+	temp->old_xfer_buffer = urb->transfer_buffer;
+	if (dir == DMA_TO_DEVICE)
+		memcpy(temp->data, urb->transfer_buffer,
+		       urb->transfer_buffer_length);
+	urb->transfer_buffer = temp->data;
+
+	urb->transfer_flags |= URB_ALIGNED_TEMP_BUFFER;
+
+	return 0;
+}
+
+static int musb_map_urb_for_dma(struct usb_hcd *hcd, struct urb *urb,
+				      gfp_t mem_flags)
+{
+	struct musb	*musb = hcd_to_musb(hcd);
+	int ret;
+
+	/*
+	 * The DMA engine in RTL1.8 and above cannot handle
+	 * DMA addresses that are not aligned to a 4 byte boundary.
+	 * For such engine implemented (un)map_urb_for_dma hooks.
+	 * Do not use these hooks for RTL<1.8
+	 */
+	if (musb->hwvers < MUSB_HWVERS_1800)
+		return usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
+
+	ret = musb_alloc_temp_buffer(urb, mem_flags);
+	if (ret)
+		return ret;
+
+	ret = usb_hcd_map_urb_for_dma(hcd, urb, mem_flags);
+	if (ret)
+		musb_free_temp_buffer(urb);
+
+	return ret;
+}
+
+static void musb_unmap_urb_for_dma(struct usb_hcd *hcd, struct urb *urb)
+{
+	struct musb	*musb = hcd_to_musb(hcd);
+
+	usb_hcd_unmap_urb_for_dma(hcd, urb);
+
+	/* Do not use this hook for RTL<1.8 (see description above) */
+	if (musb->hwvers < MUSB_HWVERS_1800)
+		return;
+
+	musb_free_temp_buffer(urb);
+}
+#endif /* !CONFIG_MUSB_PIO_ONLY */
+
+static const struct hc_driver musb_hc_driver = {
+	.description		= "musb-hcd",
+	.product_desc		= "MUSB HDRC host driver",
+	.hcd_priv_size		= sizeof(struct musb *),
+	.flags			= HCD_USB2 | HCD_MEMORY,
+
+	/* not using irq handler or reset hooks from usbcore, since
+	 * those must be shared with peripheral code for OTG configs
+	 */
+
+	.start			= musb_h_start,
+	.stop			= musb_h_stop,
+
+	.get_frame_number	= musb_h_get_frame_number,
+
+	.urb_enqueue		= musb_urb_enqueue,
+	.urb_dequeue		= musb_urb_dequeue,
+	.endpoint_disable	= musb_h_disable,
+
+#ifndef CONFIG_MUSB_PIO_ONLY
+	.map_urb_for_dma	= musb_map_urb_for_dma,
+	.unmap_urb_for_dma	= musb_unmap_urb_for_dma,
+#endif
+
+	.hub_status_data	= musb_hub_status_data,
+	.hub_control		= musb_hub_control,
+	.bus_suspend		= musb_bus_suspend,
+	.bus_resume		= musb_bus_resume,
+	/* .start_port_reset	= NULL, */
+	/* .hub_irq_enable	= NULL, */
+};
+
+int musb_host_alloc(struct musb *musb)
+{
+	struct device	*dev = musb->controller;
+
+	/* usbcore sets dev->driver_data to hcd, and sometimes uses that... */
+	musb->hcd = usb_create_hcd(&musb_hc_driver, dev, dev_name(dev));
+	if (!musb->hcd)
+		return -EINVAL;
+
+	*musb->hcd->hcd_priv = (unsigned long) musb;
+	musb->hcd->self.uses_pio_for_control = 1;
+	musb->hcd->uses_new_polling = 1;
+	musb->hcd->has_tt = 1;
+
+	return 0;
+}
+
+void musb_host_cleanup(struct musb *musb)
+{
+	if (musb->port_mode == MUSB_PORT_MODE_GADGET)
+		return;
+	usb_remove_hcd(musb->hcd);
+	musb->hcd = NULL;
+}
+
+void musb_host_free(struct musb *musb)
+{
+	usb_put_hcd(musb->hcd);
+}
+
+int musb_host_setup(struct musb *musb, int power_budget)
+{
+	int ret;
+	struct usb_hcd *hcd = musb->hcd;
+
+	MUSB_HST_MODE(musb);
+	musb->xceiv->otg->default_a = 1;
+	musb->xceiv->state = OTG_STATE_A_IDLE;
+
+	otg_set_host(musb->xceiv->otg, &hcd->self);
+	hcd->self.otg_port = 1;
+	musb->xceiv->otg->host = &hcd->self;
+	hcd->power_budget = 2 * (power_budget ? : 250);
+
+	ret = usb_add_hcd(hcd, 0, 0);
+	if (ret < 0)
+		return ret;
+
+	device_wakeup_enable(hcd->self.controller);
+	return 0;
+}
+
+void musb_host_resume_root_hub(struct musb *musb)
+{
+	usb_hcd_resume_root_hub(musb->hcd);
+}
+
+void musb_host_poke_root_hub(struct musb *musb)
+{
+	MUSB_HST_MODE(musb);
+	if (musb->hcd->status_urb)
+		usb_hcd_poll_rh_status(musb->hcd);
+	else
+		usb_hcd_resume_root_hub(musb->hcd);
+}
diff --git a/drivers/usb/musb/musb_host.h b/drivers/usb/musb/musb_host.h
new file mode 100644
index 0000000..7bbf01b
--- /dev/null
+++ b/drivers/usb/musb/musb_host.h
@@ -0,0 +1,151 @@
+/*
+ * MUSB OTG driver host defines
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef _MUSB_HOST_H
+#define _MUSB_HOST_H
+
+#include <linux/scatterlist.h>
+
+/* stored in "usb_host_endpoint.hcpriv" for scheduled endpoints */
+struct musb_qh {
+	struct usb_host_endpoint *hep;		/* usbcore info */
+	struct usb_device	*dev;
+	struct musb_hw_ep	*hw_ep;		/* current binding */
+
+	struct list_head	ring;		/* of musb_qh */
+	/* struct musb_qh		*next; */	/* for periodic tree */
+	u8			mux;		/* qh multiplexed to hw_ep */
+
+	unsigned		offset;		/* in urb->transfer_buffer */
+	unsigned		segsize;	/* current xfer fragment */
+
+	u8			type_reg;	/* {rx,tx} type register */
+	u8			intv_reg;	/* {rx,tx} interval register */
+	u8			addr_reg;	/* device address register */
+	u8			h_addr_reg;	/* hub address register */
+	u8			h_port_reg;	/* hub port register */
+
+	u8			is_ready;	/* safe to modify hw_ep */
+	u8			type;		/* XFERTYPE_* */
+	u8			epnum;
+	u8			hb_mult;	/* high bandwidth pkts per uf */
+	u16			maxpacket;
+	u16			frame;		/* for periodic schedule */
+	unsigned		iso_idx;	/* in urb->iso_frame_desc[] */
+	struct sg_mapping_iter sg_miter;	/* for highmem in PIO mode */
+	bool			use_sg;		/* to track urb using sglist */
+};
+
+/* map from control or bulk queue head to the first qh on that ring */
+static inline struct musb_qh *first_qh(struct list_head *q)
+{
+	if (list_empty(q))
+		return NULL;
+	return list_entry(q->next, struct musb_qh, ring);
+}
+
+
+#if IS_ENABLED(CONFIG_USB_MUSB_HOST) || IS_ENABLED(CONFIG_USB_MUSB_DUAL_ROLE)
+extern struct musb *hcd_to_musb(struct usb_hcd *);
+extern irqreturn_t musb_h_ep0_irq(struct musb *);
+extern int musb_host_alloc(struct musb *);
+extern int musb_host_setup(struct musb *, int);
+extern void musb_host_cleanup(struct musb *);
+extern void musb_host_tx(struct musb *, u8);
+extern void musb_host_rx(struct musb *, u8);
+extern void musb_root_disconnect(struct musb *musb);
+extern void musb_host_free(struct musb *);
+extern void musb_host_cleanup(struct musb *);
+extern void musb_host_tx(struct musb *, u8);
+extern void musb_host_rx(struct musb *, u8);
+extern void musb_root_disconnect(struct musb *musb);
+extern void musb_host_resume_root_hub(struct musb *musb);
+extern void musb_host_poke_root_hub(struct musb *musb);
+extern void musb_port_suspend(struct musb *musb, bool do_suspend);
+extern void musb_port_reset(struct musb *musb, bool do_reset);
+extern void musb_host_finish_resume(struct work_struct *work);
+#else
+static inline struct musb *hcd_to_musb(struct usb_hcd *hcd)
+{
+	return NULL;
+}
+
+static inline irqreturn_t musb_h_ep0_irq(struct musb *musb)
+{
+	return 0;
+}
+
+static inline int musb_host_alloc(struct musb *musb)
+{
+	return 0;
+}
+
+static inline int musb_host_setup(struct musb *musb, int power_budget)
+{
+	return 0;
+}
+
+static inline void musb_host_cleanup(struct musb *musb)		{}
+static inline void musb_host_free(struct musb *musb)		{}
+static inline void musb_host_tx(struct musb *musb, u8 epnum)	{}
+static inline void musb_host_rx(struct musb *musb, u8 epnum)	{}
+static inline void musb_root_disconnect(struct musb *musb)	{}
+static inline void musb_host_resume_root_hub(struct musb *musb)	{}
+static inline void musb_host_poll_rh_status(struct musb *musb)	{}
+static inline void musb_host_poke_root_hub(struct musb *musb)	{}
+static inline void musb_port_suspend(struct musb *musb, bool do_suspend) {}
+static inline void musb_port_reset(struct musb *musb, bool do_reset) {}
+static inline void musb_host_finish_resume(struct work_struct *work) {}
+#endif
+
+struct usb_hcd;
+
+extern int musb_hub_status_data(struct usb_hcd *hcd, char *buf);
+extern int musb_hub_control(struct usb_hcd *hcd,
+			u16 typeReq, u16 wValue, u16 wIndex,
+			char *buf, u16 wLength);
+
+static inline struct urb *next_urb(struct musb_qh *qh)
+{
+	struct list_head	*queue;
+
+	if (!qh)
+		return NULL;
+	queue = &qh->hep->urb_list;
+	if (list_empty(queue))
+		return NULL;
+	return list_entry(queue->next, struct urb, urb_list);
+}
+
+#endif				/* _MUSB_HOST_H */
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
new file mode 100644
index 0000000..eebeed7
--- /dev/null
+++ b/drivers/usb/musb/musb_io.h
@@ -0,0 +1,122 @@
+/*
+ * MUSB OTG driver register I/O
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef __MUSB_LINUX_PLATFORM_ARCH_H__
+#define __MUSB_LINUX_PLATFORM_ARCH_H__
+
+#include <linux/io.h>
+
+#ifndef CONFIG_BLACKFIN
+
+/* NOTE:  these offsets are all in bytes */
+
+static inline u16 musb_readw(const void __iomem *addr, unsigned offset)
+	{ return __raw_readw(addr + offset); }
+
+static inline u32 musb_readl(const void __iomem *addr, unsigned offset)
+	{ return __raw_readl(addr + offset); }
+
+
+static inline void musb_writew(void __iomem *addr, unsigned offset, u16 data)
+	{ __raw_writew(data, addr + offset); }
+
+static inline void musb_writel(void __iomem *addr, unsigned offset, u32 data)
+	{ __raw_writel(data, addr + offset); }
+
+
+#if defined(CONFIG_USB_MUSB_TUSB6010) || defined (CONFIG_USB_MUSB_TUSB6010_MODULE)
+
+/*
+ * TUSB6010 doesn't allow 8-bit access; 16-bit access is the minimum.
+ */
+static inline u8 musb_readb(const void __iomem *addr, unsigned offset)
+{
+	u16 tmp;
+	u8 val;
+
+	tmp = __raw_readw(addr + (offset & ~1));
+	if (offset & 1)
+		val = (tmp >> 8);
+	else
+		val = tmp & 0xff;
+
+	return val;
+}
+
+static inline void musb_writeb(void __iomem *addr, unsigned offset, u8 data)
+{
+	u16 tmp;
+
+	tmp = __raw_readw(addr + (offset & ~1));
+	if (offset & 1)
+		tmp = (data << 8) | (tmp & 0xff);
+	else
+		tmp = (tmp & 0xff00) | data;
+
+	__raw_writew(tmp, addr + (offset & ~1));
+}
+
+#else
+
+static inline u8 musb_readb(const void __iomem *addr, unsigned offset)
+	{ return __raw_readb(addr + offset); }
+
+static inline void musb_writeb(void __iomem *addr, unsigned offset, u8 data)
+	{ __raw_writeb(data, addr + offset); }
+
+#endif	/* CONFIG_USB_MUSB_TUSB6010 */
+
+#else
+
+static inline u8 musb_readb(const void __iomem *addr, unsigned offset)
+	{ return (u8) (bfin_read16(addr + offset)); }
+
+static inline u16 musb_readw(const void __iomem *addr, unsigned offset)
+	{ return bfin_read16(addr + offset); }
+
+static inline u32 musb_readl(const void __iomem *addr, unsigned offset)
+	{ return (u32) (bfin_read16(addr + offset)); }
+
+static inline void musb_writeb(void __iomem *addr, unsigned offset, u8 data)
+	{ bfin_write16(addr + offset, (u16) data); }
+
+static inline void musb_writew(void __iomem *addr, unsigned offset, u16 data)
+	{ bfin_write16(addr + offset, data); }
+
+static inline void musb_writel(void __iomem *addr, unsigned offset, u32 data)
+	{ bfin_write16(addr + offset, (u16) data); }
+
+#endif /* CONFIG_BLACKFIN */
+
+#endif
diff --git a/drivers/usb/musb/musb_regs.h b/drivers/usb/musb/musb_regs.h
new file mode 100644
index 0000000..b9bcda5
--- /dev/null
+++ b/drivers/usb/musb/musb_regs.h
@@ -0,0 +1,652 @@
+/*
+ * MUSB OTG driver register defines
+ *
+ * Copyright 2005 Mentor Graphics Corporation
+ * Copyright (C) 2005-2006 by Texas Instruments
+ * Copyright (C) 2006-2007 Nokia Corporation
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License
+ * version 2 as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful, but
+ * WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
+ * General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA
+ * 02110-1301 USA
+ *
+ * THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED
+ * WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
+ * MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.  IN
+ * NO EVENT SHALL THE AUTHORS BE LIABLE FOR ANY DIRECT, INDIRECT,
+ * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT
+ * NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
+ * USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
+ * ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+ * (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
+ * THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ *
+ */
+
+#ifndef __MUSB_REGS_H__
+#define __MUSB_REGS_H__
+
+#define MUSB_EP0_FIFOSIZE	64	/* This is non-configurable */
+
+/*
+ * MUSB Register bits
+ */
+
+/* POWER */
+#define MUSB_POWER_ISOUPDATE	0x80
+#define MUSB_POWER_SOFTCONN	0x40
+#define MUSB_POWER_HSENAB	0x20
+#define MUSB_POWER_HSMODE	0x10
+#define MUSB_POWER_RESET	0x08
+#define MUSB_POWER_RESUME	0x04
+#define MUSB_POWER_SUSPENDM	0x02
+#define MUSB_POWER_ENSUSPEND	0x01
+
+/* INTRUSB */
+#define MUSB_INTR_SUSPEND	0x01
+#define MUSB_INTR_RESUME	0x02
+#define MUSB_INTR_RESET		0x04
+#define MUSB_INTR_BABBLE	0x04
+#define MUSB_INTR_SOF		0x08
+#define MUSB_INTR_CONNECT	0x10
+#define MUSB_INTR_DISCONNECT	0x20
+#define MUSB_INTR_SESSREQ	0x40
+#define MUSB_INTR_VBUSERROR	0x80	/* For SESSION end */
+
+/* DEVCTL */
+#define MUSB_DEVCTL_BDEVICE	0x80
+#define MUSB_DEVCTL_FSDEV	0x40
+#define MUSB_DEVCTL_LSDEV	0x20
+#define MUSB_DEVCTL_VBUS	0x18
+#define MUSB_DEVCTL_VBUS_SHIFT	3
+#define MUSB_DEVCTL_HM		0x04
+#define MUSB_DEVCTL_HR		0x02
+#define MUSB_DEVCTL_SESSION	0x01
+
+/* BABBLE_CTL */
+#define MUSB_BABBLE_FORCE_TXIDLE	0x80
+#define MUSB_BABBLE_SW_SESSION_CTRL	0x40
+#define MUSB_BABBLE_STUCK_J		0x20
+#define MUSB_BABBLE_RCV_DISABLE		0x04
+
+/* MUSB ULPI VBUSCONTROL */
+#define MUSB_ULPI_USE_EXTVBUS	0x01
+#define MUSB_ULPI_USE_EXTVBUSIND 0x02
+/* ULPI_REG_CONTROL */
+#define MUSB_ULPI_REG_REQ	(1 << 0)
+#define MUSB_ULPI_REG_CMPLT	(1 << 1)
+#define MUSB_ULPI_RDN_WR	(1 << 2)
+
+/* TESTMODE */
+#define MUSB_TEST_FORCE_HOST	0x80
+#define MUSB_TEST_FIFO_ACCESS	0x40
+#define MUSB_TEST_FORCE_FS	0x20
+#define MUSB_TEST_FORCE_HS	0x10
+#define MUSB_TEST_PACKET	0x08
+#define MUSB_TEST_K		0x04
+#define MUSB_TEST_J		0x02
+#define MUSB_TEST_SE0_NAK	0x01
+
+/* Allocate for double-packet buffering (effectively doubles assigned _SIZE) */
+#define MUSB_FIFOSZ_DPB	0x10
+/* Allocation size (8, 16, 32, ... 4096) */
+#define MUSB_FIFOSZ_SIZE	0x0f
+
+/* CSR0 */
+#define MUSB_CSR0_FLUSHFIFO	0x0100
+#define MUSB_CSR0_TXPKTRDY	0x0002
+#define MUSB_CSR0_RXPKTRDY	0x0001
+
+/* CSR0 in Peripheral mode */
+#define MUSB_CSR0_P_SVDSETUPEND	0x0080
+#define MUSB_CSR0_P_SVDRXPKTRDY	0x0040
+#define MUSB_CSR0_P_SENDSTALL	0x0020
+#define MUSB_CSR0_P_SETUPEND	0x0010
+#define MUSB_CSR0_P_DATAEND	0x0008
+#define MUSB_CSR0_P_SENTSTALL	0x0004
+
+/* CSR0 in Host mode */
+#define MUSB_CSR0_H_DIS_PING		0x0800
+#define MUSB_CSR0_H_WR_DATATOGGLE	0x0400	/* Set to allow setting: */
+#define MUSB_CSR0_H_DATATOGGLE		0x0200	/* Data toggle control */
+#define MUSB_CSR0_H_NAKTIMEOUT		0x0080
+#define MUSB_CSR0_H_STATUSPKT		0x0040
+#define MUSB_CSR0_H_REQPKT		0x0020
+#define MUSB_CSR0_H_ERROR		0x0010
+#define MUSB_CSR0_H_SETUPPKT		0x0008
+#define MUSB_CSR0_H_RXSTALL		0x0004
+
+/* CSR0 bits to avoid zeroing (write zero clears, write 1 ignored) */
+#define MUSB_CSR0_P_WZC_BITS	\
+	(MUSB_CSR0_P_SENTSTALL)
+#define MUSB_CSR0_H_WZC_BITS	\
+	(MUSB_CSR0_H_NAKTIMEOUT | MUSB_CSR0_H_RXSTALL \
+	| MUSB_CSR0_RXPKTRDY)
+
+/* TxType/RxType */
+#define MUSB_TYPE_SPEED		0xc0
+#define MUSB_TYPE_SPEED_SHIFT	6
+#define MUSB_TYPE_PROTO		0x30	/* Implicitly zero for ep0 */
+#define MUSB_TYPE_PROTO_SHIFT	4
+#define MUSB_TYPE_REMOTE_END	0xf	/* Implicitly zero for ep0 */
+
+/* CONFIGDATA */
+#define MUSB_CONFIGDATA_MPRXE		0x80	/* Auto bulk pkt combining */
+#define MUSB_CONFIGDATA_MPTXE		0x40	/* Auto bulk pkt splitting */
+#define MUSB_CONFIGDATA_BIGENDIAN	0x20
+#define MUSB_CONFIGDATA_HBRXE		0x10	/* HB-ISO for RX */
+#define MUSB_CONFIGDATA_HBTXE		0x08	/* HB-ISO for TX */
+#define MUSB_CONFIGDATA_DYNFIFO		0x04	/* Dynamic FIFO sizing */
+#define MUSB_CONFIGDATA_SOFTCONE	0x02	/* SoftConnect */
+#define MUSB_CONFIGDATA_UTMIDW		0x01	/* Data width 0/1 => 8/16bits */
+
+/* TXCSR in Peripheral and Host mode */
+#define MUSB_TXCSR_AUTOSET		0x8000
+#define MUSB_TXCSR_DMAENAB		0x1000
+#define MUSB_TXCSR_FRCDATATOG		0x0800
+#define MUSB_TXCSR_DMAMODE		0x0400
+#define MUSB_TXCSR_CLRDATATOG		0x0040
+#define MUSB_TXCSR_FLUSHFIFO		0x0008
+#define MUSB_TXCSR_FIFONOTEMPTY		0x0002
+#define MUSB_TXCSR_TXPKTRDY		0x0001
+
+/* TXCSR in Peripheral mode */
+#define MUSB_TXCSR_P_ISO		0x4000
+#define MUSB_TXCSR_P_INCOMPTX		0x0080
+#define MUSB_TXCSR_P_SENTSTALL		0x0020
+#define MUSB_TXCSR_P_SENDSTALL		0x0010
+#define MUSB_TXCSR_P_UNDERRUN		0x0004
+
+/* TXCSR in Host mode */
+#define MUSB_TXCSR_H_WR_DATATOGGLE	0x0200
+#define MUSB_TXCSR_H_DATATOGGLE		0x0100
+#define MUSB_TXCSR_H_NAKTIMEOUT		0x0080
+#define MUSB_TXCSR_H_RXSTALL		0x0020
+#define MUSB_TXCSR_H_ERROR		0x0004
+
+/* TXCSR bits to avoid zeroing (write zero clears, write 1 ignored) */
+#define MUSB_TXCSR_P_WZC_BITS	\
+	(MUSB_TXCSR_P_INCOMPTX | MUSB_TXCSR_P_SENTSTALL \
+	| MUSB_TXCSR_P_UNDERRUN | MUSB_TXCSR_FIFONOTEMPTY)
+#define MUSB_TXCSR_H_WZC_BITS	\
+	(MUSB_TXCSR_H_NAKTIMEOUT | MUSB_TXCSR_H_RXSTALL \
+	| MUSB_TXCSR_H_ERROR | MUSB_TXCSR_FIFONOTEMPTY)
+
+/* RXCSR in Peripheral and Host mode */
+#define MUSB_RXCSR_AUTOCLEAR		0x8000
+#define MUSB_RXCSR_DMAENAB		0x2000
+#define MUSB_RXCSR_DISNYET		0x1000
+#define MUSB_RXCSR_PID_ERR		0x1000
+#define MUSB_RXCSR_DMAMODE		0x0800
+#define MUSB_RXCSR_INCOMPRX		0x0100
+#define MUSB_RXCSR_CLRDATATOG		0x0080
+#define MUSB_RXCSR_FLUSHFIFO		0x0010
+#define MUSB_RXCSR_DATAERROR		0x0008
+#define MUSB_RXCSR_FIFOFULL		0x0002
+#define MUSB_RXCSR_RXPKTRDY		0x0001
+
+/* RXCSR in Peripheral mode */
+#define MUSB_RXCSR_P_ISO		0x4000
+#define MUSB_RXCSR_P_SENTSTALL		0x0040
+#define MUSB_RXCSR_P_SENDSTALL		0x0020
+#define MUSB_RXCSR_P_OVERRUN		0x0004
+
+/* RXCSR in Host mode */
+#define MUSB_RXCSR_H_AUTOREQ		0x4000
+#define MUSB_RXCSR_H_WR_DATATOGGLE	0x0400
+#define MUSB_RXCSR_H_DATATOGGLE		0x0200
+#define MUSB_RXCSR_H_RXSTALL		0x0040
+#define MUSB_RXCSR_H_REQPKT		0x0020
+#define MUSB_RXCSR_H_ERROR		0x0004
+
+/* RXCSR bits to avoid zeroing (write zero clears, write 1 ignored) */
+#define MUSB_RXCSR_P_WZC_BITS	\
+	(MUSB_RXCSR_P_SENTSTALL | MUSB_RXCSR_P_OVERRUN \
+	| MUSB_RXCSR_RXPKTRDY)
+#define MUSB_RXCSR_H_WZC_BITS	\
+	(MUSB_RXCSR_H_RXSTALL | MUSB_RXCSR_H_ERROR \
+	| MUSB_RXCSR_DATAERROR | MUSB_RXCSR_RXPKTRDY)
+
+/* HUBADDR */
+#define MUSB_HUBADDR_MULTI_TT		0x80
+
+
+#ifndef CONFIG_BLACKFIN
+
+/*
+ * Common USB registers
+ */
+
+#define MUSB_FADDR		0x00	/* 8-bit */
+#define MUSB_POWER		0x01	/* 8-bit */
+
+#define MUSB_INTRTX		0x02	/* 16-bit */
+#define MUSB_INTRRX		0x04
+#define MUSB_INTRTXE		0x06
+#define MUSB_INTRRXE		0x08
+#define MUSB_INTRUSB		0x0A	/* 8 bit */
+#define MUSB_INTRUSBE		0x0B	/* 8 bit */
+#define MUSB_FRAME		0x0C
+#define MUSB_INDEX		0x0E	/* 8 bit */
+#define MUSB_TESTMODE		0x0F	/* 8 bit */
+
+/* Get offset for a given FIFO from musb->mregs */
+#if defined(CONFIG_USB_MUSB_TUSB6010) ||	\
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+#define MUSB_FIFO_OFFSET(epnum)	(0x200 + ((epnum) * 0x20))
+#else
+#define MUSB_FIFO_OFFSET(epnum)	(0x20 + ((epnum) * 4))
+#endif
+
+/*
+ * Additional Control Registers
+ */
+
+#define MUSB_DEVCTL		0x60	/* 8 bit */
+#define MUSB_BABBLE_CTL		0x61	/* 8 bit */
+
+/* These are always controlled through the INDEX register */
+#define MUSB_TXFIFOSZ		0x62	/* 8-bit (see masks) */
+#define MUSB_RXFIFOSZ		0x63	/* 8-bit (see masks) */
+#define MUSB_TXFIFOADD		0x64	/* 16-bit offset shifted right 3 */
+#define MUSB_RXFIFOADD		0x66	/* 16-bit offset shifted right 3 */
+
+/* REVISIT: vctrl/vstatus: optional vendor utmi+phy register at 0x68 */
+#define MUSB_HWVERS		0x6C	/* 8 bit */
+#define MUSB_ULPI_BUSCONTROL	0x70	/* 8 bit */
+#define MUSB_ULPI_INT_MASK	0x72	/* 8 bit */
+#define MUSB_ULPI_INT_SRC	0x73	/* 8 bit */
+#define MUSB_ULPI_REG_DATA	0x74	/* 8 bit */
+#define MUSB_ULPI_REG_ADDR	0x75	/* 8 bit */
+#define MUSB_ULPI_REG_CONTROL	0x76	/* 8 bit */
+#define MUSB_ULPI_RAW_DATA	0x77	/* 8 bit */
+
+#define MUSB_EPINFO		0x78	/* 8 bit */
+#define MUSB_RAMINFO		0x79	/* 8 bit */
+#define MUSB_LINKINFO		0x7a	/* 8 bit */
+#define MUSB_VPLEN		0x7b	/* 8 bit */
+#define MUSB_HS_EOF1		0x7c	/* 8 bit */
+#define MUSB_FS_EOF1		0x7d	/* 8 bit */
+#define MUSB_LS_EOF1		0x7e	/* 8 bit */
+
+/* Offsets to endpoint registers */
+#define MUSB_TXMAXP		0x00
+#define MUSB_TXCSR		0x02
+#define MUSB_CSR0		MUSB_TXCSR	/* Re-used for EP0 */
+#define MUSB_RXMAXP		0x04
+#define MUSB_RXCSR		0x06
+#define MUSB_RXCOUNT		0x08
+#define MUSB_COUNT0		MUSB_RXCOUNT	/* Re-used for EP0 */
+#define MUSB_TXTYPE		0x0A
+#define MUSB_TYPE0		MUSB_TXTYPE	/* Re-used for EP0 */
+#define MUSB_TXINTERVAL		0x0B
+#define MUSB_NAKLIMIT0		MUSB_TXINTERVAL	/* Re-used for EP0 */
+#define MUSB_RXTYPE		0x0C
+#define MUSB_RXINTERVAL		0x0D
+#define MUSB_FIFOSIZE		0x0F
+#define MUSB_CONFIGDATA		MUSB_FIFOSIZE	/* Re-used for EP0 */
+
+/* Offsets to endpoint registers in indexed model (using INDEX register) */
+#define MUSB_INDEXED_OFFSET(_epnum, _offset)	\
+	(0x10 + (_offset))
+
+/* Offsets to endpoint registers in flat models */
+#define MUSB_FLAT_OFFSET(_epnum, _offset)	\
+	(0x100 + (0x10*(_epnum)) + (_offset))
+
+#if defined(CONFIG_USB_MUSB_TUSB6010) ||	\
+	defined(CONFIG_USB_MUSB_TUSB6010_MODULE)
+/* TUSB6010 EP0 configuration register is special */
+#define MUSB_TUSB_OFFSET(_epnum, _offset)	\
+	(0x10 + _offset)
+#include "tusb6010.h"		/* Needed "only" for TUSB_EP0_CONF */
+#endif
+
+#define MUSB_TXCSR_MODE			0x2000
+
+/* "bus control"/target registers, for host side multipoint (external hubs) */
+#define MUSB_TXFUNCADDR		0x00
+#define MUSB_TXHUBADDR		0x02
+#define MUSB_TXHUBPORT		0x03
+
+#define MUSB_RXFUNCADDR		0x04
+#define MUSB_RXHUBADDR		0x06
+#define MUSB_RXHUBPORT		0x07
+
+#define MUSB_BUSCTL_OFFSET(_epnum, _offset) \
+	(0x80 + (8*(_epnum)) + (_offset))
+
+static inline void musb_write_txfifosz(void __iomem *mbase, u8 c_size)
+{
+	musb_writeb(mbase, MUSB_TXFIFOSZ, c_size);
+}
+
+static inline void musb_write_txfifoadd(void __iomem *mbase, u16 c_off)
+{
+	musb_writew(mbase, MUSB_TXFIFOADD, c_off);
+}
+
+static inline void musb_write_rxfifosz(void __iomem *mbase, u8 c_size)
+{
+	musb_writeb(mbase, MUSB_RXFIFOSZ, c_size);
+}
+
+static inline void  musb_write_rxfifoadd(void __iomem *mbase, u16 c_off)
+{
+	musb_writew(mbase, MUSB_RXFIFOADD, c_off);
+}
+
+static inline void musb_write_ulpi_buscontrol(void __iomem *mbase, u8 val)
+{
+	musb_writeb(mbase, MUSB_ULPI_BUSCONTROL, val);
+}
+
+static inline u8 musb_read_txfifosz(void __iomem *mbase)
+{
+	return musb_readb(mbase, MUSB_TXFIFOSZ);
+}
+
+static inline u16 musb_read_txfifoadd(void __iomem *mbase)
+{
+	return musb_readw(mbase, MUSB_TXFIFOADD);
+}
+
+static inline u8 musb_read_rxfifosz(void __iomem *mbase)
+{
+	return musb_readb(mbase, MUSB_RXFIFOSZ);
+}
+
+static inline u16  musb_read_rxfifoadd(void __iomem *mbase)
+{
+	return musb_readw(mbase, MUSB_RXFIFOADD);
+}
+
+static inline u8 musb_read_ulpi_buscontrol(void __iomem *mbase)
+{
+	return musb_readb(mbase, MUSB_ULPI_BUSCONTROL);
+}
+
+static inline u8 musb_read_configdata(void __iomem *mbase)
+{
+	musb_writeb(mbase, MUSB_INDEX, 0);
+	return musb_readb(mbase, 0x10 + MUSB_CONFIGDATA);
+}
+
+static inline u16 musb_read_hwvers(void __iomem *mbase)
+{
+	return musb_readw(mbase, MUSB_HWVERS);
+}
+
+static inline void __iomem *musb_read_target_reg_base(u8 i, void __iomem *mbase)
+{
+	return (MUSB_BUSCTL_OFFSET(i, 0) + mbase);
+}
+
+static inline void musb_write_rxfunaddr(void __iomem *ep_target_regs,
+		u8 qh_addr_reg)
+{
+	musb_writeb(ep_target_regs, MUSB_RXFUNCADDR, qh_addr_reg);
+}
+
+static inline void musb_write_rxhubaddr(void __iomem *ep_target_regs,
+		u8 qh_h_addr_reg)
+{
+	musb_writeb(ep_target_regs, MUSB_RXHUBADDR, qh_h_addr_reg);
+}
+
+static inline void musb_write_rxhubport(void __iomem *ep_target_regs,
+		u8 qh_h_port_reg)
+{
+	musb_writeb(ep_target_regs, MUSB_RXHUBPORT, qh_h_port_reg);
+}
+
+static inline void  musb_write_txfunaddr(void __iomem *mbase, u8 epnum,
+		u8 qh_addr_reg)
+{
+	musb_writeb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXFUNCADDR),
+			qh_addr_reg);
+}
+
+static inline void  musb_write_txhubaddr(void __iomem *mbase, u8 epnum,
+		u8 qh_addr_reg)
+{
+	musb_writeb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXHUBADDR),
+			qh_addr_reg);
+}
+
+static inline void  musb_write_txhubport(void __iomem *mbase, u8 epnum,
+		u8 qh_h_port_reg)
+{
+	musb_writeb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXHUBPORT),
+			qh_h_port_reg);
+}
+
+static inline u8 musb_read_rxfunaddr(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_RXFUNCADDR));
+}
+
+static inline u8 musb_read_rxhubaddr(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_RXHUBADDR));
+}
+
+static inline u8 musb_read_rxhubport(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_RXHUBPORT));
+}
+
+static inline u8  musb_read_txfunaddr(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXFUNCADDR));
+}
+
+static inline u8  musb_read_txhubaddr(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXHUBADDR));
+}
+
+static inline u8  musb_read_txhubport(void __iomem *mbase, u8 epnum)
+{
+	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXHUBPORT));
+}
+
+#else /* CONFIG_BLACKFIN */
+
+#define USB_BASE		USB_FADDR
+#define USB_OFFSET(reg)		(reg - USB_BASE)
+
+/*
+ * Common USB registers
+ */
+#define MUSB_FADDR		USB_OFFSET(USB_FADDR)	/* 8-bit */
+#define MUSB_POWER		USB_OFFSET(USB_POWER)	/* 8-bit */
+#define MUSB_INTRTX		USB_OFFSET(USB_INTRTX)	/* 16-bit */
+#define MUSB_INTRRX		USB_OFFSET(USB_INTRRX)
+#define MUSB_INTRTXE		USB_OFFSET(USB_INTRTXE)
+#define MUSB_INTRRXE		USB_OFFSET(USB_INTRRXE)
+#define MUSB_INTRUSB		USB_OFFSET(USB_INTRUSB)	/* 8 bit */
+#define MUSB_INTRUSBE		USB_OFFSET(USB_INTRUSBE)/* 8 bit */
+#define MUSB_FRAME		USB_OFFSET(USB_FRAME)
+#define MUSB_INDEX		USB_OFFSET(USB_INDEX)	/* 8 bit */
+#define MUSB_TESTMODE		USB_OFFSET(USB_TESTMODE)/* 8 bit */
+
+/* Get offset for a given FIFO from musb->mregs */
+#define MUSB_FIFO_OFFSET(epnum)	\
+	(USB_OFFSET(USB_EP0_FIFO) + ((epnum) * 8))
+
+/*
+ * Additional Control Registers
+ */
+
+#define MUSB_DEVCTL		USB_OFFSET(USB_OTG_DEV_CTL)	/* 8 bit */
+
+#define MUSB_LINKINFO		USB_OFFSET(USB_LINKINFO)/* 8 bit */
+#define MUSB_VPLEN		USB_OFFSET(USB_VPLEN)	/* 8 bit */
+#define MUSB_HS_EOF1		USB_OFFSET(USB_HS_EOF1)	/* 8 bit */
+#define MUSB_FS_EOF1		USB_OFFSET(USB_FS_EOF1)	/* 8 bit */
+#define MUSB_LS_EOF1		USB_OFFSET(USB_LS_EOF1)	/* 8 bit */
+
+/* Offsets to endpoint registers */
+#define MUSB_TXMAXP		0x00
+#define MUSB_TXCSR		0x04
+#define MUSB_CSR0		MUSB_TXCSR	/* Re-used for EP0 */
+#define MUSB_RXMAXP		0x08
+#define MUSB_RXCSR		0x0C
+#define MUSB_RXCOUNT		0x10
+#define MUSB_COUNT0		MUSB_RXCOUNT	/* Re-used for EP0 */
+#define MUSB_TXTYPE		0x14
+#define MUSB_TYPE0		MUSB_TXTYPE	/* Re-used for EP0 */
+#define MUSB_TXINTERVAL		0x18
+#define MUSB_NAKLIMIT0		MUSB_TXINTERVAL	/* Re-used for EP0 */
+#define MUSB_RXTYPE		0x1C
+#define MUSB_RXINTERVAL		0x20
+#define MUSB_TXCOUNT		0x28
+
+/* Offsets to endpoint registers in indexed model (using INDEX register) */
+#define MUSB_INDEXED_OFFSET(_epnum, _offset)	\
+	(0x40 + (_offset))
+
+/* Offsets to endpoint registers in flat models */
+#define MUSB_FLAT_OFFSET(_epnum, _offset)	\
+	(USB_OFFSET(USB_EP_NI0_TXMAXP) + (0x40 * (_epnum)) + (_offset))
+
+/* Not implemented - HW has separate Tx/Rx FIFO */
+#define MUSB_TXCSR_MODE			0x0000
+
+static inline void musb_write_txfifosz(void __iomem *mbase, u8 c_size)
+{
+}
+
+static inline void musb_write_txfifoadd(void __iomem *mbase, u16 c_off)
+{
+}
+
+static inline void musb_write_rxfifosz(void __iomem *mbase, u8 c_size)
+{
+}
+
+static inline void  musb_write_rxfifoadd(void __iomem *mbase, u16 c_off)
+{
+}
+
+static inline void musb_write_ulpi_buscontrol(void __iomem *mbase, u8 val)
+{
+}
+
+static inline u8 musb_read_txfifosz(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u16 musb_read_txfifoadd(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u8 musb_read_rxfifosz(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u16  musb_read_rxfifoadd(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u8 musb_read_ulpi_buscontrol(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u8 musb_read_configdata(void __iomem *mbase)
+{
+	return 0;
+}
+
+static inline u16 musb_read_hwvers(void __iomem *mbase)
+{
+	/*
+	 * This register is invisible on Blackfin, actually the MUSB
+	 * RTL version of Blackfin is 1.9, so just harcode its value.
+	 */
+	return MUSB_HWVERS_1900;
+}
+
+static inline void __iomem *musb_read_target_reg_base(u8 i, void __iomem *mbase)
+{
+	return NULL;
+}
+
+static inline void musb_write_rxfunaddr(void __iomem *ep_target_regs,
+		u8 qh_addr_req)
+{
+}
+
+static inline void musb_write_rxhubaddr(void __iomem *ep_target_regs,
+		u8 qh_h_addr_reg)
+{
+}
+
+static inline void musb_write_rxhubport(void __iomem *ep_target_regs,
+		u8 qh_h_port_reg)
+{
+}
+
+static inline void  musb_write_txfunaddr(void __iomem *mbase, u8 epnum,
+		u8 qh_addr_reg)
+{
+}
+
+static inline void  musb_write_txhubaddr(void __iomem *mbase, u8 epnum,
+		u8 qh_addr_reg)
+{
+}
+
+static inline void  musb_write_txhubport(void __iomem *mbase, u8 epnum,
+		u8 qh_h_port_reg)
+{
+}
+
+static inline u8 musb_read_rxfunaddr(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+static inline u8 musb_read_rxhubaddr(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+static inline u8 musb_read_rxhubport(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+static inline u8  musb_read_txfunaddr(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+static inline u8  musb_read_txhubaddr(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+static inline u8 musb_read_txhubport(void __iomem *mbase, u8 epnum)
+{
+	return 0;
+}
+
+#endif /* CONFIG_BLACKFIN */
+
+#endif	/* __MUSB_REGS_H__ */
diff --git a/include/usb/musb.h b/include/usb/musb.h
new file mode 100644
index 0000000..13eb9f8
--- /dev/null
+++ b/include/usb/musb.h
@@ -0,0 +1,152 @@
+/*
+ * This is used to for host and peripheral modes of the driver for
+ * Inventra (Multidrop) Highspeed Dual-Role Controllers:  (M)HDRC.
+ *
+ * Board initialization should put one of these into dev->platform_data,
+ * probably on some platform_device named "musb-hdrc".  It encapsulates
+ * key configuration differences between boards.
+ */
+
+#ifndef __LINUX_USB_MUSB_H
+#define __LINUX_USB_MUSB_H
+
+/* The USB role is defined by the connector used on the board, so long as
+ * standards are being followed.  (Developer boards sometimes won't.)
+ */
+enum musb_mode {
+	MUSB_UNDEFINED = 0,
+	MUSB_HOST,		/* A or Mini-A connector */
+	MUSB_PERIPHERAL,	/* B or Mini-B connector */
+	MUSB_OTG		/* Mini-AB connector */
+};
+
+struct clk;
+
+enum musb_fifo_style {
+	FIFO_RXTX,
+	FIFO_TX,
+	FIFO_RX
+} __attribute__ ((packed));
+
+enum musb_buf_mode {
+	BUF_SINGLE,
+	BUF_DOUBLE
+} __attribute__ ((packed));
+
+struct musb_fifo_cfg {
+	u8			hw_ep_num;
+	enum musb_fifo_style	style;
+	enum musb_buf_mode	mode;
+	u16			maxpacket;
+};
+
+#define MUSB_EP_FIFO(ep, st, m, pkt)		\
+{						\
+	.hw_ep_num	= ep,			\
+	.style		= st,			\
+	.mode		= m,			\
+	.maxpacket	= pkt,			\
+}
+
+#define MUSB_EP_FIFO_SINGLE(ep, st, pkt)	\
+	MUSB_EP_FIFO(ep, st, BUF_SINGLE, pkt)
+
+#define MUSB_EP_FIFO_DOUBLE(ep, st, pkt)	\
+	MUSB_EP_FIFO(ep, st, BUF_DOUBLE, pkt)
+
+struct musb_hdrc_eps_bits {
+	const char	name[16];
+	u8		bits;
+};
+
+struct musb_hdrc_config {
+	struct musb_fifo_cfg	*fifo_cfg;	/* board fifo configuration */
+	unsigned		fifo_cfg_size;	/* size of the fifo configuration */
+
+	/* MUSB configuration-specific details */
+	unsigned	multipoint:1;	/* multipoint device */
+	unsigned	dyn_fifo:1 __deprecated; /* supports dynamic fifo sizing */
+	unsigned	soft_con:1 __deprecated; /* soft connect required */
+	unsigned	utm_16:1 __deprecated; /* utm data witdh is 16 bits */
+	unsigned	big_endian:1;	/* true if CPU uses big-endian */
+	unsigned	mult_bulk_tx:1;	/* Tx ep required for multbulk pkts */
+	unsigned	mult_bulk_rx:1;	/* Rx ep required for multbulk pkts */
+	unsigned	high_iso_tx:1;	/* Tx ep required for HB iso */
+	unsigned	high_iso_rx:1;	/* Rx ep required for HD iso */
+	unsigned	dma:1 __deprecated; /* supports DMA */
+	unsigned	vendor_req:1 __deprecated; /* vendor registers required */
+
+	u8		num_eps;	/* number of endpoints _with_ ep0 */
+	u8		dma_channels __deprecated; /* number of dma channels */
+	u8		dyn_fifo_size;	/* dynamic size in bytes */
+	u8		vendor_ctrl __deprecated; /* vendor control reg width */
+	u8		vendor_stat __deprecated; /* vendor status reg witdh */
+	u8		dma_req_chan __deprecated; /* bitmask for required dma channels */
+	u8		ram_bits;	/* ram address size */
+
+	struct musb_hdrc_eps_bits *eps_bits __deprecated;
+#ifdef CONFIG_BLACKFIN
+	/* A GPIO controlling VRSEL in Blackfin */
+	unsigned int	gpio_vrsel;
+	unsigned int	gpio_vrsel_active;
+	/* musb CLKIN in Blackfin in MHZ */
+	unsigned char   clkin;
+#endif
+
+};
+
+struct musb_hdrc_platform_data {
+	/* MUSB_HOST, MUSB_PERIPHERAL, or MUSB_OTG */
+	u8		mode;
+
+	/* for clk_get() */
+	const char	*clock;
+
+	/* (HOST or OTG) switch VBUS on/off */
+	int		(*set_vbus)(struct device_d *dev, int is_on);
+
+	/* (HOST or OTG) mA/2 power supplied on (default = 8mA) */
+	u8		power;
+
+	/* (PERIPHERAL) mA/2 max power consumed (default = 100mA) */
+	u8		min_power;
+
+	/* (HOST or OTG) msec/2 after VBUS on till power good */
+	u8		potpgt;
+
+	/* (HOST or OTG) program PHY for external Vbus */
+	unsigned	extvbus:1;
+
+	/* Power the device on or off */
+	int		(*set_power)(int state);
+
+	/* MUSB configuration-specific details */
+	struct musb_hdrc_config	*config;
+
+	/* Architecture specific board data	*/
+	void		*board_data;
+
+	/* Platform specific struct musb_ops pointer */
+	const void	*platform_ops;
+};
+
+
+/* TUSB 6010 support */
+
+#define	TUSB6010_OSCCLK_60	16667	/* psec/clk @ 60.0 MHz */
+#define	TUSB6010_REFCLK_24	41667	/* psec/clk @ 24.0 MHz XI */
+#define	TUSB6010_REFCLK_19	52083	/* psec/clk @ 19.2 MHz CLKIN */
+
+#ifdef	CONFIG_ARCH_OMAP2
+
+extern int __init tusb6010_setup_interface(
+		struct musb_hdrc_platform_data *data,
+		unsigned ps_refclk, unsigned waitpin,
+		unsigned async_cs, unsigned sync_cs,
+		unsigned irq, unsigned dmachan);
+
+extern int tusb6010_platform_retime(unsigned is_refclk);
+
+#endif	/* OMAP2 */
+
+#endif /* __LINUX_USB_MUSB_H */
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
