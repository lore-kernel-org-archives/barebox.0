Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvML7-00008G-FF
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:56:05 +0000
Received: by mail-lb0-f174.google.com with SMTP id n15so1335943lbi.19
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:33 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.32
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:33 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:28 +0200
Message-Id: <1402646075-22747-12-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 11/18] musb: adapt driver to work on barebox
To: barebox@lists.infradead.org

---
 drivers/usb/musb/linux-compat.h |   31 +-------
 drivers/usb/musb/musb.h         |  164 +++++++++++++++++++++++++++++++++++++++
 drivers/usb/musb/musb_core.c    |   20 +++--
 drivers/usb/musb/musb_core.h    |   42 +++-------
 drivers/usb/musb/musb_dsps.c    |    2 -
 drivers/usb/musb/musb_host.c    |    2 +-
 drivers/usb/musb/musb_io.h      |   19 -----
 drivers/usb/musb/usb-compat.h   |    2 +-
 include/usb/musb.h              |  162 --------------------------------------
 9 files changed, 192 insertions(+), 252 deletions(-)
 create mode 100644 drivers/usb/musb/musb.h
 delete mode 100644 include/usb/musb.h

diff --git a/drivers/usb/musb/linux-compat.h b/drivers/usb/musb/linux-compat.h
index d7a5663..5cfa9d1 100644
--- a/drivers/usb/musb/linux-compat.h
+++ b/drivers/usb/musb/linux-compat.h
@@ -3,7 +3,7 @@
 
 #include <malloc.h>
 #include <linux/list.h>
-#include <linux/compat.h>
+#include <notifier.h>
 
 #define __init
 #define __devinit
@@ -16,21 +16,13 @@ struct unused {};
 typedef struct unused unused_t;
 
 typedef int irqreturn_t;
-typedef unused_t spinlock_t;
 
 struct work_struct {};
 
 struct timer_list {};
-struct notifier_block {};
 
 typedef unsigned long dmaaddr_t;
 
-#define spin_lock_init(lock) do {} while (0)
-#define spin_lock(lock) do {} while (0)
-#define spin_unlock(lock) do {} while (0)
-#define spin_lock_irqsave(lock, flags) do {} while (0)
-#define spin_unlock_irqrestore(lock, flags) do {} while (0)
-
 #define setup_timer(timer, func, data) do {} while (0)
 #define del_timer_sync(timer) do {} while (0)
 #define schedule_work(work) do {} while (0)
@@ -38,14 +30,6 @@ typedef unsigned long dmaaddr_t;
 
 #define cpu_relax() do {} while (0)
 
-#define pr_debug(fmt, args...) debug(fmt, ##args)
-
-#define WARN(condition, fmt, args...) ({	\
-	int ret_warn = !!condition;		\
-	if (ret_warn)				\
-		printf(fmt, ##args);		\
-	ret_warn; })
-
 #define pm_runtime_get_sync(dev) do {} while (0)
 #define pm_runtime_put(dev) do {} while (0)
 #define pm_runtime_put_sync(dev) do {} while (0)
@@ -53,20 +37,9 @@ typedef unsigned long dmaaddr_t;
 #define pm_runtime_set_autosuspend_delay(dev, delay) do {} while (0)
 #define pm_runtime_enable(dev) do {} while (0)
 
-#define MODULE_DESCRIPTION(desc)
-#define MODULE_AUTHOR(author)
-#define MODULE_LICENSE(license)
 #define MODULE_ALIAS(alias)
 #define module_param(name, type, perm)
 #define MODULE_PARM_DESC(name, desc)
-#define EXPORT_SYMBOL_GPL(name)
-
-#define writesl(a, d, s) __raw_writesl((unsigned long)a, d, s)
-#define readsl(a, d, s) __raw_readsl((unsigned long)a, d, s)
-#define writesw(a, d, s) __raw_writesw((unsigned long)a, d, s)
-#define readsw(a, d, s) __raw_readsw((unsigned long)a, d, s)
-#define writesb(a, d, s) __raw_writesb((unsigned long)a, d, s)
-#define readsb(a, d, s) __raw_readsb((unsigned long)a, d, s)
 
 #define IRQ_NONE 0
 #define IRQ_HANDLED 0
@@ -80,8 +53,6 @@ typedef unsigned long dmaaddr_t;
 
 #define device_init_wakeup(dev, a) do {} while (0)
 
-#define platform_data device_data
-
 #ifndef wmb
 #define wmb()			asm volatile (""   : : : "memory")
 #endif
diff --git a/drivers/usb/musb/musb.h b/drivers/usb/musb/musb.h
new file mode 100644
index 0000000..2296a1b
--- /dev/null
+++ b/drivers/usb/musb/musb.h
@@ -0,0 +1,164 @@
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
+#ifndef __deprecated
+#define __deprecated
+#endif
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
+#ifndef __BAREBOX__
+	/* (HOST or OTG) switch VBUS on/off */
+	int		(*set_vbus)(struct device *dev, int is_on);
+#endif
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
+/*
+ * U-Boot specfic stuff
+ */
+int musb_register(struct musb_hdrc_platform_data *plat, void *bdata,
+			void *ctl_regs);
+
+#endif /* __LINUX_USB_MUSB_H */
diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 546f656..6dbf1cc 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -102,11 +102,13 @@
 #include <linux/io.h>
 #else
 #include <common.h>
-#include <usb.h>
-#include <asm/errno.h>
-#include <linux/usb/ch9.h>
-#include <linux/usb/gadget.h>
-#include <linux/usb/musb.h>
+#include <usb/usb.h>
+#include <errno.h>
+#ifdef __BAREBOX__
+#include "musb.h"
+#else
+#include <usb/musb.h>
+#endif
 #include <asm/io.h>
 #include "linux-compat.h"
 #include "usb-compat.h"
@@ -1836,7 +1838,7 @@ static void musb_irq_work(struct work_struct *data)
  */
 
 static struct musb *__devinit
-allocate_instance(struct device *dev,
+allocate_instance(struct device_d *dev,
 		struct musb_hdrc_config *config, void __iomem *mbase)
 {
 	struct musb		*musb;
@@ -1924,7 +1926,7 @@ static int __devinit
 musb_init_controller(struct device *dev, int nIrq, void __iomem *ctrl)
 #else
 struct musb *
-musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
+musb_init_controller(struct musb_hdrc_platform_data *plat, struct device_d *dev,
 			     void *ctrl)
 #endif
 {
@@ -2091,8 +2093,10 @@ musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
 		musb->xceiv->state = OTG_STATE_B_IDLE;
 #endif
 
+#ifdef CONFIG_MUSB_GADGET
 		if (is_peripheral_capable())
 			status = musb_gadget_setup(musb);
+#endif
 
 #ifndef __BAREBOX__
 		dev_dbg(musb->controller, "%s mode, status %d, dev%02x\n",
@@ -2144,7 +2148,9 @@ fail4:
 		usb_remove_hcd(musb_to_hcd(musb));
 	else
 #endif
+#ifdef CONFIG_MUSB_GADGET
 		musb_gadget_cleanup(musb);
+#endif
 
 fail3:
 	pm_runtime_put_sync(musb->controller);
diff --git a/drivers/usb/musb/musb_core.h b/drivers/usb/musb/musb_core.h
index 8f8d791..5bf87f9 100644
--- a/drivers/usb/musb/musb_core.h
+++ b/drivers/usb/musb/musb_core.h
@@ -45,11 +45,14 @@
 #include <linux/usb.h>
 #include <linux/usb/otg.h>
 #else
-#include <asm/errno.h>
+#include <errno.h>
 #endif
-#include <linux/usb/ch9.h>
-#include <linux/usb/gadget.h>
-#include <linux/usb/musb.h>
+#ifdef __BAREBOX__
+#include "musb.h"
+#else
+#include <usb/musb.h>
+#endif
+#include <usb/usb.h>
 
 struct musb;
 struct musb_hw_ep;
@@ -71,7 +74,6 @@ struct musb_ep;
 #include "musb_io.h"
 #include "musb_regs.h"
 
-#include "musb_gadget.h"
 #ifndef __BAREBOX__
 #include <linux/usb/hcd.h>
 #endif
@@ -118,7 +120,7 @@ extern void musb_g_disconnect(struct musb *);
 #ifndef __BAREBOX__
 #define	is_host_capable()	(1)
 #else
-#ifdef CONFIG_MUSB_HOST
+#ifdef CONFIG_USB_MUSB_HOST
 #define	is_host_capable()	(1)
 #else
 #define	is_host_capable()	(0)
@@ -168,7 +170,6 @@ enum musb_g_ep0_state {
 #define OTG_TIME_A_AIDL_BDIS	200		/* min 200 msec */
 #define OTG_TIME_B_ASE0_BRST	100		/* min 3.125 ms */
 
-
 /*************************** REGISTER ACCESS ********************************/
 
 /* Endpoint registers (other than dynfifo setup) can be accessed either
@@ -289,22 +290,8 @@ struct musb_hw_ep {
 
 	u8			rx_reinit;
 	u8			tx_reinit;
-
-	/* peripheral side */
-	struct musb_ep		ep_in;			/* TX */
-	struct musb_ep		ep_out;			/* RX */
 };
 
-static inline struct musb_request *next_in_request(struct musb_hw_ep *hw_ep)
-{
-	return next_request(&hw_ep->ep_in);
-}
-
-static inline struct musb_request *next_out_request(struct musb_hw_ep *hw_ep)
-{
-	return next_request(&hw_ep->ep_out);
-}
-
 struct musb_csr_regs {
 	/* FIFO registers */
 	u16 txmaxp, txcsr, rxmaxp, rxcsr;
@@ -369,7 +356,7 @@ struct musb {
 
 	struct dma_controller	*dma_controller;
 
-	struct device		*controller;
+	struct device_d		*controller;
 	void __iomem		*ctrl_base;
 	void __iomem		*mregs;
 
@@ -447,8 +434,6 @@ struct musb {
 	u8			test_mode_nr;
 	u16			ackpend;		/* ep0 */
 	enum musb_g_ep0_state	ep0_state;
-	struct usb_gadget	g;			/* the gadget */
-	struct usb_gadget_driver *gadget_driver;	/* its driver */
 
 	/*
 	 * FIXME: Remove this flag.
@@ -465,16 +450,13 @@ struct musb {
 
 	struct musb_hdrc_config	*config;
 
+	struct usb_host barebox_host;
+
 #ifdef MUSB_CONFIG_PROC_FS
 	struct proc_dir_entry *proc_entry;
 #endif
 };
 
-static inline struct musb *gadget_to_musb(struct usb_gadget *g)
-{
-	return container_of(g, struct musb, g);
-}
-
 #ifdef CONFIG_BLACKFIN
 static inline int musb_read_fifosize(struct musb *musb,
 		struct musb_hw_ep *hw_ep, u8 epnum)
@@ -617,7 +599,7 @@ static inline int musb_platform_exit(struct musb *musb)
 
 #ifdef __BAREBOX__
 struct musb *
-musb_init_controller(struct musb_hdrc_platform_data *plat, struct device *dev,
+musb_init_controller(struct musb_hdrc_platform_data *plat, struct device_d *dev,
 			     void *ctrl);
 #endif
 #endif	/* __MUSB_CORE_H__ */
diff --git a/drivers/usb/musb/musb_dsps.c b/drivers/usb/musb/musb_dsps.c
index c1caf57..2aa2fbc 100644
--- a/drivers/usb/musb/musb_dsps.c
+++ b/drivers/usb/musb/musb_dsps.c
@@ -333,8 +333,6 @@ static irqreturn_t dsps_interrupt(int irq, void *hci)
 	if (usbintr)
 		dsps_writel(reg_base, wrp->coreintr_status, usbintr);
 
-	dev_dbg(musb->controller, "usbintr (%x) epintr(%x)\n",
-			usbintr, epintr);
 #ifndef __BAREBOX__
 	/*
 	 * DRVVBUS IRQs are the only proxy we have (a very poor one!) for
diff --git a/drivers/usb/musb/musb_host.c b/drivers/usb/musb/musb_host.c
index 120849d..cc4a8f8 100644
--- a/drivers/usb/musb/musb_host.c
+++ b/drivers/usb/musb/musb_host.c
@@ -45,7 +45,7 @@
 #include <linux/dma-mapping.h>
 #else
 #include <common.h>
-#include <usb.h>
+#include <usb/usb.h>
 #include "linux-compat.h"
 #include "usb-compat.h"
 #endif
diff --git a/drivers/usb/musb/musb_io.h b/drivers/usb/musb/musb_io.h
index efc4ef9..0a06c5e 100644
--- a/drivers/usb/musb/musb_io.h
+++ b/drivers/usb/musb/musb_io.h
@@ -41,25 +41,6 @@
 #include <asm/io.h>
 #endif
 
-#if !defined(CONFIG_ARM) && !defined(CONFIG_SUPERH) \
-	&& !defined(CONFIG_AVR32) && !defined(CONFIG_PPC32) \
-	&& !defined(CONFIG_PPC64) && !defined(CONFIG_BLACKFIN) \
-	&& !defined(CONFIG_MIPS) && !defined(CONFIG_M68K)
-static inline void readsl(const void __iomem *addr, void *buf, int len)
-	{ insl((unsigned long)addr, buf, len); }
-static inline void readsw(const void __iomem *addr, void *buf, int len)
-	{ insw((unsigned long)addr, buf, len); }
-static inline void readsb(const void __iomem *addr, void *buf, int len)
-	{ insb((unsigned long)addr, buf, len); }
-
-static inline void writesl(const void __iomem *addr, const void *buf, int len)
-	{ outsl((unsigned long)addr, buf, len); }
-static inline void writesw(const void __iomem *addr, const void *buf, int len)
-	{ outsw((unsigned long)addr, buf, len); }
-static inline void writesb(const void __iomem *addr, const void *buf, int len)
-	{ outsb((unsigned long)addr, buf, len); }
-
-#endif
 
 #ifndef CONFIG_BLACKFIN
 
diff --git a/drivers/usb/musb/usb-compat.h b/drivers/usb/musb/usb-compat.h
index 27f656f..01a4329 100644
--- a/drivers/usb/musb/usb-compat.h
+++ b/drivers/usb/musb/usb-compat.h
@@ -1,7 +1,7 @@
 #ifndef __USB_COMPAT_H__
 #define __USB_COMPAT_H__
 
-#include "usb.h"
+#include <usb/usb.h>
 
 struct usb_hcd {
 	void *hcd_priv;
diff --git a/include/usb/musb.h b/include/usb/musb.h
deleted file mode 100644
index 9f65ef9..0000000
--- a/include/usb/musb.h
+++ /dev/null
@@ -1,162 +0,0 @@
-/*
- * This is used to for host and peripheral modes of the driver for
- * Inventra (Multidrop) Highspeed Dual-Role Controllers:  (M)HDRC.
- *
- * Board initialization should put one of these into dev->platform_data,
- * probably on some platform_device named "musb-hdrc".  It encapsulates
- * key configuration differences between boards.
- */
-
-#ifndef __LINUX_USB_MUSB_H
-#define __LINUX_USB_MUSB_H
-
-#ifndef __deprecated
-#define __deprecated
-#endif
-
-/* The USB role is defined by the connector used on the board, so long as
- * standards are being followed.  (Developer boards sometimes won't.)
- */
-enum musb_mode {
-	MUSB_UNDEFINED = 0,
-	MUSB_HOST,		/* A or Mini-A connector */
-	MUSB_PERIPHERAL,	/* B or Mini-B connector */
-	MUSB_OTG		/* Mini-AB connector */
-};
-
-struct clk;
-
-enum musb_fifo_style {
-	FIFO_RXTX,
-	FIFO_TX,
-	FIFO_RX
-} __attribute__ ((packed));
-
-enum musb_buf_mode {
-	BUF_SINGLE,
-	BUF_DOUBLE
-} __attribute__ ((packed));
-
-struct musb_fifo_cfg {
-	u8			hw_ep_num;
-	enum musb_fifo_style	style;
-	enum musb_buf_mode	mode;
-	u16			maxpacket;
-};
-
-#define MUSB_EP_FIFO(ep, st, m, pkt)		\
-{						\
-	.hw_ep_num	= ep,			\
-	.style		= st,			\
-	.mode		= m,			\
-	.maxpacket	= pkt,			\
-}
-
-#define MUSB_EP_FIFO_SINGLE(ep, st, pkt)	\
-	MUSB_EP_FIFO(ep, st, BUF_SINGLE, pkt)
-
-#define MUSB_EP_FIFO_DOUBLE(ep, st, pkt)	\
-	MUSB_EP_FIFO(ep, st, BUF_DOUBLE, pkt)
-
-struct musb_hdrc_eps_bits {
-	const char	name[16];
-	u8		bits;
-};
-
-struct musb_hdrc_config {
-	struct musb_fifo_cfg	*fifo_cfg;	/* board fifo configuration */
-	unsigned		fifo_cfg_size;	/* size of the fifo configuration */
-
-	/* MUSB configuration-specific details */
-	unsigned	multipoint:1;	/* multipoint device */
-	unsigned	dyn_fifo:1 __deprecated; /* supports dynamic fifo sizing */
-	unsigned	soft_con:1 __deprecated; /* soft connect required */
-	unsigned	utm_16:1 __deprecated; /* utm data witdh is 16 bits */
-	unsigned	big_endian:1;	/* true if CPU uses big-endian */
-	unsigned	mult_bulk_tx:1;	/* Tx ep required for multbulk pkts */
-	unsigned	mult_bulk_rx:1;	/* Rx ep required for multbulk pkts */
-	unsigned	high_iso_tx:1;	/* Tx ep required for HB iso */
-	unsigned	high_iso_rx:1;	/* Rx ep required for HD iso */
-	unsigned	dma:1 __deprecated; /* supports DMA */
-	unsigned	vendor_req:1 __deprecated; /* vendor registers required */
-
-	u8		num_eps;	/* number of endpoints _with_ ep0 */
-	u8		dma_channels __deprecated; /* number of dma channels */
-	u8		dyn_fifo_size;	/* dynamic size in bytes */
-	u8		vendor_ctrl __deprecated; /* vendor control reg width */
-	u8		vendor_stat __deprecated; /* vendor status reg witdh */
-	u8		dma_req_chan __deprecated; /* bitmask for required dma channels */
-	u8		ram_bits;	/* ram address size */
-
-	struct musb_hdrc_eps_bits *eps_bits __deprecated;
-#ifdef CONFIG_BLACKFIN
-	/* A GPIO controlling VRSEL in Blackfin */
-	unsigned int	gpio_vrsel;
-	unsigned int	gpio_vrsel_active;
-	/* musb CLKIN in Blackfin in MHZ */
-	unsigned char   clkin;
-#endif
-
-};
-
-struct musb_hdrc_platform_data {
-	/* MUSB_HOST, MUSB_PERIPHERAL, or MUSB_OTG */
-	u8		mode;
-
-	/* for clk_get() */
-	const char	*clock;
-
-	/* (HOST or OTG) switch VBUS on/off */
-	int		(*set_vbus)(struct device *dev, int is_on);
-
-	/* (HOST or OTG) mA/2 power supplied on (default = 8mA) */
-	u8		power;
-
-	/* (PERIPHERAL) mA/2 max power consumed (default = 100mA) */
-	u8		min_power;
-
-	/* (HOST or OTG) msec/2 after VBUS on till power good */
-	u8		potpgt;
-
-	/* (HOST or OTG) program PHY for external Vbus */
-	unsigned	extvbus:1;
-
-	/* Power the device on or off */
-	int		(*set_power)(int state);
-
-	/* MUSB configuration-specific details */
-	struct musb_hdrc_config	*config;
-
-	/* Architecture specific board data	*/
-	void		*board_data;
-
-	/* Platform specific struct musb_ops pointer */
-	const void	*platform_ops;
-};
-
-
-/* TUSB 6010 support */
-
-#define	TUSB6010_OSCCLK_60	16667	/* psec/clk @ 60.0 MHz */
-#define	TUSB6010_REFCLK_24	41667	/* psec/clk @ 24.0 MHz XI */
-#define	TUSB6010_REFCLK_19	52083	/* psec/clk @ 19.2 MHz CLKIN */
-
-#ifdef	CONFIG_ARCH_OMAP2
-
-extern int __init tusb6010_setup_interface(
-		struct musb_hdrc_platform_data *data,
-		unsigned ps_refclk, unsigned waitpin,
-		unsigned async_cs, unsigned sync_cs,
-		unsigned irq, unsigned dmachan);
-
-extern int tusb6010_platform_retime(unsigned is_refclk);
-
-#endif	/* OMAP2 */
-
-/*
- * U-Boot specfic stuff
- */
-int musb_register(struct musb_hdrc_platform_data *plat, void *bdata,
-			void *ctl_regs);
-
-#endif /* __LINUX_USB_MUSB_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
