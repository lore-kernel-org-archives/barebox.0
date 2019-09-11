Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7x1i-0001Rs-Tg
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 07:26:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 Sep 2019 09:26:49 +0200
Message-Id: <20190911072649.19017-3-s.hauer@pengutronix.de>
In-Reply-To: <20190911072649.19017-1-s.hauer@pengutronix.de>
References: <20190911072649.19017-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] USB: remove blackfin support
To: Barebox List <barebox@lists.infradead.org>

The blackfin architecture has been removed from barebox. Remove the
blackfin specifics in the USB drivers as well.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/epautoconf.c |  19 ----
 drivers/usb/musb/musb_core.c    |   9 +-
 drivers/usb/musb/musb_core.h    |  32 +-----
 drivers/usb/musb/musb_dma.h     |  11 --
 drivers/usb/musb/musb_io.h      |  24 ----
 drivers/usb/musb/musb_regs.h    | 191 --------------------------------
 include/usb/musb.h              |   8 --
 7 files changed, 2 insertions(+), 292 deletions(-)

diff --git a/drivers/usb/gadget/epautoconf.c b/drivers/usb/gadget/epautoconf.c
index f0f576d708..ced568921b 100644
--- a/drivers/usb/gadget/epautoconf.c
+++ b/drivers/usb/gadget/epautoconf.c
@@ -279,25 +279,6 @@ struct usb_ep *usb_ep_autoconfig_ss(
 					      ep_comp))
 				goto found_ep;
 		}
-
-#ifdef CONFIG_BLACKFIN
-	} else if (gadget_is_musbhdrc(gadget)) {
-		if ((USB_ENDPOINT_XFER_BULK == type) ||
-		    (USB_ENDPOINT_XFER_ISOC == type)) {
-			if (USB_DIR_IN & desc->bEndpointAddress)
-				ep = find_ep (gadget, "ep5in");
-			else
-				ep = find_ep (gadget, "ep6out");
-		} else if (USB_ENDPOINT_XFER_INT == type) {
-			if (USB_DIR_IN & desc->bEndpointAddress)
-				ep = find_ep(gadget, "ep1in");
-			else
-				ep = find_ep(gadget, "ep2out");
-		} else
-			ep = NULL;
-		if (ep && ep_matches(gadget, ep, desc, ep_comp))
-			goto found_ep;
-#endif
 	}
 
 	/* Second, look at endpoints until an unclaimed one looks usable */
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 84a05c4f96..4c11e6580c 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -121,7 +121,6 @@ MODULE_ALIAS("platform:" MUSB_DRIVER_NAME);
 
 /*-------------------------------------------------------------------------*/
 
-#ifndef CONFIG_BLACKFIN
 static int musb_ulpi_read(struct usb_phy *phy, u32 offset)
 {
 	void __iomem *addr = phy->io_priv;
@@ -195,10 +194,6 @@ static int musb_ulpi_write(struct usb_phy *phy, u32 offset, u32 data)
 out:
 	return ret;
 }
-#else
-#define musb_ulpi_read		NULL
-#define musb_ulpi_write		NULL
-#endif
 
 struct usb_phy_io_ops musb_ulpi_access = {
 	.read = musb_ulpi_read,
@@ -207,7 +202,7 @@ struct usb_phy_io_ops musb_ulpi_access = {
 
 /*-------------------------------------------------------------------------*/
 
-#if !defined(CONFIG_USB_MUSB_TUSB6010) && !defined(CONFIG_USB_MUSB_BLACKFIN)
+#if !defined(CONFIG_USB_MUSB_TUSB6010)
 
 /*
  * Load an endpoint's FIFO
@@ -824,11 +819,9 @@ static int musb_core_init(u16 musb_type, struct musb *musb)
 	} else {
 		musb->is_multipoint = 0;
 		type = "";
-#ifndef	CONFIG_USB_OTG_BLACKLIST_HUB
 		printk(KERN_ERR
 			"%s: kernel must blacklist external hubs\n",
 			musb_driver_name);
-#endif
 	}
 
 	/* log release info */
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index a21ddd5df2..d9402fcc4a 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -122,7 +122,7 @@ enum musb_g_ep0_state {
  */
 
 #if defined(CONFIG_ARCH_DAVINCI) || defined(CONFIG_SOC_OMAP2430) \
-		|| defined(CONFIG_SOC_OMAP3430) || defined(CONFIG_BLACKFIN) \
+		|| defined(CONFIG_SOC_OMAP3430) \
 		|| defined(CONFIG_ARCH_OMAP4)
 /* REVISIT indexed access seemed to
  * misbehave (on DaVinci) for at least peripheral IN ...
@@ -437,34 +437,6 @@ static inline struct musb *gadget_to_musb(struct usb_gadget *g)
 	return container_of(g, struct musb, g);
 }
 
-#ifdef CONFIG_BLACKFIN
-static inline int musb_read_fifosize(struct musb *musb,
-		struct musb_hw_ep *hw_ep, u8 epnum)
-{
-	musb->nr_endpoints++;
-	musb->epmask |= (1 << epnum);
-
-	if (epnum < 5) {
-		hw_ep->max_packet_sz_tx = 128;
-		hw_ep->max_packet_sz_rx = 128;
-	} else {
-		hw_ep->max_packet_sz_tx = 1024;
-		hw_ep->max_packet_sz_rx = 1024;
-	}
-	hw_ep->is_shared_fifo = false;
-
-	return 0;
-}
-
-static inline void musb_configure_ep0(struct musb *musb)
-{
-	musb->endpoints[0].max_packet_sz_tx = MUSB_EP0_FIFOSIZE;
-	musb->endpoints[0].max_packet_sz_rx = MUSB_EP0_FIFOSIZE;
-	musb->endpoints[0].is_shared_fifo = true;
-}
-
-#else
-
 static inline int musb_read_fifosize(struct musb *musb,
 		struct musb_hw_ep *hw_ep, u8 epnum)
 {
@@ -501,8 +473,6 @@ static inline void musb_configure_ep0(struct musb *musb)
 	musb->endpoints[0].max_packet_sz_rx = MUSB_EP0_FIFOSIZE;
 	musb->endpoints[0].is_shared_fifo = true;
 }
-#endif /* CONFIG_BLACKFIN */
-
 
 /***************************** Glue it together *****************************/
 
diff --git a/drivers/usb/musb/musb_dma.h b/drivers/usb/musb/musb_dma.h
index 1345a4ff04..97a03cbcf4 100644
--- a/drivers/usb/musb/musb_dma.h
+++ b/drivers/usb/musb/musb_dma.h
@@ -80,17 +80,6 @@ struct musb_hw_ep;
 #define tusb_dma_omap()			0
 #endif
 
-/* Anomaly 05000456 - USB Receive Interrupt Is Not Generated in DMA Mode 1
- *	Only allow DMA mode 1 to be used when the USB will actually generate the
- *	interrupts we expect.
- */
-#ifdef CONFIG_BLACKFIN
-# undef USE_MODE1
-# if !ANOMALY_05000456
-#  define USE_MODE1
-# endif
-#endif
-
 /*
  * DMA channel status ... updated by the dma controller driver whenever that
  * status changes, and protected by the overall controller spinlock.
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index a4be339355..ec474477a1 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -37,8 +37,6 @@
 
 #include <io.h>
 
-#ifndef CONFIG_BLACKFIN
-
 /* NOTE:  these offsets are all in bytes */
 
 static inline u16 musb_readw(const void __iomem *addr, unsigned offset)
@@ -97,26 +95,4 @@ static inline void musb_writeb(void __iomem *addr, unsigned offset, u8 data)
 
 #endif	/* CONFIG_USB_MUSB_TUSB6010 */
 
-#else
-
-static inline u8 musb_readb(const void __iomem *addr, unsigned offset)
-	{ return (u8) (bfin_read16(addr + offset)); }
-
-static inline u16 musb_readw(const void __iomem *addr, unsigned offset)
-	{ return bfin_read16(addr + offset); }
-
-static inline u32 musb_readl(const void __iomem *addr, unsigned offset)
-	{ return (u32) (bfin_read16(addr + offset)); }
-
-static inline void musb_writeb(void __iomem *addr, unsigned offset, u8 data)
-	{ bfin_write16(addr + offset, (u16) data); }
-
-static inline void musb_writew(void __iomem *addr, unsigned offset, u16 data)
-	{ bfin_write16(addr + offset, data); }
-
-static inline void musb_writel(void __iomem *addr, unsigned offset, u32 data)
-	{ bfin_write16(addr + offset, (u16) data); }
-
-#endif /* CONFIG_BLACKFIN */
-
 #endif
diff --git a/drivers/usb/musb/musb_regs.h b/drivers/usb/musb/musb_regs.h
index b9bcda5e39..2cb749140b 100644
--- a/drivers/usb/musb/musb_regs.h
+++ b/drivers/usb/musb/musb_regs.h
@@ -220,8 +220,6 @@
 #define MUSB_HUBADDR_MULTI_TT		0x80
 
 
-#ifndef CONFIG_BLACKFIN
-
 /*
  * Common USB registers
  */
@@ -460,193 +458,4 @@ static inline u8  musb_read_txhubport(void __iomem *mbase, u8 epnum)
 	return musb_readb(mbase, MUSB_BUSCTL_OFFSET(epnum, MUSB_TXHUBPORT));
 }
 
-#else /* CONFIG_BLACKFIN */
-
-#define USB_BASE		USB_FADDR
-#define USB_OFFSET(reg)		(reg - USB_BASE)
-
-/*
- * Common USB registers
- */
-#define MUSB_FADDR		USB_OFFSET(USB_FADDR)	/* 8-bit */
-#define MUSB_POWER		USB_OFFSET(USB_POWER)	/* 8-bit */
-#define MUSB_INTRTX		USB_OFFSET(USB_INTRTX)	/* 16-bit */
-#define MUSB_INTRRX		USB_OFFSET(USB_INTRRX)
-#define MUSB_INTRTXE		USB_OFFSET(USB_INTRTXE)
-#define MUSB_INTRRXE		USB_OFFSET(USB_INTRRXE)
-#define MUSB_INTRUSB		USB_OFFSET(USB_INTRUSB)	/* 8 bit */
-#define MUSB_INTRUSBE		USB_OFFSET(USB_INTRUSBE)/* 8 bit */
-#define MUSB_FRAME		USB_OFFSET(USB_FRAME)
-#define MUSB_INDEX		USB_OFFSET(USB_INDEX)	/* 8 bit */
-#define MUSB_TESTMODE		USB_OFFSET(USB_TESTMODE)/* 8 bit */
-
-/* Get offset for a given FIFO from musb->mregs */
-#define MUSB_FIFO_OFFSET(epnum)	\
-	(USB_OFFSET(USB_EP0_FIFO) + ((epnum) * 8))
-
-/*
- * Additional Control Registers
- */
-
-#define MUSB_DEVCTL		USB_OFFSET(USB_OTG_DEV_CTL)	/* 8 bit */
-
-#define MUSB_LINKINFO		USB_OFFSET(USB_LINKINFO)/* 8 bit */
-#define MUSB_VPLEN		USB_OFFSET(USB_VPLEN)	/* 8 bit */
-#define MUSB_HS_EOF1		USB_OFFSET(USB_HS_EOF1)	/* 8 bit */
-#define MUSB_FS_EOF1		USB_OFFSET(USB_FS_EOF1)	/* 8 bit */
-#define MUSB_LS_EOF1		USB_OFFSET(USB_LS_EOF1)	/* 8 bit */
-
-/* Offsets to endpoint registers */
-#define MUSB_TXMAXP		0x00
-#define MUSB_TXCSR		0x04
-#define MUSB_CSR0		MUSB_TXCSR	/* Re-used for EP0 */
-#define MUSB_RXMAXP		0x08
-#define MUSB_RXCSR		0x0C
-#define MUSB_RXCOUNT		0x10
-#define MUSB_COUNT0		MUSB_RXCOUNT	/* Re-used for EP0 */
-#define MUSB_TXTYPE		0x14
-#define MUSB_TYPE0		MUSB_TXTYPE	/* Re-used for EP0 */
-#define MUSB_TXINTERVAL		0x18
-#define MUSB_NAKLIMIT0		MUSB_TXINTERVAL	/* Re-used for EP0 */
-#define MUSB_RXTYPE		0x1C
-#define MUSB_RXINTERVAL		0x20
-#define MUSB_TXCOUNT		0x28
-
-/* Offsets to endpoint registers in indexed model (using INDEX register) */
-#define MUSB_INDEXED_OFFSET(_epnum, _offset)	\
-	(0x40 + (_offset))
-
-/* Offsets to endpoint registers in flat models */
-#define MUSB_FLAT_OFFSET(_epnum, _offset)	\
-	(USB_OFFSET(USB_EP_NI0_TXMAXP) + (0x40 * (_epnum)) + (_offset))
-
-/* Not implemented - HW has separate Tx/Rx FIFO */
-#define MUSB_TXCSR_MODE			0x0000
-
-static inline void musb_write_txfifosz(void __iomem *mbase, u8 c_size)
-{
-}
-
-static inline void musb_write_txfifoadd(void __iomem *mbase, u16 c_off)
-{
-}
-
-static inline void musb_write_rxfifosz(void __iomem *mbase, u8 c_size)
-{
-}
-
-static inline void  musb_write_rxfifoadd(void __iomem *mbase, u16 c_off)
-{
-}
-
-static inline void musb_write_ulpi_buscontrol(void __iomem *mbase, u8 val)
-{
-}
-
-static inline u8 musb_read_txfifosz(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u16 musb_read_txfifoadd(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u8 musb_read_rxfifosz(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u16  musb_read_rxfifoadd(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u8 musb_read_ulpi_buscontrol(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u8 musb_read_configdata(void __iomem *mbase)
-{
-	return 0;
-}
-
-static inline u16 musb_read_hwvers(void __iomem *mbase)
-{
-	/*
-	 * This register is invisible on Blackfin, actually the MUSB
-	 * RTL version of Blackfin is 1.9, so just harcode its value.
-	 */
-	return MUSB_HWVERS_1900;
-}
-
-static inline void __iomem *musb_read_target_reg_base(u8 i, void __iomem *mbase)
-{
-	return NULL;
-}
-
-static inline void musb_write_rxfunaddr(void __iomem *ep_target_regs,
-		u8 qh_addr_req)
-{
-}
-
-static inline void musb_write_rxhubaddr(void __iomem *ep_target_regs,
-		u8 qh_h_addr_reg)
-{
-}
-
-static inline void musb_write_rxhubport(void __iomem *ep_target_regs,
-		u8 qh_h_port_reg)
-{
-}
-
-static inline void  musb_write_txfunaddr(void __iomem *mbase, u8 epnum,
-		u8 qh_addr_reg)
-{
-}
-
-static inline void  musb_write_txhubaddr(void __iomem *mbase, u8 epnum,
-		u8 qh_addr_reg)
-{
-}
-
-static inline void  musb_write_txhubport(void __iomem *mbase, u8 epnum,
-		u8 qh_h_port_reg)
-{
-}
-
-static inline u8 musb_read_rxfunaddr(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-static inline u8 musb_read_rxhubaddr(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-static inline u8 musb_read_rxhubport(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-static inline u8  musb_read_txfunaddr(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-static inline u8  musb_read_txhubaddr(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-static inline u8 musb_read_txhubport(void __iomem *mbase, u8 epnum)
-{
-	return 0;
-}
-
-#endif /* CONFIG_BLACKFIN */
-
 #endif	/* __MUSB_REGS_H__ */
diff --git a/include/usb/musb.h b/include/usb/musb.h
index 13eb9f8aac..fef7dc5f2c 100644
--- a/include/usb/musb.h
+++ b/include/usb/musb.h
@@ -85,14 +85,6 @@ struct musb_hdrc_config {
 	u8		ram_bits;	/* ram address size */
 
 	struct musb_hdrc_eps_bits *eps_bits __deprecated;
-#ifdef CONFIG_BLACKFIN
-	/* A GPIO controlling VRSEL in Blackfin */
-	unsigned int	gpio_vrsel;
-	unsigned int	gpio_vrsel_active;
-	/* musb CLKIN in Blackfin in MHZ */
-	unsigned char   clkin;
-#endif
-
 };
 
 struct musb_hdrc_platform_data {
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
