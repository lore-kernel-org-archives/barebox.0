Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrqTs-00080j-QJ
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 13:09:39 +0000
Date: Thu, 19 Jul 2012 15:09:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719130910.GW30009@pengutronix.de>
References: <1342615033-3232-1-git-send-email-j.weitzel@phytec.de>
 <1342615033-3232-2-git-send-email-j.weitzel@phytec.de>
 <20120718221127.GS30009@pengutronix.de>
 <1342686688.4849.21.camel@lws-weitzel>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342686688.4849.21.camel@lws-weitzel>
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
Subject: Re: [PATCH 1/3] OMAP GPMC NAND: use buswidth from GPMC
To: Jan Weitzel <J.Weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 10:31:28AM +0200, Jan Weitzel wrote:
> Am Donnerstag, den 19.07.2012, 00:11 +0200 schrieb Sascha Hauer:
> > Hi Jan,
> > 
> > On Wed, Jul 18, 2012 at 02:37:11PM +0200, Jan Weitzel wrote:
> > > GPMC could be already configured by xloader or rom bootloader
> > > Use the configured buswidth (width == 0) or set it explicit in the board file.
> > 
> > What happens if it hasn't been configured by the ROM or xloader, for
> > example when booting from MMC?
> It will fall back to 8bit (GPMC register reset state). Have added this
> to the commit message.
> Booting from MMC is a problem for xloader and boards with 16bit NANDS.
> We see the wrong buswidth in nand_base.c try to fix it after return to
> gpmc_nand_probe. See the RFC mtd omap nand: reconfigure buswidth.
> Did you see a better way?

Probably better to add a NAND_BUSWIDTH_UNKNOWN flag which can be passed
via platformdata and let the core handle this. I think for this you also
need a callback to the nand driver to select the bus width.

Sascha

> 
> Jan
> > Sascha
> > 
> > > 
> > > Use autodetect on pcm049
> > > 
> > > Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> > > ---
> > >  arch/arm/boards/pcm049/board.c         |    4 ++--
> > >  arch/arm/mach-omap/devices-gpmc-nand.c |   23 ++++++++++++++++++-----
> > >  arch/arm/mach-omap/gpmc.c              |   19 +++++++++++++++++++
> > >  arch/arm/mach-omap/include/mach/gpmc.h |    8 ++++++++
> > >  4 files changed, 47 insertions(+), 7 deletions(-)
> > > 
> > > diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/pcm049/board.c
> > > index 3a2b574..4f056e0 100644
> > > --- a/arch/arm/boards/pcm049/board.c
> > > +++ b/arch/arm/boards/pcm049/board.c
> > > @@ -112,9 +112,9 @@ static int pcm049_devices_init(void)
> > >  
> > >  	pcm049_network_init();
> > >  
> > > -	gpmc_generic_nand_devices_init(0, 8,
> > > +	/* Autodetect buswidth*/
> > > +	gpmc_generic_nand_devices_init(0, 0,
> > >  			OMAP_ECC_BCH8_CODE_HW, &omap4_nand_cfg);
> > > -
> > >  #ifdef CONFIG_PARTITION
> > >  	devfs_add_partition("nand0", 0x00000, SZ_128K,
> > >  			DEVFS_PARTITION_FIXED, "xload_raw");
> > > diff --git a/arch/arm/mach-omap/devices-gpmc-nand.c b/arch/arm/mach-omap/devices-gpmc-nand.c
> > > index cf87b57..06f9576 100644
> > > --- a/arch/arm/mach-omap/devices-gpmc-nand.c
> > > +++ b/arch/arm/mach-omap/devices-gpmc-nand.c
> > > @@ -35,9 +35,7 @@
> > >  #include <mach/silicon.h>
> > >  #include <mach/gpmc.h>
> > >  #include <mach/gpmc_nand.h>
> > > -
> > > -#define GPMC_CONF1_VALx8	0x00000800
> > > -#define GPMC_CONF1_VALx16	0x00001800
> > > +#include <mach/xload.h>
> > >  
> > >  /** NAND platform specific settings settings */
> > >  static struct gpmc_nand_platform_data nand_plat = {
> > > @@ -51,15 +49,30 @@ static struct gpmc_nand_platform_data nand_plat = {
> > >   *
> > >   * @return success/fail based on device function
> > >   */
> > > +
> > >  int gpmc_generic_nand_devices_init(int cs, int width,
> > >  		enum gpmc_ecc_mode eccmode, struct gpmc_config *nand_cfg)
> > >  {
> > >  	nand_plat.cs = cs;
> > >  
> > > +	if (width == 0) {
> > > +		struct gpmc_config cfg;
> > > +		/* try to get buswidth from gpmc */
> > > +		gpmc_get_config(cs, &cfg);
> > > +		width = (cfg.cfg[0] & GPMC_CONFIG1_DEVICETYPE_NAND) ? 16 : 8;
> > > +
> > > +		if (!(cfg.cfg[0] & GPMC_CONFIG1_DEVICETYPE_NAND))
> > > +			debug("GPMC not configured for NAND, "
> > > +					"try width %d bit\n", width);
> > > +
> > > +		debug("%s cfg0 %x width %d\n", __func__, cfg.cfg[0], width);
> > > +	}
> > > +
> > >  	if (width == 16)
> > > -		nand_cfg->cfg[0] = GPMC_CONF1_VALx16;
> > > +		nand_cfg->cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND |
> > > +					GPMC_CONFIG1_DEVICESIZE_16;
> > >  	else
> > > -		nand_cfg->cfg[0] = GPMC_CONF1_VALx8;
> > > +		nand_cfg->cfg[0] = GPMC_CONFIG1_DEVICETYPE_NAND;
> > >  
> > >  	nand_plat.device_width = width;
> > >  	nand_plat.ecc_mode = eccmode;
> > > diff --git a/arch/arm/mach-omap/gpmc.c b/arch/arm/mach-omap/gpmc.c
> > > index e8946d7..399f68a 100644
> > > --- a/arch/arm/mach-omap/gpmc.c
> > > +++ b/arch/arm/mach-omap/gpmc.c
> > > @@ -115,3 +115,22 @@ void gpmc_cs_config(char cs, struct gpmc_config *config)
> > >  	mdelay(1);		/* Settling time */
> > >  }
> > >  EXPORT_SYMBOL(gpmc_cs_config);
> > > +
> > > +void gpmc_get_config(char cs, struct gpmc_config *config)
> > > +{
> > > +	unsigned int reg = GPMC_REG(CONFIG1_0) + (cs * GPMC_CONFIG_CS_SIZE);
> > > +	unsigned int cfg7;
> > > +	unsigned char i;
> > > +
> > > +	/* Read the CFG1-6 regs */
> > > +	for (i = 0; i < 6; i++) {
> > > +		config->cfg[i] = readl(reg);
> > > +		reg += GPMC_CONFIG_REG_OFF;
> > > +	}
> > > +
> > > +	cfg7 = readl(reg);
> > > +
> > > +	config->size = (cfg7 >> 8) & 0xf;
> > > +	config->base = (cfg7 & 0x3F) << 24;
> > > +}
> > > +EXPORT_SYMBOL(gpmc_get_config);
> > > diff --git a/arch/arm/mach-omap/include/mach/gpmc.h b/arch/arm/mach-omap/include/mach/gpmc.h
> > > index 3ddc5f5..84260fc 100644
> > > --- a/arch/arm/mach-omap/include/mach/gpmc.h
> > > +++ b/arch/arm/mach-omap/include/mach/gpmc.h
> > > @@ -140,6 +140,11 @@
> > >  
> > >  #define NAND_WP_BIT		0x00000010
> > >  
> > > +#define GPMC_CONFIG1_DEVICESIZE(val)	((val & 3) << 12)
> > > +#define GPMC_CONFIG1_DEVICESIZE_16	GPMC_CONFIG1_DEVICESIZE(1)
> > > +#define GPMC_CONFIG1_DEVICETYPE(val)	((val & 3) << 10)
> > > +#define GPMC_CONFIG1_DEVICETYPE_NAND	GPMC_CONFIG1_DEVICETYPE(2)
> > > +
> > >  #ifndef __ASSEMBLY__
> > >  
> > >  /** Generic GPMC configuration structure to be used to configure a
> > > @@ -157,6 +162,9 @@ void gpmc_generic_init(unsigned int cfg);
> > >  /** Configuration for a specific chip select */
> > >  void gpmc_cs_config(char cs, struct gpmc_config *config);
> > >  
> > > +/** Get Configuration for a specific chip select */
> > > +void gpmc_get_config(char cs, struct gpmc_config *config);
> > > +
> > >  #endif
> > >  
> > >  #endif /* __ASM_ARCH_OMAP_GPMC_H */
> > > -- 
> > > 1.7.0.4
> > > 
> > > 
> > > _______________________________________________
> > > barebox mailing list
> > > barebox@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/barebox
> > > 
> > 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
