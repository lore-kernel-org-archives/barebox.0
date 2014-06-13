Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x234.google.com ([2a00:1450:4010:c04::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvMKv-0008Vd-1v
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:47 +0000
Received: by mail-lb0-f180.google.com with SMTP id p9so1335720lbv.39
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:24 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.22
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:22 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:23 +0200
Message-Id: <1402646075-22747-7-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 06/18] musb: move musb.h to path include/usb
To: barebox@lists.infradead.org

---
 include/linux/usb/musb.h |  162 ----------------------------------------------
 include/usb/musb.h       |  162 ++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 162 insertions(+), 162 deletions(-)
 delete mode 100644 include/linux/usb/musb.h
 create mode 100644 include/usb/musb.h

diff --git a/include/linux/usb/musb.h b/include/linux/usb/musb.h
deleted file mode 100644
index 9f65ef9..0000000
--- a/include/linux/usb/musb.h
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
diff --git a/include/usb/musb.h b/include/usb/musb.h
new file mode 100644
index 0000000..9f65ef9
--- /dev/null
+++ b/include/usb/musb.h
@@ -0,0 +1,162 @@
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
+	/* (HOST or OTG) switch VBUS on/off */
+	int		(*set_vbus)(struct device *dev, int is_on);
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
