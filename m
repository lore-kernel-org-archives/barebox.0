Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S3Nr1-00024P-0B
 for barebox@lists.infradead.org; Fri, 02 Mar 2012 08:28:44 +0000
Date: Fri, 2 Mar 2012 09:28:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120302082834.GL3852@pengutronix.de>
References: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1330609813-28879-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH 1/2] pcaam1: Add support for the Phytec phyCARD-A-M1
 (PCA-A-M1)
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

Hi Christian,

On Thu, Mar 01, 2012 at 02:50:12PM +0100, Christian Hemp wrote:
> Add support for the phyCARD-A-M1 (PCA-A-M1).
> 
> +
> +static struct fb_videomode pcaam1_fb_mode[] = {
> +	{
> +		.name		= "Primeview-PD050VL1",
> +		.refresh	= 60,
> +		.xres		= 640,
> +		.yres		= 480,
> +		.pixclock	= 39900, /* in ps (25 MHz) */
> +		.hsync_len	= 32,
> +		.left_margin	= 112,
> +		.right_margin	= 36,
> +		.vsync_len	= 2,
> +		.upper_margin	= 33,
> +		.lower_margin	= 33,
> +		.sync		= FB_SYNC_OE_ACT_HIGH,
> +		.vmode		= FB_VMODE_NONINTERLACED,
> +		.flag		= 0,
> +	}, {
> +		.name		= "Primeview-PD035VL1",
> +		.refresh	= 60,
> +		.xres		= 640,
> +		.yres		= 480,
> +		.pixclock	= 40000, /* in ps (25 MHz) */
> +		.hsync_len	= 32,
> +		.left_margin	= 112,
> +		.right_margin	= 36,
> +		.vsync_len	= 2,
> +		.upper_margin	= 33,
> +		.lower_margin	= 33,
> +		.sync		= FB_SYNC_OE_ACT_HIGH,
> +		.vmode		= FB_VMODE_NONINTERLACED,
> +		.flag		= 0,
> +	}, {
> +		.name		= "Primeview-PD104SLF",
> +		.refresh	= 60,
> +		.xres		= 800,
> +		.yres		= 600,
> +		.pixclock	= 25000, /* in ps (40,0 MHz) */
> +		.hsync_len	= 128,
> +		.left_margin	= 42,
> +		.right_margin	= 42,
> +		.vsync_len	= 4,
> +		.upper_margin	= 23,
> +		.lower_margin	= 1,
> +		.sync		= FB_SYNC_OE_ACT_HIGH,
> +		.vmode		= FB_VMODE_NONINTERLACED,
> +		.flag		= 0,
> +	}, {
> +		.name		= "Primeview-PM070WL4",
> +		.refresh	= 60,
> +		.xres		= 800,
> +		.yres		= 480,
> +		.pixclock       = 50505, /* in ps (19,8 MHz) */
> +		.hsync_len	= 128,
> +		.left_margin	= 42,
> +		.right_margin	= 42,
> +		.vsync_len	= 2,
> +		.upper_margin	= 33,
> +		.lower_margin	= 33,
> +		.sync		= FB_SYNC_OE_ACT_HIGH,
> +		.vmode		= FB_VMODE_NONINTERLACED,
> +		.flag		= 0,
> +	}

This duplicates the entries in
./arch/arm/boards/phycard-i.MX27/pca100.c, though with quite different
timings. It would be nice if we could merge them as these seem to be
your standard displays (which will also be used on i.MX6, right?)

(We would have to replace the embedded struct fb_videomode in struct
imx_fb_videomode with a pointer to struct fb_videomode to do this)

I won't insist on this change now, but I might have a different opinion
when the i.MX6 patches arrive..

> +
> +	reg = readl(IMX_CCM_BASE + CCM_RCSR);
> +	/* some fuses provide us vital information about connected hardware */
> +	if (reg & 0x20000000)
> +		nand_info.width = 2;    /* 16 bit */
> +	else
> +		nand_info.width = 1;    /* 8 bit */
> +
> +	imx35_add_fec(&fec_info);
> +	imx35_add_nand(&nand_info);
> +
> +	/* reset mode: external boot */
> +	if ((reg & 0xc00) == 0x800 && ((reg >> 25) & 0x3) == 0x01) {
> +		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED,
> +				    "self_raw");
> +		dev_add_bb_dev("self_raw", "self0");
> +		devfs_add_partition("nand0", 0x40000, 0x20000, PARTITION_FIXED,
> +				    "env_raw");
> +		dev_add_bb_dev("env_raw", "env0");
> +	}

You end up without a writable environment when you boot for example from
SD card. Is this intended?

> +
> +	imx35_add_fb(&ipu_fb_data);
> +	imx35_add_i2c2(&pcaam1_i2c_3_data);
> +	imx35_add_mmc0(NULL);
> +
> +	armlinux_set_bootparams((void *)0x80000100);
> +	armlinux_set_architecture(MACH_TYPE_PCAAM1);
> +
> +	return 0;
> +}
> +
> +device_initcall(pcaam1_devices_init);
> +
> +static int pcaam1_console_init(void)
> +{
> +	imx35_add_uart0();
> +
> +	return 0;
> +}
> +
> +console_initcall(pcaam1_console_init);
> +
> +#define M3IFCTL_IPU1    0x00000040
> +
> +static int pcaam1_core_setup(void)

Please move this function to arch/arm/mach-imx/imx35.c and rename it
to imx35_init_lowlevel. It is duplicated quite often now and always
the same copy-and-paste.

> +
> +	/*
> +	 * AIPS setup - Only setup MPROTx registers.
> +	 * The PACR default values are good.
> +	 */
> +	/*
> +	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> +	 * not forced to user-mode.
> +	 */
> +	writel(0x77777777, IMX_AIPS1_BASE);
> +	writel(0x77777777, IMX_AIPS1_BASE + 0x4);
> +	writel(0x77777777, IMX_AIPS2_BASE);
> +	writel(0x77777777, IMX_AIPS2_BASE + 0x4);
> +
> +	/*
> +	 * Clear the on and off peripheral modules Supervisor Protect bit
> +	 * for SDMA to access them. Did not change the AIPS control registers
> +	 * (offset 0x20) access type
> +	 */
> +	writel(0x0, IMX_AIPS1_BASE + 0x40);
> +	writel(0x0, IMX_AIPS1_BASE + 0x44);
> +	writel(0x0, IMX_AIPS1_BASE + 0x48);
> +	writel(0x0, IMX_AIPS1_BASE + 0x4C);
> +	tmp = readl(IMX_AIPS1_BASE + 0x50);
> +	tmp &= 0x00FFFFFF;
> +	writel(tmp, IMX_AIPS1_BASE + 0x50);
> +
> +	writel(0x0, IMX_AIPS2_BASE + 0x40);
> +	writel(0x0, IMX_AIPS2_BASE + 0x44);
> +	writel(0x0, IMX_AIPS2_BASE + 0x48);
> +	writel(0x0, IMX_AIPS2_BASE + 0x4C);
> +	tmp = readl(IMX_AIPS2_BASE + 0x50);
> +	tmp &= 0x00FFFFFF;
> +	writel(tmp, IMX_AIPS2_BASE + 0x50);
> +
> +	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
> +
> +	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
> +#define MAX_PARAM1 0x00302154
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x0);   /* for S0 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x100); /* for S1 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x200); /* for S2 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x300); /* for S3 */
> +	writel(MAX_PARAM1, IMX_MAX_BASE + 0x400); /* for S4 */
> +
> +	/* SGPCR - always park on last master */
> +	writel(0x10, IMX_MAX_BASE + 0x10);	/* for S0 */
> +	writel(0x10, IMX_MAX_BASE + 0x110);	/* for S1 */
> +	writel(0x10, IMX_MAX_BASE + 0x210);	/* for S2 */
> +	writel(0x10, IMX_MAX_BASE + 0x310);	/* for S3 */
> +	writel(0x10, IMX_MAX_BASE + 0x410);	/* for S4 */
> +
> +	/* MGPCR - restore default values */
> +	writel(0x0, IMX_MAX_BASE + 0x800);	/* for M0 */
> +	writel(0x0, IMX_MAX_BASE + 0x900);	/* for M1 */
> +	writel(0x0, IMX_MAX_BASE + 0xa00);	/* for M2 */
> +	writel(0x0, IMX_MAX_BASE + 0xb00);	/* for M3 */
> +	writel(0x0, IMX_MAX_BASE + 0xc00);	/* for M4 */
> +	writel(0x0, IMX_MAX_BASE + 0xd00);	/* for M5 */
> +
> +	writel(M3IFCTL_IPU1, IMX_M3IF_BASE);
> +
> +	return 0;
> +}
> +
> +core_initcall(pcaam1_core_setup);
> +
> +#define CCM_PDR0_PARAM_399	0x00011000
> +#define CCM_PDR0_PARAM_532	0x00001000
> +
> +static int do_cpufreq(struct command *cmdtp, int argc, char *argv[])
> +{
> +	unsigned long freq;
> +
> +	if (argc != 2) {
> +		barebox_cmd_usage(cmdtp);
> +		return 1;
> +	}
> +
> +	freq = simple_strtoul(argv[1], NULL, 0);
> +
> +	switch (freq) {
> +	case 399:
> +		writel(CCM_PDR0_PARAM_399, IMX_CCM_BASE + CCM_PDR0);
> +		break;
> +	case 532:
> +		writel(CCM_PDR0_PARAM_532, IMX_CCM_BASE + CCM_PDR0);
> +		break;
> +	default:
> +		barebox_cmd_usage(cmdtp);
> +		return 1;
> +	}
> +
> +	printf("Switched CPU frequency to %ldMHz\n", freq);
> +
> +	return 0;
> +}

We have this three times now. Please move this to some common place.

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
