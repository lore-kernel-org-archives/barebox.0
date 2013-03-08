Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo25.mail-out.ovh.net ([178.32.228.25])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDyms-0006QW-GZ
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 15:00:50 +0000
Received: from mail639.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo25.mail-out.ovh.net (Postfix) with SMTP id C2A9AFF895A
 for <barebox@lists.infradead.org>; Fri,  8 Mar 2013 16:07:52 +0100 (CET)
Date: Fri, 8 Mar 2013 15:48:43 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130308144843.GF32347@game.jcrosoft.org>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-3-git-send-email-s.hauer@pengutronix.de>
 <20130308125138.GE32347@game.jcrosoft.org>
 <20130308130727.GD1906@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130308130727.GD1906@pengutronix.de>
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
Subject: Re: [PATCH 2/3] Add DMO RealQ7 board support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:07 Fri 08 Mar     , Sascha Hauer wrote:
> On Fri, Mar 08, 2013 at 01:51:38PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > +
> > > +static void mmd_write_reg(struct phy_device *dev, int device, int reg, int val)
> > > +{
> > > +	phy_write(dev, 0x0d, device);
> > > +	phy_write(dev, 0x0e, reg);
> > > +	phy_write(dev, 0x0d, (1 << 14) | device);
> > > +	phy_write(dev, 0x0e, val);
> > > +}
> > > +
> > > +static void mx6_rgmii_rework(struct phy_device *dev)
> > > +{
> > > +	/*
> > > +	 * min rx data delay, max rx/tx clock delay,
> > > +	 * min rx/tx control delay
> > > +	 */
> > > +	mmd_write_reg(dev, 2, 4, 0);
> > > +	mmd_write_reg(dev, 2, 5, 0);
> > > +	mmd_write_reg(dev, 2, 8, 0x003ff);
> > > +}
> > > +
> > > +static struct fec_platform_data fec_info = {
> > > +	.xcv_type = RGMII,
> > > +	.phy_init = mx6_rgmii_rework,
> > > +	.phy_addr = -1,
> > use phy_fix_up as done on sama5d3xek
> > 
> > the phy_init need do be dropped now
> > > +};
> > > +
> > > +static void realq7_enet_init(void)
> > > +{
> > > +	mxc_iomux_v3_setup_multiple_pads(realq7_pads_gpio, ARRAY_SIZE(realq7_pads_gpio));
> > > +	gpio_direction_output(RQ7_GPIO_ENET_PHYADD2, 0);
> > > +	gpio_direction_output(RQ7_GPIO_ENET_MODE0, 1);
> > > +	gpio_direction_output(RQ7_GPIO_ENET_MODE1, 1);
> > > +	gpio_direction_output(RQ7_GPIO_ENET_MODE2, 1);
> > > +	gpio_direction_output(RQ7_GPIO_ENET_MODE3, 1);
> > > +	gpio_direction_output(RQ7_GPIO_ENET_EN_CLK125, 1);
> > > +
> > > +	gpio_direction_output(25, 0);
> > > +	mdelay(50);
> > > +
> > > +	gpio_direction_output(25, 1);
> > > +	mdelay(50);
> > > +
> > > +	mxc_iomux_v3_setup_multiple_pads(realq7_pads_enet, ARRAY_SIZE(realq7_pads_enet));
> > > +
> > > +	imx6_add_fec(&fec_info);
> > > +}
> > > +
> > > +static int realq7_mem_init(void)
> > > +{
> > > +	arm_add_mem_device("ram0", 0x10000000, SZ_2G);
> > > +
> > > +	return 0;
> > > +}
> > > +mem_initcall(realq7_mem_init);
> > > +
> > > +static int realq7_spi_cs[] = { IMX_GPIO_NR(1, 12), };
> > > +
> > > +static struct spi_imx_master realq7_spi_0_data = {
> > > +	.chipselect = realq7_spi_cs,
> > > +	.num_chipselect = ARRAY_SIZE(realq7_spi_cs),
> > > +};
> > > +
> > > +static const struct spi_board_info realq7_spi_board_info[] = {
> > > +	{
> > > +		.name = "m25p80",
> > > +		.max_speed_hz = 40000000,
> > > +		.bus_num = 4,
> > > +		.chip_select = 0,
> > > +	}
> > > +};
> > > +
> > > +static struct esdhc_platform_data realq7_emmc_data = {
> > > +	.cd_type = ESDHC_CD_PERMANENT,
> > > +	.caps = MMC_MODE_8BIT,
> > > +	.devname = "emmc",
> > > +};
> > we was discussion of symlink on devfs my idea was to use it here instead of
> > the devname
> 
> The sysfs symlink support alone does not fix this. Who should create the
> link?

yes I was thinking the mci core create the symlink

> 
> > > +
> > > +	armlinux_set_bootparams((void *)0x10000100);
> > > +	armlinux_set_architecture(3769);
> > why a magic instead of a macro?
> 
> Can be dropped. It's devicetree only, so we don't need an architecture
> id. I doubt there is one even registered.
> 
> Sascha
> 
> > > +++ b/arch/arm/boards/dmo-mx6-realq7/env/init/hostname
> > > @@ -0,0 +1,8 @@
> > > +#!/bin/sh
> > > +
> > > +if [ "$1" = menu ]; then
> > > +	init-menu-add-entry "$0" "hostname"
> > > +	exit
> > > +fi
> > > +
> > > +global.hostname=realq7
> > in config-board?
> 
> ok.
> 
> > > +
> > > +	.boot_data.start	= APP_DEST,
> > > +	.boot_data.size		= 192 * 1024,
> > barebox_image_size
> 
> ok. This btw will not work with CONFIG_RELOCATABLE as is since the
> linker cannot generate this value then.
why?

otherwise we need to update it via ld as done in the kernel as example
> 
> > > +	reg32_write(0x021e80a4, 0x0000047f);
> > > +	reg32_write(0x021e80a8, 0x0000c34f);
> > > +	reg32_write(0x021e8080, 0x00000001);
> > can we have not all of those magic?
> 
> No, I won't do the decoding now. This time can be invested better.
> 
> Sascha
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
