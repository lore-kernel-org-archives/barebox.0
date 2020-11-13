Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kdTid-0006k0-EJ
 for barebox@lists.infradead.org; Fri, 13 Nov 2020 07:42:04 +0000
Date: Fri, 13 Nov 2020 08:42:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201113074201.GR29830@pengutronix.de>
References: <20201112150313.10412-1-s.hauer@pengutronix.de>
 <0bd4d79a0b1c3905f773010b061d534341c821b9.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0bd4d79a0b1c3905f773010b061d534341c821b9.camel@pengutronix.de>
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
Subject: Re: [PATCH] ARM: nxp i.MX8MM evk: make locally used data static
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Nov 12, 2020 at 07:00:05PM +0100, Lucas Stach wrote:
> Am Donnerstag, den 12.11.2020, 16:03 +0100 schrieb Sascha Hauer:
> > Make locally used data static so that it doesn't conflict with other
> > data with the same name.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c | 18 +++++++++-------
> 
> Subject says i.MX8MM EVK, but the code change is in i.MX8MP EVK.

Fixed, thanks

Sascha

> 
> Regards,
> Lucas
> 
> > --
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
> > index bc4c10fe8d..3028bc084c 100644
> > --- a/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
> > +++ b/arch/arm/boards/nxp-imx8mp-evk/lpddr4-timing.c
> > @@ -7,7 +7,7 @@
> >  #include <soc/imx8m/ddr.h>
> >  #include <soc/imx8m/lpddr4_define.h>
> >  
> > -struct dram_cfg_param ddr_ddrc_cfg[] = {
> > +static struct dram_cfg_param ddr_ddrc_cfg[] = {
> >  	/** Initialize DDRC registers **/
> >  	{ 0x3d400304, 0x1 },
> >  	{ 0x3d400030, 0x1 },
> > @@ -117,7 +117,7 @@ struct dram_cfg_param ddr_ddrc_cfg[] = {
> >  };
> >  
> >  /* PHY Initialize Configuration */
> > -struct dram_cfg_param ddr_ddrphy_cfg[] = {
> > +static struct dram_cfg_param ddr_ddrphy_cfg[] = {
> >  	{ 0x100a0, 0x0 },
> >  	{ 0x100a1, 0x1 },
> >  	{ 0x100a2, 0x2 },
> > @@ -326,7 +326,7 @@ struct dram_cfg_param ddr_ddrphy_cfg[] = {
> >  };
> >  
> >  /* ddr phy trained csr */
> > -struct dram_cfg_param ddr_ddrphy_trained_csr[] = {
> > +static struct dram_cfg_param ddr_ddrphy_trained_csr[] = {
> >  	{ 0x200b2, 0x0 },
> >  	{ 0x1200b2, 0x0 },
> >  	{ 0x2200b2, 0x0 },
> > @@ -1049,7 +1049,7 @@ struct dram_cfg_param ddr_ddrphy_trained_csr[] = {
> >  };
> >  
> >  /* P0 message block paremeter for training firmware */
> > -struct dram_cfg_param ddr_fsp0_cfg[] = {
> > +static struct dram_cfg_param ddr_fsp0_cfg[] = {
> >  	{ 0xd0000, 0x0 },
> >  	{ 0x54003, 0xfa0 },
> >  	{ 0x54004, 0x2 },
> > @@ -1088,7 +1088,7 @@ struct dram_cfg_param ddr_fsp0_cfg[] = {
> >  };
> >  
> >  /* P1 message block paremeter for training firmware */
> > -struct dram_cfg_param ddr_fsp1_cfg[] = {
> > +static struct dram_cfg_param ddr_fsp1_cfg[] = {
> >  	{ 0xd0000, 0x0 },
> >  	{ 0x54002, 0x101 },
> >  	{ 0x54003, 0x190 },
> > @@ -1128,7 +1128,7 @@ struct dram_cfg_param ddr_fsp1_cfg[] = {
> >  };
> >  
> >  /* P2 message block paremeter for training firmware */
> > -struct dram_cfg_param ddr_fsp2_cfg[] = {
> > +static struct dram_cfg_param ddr_fsp2_cfg[] = {
> >  	{ 0xd0000, 0x0 },
> >  	{ 0x54002, 0x102 },
> >  	{ 0x54003, 0x64 },
> > @@ -1168,7 +1168,7 @@ struct dram_cfg_param ddr_fsp2_cfg[] = {
> >  };
> >  
> >  /* P0 2D message block paremeter for training firmware */
> > -struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
> > +static struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
> >  	{ 0xd0000, 0x0 },
> >  	{ 0x54003, 0xfa0 },
> >  	{ 0x54004, 0x2 },
> > @@ -1209,7 +1209,7 @@ struct dram_cfg_param ddr_fsp0_2d_cfg[] = {
> >  };
> >  
> >  /* DRAM PHY init engine image */
> > -struct dram_cfg_param ddr_phy_pie[] = {
> > +static struct dram_cfg_param ddr_phy_pie[] = {
> >  	{ 0xd0000, 0x0 },
> >  	{ 0x90000, 0x10 },
> >  	{ 0x90001, 0x400 },
> > @@ -1801,7 +1801,7 @@ struct dram_cfg_param ddr_phy_pie[] = {
> >  	{ 0xd0000, 0x1 }
> >  };
> >  
> > -struct dram_fsp_msg ddr_dram_fsp_msg[] = {
> > +static struct dram_fsp_msg ddr_dram_fsp_msg[] = {
> >  	{
> >  		/* P0 4000mts 1D */
> >  		.drate = 4000,
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
