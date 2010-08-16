Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oktoh-0005Ri-LV
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 07:09:08 +0000
Date: Mon, 16 Aug 2010 09:09:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100816070904.GG27749@pengutronix.de>
References: <20100816063704.GB28343@jasper.tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100816063704.GB28343@jasper.tkos.co.il>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: fsl-udc (USB gadget) anyone?
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Mon, Aug 16, 2010 at 09:37:04AM +0300, Baruch Siach wrote:
> Hi Barebox list,
> 
> I see that there are no in-tree fsl-udc driver users. Does anyone here have 
> experience with this driver on an i.MX based system? What pre-probe() 
> initialization does this driver require at the platform code?


We are using it on a custom i.MX25 board (which is not in mainline
because hardly anyone could make use of the code). Here is the platform
initialization code (mixed with ehci host support). It works fine in DFU
mode, serial support is probably not working. I have tried serial
support, but had problems integrating it properly in barebox.

+static void cm3389_usb_init(void)
+{
+	unsigned int tmp;
+
+	/* Host 2 */
+	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp &= ~(3 << 21);
+	tmp |= (2 << 21) | (1 << 4) | (1 << 5);
+	writel(tmp, IMX_OTG_BASE + 0x600);
+
+	tmp = readl(IMX_OTG_BASE + 0x584);
+	tmp |= 3 << 30;
+	writel(tmp, IMX_OTG_BASE + 0x584);
+
+	/* Set to Host mode */
+	tmp = readl(IMX_OTG_BASE + 0x1a8);
+	writel(tmp | 0x3, IMX_OTG_BASE + 0x1a8);
+}
+
+static struct device_d usbh2_dev = {
+	.name     = "ehci",
+	.map_base = IMX_OTG_BASE + 0x400,
+	.size     = 0x200,
+};
+
+static struct fsl_usb2_platform_data usb_pdata = {
+	.operating_mode	= FSL_USB2_DR_DEVICE,
+	.phy_mode	= FSL_USB2_PHY_UTMI,
+};
+
+static struct device_d usbotg_dev = {
+	.name     = "fsl-udc",
+	.map_base = IMX_OTG_BASE,
+	.size     = 0x200,
+	.platform_data = &usb_pdata,
+};

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
