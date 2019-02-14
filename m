Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout02.posteo.de ([185.67.36.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1guLcf-0003e3-Ex
 for barebox@lists.infradead.org; Thu, 14 Feb 2019 18:20:35 +0000
Received: from submission (posteo.de [89.146.220.130]) 
 by mout02.posteo.de (Postfix) with ESMTPS id EAD4D2400FC
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2019 19:20:26 +0100 (CET)
From: Christian <christian.hemp@posteo.de>
Date: Thu, 14 Feb 2019 19:20:25 +0100
Message-ID: <2347662.SqRtPENJVh@schlumpfhausen>
In-Reply-To: <20190213061459.fp643qeqyk447ddo@pengutronix.de>
References: <20190206184122.14423-1-christian.hemp@posteo.de>
 <1549882858.2546.3.camel@pengutronix.de>
 <20190213061459.fp643qeqyk447ddo@pengutronix.de>
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
Subject: Re: [PATCH] ARM: phyCORE-i.MX8M SOM support
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,

I will send a second version.

Regards
Christian

Am Mittwoch, 13. Februar 2019, 07:14:59 CET schrieb Oleksij Rempel:
> Hi Christian,
> 
> On Mon, Feb 11, 2019 at 12:00:58PM +0100, Lucas Stach wrote:
> > Hi Christian,
> > 
> > Am Mittwoch, den 06.02.2019, 19:41 +0100 schrieb Christian Hemp:
> > > The phyCORE-i.MX8M aka PCL-066 is a SoM containing a i.MX8M SoC.
> > > 
> > > phyCORE-i.MX8M:
> > >  - 1GB LPDDR4 RAM
> > >  - eMMC
> > >  - microSD
> > >  - Ethernet
> > > 
> > > Signed-off-by: Christian Hemp <christian.hemp@posteo.de>
> > > ---
> > >  arch/arm/boards/Makefile                      |   1 +
> > >  arch/arm/boards/phytec-som-imx8m/.gitignore   |   1 +
> > >  arch/arm/boards/phytec-som-imx8m/Makefile     |   2 +
> > >  arch/arm/boards/phytec-som-imx8m/board.c      |  55 +
> > >  arch/arm/boards/phytec-som-imx8m/ddr.h        |  28 +
> > >  arch/arm/boards/phytec-som-imx8m/ddr_init.c   | 225 +++++
> > >  .../boards/phytec-som-imx8m/ddrphy_train.c    | 947 ++++++++++++++++++
> > >  .../flash-header-phycore-imx8mq.imxcfg        |   5 +
> > >  arch/arm/boards/phytec-som-imx8m/lowlevel.c   | 127 +++
> > >  arch/arm/configs/imx_v8_defconfig             |   2 +
> > >  arch/arm/dts/Makefile                         |   1 +
> > >  arch/arm/dts/imx8mq-phytec-phycore-som.dts    | 328 ++++++
> > >  arch/arm/mach-imx/Kconfig                     |   7 +
> > >  images/Makefile.imx                           |   5 +
> > >  14 files changed, 1734 insertions(+)
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/.gitignore
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/Makefile
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/board.c
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr.h
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddr_init.c
> > >  create mode 100644 arch/arm/boards/phytec-som-imx8m/ddrphy_train.c
> > >  create mode 100644
> > > arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
> > > create mode 100644 arch/arm/boards/phytec-som-imx8m/lowlevel.c
> > >  create mode 100644 arch/arm/dts/imx8mq-phytec-phycore-som.dts
> > 
> > The other supported i.MX8M boards are using a "imx8mq" name tag. I
> > would really like to see some consistency here, as the i.MX8 naming in
> > general is already confusing in itself, so we shouldn't add to this
> > confusion by calling the same SoC both mx8m and mx8mq.
> 
> I tested your patch and needed following changes to make it work with
> latest barebox:
> 
> diff --git a/arch/arm/boards/phytec-som-imx8m/ddr.h
> b/arch/arm/boards/phytec-som-imx8m/ddr.h index 7d195e6002..58a1c91be3
> 100644
> --- a/arch/arm/boards/phytec-som-imx8m/ddr.h
> +++ b/arch/arm/boards/phytec-som-imx8m/ddr.h
> @@ -20,9 +20,8 @@
>  void phytec_imx8mq_phycore_ddr_init(void);
>  void phytec_imx8mq_phycore_ddr_cfg_phy(void);
> 
> -#define FW_1D_IMAGE	imx_lpddr4_pmu_train_1d_imem_bin, \
> -			imx_lpddr4_pmu_train_1d_dmem_bin
> -#define FW_2D_IMAGE	imx_lpddr4_pmu_train_2d_imem_bin, \
> -			imx_lpddr4_pmu_train_2d_dmem_bin
> -
> +#define FW_1D_IMAGE	lpddr4_pmu_train_1d_imem_bin, \
> +			lpddr4_pmu_train_1d_dmem_bin
> +#define FW_2D_IMAGE	lpddr4_pmu_train_2d_imem_bin, \
> +			lpddr4_pmu_train_2d_dmem_bin
> 
> diff --git
> a/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
> b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg index
> aff8321b9a..eabc9426c7 100644
> --- a/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
> +++ b/arch/arm/boards/phytec-som-imx8m/flash-header-phycore-imx8mq.imxcfg
> @@ -3,3 +3,4 @@ soc imx8mq
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  dcdofs 0x400
> +signed_hdmi_firmware firmware/signed_hdmi_imx8m.bin
> diff --git a/arch/arm/boards/phytec-som-imx8m/lowlevel.c
> b/arch/arm/boards/phytec-som-imx8m/lowlevel.c index 4a1054a5eb..bd13fd1860
> 100644
> --- a/arch/arm/boards/phytec-som-imx8m/lowlevel.c
> +++ b/arch/arm/boards/phytec-som-imx8m/lowlevel.c
> @@ -115,7 +115,7 @@ ENTRY_FUNCTION(start_phytec_phycore_imx8mq, r0, r1, r2)
>  		const u8 *bl31;
>  		size_t bl31_size;
> 
> -		get_builtin_firmware(imx_imx8m_bl31_bin, &bl31, &bl31_size);
> +		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
>  		imx8mq_atf_load_bl31(bl31, bl31_size);
>  	}





_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
