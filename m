Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x232.google.com ([2a00:1450:4010:c04::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKz-00005v-Vb
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:55 +0000
Received: by mail-lb0-f178.google.com with SMTP id 10so212992lbg.23
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:29 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.27
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:28 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:25 +0200
Message-Id: <1402646075-22747-9-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 08/18] musb: use __BAREBOX__ macro
To: barebox@lists.infradead.org

---
 drivers/usb/musb/musb_core.c |   51 +++++++++++++++++++++---------------------
 drivers/usb/musb/musb_core.h |   10 ++++-----
 drivers/usb/musb/musb_dsps.c |   41 +++++++++++++++++----------------
 drivers/usb/musb/musb_host.c |   31 +++++++++++++------------
 drivers/usb/musb/musb_host.h |    4 ++--
 drivers/usb/musb/musb_io.h   |    2 +-
 6 files changed, 68 insertions(+), 71 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 36681b6..546f656 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -89,8 +89,7 @@
  * Most of the conditional compilation will (someday) vanish.
  */
 
-#define __UBOOT__
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/sched.h>
@@ -134,7 +133,7 @@ MODULE_LICENSE("GPL");
 MODULE_ALIAS("platform:" MUSB_DRIVER_NAME);
 
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 /*-------------------------------------------------------------------------*/
 
 static inline struct musb *dev_to_musb(struct device *dev)
@@ -145,7 +144,7 @@ static inline struct musb *dev_to_musb(struct device *dev)
 
 /*-------------------------------------------------------------------------*/
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #ifndef CONFIG_BLACKFIN
 static int musb_ulpi_read(struct usb_phy *phy, u32 offset)
 {
@@ -360,7 +359,7 @@ void musb_load_testpacket(struct musb *musb)
 	musb_writew(regs, MUSB_CSR0, MUSB_CSR0_TXPKTRDY);
 }
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 /*-------------------------------------------------------------------------*/
 
 /*
@@ -450,7 +449,7 @@ void musb_hnp_stop(struct musb *musb)
 static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
 				u8 devctl, u8 power)
 {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct usb_otg *otg = musb->xceiv->otg;
 #endif
 	irqreturn_t handled = IRQ_NONE;
@@ -458,7 +457,7 @@ static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
 	dev_dbg(musb->controller, "<== Power=%02x, DevCtl=%02x, int_usb=0x%x\n", power, devctl,
 		int_usb);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* in host mode, the peripheral may issue remote wakeup.
 	 * in peripheral mode, the host may resume the link.
 	 * spurious RESUME irqs happen too, paired with SUSPEND.
@@ -712,7 +711,7 @@ static irqreturn_t musb_stage0_irq(struct musb *musb, u8 int_usb,
 		musb_writew(musb->mregs, MUSB_INTRTXE, musb->epmask);
 		musb_writew(musb->mregs, MUSB_INTRRXE, musb->epmask & 0xfffe);
 		musb_writeb(musb->mregs, MUSB_INTRUSBE, 0xf7);
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		musb->port1_status &= ~(USB_PORT_STAT_LOW_SPEED
 					|USB_PORT_STAT_HIGH_SPEED
 					|USB_PORT_STAT_ENABLE
@@ -763,7 +762,7 @@ b_host:
 #endif
 	}
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if ((int_usb & MUSB_INTR_DISCONNECT) && !musb->ignore_disconnect) {
 		dev_dbg(musb->controller, "DISCONNECT (%s) as %s, devctl %02x\n",
 				otg_state_string(musb->xceiv->state),
@@ -955,7 +954,7 @@ void musb_start(struct musb *musb)
 	devctl &= ~MUSB_DEVCTL_SESSION;
 
 	if (is_otg_enabled(musb)) {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		/* session started after:
 		 * (a) ID-grounded irq, host mode;
 		 * (b) vbus present/connect IRQ, peripheral mode;
@@ -1024,7 +1023,7 @@ void musb_stop(struct musb *musb)
 	musb_platform_try_idle(musb, 0);
 }
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static void musb_shutdown(struct platform_device *pdev)
 {
 	struct musb	*musb = dev_to_musb(&pdev->dev);
@@ -1818,7 +1817,7 @@ static const struct attribute_group musb_attr_group = {
 
 #endif	/* sysfs */
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 /* Only used to provide driver mode change events */
 static void musb_irq_work(struct work_struct *data)
 {
@@ -1843,7 +1842,7 @@ allocate_instance(struct device *dev,
 	struct musb		*musb;
 	struct musb_hw_ep	*ep;
 	int			epnum;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct usb_hcd	*hcd;
 
 	hcd = usb_create_hcd(&musb_hc_driver, dev, dev_name(dev));
@@ -1861,7 +1860,7 @@ allocate_instance(struct device *dev,
 	INIT_LIST_HEAD(&musb->in_bulk);
 	INIT_LIST_HEAD(&musb->out_bulk);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	hcd->uses_new_polling = 1;
 	hcd->has_tt = 1;
 #endif
@@ -1920,7 +1919,7 @@ static void musb_free(struct musb *musb)
  * @mregs: virtual address of controller registers,
  *	not yet corrected for platform-specific offsets
  */
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static int __devinit
 musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
 #else
@@ -1931,7 +1930,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 {
 	int			status;
 	struct musb		*musb;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct musb_hdrc_platform_data *plat = dev->platform_data;
 #else
 	int nIrq = 0;
@@ -1984,7 +1983,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 		goto fail2;
 	}
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (!musb->xceiv->io_ops) {
 		musb->xceiv->io_dev = musb->controller;
 		musb->xceiv->io_priv = musb->mregs;
@@ -2004,7 +2003,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 			(void) c->start(c);
 	}
 #endif
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* ideally this would be abstracted in platform setup */
 	if (!is_dma_capable() || !musb->dma_controller)
 		dev->dma_mask = NULL;
@@ -2041,7 +2040,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 		musb->irq_wake = 0;
 	}
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* host side needs more setup */
 	if (is_host_enabled(musb)) {
 		struct usb_hcd	*hcd = musb_to_hcd(musb);
@@ -2070,7 +2069,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 		struct usb_hcd	*hcd = musb_to_hcd(musb);
 
 		MUSB_HST_MODE(musb);
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		musb->xceiv->otg->default_a = 1;
 		musb->xceiv->state = OTG_STATE_A_IDLE;
 
@@ -2087,7 +2086,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 
 	} else /* peripheral is enabled */ {
 		MUSB_DEV_MODE(musb);
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		musb->xceiv->otg->default_a = 0;
 		musb->xceiv->state = OTG_STATE_B_IDLE;
 #endif
@@ -2095,7 +2094,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 		if (is_peripheral_capable())
 			status = musb_gadget_setup(musb);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		dev_dbg(musb->controller, "%s mode, status %d, dev%02x\n",
 			is_otg_enabled(musb) ? "OTG" : "PERIPHERAL",
 			status,
@@ -2130,7 +2129,7 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 			? "DMA" : "PIO",
 			musb->nIrq);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	return 0;
 #else
 	return status == 0 ? musb : NULL;
@@ -2140,7 +2139,7 @@ fail5:
 	musb_exit_debugfs(musb);
 
 fail4:
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (!is_otg_enabled(musb) && is_host_enabled(musb))
 		usb_remove_hcd(musb_to_hcd(musb));
 	else
@@ -2163,7 +2162,7 @@ fail1:
 
 fail0:
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	return status;
 #else
 	return status == 0 ? musb : NULL;
@@ -2181,7 +2180,7 @@ fail0:
 static u64	*orig_dma_mask;
 #endif
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static int __devinit musb_probe(struct platform_device *pdev)
 {
 	struct device	*dev = &pdev->dev;
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 2695742..8f8d791 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -35,7 +35,7 @@
 #ifndef __MUSB_CORE_H__
 #define __MUSB_CORE_H__
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/slab.h>
 #include <linux/list.h>
 #include <linux/interrupt.h>
@@ -72,7 +72,7 @@ struct musb_ep;
 #include "musb_regs.h"
 
 #include "musb_gadget.h"
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/usb/hcd.h>
 #endif
 #include "musb_host.h"
@@ -94,7 +94,7 @@ struct musb_ep;
 
 /****************************** PERIPHERAL ROLE *****************************/
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #define	is_peripheral_capable()	(1)
 #else
 #ifdef CONFIG_MUSB_GADGET
@@ -115,7 +115,7 @@ extern void musb_g_disconnect(struct musb *);
 
 /****************************** HOST ROLE ***********************************/
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #define	is_host_capable()	(1)
 #else
 #ifdef CONFIG_MUSB_HOST
@@ -615,7 +615,7 @@ static inline int musb_platform_exit(struct musb *musb)
 	return musb->ops->exit(musb);
 }
 
-#ifdef __UBOOT__
+#ifdef __BAREBOX__
 struct musb *
 musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 			     void *ctrl);
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index 9a03917..c1caf57 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -29,8 +29,7 @@
  * da8xx.c would be merged to this file after testing.
  */
 
-#define __UBOOT__
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/init.h>
 #include <linux/io.h>
 #include <linux/err.h>
@@ -159,7 +158,7 @@ struct dsps_glue {
  */
 static void dsps_musb_enable(struct musb *musb)
 {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct device *dev = musb->controller;
 	struct platform_device *pdev = to_platform_device(dev->parent);
 	struct dsps_glue *glue = platform_get_drvdata(pdev);
@@ -178,7 +177,7 @@ static void dsps_musb_enable(struct musb *musb)
 	dsps_writel(reg_base, wrp->epintr_set, epmask);
 	dsps_writel(reg_base, wrp->coreintr_set, coremask);
 	/* Force the DRVVBUS IRQ so we can start polling for ID change. */
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (is_otg_enabled(musb))
 		dsps_writel(reg_base, wrp->coreintr_set,
 			    (1 << wrp->drvvbus) << wrp->usb_shift);
@@ -190,7 +189,7 @@ static void dsps_musb_enable(struct musb *musb)
  */
 static void dsps_musb_disable(struct musb *musb)
 {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct device *dev = musb->controller;
 	struct platform_device *pdev = to_platform_device(dev->parent);
 	struct dsps_glue *glue = platform_get_drvdata(pdev);
@@ -205,7 +204,7 @@ static void dsps_musb_disable(struct musb *musb)
 #endif
 }
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static void otg_timer(unsigned long _musb)
 {
 	struct musb *musb = (void *)_musb;
@@ -303,7 +302,7 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 {
 	struct musb  *musb = hci;
 	void __iomem *reg_base = musb->ctrl_base;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct device *dev = musb->controller;
 	struct platform_device *pdev = to_platform_device(dev->parent);
 	struct dsps_glue *glue = platform_get_drvdata(pdev);
@@ -336,7 +335,7 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 
 	dev_dbg(musb->controller, "usbintr (%x) epintr(%x)\n",
 			usbintr, epintr);
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/*
 	 * DRVVBUS IRQs are the only proxy we have (a very poor one!) for
 	 * DSPS IP's missing ID change IRQ.  We need an ID change IRQ to
@@ -404,7 +403,7 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 	if (ret == IRQ_HANDLED || epintr || usbintr)
 		dsps_writel(reg_base, wrp->eoi, 1);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* Poll for ID change */
 	if (is_otg_enabled(musb) && musb->xceiv->state == OTG_STATE_B_IDLE)
 		mod_timer(&glue->timer, jiffies + wrp->poll_seconds * HZ);
@@ -417,7 +416,7 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 
 static int dsps_musb_init(struct musb *musb)
 {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct device *dev = musb->controller;
 	struct musb_hdrc_platform_data *plat = dev->platform_data;
 	struct platform_device *pdev = to_platform_device(dev->parent);
@@ -436,7 +435,7 @@ static int dsps_musb_init(struct musb *musb)
 	/* mentor core register starts at offset of 0x400 from musb base */
 	musb->mregs += wrp->musb_core_offset;
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* NOP driver needs change if supporting dual instance */
 	usb_nop_xceiv_register();
 	musb->xceiv = usb_get_phy(USB_PHY_TYPE_USB2);
@@ -451,7 +450,7 @@ static int dsps_musb_init(struct musb *musb)
 		goto err0;
 	}
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (is_host_enabled(musb))
 		setup_timer(&glue->timer, otg_timer, (unsigned long) musb);
 #endif
@@ -475,7 +474,7 @@ static int dsps_musb_init(struct musb *musb)
 
 	return 0;
 err0:
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	usb_put_phy(musb->xceiv);
 	usb_nop_xceiv_unregister();
 #endif
@@ -484,7 +483,7 @@ err0:
 
 static int dsps_musb_exit(struct musb *musb)
 {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	struct device *dev = musb->controller;
 	struct musb_hdrc_platform_data *plat = dev->platform_data;
 	struct omap_musb_board_data *data = plat->board_data;
@@ -495,7 +494,7 @@ static int dsps_musb_exit(struct musb *musb)
 			(struct omap_musb_board_data *)musb->controller;
 #endif
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (is_host_enabled(musb))
 		del_timer_sync(&glue->timer);
 #endif
@@ -504,7 +503,7 @@ static int dsps_musb_exit(struct musb *musb)
 	if (data->set_phy_power)
 		data->set_phy_power(0);
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	/* NOP driver needs change if supporting dual instance */
 	usb_put_phy(musb->xceiv);
 	usb_nop_xceiv_unregister();
@@ -513,7 +512,7 @@ static int dsps_musb_exit(struct musb *musb)
 	return 0;
 }
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static struct musb_platform_ops dsps_ops = {
 #else
 struct musb_platform_ops musb_dsps_ops = {
@@ -524,16 +523,16 @@ struct musb_platform_ops musb_dsps_ops = {
 	.enable		= dsps_musb_enable,
 	.disable	= dsps_musb_disable,
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	.try_idle	= dsps_musb_try_idle,
 #endif
 };
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static u64 musb_dmamask = DMA_BIT_MASK(32);
 #endif
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static int __devinit dsps_create_musb_pdev(struct dsps_glue *glue, u8 id)
 {
 	struct device *dev = glue->dev;
@@ -723,7 +722,7 @@ static int dsps_resume(struct device *dev)
 static SIMPLE_DEV_PM_OPS(dsps_pm_ops, dsps_suspend, dsps_resume);
 #endif
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static const struct platform_device_id musb_dsps_id_table[] __devinitconst = {
 	{
 		.name	= "musb-ti81xx",
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 9a2cf59..120849d 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -33,8 +33,7 @@
  *
  */
 
-#define __UBOOT__
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/delay.h>
@@ -237,7 +236,7 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 		buf = urb->setup_packet;
 		len = 8;
 		break;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	case USB_ENDPOINT_XFER_ISOC:
 		qh->iso_idx = 0;
 		qh->frame = 0;
@@ -257,7 +256,7 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 			({char *s; switch (qh->type) {
 			case USB_ENDPOINT_XFER_CONTROL:	s = ""; break;
 			case USB_ENDPOINT_XFER_BULK:	s = "-bulk"; break;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 			case USB_ENDPOINT_XFER_ISOC:	s = "-iso"; break;
 #endif
 			default:			s = "-intr"; break;
@@ -274,7 +273,7 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 
 	/* determine if the time is right for a periodic transfer */
 	switch (qh->type) {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	case USB_ENDPOINT_XFER_ISOC:
 #endif
 	case USB_ENDPOINT_XFER_INT:
@@ -283,7 +282,7 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 		/* FIXME this doesn't implement that scheduling policy ...
 		 * or handle framecounter wrapping
 		 */
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		if ((urb->transfer_flags & URB_ISO_ASAP)
 				|| (frame >= urb->start_frame)) {
 			/* REVISIT the SOF irq handler shouldn't duplicate
@@ -299,7 +298,7 @@ musb_start_urb(struct musb *musb, int is_in, struct musb_qh *qh)
 #if 1 /* ifndef	CONFIG_ARCH_DAVINCI */
 			musb_writeb(mbase, MUSB_INTRUSBE, 0xff);
 #endif
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		}
 #endif
 		break;
@@ -378,7 +377,7 @@ static void musb_advance_schedule(struct musb *musb, struct urb *urb,
 	case USB_ENDPOINT_XFER_INT:
 		musb_save_toggle(qh, is_in, urb);
 		break;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	case USB_ENDPOINT_XFER_ISOC:
 		if (status == 0 && urb->error_count)
 			status = -EXDEV;
@@ -493,7 +492,7 @@ musb_host_packet_rx(struct musb *musb, struct urb *urb, u8 epnum, u8 iso_err)
 			urb->transfer_buffer_length);
 
 	/* unload FIFO */
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	if (usb_pipeisoc(pipe)) {
 		int					status = 0;
 		struct usb_iso_packet_descriptor	*d;
@@ -547,7 +546,7 @@ musb_host_packet_rx(struct musb *musb, struct urb *urb, u8 epnum, u8 iso_err)
 				&& (urb->actual_length
 					< urb->transfer_buffer_length))
 			urb->status = -EREMOTEIO;
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 	}
 #endif
 
@@ -1288,7 +1287,7 @@ void musb_host_tx(struct musb *musb, u8 epnum)
 		qh->offset += length;
 
 		if (usb_pipeisoc(pipe)) {
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 			struct usb_iso_packet_descriptor	*d;
 
 			d = urb->iso_frame_desc + qh->iso_idx;
@@ -1921,7 +1920,7 @@ success:
 	return 0;
 }
 
-#ifdef __UBOOT__
+#ifdef __BAREBOX__
 /* check if transaction translator is needed for device */
 static int tt_needed(struct musb *musb, struct usb_device *dev)
 {
@@ -1932,7 +1931,7 @@ static int tt_needed(struct musb *musb, struct usb_device *dev)
 }
 #endif
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 static int musb_urb_enqueue(
 #else
 int musb_urb_enqueue(
@@ -2070,14 +2069,14 @@ int musb_urb_enqueue(
 	if (musb->is_multipoint) {
 		struct usb_device	*parent = urb->dev->parent;
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 		if (parent != hcd->self.root_hub) {
 #else
 		if (parent) {
 #endif
 			qh->h_addr_reg = (u8) parent->devnum;
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 			/* set up tt info if needed */
 			if (urb->dev->tt) {
 				qh->h_port_reg = (u8) urb->dev->ttport;
@@ -2132,7 +2131,7 @@ done:
 }
 
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 /*
  * abort a transfer that's at the head of a hardware queue.
  * called with controller locked, irqs blocked
diff --git a/drivers/usb/musb/musb_host.h b/drivers/usb/musb/musb_host.h
index ebebe0c..8792364 100644
--- a/drivers/usb/musb/musb_host.h
+++ b/drivers/usb/musb/musb_host.h
@@ -34,7 +34,7 @@
 
 #ifndef _MUSB_HOST_H
 #define _MUSB_HOST_H
-#ifdef __UBOOT__
+#ifdef __BAREBOX__
 #include "usb-compat.h"
 #endif
 
@@ -108,7 +108,7 @@ static inline struct urb *next_urb(struct musb_qh *qh)
 	return list_entry(queue->next, struct urb, urb_list);
 }
 
-#ifdef __UBOOT__
+#ifdef __BAREBOX__
 int musb_urb_enqueue(struct usb_hcd *hcd, struct urb *urb, gfp_t mem_flags);
 #endif
 #endif				/* _MUSB_HOST_H */
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index 51730ae..efc4ef9 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -35,7 +35,7 @@
 #ifndef __MUSB_LINUX_PLATFORM_ARCH_H__
 #define __MUSB_LINUX_PLATFORM_ARCH_H__
 
-#ifndef __UBOOT__
+#ifndef __BAREBOX__
 #include <linux/io.h>
 #else
 #include <asm/io.h>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
