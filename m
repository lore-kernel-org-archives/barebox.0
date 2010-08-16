Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Okv8P-000727-Gg
	for barebox@lists.infradead.org; Mon, 16 Aug 2010 08:33:34 +0000
Date: Mon, 16 Aug 2010 10:33:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100816083330.GI27749@pengutronix.de>
References: <cover.1281877781.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1281877781.git.baruch@tkos.co.il>
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
Subject: Re: [PATCH 0/5] imx: support for the IIM fusebox
To: Baruch Siach <baruch@tkos.co.il>
Cc: barebox@lists.infradead.org

Hi Baruch,

On Sun, Aug 15, 2010 at 04:39:23PM +0300, Baruch Siach wrote:
> This patch series adds a driver for the IIM fusebox. As suggested by Sascha 
> Hauer, this driver is implemented as a character device, which allows use of 
> the standard md/mw commands to access the fuses.

Much better, thanks. I just tested this on an i.MX35 and it works fine.
I used the following patch to add support for the i.MX35. I think it's
better to put the IIM device info into a i.MX35 specific file. The
device does not need any platform data, and it is much code duplicated
into each board otherwise. Maybe you can do this change for the i.MX25
aswell.

Sascha


commit 1d47b8fe08b519e43babb7de802813359bed8e54
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Mon Aug 16 10:26:52 2010 +0200

    i.MX35: add iim support
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

diff --git a/arch/arm/mach-imx/imx35.c b/arch/arm/mach-imx/imx35.c
index 74d63eb..72851f7 100644
--- a/arch/arm/mach-imx/imx35.c
+++ b/arch/arm/mach-imx/imx35.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <init.h>
 #include <asm/io.h>
 #include <mach/imx-regs.h>
 #include <mach/iim.h>
@@ -39,3 +40,52 @@ int imx_silicon_revision()
 
 	return (reg & 0xFF);
 }
+
+#ifdef CONFIG_IMX_IIM
+#define IIM_BANK_SIZE	32	/* excluding alignment padding for each row */
+
+static struct device_d imx_iim_dev = {
+	.name		= "imx_iim",
+	.map_base	= IMX_IIM_BASE,
+};
+
+static struct device_d imx_iim_bank0_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 0,
+	.map_base	= IMX_IIM_BASE + 0x800,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx_iim_bank1_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 1,
+	.map_base	= IMX_IIM_BASE + 0xc00,
+	.size		= IIM_BANK_SIZE,
+};
+
+static struct device_d imx_iim_bank2_dev = {
+	.name		= "imx_iim_bank",
+	.id		= 2,
+	.map_base	= IMX_IIM_BASE + 0x1000,
+	.size		= IIM_BANK_SIZE,
+};
+
+static int imx35_iim_init(void)
+{
+	uint32_t reg;
+
+	/* Start the clock */
+	reg = readl(IMX_CCM_BASE + CCM_CGR3);
+	reg |= (3 << 2);
+	writel(reg, IMX_CCM_BASE + CCM_CGR3);
+
+	register_device(&imx_iim_dev);
+	register_device(&imx_iim_bank0_dev);
+	register_device(&imx_iim_bank1_dev);
+	register_device(&imx_iim_bank2_dev);
+
+	return 0;
+}
+
+device_initcall(imx35_iim_init);
+#endif /* CONFIG_IMX_IIM */

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
