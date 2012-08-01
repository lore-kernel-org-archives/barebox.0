Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f177.google.com ([209.85.215.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwZ33-0006Q2-Qu
 for barebox@lists.infradead.org; Wed, 01 Aug 2012 13:33:14 +0000
Received: by eaaq12 with SMTP id q12so1765177eaa.36
 for <barebox@lists.infradead.org>; Wed, 01 Aug 2012 06:33:11 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <20120720080435.GP30009@pengutronix.de>
References: <loom.20120719T173418-826@post.gmane.org>
 <20120719161139.GB30009@pengutronix.de>
 <loom.20120719T224910-551@post.gmane.org>
 <20120720080435.GP30009@pengutronix.de>
Date: Wed, 01 Aug 2012 15:33:08 +0200
Message-ID: <1343827988.3466.76.camel@mars>
Mime-Version: 1.0
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
Subject: [RFC][PATCH] pcm043: usb support --not working--
To: Sascha Hauer <s.hauer@pengutronix.de>, Eric =?ISO-8859-1?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org, Jerry Kirk <jkirk865@gmail.com>

Hi,

 with the patch below I get the same behavior as Jerry: Only once after
reset command "usb" shows HI-Devices (Joystick, Mouse, ...). Jerry, do
you have made any progress on this?

The clock settings seems to be the same as for eukrea_cpuimx35. Eric:
Does USB work for you on your board?

Sascha, I currently have no working config for kernel >=3.5 to check for
clocks in debugfs.

Any thoughts on this?

 Thanks
  -- Christoph

From 2cec5266d1ae9ea141c6743accab9d1cb0ced7fc Mon Sep 17 00:00:00 2001
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Wed, 1 Aug 2012 11:32:17 +0200
Subject: [PATCH] pcm043: usb support --not working--

---
 arch/arm/boards/pcm043/lowlevel.c |    6 ++++++
 arch/arm/boards/pcm043/pcm043.c   |   33 +++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
index efb5441..cec25b2 100644
--- a/arch/arm/boards/pcm043/lowlevel.c
+++ b/arch/arm/boards/pcm043/lowlevel.c
@@ -196,6 +196,12 @@ void __bare_init __naked board_init_lowlevel(void)
 	r |= 0x00000003;
 	writel(r, ccm_base + CCM_CGR1);
 
+	/* enable USBOTG clock */
+	r = readl(ccm_base + CCM_CGR2);
+	r |= 0x3 << CCM_CGR2_USB_SHIFT;
+	r |= 0x3 << 26;
+	writel(r, ccm_base + CCM_CGR2);
+
 	r = readl(IMX_L2CC_BASE + L2X0_AUX_CTRL);
 	r |= 0x1000;
 	writel(r, IMX_L2CC_BASE + L2X0_AUX_CTRL);
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
index 9136bb3..06bf36b 100644
--- a/arch/arm/boards/pcm043/pcm043.c
+++ b/arch/arm/boards/pcm043/pcm043.c
@@ -46,6 +46,7 @@
 #include <mach/imx-pll.h>
 #include <mach/iomux-mx35.h>
 #include <mach/devices-imx35.h>
+#include <mach/usb.h>
 
 static struct fec_platform_data fec_info = {
 	.xcv_type = MII100,
@@ -94,6 +95,30 @@ static struct fb_videomode pcm043_fb_mode[] = {
 	}
 };
 
+#ifdef CONFIG_USB
+static void imx35_usb_init(void)
+{
+	unsigned int tmp;
+
+	/* Host 1 */
+	tmp = readl(IMX_OTG_BASE + 0x600);
+	tmp &= ~(MX35_H1_SIC_MASK | MX35_H1_PM_BIT | MX35_H1_TLL_BIT |
+		MX35_H1_USBTE_BIT | MX35_H1_IPPUE_DOWN_BIT | MX35_H1_IPPUE_UP_BIT);
+	tmp |= (MXC_EHCI_INTERFACE_SINGLE_UNI) << MX35_H1_SIC_SHIFT;
+	tmp |= MX35_H1_USBTE_BIT;
+	tmp |= MX35_H1_IPPUE_DOWN_BIT;
+	writel(tmp, IMX_OTG_BASE + 0x600);
+
+	tmp = readl(IMX_OTG_BASE + 0x584);
+	tmp |= 3 << 30;
+	writel(tmp, IMX_OTG_BASE + 0x584);
+
+	/* Set to Host mode */
+	tmp = readl(IMX_OTG_BASE + 0x5a8);
+	writel(tmp | 0x3, IMX_OTG_BASE + 0x5a8);
+}
+#endif
+
 static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.mode			= pcm043_fb_mode,
 	.num_modes		= ARRAY_SIZE(pcm043_fb_mode),
@@ -101,6 +126,7 @@ static struct imx_ipu_fb_platform_data ipu_fb_data = {
 	.bpp			= 16,
 };
 
+
 static int pcm043_mem_init(void)
 {
 	arm_add_mem_device("ram0", IMX_SDRAM_CS0, SZ_128M);
@@ -173,6 +199,11 @@ static int imx35_devices_init(void)
 
 	imx35_add_fb(&ipu_fb_data);
 
+#ifdef CONFIG_USB
+	imx35_usb_init();
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, IMX_OTG_BASE + 0x400, NULL);
+#endif
+
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_PCM043);
 
@@ -209,6 +240,8 @@ static iomux_v3_cfg_t pcm043_pads[] = {
 	MX35_PAD_I2C1_CLK__I2C1_SCL,
 	MX35_PAD_I2C1_DAT__I2C1_SDA,
 	MX35_PAD_ATA_CS0__GPIO2_6, /* LED */
+	MX35_PAD_I2C2_CLK__USB_TOP_USBH2_PWR,
+	MX35_PAD_I2C2_DAT__USB_TOP_USBH2_OC,
 };
 
 static int imx35_console_init(void)
-- 
1.7.2.5




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
