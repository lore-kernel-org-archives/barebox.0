Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjLlF-0003pM-1l
 for barebox@lists.infradead.org; Thu, 11 Jun 2020 11:52:50 +0000
References: <20200611095521.2293-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <0df4debb-e45f-1a99-bfa7-d7969a364c56@pengutronix.de>
Date: Thu, 11 Jun 2020 13:52:38 +0200
MIME-Version: 1.0
In-Reply-To: <20200611095521.2293-1-o.rempel@pengutronix.de>
Content-Language: en-US
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
Subject: Re: [PATCH v1] ARM: add imx6 based Protonic boads
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org, david@protonic.nl

Hello Oleksij,

On 6/11/20 11:55 AM, Oleksij Rempel wrote:
> Add initial support for 15 i.MX6 based Protonic boards.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/Makefile                      |   1 +
>  arch/arm/boards/protonic-imx6/Makefile        |   1 +
>  .../boards/protonic-imx6/ddr3-defines.imxcfg  | 350 +++++++++
>  .../protonic-imx6/flash-header-alti6p.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-lanmcu.imxcfg  | 127 ++++
>  .../protonic-imx6/flash-header-plybas.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-plym2m.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-prti6g.imxcfg  |  89 +++
>  .../protonic-imx6/flash-header-prti6q.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-prtmvt.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-prtrvt.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-prtvt7.imxcfg  | 127 ++++
>  .../protonic-imx6/flash-header-prtwd2.imxcfg  | 241 +++++++
>  .../protonic-imx6/flash-header-prtwd3.imxcfg  | 291 ++++++++
>  .../protonic-imx6/flash-header-victgo.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-vicut1.imxcfg  | 135 ++++
>  .../protonic-imx6/flash-header-vicut1q.imxcfg | 140 ++++
>  .../protonic-imx6/flash-header-vicutp.imxcfg  | 187 +++++
>  arch/arm/boards/protonic-imx6/lowlevel.c      | 209 ++++++
>  .../protonic-imx6/lpddr2-defines.imxcfg       | 384 ++++++++++
>  .../boards/protonic-imx6/padsetup-dl.imxcfg   |  70 ++
>  .../boards/protonic-imx6/padsetup-q.imxcfg    |  69 ++
>  .../boards/protonic-imx6/padsetup-ul.imxcfg   |  42 ++
>  arch/arm/dts/Makefile                         |  16 +
>  arch/arm/dts/imx6dl-alti6p.dts                | 118 +++
>  arch/arm/dts/imx6dl-lanmcu.dts                | 434 +++++++++++
>  arch/arm/dts/imx6dl-plybas.dts                | 186 +++++
>  arch/arm/dts/imx6dl-plym2m.dts                | 132 ++++
>  arch/arm/dts/imx6dl-prtmvt.dts                | 164 +++++
>  arch/arm/dts/imx6dl-prtrvt.dts                | 182 +++++
>  arch/arm/dts/imx6dl-prtvt7.dts                | 472 ++++++++++++
>  arch/arm/dts/imx6dl-victgo.dts                | 145 ++++
>  arch/arm/dts/imx6dl-vicut1.dts                |  51 ++
>  arch/arm/dts/imx6q-prti6q.dts                 | 554 ++++++++++++++
>  arch/arm/dts/imx6q-prtwd2.dts                 | 188 +++++
>  arch/arm/dts/imx6q-vicut1.dts                 |  52 ++
>  arch/arm/dts/imx6qdl-prti6q.dtsi              | 174 +++++
>  arch/arm/dts/imx6qdl-vicut1.dtsi              | 208 ++++++
>  arch/arm/dts/imx6qp-prtwd3.dts                | 675 ++++++++++++++++++
>  arch/arm/dts/imx6qp-vicutp.dts                |  52 ++
>  arch/arm/dts/imx6ul-prti6g.dts                |  81 +++
>  arch/arm/dts/imx6ul-prti6g.dtsi               | 330 +++++++++
>  arch/arm/mach-imx/Kconfig                     |   6 +
>  images/Makefile.imx                           |  30 +
>  44 files changed, 7658 insertions(+)
>  create mode 100644 arch/arm/boards/protonic-imx6/Makefile
>  create mode 100644 arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/lowlevel.c
>  create mode 100644 arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
>  create mode 100644 arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
>  create mode 100644 arch/arm/dts/imx6dl-alti6p.dts
>  create mode 100644 arch/arm/dts/imx6dl-lanmcu.dts
>  create mode 100644 arch/arm/dts/imx6dl-plybas.dts
>  create mode 100644 arch/arm/dts/imx6dl-plym2m.dts
>  create mode 100644 arch/arm/dts/imx6dl-prtmvt.dts
>  create mode 100644 arch/arm/dts/imx6dl-prtrvt.dts
>  create mode 100644 arch/arm/dts/imx6dl-prtvt7.dts
>  create mode 100644 arch/arm/dts/imx6dl-victgo.dts
>  create mode 100644 arch/arm/dts/imx6dl-vicut1.dts
>  create mode 100644 arch/arm/dts/imx6q-prti6q.dts
>  create mode 100644 arch/arm/dts/imx6q-prtwd2.dts
>  create mode 100644 arch/arm/dts/imx6q-vicut1.dts
>  create mode 100644 arch/arm/dts/imx6qdl-prti6q.dtsi
>  create mode 100644 arch/arm/dts/imx6qdl-vicut1.dtsi
>  create mode 100644 arch/arm/dts/imx6qp-prtwd3.dts
>  create mode 100644 arch/arm/dts/imx6qp-vicutp.dts
>  create mode 100644 arch/arm/dts/imx6ul-prti6g.dts
>  create mode 100644 arch/arm/dts/imx6ul-prti6g.dtsi
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index e9e9163d58..48fac356c4 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -104,6 +104,7 @@ obj-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6)	+= plathome-openblocks-a6/
>  obj-$(CONFIG_MACH_PM9261)			+= pm9261/
>  obj-$(CONFIG_MACH_PM9263)			+= pm9263/
>  obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
> +obj-$(CONFIG_MACH_PROTONIC_IMX6)		+= protonic-imx6/
>  obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
>  obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
>  obj-$(CONFIG_MACH_RADXA_ROCK)			+= radxa-rock/
> diff --git a/arch/arm/boards/protonic-imx6/Makefile b/arch/arm/boards/protonic-imx6/Makefile
> new file mode 100644
> index 0000000000..b08c4a93ca
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/Makefile
> @@ -0,0 +1 @@
> +lwl-y += lowlevel.o
> diff --git a/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
> new file mode 100644
> index 0000000000..65bd1bc3c6
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/ddr3-defines.imxcfg
> @@ -0,0 +1,350 @@
> +/*
> + * Timing configuration:
> + *
> + * MDCFG0:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tRFC 	2Gb 400MHz	0x3f (64)	24	0x3f000000
> + * 		4Gb 400MHz	0x77 (120)	24	0x77000000
> + * 		8Gb 400MHz	0x8b (140)	24	0x8b000000
> + *	 	2Gb 533MHz	0x55 (86)	24	0x55000000
> + * 		4Gb 533MHz	0x9f (160)	24	0x9f000000
> + * 		8Gb 533MHz	0xba (187)	24	0xba000000
> + * tXS		2Gb 400MHz	0x43 (68)	16	0x00430000
> + * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
> + * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
> + * 		2Gb 533MHz	0x5b (92)	16	0x005b0000
> + * 		4Gb 533MHz	0xa5 (166)	16	0x00a50000
> + * 		8Gb 533MHz	0xc0 (193)	16	0x00c00000
> + * tXP		* 400MHz	0x2 (3)		13	0x00004000
> + * 		* 533MHz	0x3 (4)		13	0x00006000
> + * tXPDLL	* 400MHz	0x9 (10)	9	0x00001200
> + * 		* 533MHz	0xc (13)	9	0x00001800
> + * tFAW		* 400MHz	0x13 (20)	4	0x00000130
> + *		* 533MHz	0x1a (27)	4	0x000001a0
> + * tCL		* 400MHz	0x3 (6)		0	0x00000003
> + *		* 533MHz-CL7	0x4 (7)		0	0x00000004
> + *		* 533MHz-CL8	0x5 (8)		0	0x00000005
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG0_2G_400MHZ				0x3f435333
> +#define MDCFG0_4G_400MHZ				0x777b5333
> +#define MDCFG0_8G_400MHZ				0x8b8f5333
> +#define MDCFG0_2G_533MHZ_CL8				0x555b79a5
> +#define MDCFG0_2G_533MHZ_CL7				0x555b79a4
> +#define MDCFG0_4G_533MHZ_CL8				0x9fa579a5
> +#define MDCFG0_4G_533MHZ_CL7				0x9fa579a4
> +#define MDCFG0_8G_533MHZ_CL8				0xbac079a5
> +#define MDCFG0_8G_533MHZ_CL7				0xbac079a4
> +
> +/*
> + * MDCFG1:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tRCD		* 400MHz	0x5 (6)		28	0xa0000000
> + * 		* 533MHz	0x7 (8)		28	0xe0000000
> + * tRP		* 400MHz	0x5 (6)		26	0x14000000
> + * 		* 533MHz	0x7 (8)		26	0x1c000000
> + * tRC		* 400MHz	0x14 (21)	21	0x02800000
> + * 		* 533MHz	0x1b (28)	21	0x03600000
> + * tRAS		* 400MHz	0x0e (15)	16	0x000e0000
> + * 		* 533MHz	0x13 (20)	16	0x00130000
> + * tRPA		*		0x1 (tRP+1)	15	0x00008000
> + * tWR		* 400MHz	0x5 (6)		9	0x00000a00
> + * 		* 533MHz	0x7 (8)		9	0x00000e00
> + * tMRD		* 		0xb (12)	5	0x00000160
> + * tCWL		* 400MHz	0x3 (5)		0	0x00000003
> + *		* 533MHz	0x4 (6)		0	0x00000004
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG1_400MHZ					0xb68e8b63
> +#define MDCFG1_533MHZ					0xff738f64
> +
> +/*
> + * MDCFG2:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tDLLK	*		0x1ff (512)	16	0x01ff0000
> + * tRTP		*		0x3 (4)		6	0x000000c0
> + * tWTR		*		0x3 (4)		3	0x00000018
> + * tRRD		* 400MHz	0x3 (4)		0	0x00000003
> + * 		* 533MHz	0x5 (6)		0	0x00000005
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG2_400MHZ					0x01ff00db
> +#define MDCFG2_533MHZ					0x01ff00dd
> +
> +/*
> + * MDOR:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tXPR		2Gb 400MHz	0x43 (68)	16	0x00430000
> + * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
> + * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
> + *		2Gb 533MHz	0x5b (92)	16	0x005b0000
> + *		4Gb 533MHz	0xa5 (166)	16	0x00a50000
> + *		8Gb 533MHz	0xc0 (193)	16	0x00c00000
> + * SDE_to_RST	*		0x10 (14)	8	0x00001000
> + * RST_to_CKE	*		0x23 (33)	0	0x00000023
> + * ----------------------------------------------------------------
> + */
> +#define MDOR_2G_400MHZ					0x00431023
> +#define MDOR_4G_400MHZ					0x007b1023
> +#define MDOR_8G_400MHZ					0x008f1023
> +#define MDOR_2G_533MHZ					0x005b1023
> +#define MDOR_4G_533MHZ					0x00a51023
> +#define MDOR_8G_533MHZ					0x00c01023
> +
> +/*
> + * MDOTC ODT delays:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tAOFPD	* 400MHz	0x0 (1)		27	0x00000000
> + * 		* 533MHz	0x1 (2)		27	0x08000000
> + * tAONPD	* 400MHz	0x0 (1)		24	0x00000000
> + * 		* 533MHz	0x1 (2)		24	0x01000000
> + * tANPD	* 400MHz	0x3 (4)		20	0x00300000
> + * 		* 533MHz	0x4 (5)		20	0x00400000
> + * tAXPD	* 400MHz	0x3 (4)		16	0x00030000
> + * 		* 533MHz	0x4 (5)		16	0x00040000
> + * tODTLon	* 400MHz	0x3 (3)		12	0x00003000
> + * 		* 533MHz	0x4 (4)		12	0x00004000
> + * tODTidle_off	* 400MHz	0x3 (3)		4	0x00000030
> + * 		* 533MHz	0x4 (4) 	4	0x00000040
> + * ----------------------------------------------------------------
> + */
> +#define MDOTC_400MHZ					0x00333030
> +#define MDOTC_533MHZ					0x09444040
> +
> +/*
> + * MDPDC:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * PRCT_1	*		0x0		28	0x00000000
> + * PRCT_0	*		0x0		24	0x00000000
> + * tCKE		*		0x2 (3)		16	0x00020000
> + * PWDT_1	*		0x5 (256)	12	0x00005000
> + * PWDT_0	*		0x5 (256)	8	0x00000500
> + * SLOW_PD	*		0x0 (0)		7	0x00000000
> + * BOTH_CS_PD	*		0x1 (1)		6	0x00000040
> + * tCKSRX	* 400MHz	0x5 (5)		3	0x00000028
> + * 		* 533MHz	0x6 (6)		3	0x00000030
> + * tCKSRE	* 400MHz	0x5 (5)		0	0x00000005
> + * 		* 533MHz	0x6 (6)		0	0x00000006
> + * ----------------------------------------------------------------
> + */
> +#define MDPDC_400MHZ					0x0002556d
> +#define MDPDC_533MHZ					0x00025576
> +
> +/*
> + * MDCTL:
> + * 2Gb: CS0 enable, 14bit ROW, 10bit COL, BL=8, 64bit data
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * SDE_0	*		0x1 (1)		31	0x80000000
> + * SDE_1	*		0x0 (0)		30	0x00000000
> + * ROW		2Gb *		0x3 (14)	24	0x03000000
> + * 		4Gb *		0x4 (15)	24	0x04000000
> + * 		8Gb *		0x5 (16)	24	0x05000000
> + * COL		*		0x1 (10)	20	0x00100000
> + * BL		* 		0x1 (8)		19	0x00080000
> + * DSIZ		64bit		0x2 (64)	16	0x00020000
> + * DSIZ		32bit		0x1 (32)	16	0x00010000
> + * DSIZ		16bit		0x0 (16)	16	0x00000000
> + * ----------------------------------------------------------------
> + */
> +#define MDCTL_2G_16BIT					0x83180000
> +#define MDCTL_2G_32BIT					0x83190000
> +#define MDCTL_2G					0x831a0000
> +#define MDCTL_4G_16BIT					0x84180000
> +#define MDCTL_4G_32BIT					0x84190000
> +#define MDCTL_4G					0x841a0000
> +#define MDCTL_8G					0x851a0000
> +
> +/*
> + * MDASP Address space partitioning:
> + *
> + * At 0.25GiB, internal address space ends. Above that DDR3 should be
> + * located. The CS1/CS0 split-line determines where:
> + *
> + * For 1x2Gb chips (0.25GiB total on CS0): 0.5GiB
> + * For 2x4Gb chips (1GiB total on CS0): 1.25GiB
> + * For 4x2Gb chips (1GiB total on CS0): 1.25GiB
> + * For 4x4Gb chips (2GiB total on CS0): 2.25GiB
> + * For 4x8Gb chips (4GiB total on CS0): 4.00GiB (maximum possible,
> + *                      shadowed partially by internal address space).
> + *
> + * Register value	Split
> + * ---------------------------
> + * 0x0000000f		0.5GiB
> + * 0x00000017		0.75GiB
> + * 0x00000027		1.25GiB
> + * 0x00000047		2.25GiB
> + * 0x0000007f		4.00GiB
> + */
> +#define MDASP_512MIB	0x0000000f
> +#define MDASP_768MIB	0x00000017
> +#define MDASP_1GIB25	0x00000027
> +#define MDASP_2GIB25	0x00000047
> +#define MDASP_4GIB00	0x0000007f
> +
> +/*
> + * Initialize DDR3 chips
> + * MDSCR: Value = 0xvvvv803n, with 0xvvvv = value, n = Reg. number (BA)
> + */
> +/*
> + * DDR3 chip MR2, n = 2:
> + *
> + * Par. 	Chip		VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Rtt(wr)	*		0x0 (disabled)	10, 9	0x0000
> + * SR-Temp.	*		0x1 (Extended)	7	0x0080
> + * Auto-SR	*		0x0 (Manual)	6	0x0000
> + * CWL		* 400MHz	0x0 (5tCK)	5, 4, 3	0x0000
> + * 		* 533MHz	0x1 (6tCK)	5, 4, 3	0x0008
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR2_400MHZ_RTT_OFF				0x00808032
> +#define DDR3_MR2_533MHZ_RTT_OFF				0x00888032
> +#define DDR3_MR2_400MHZ_RTT_120				0x04808032
> +#define DDR3_MR2_533MHZ_RTT_120				0x04888032
> +
> +/*
> + * DDR3 chip MR1, n = 1:
> + *
> + * Par. 		Chip	VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Qoff			*	0x0 (enabled)	12	0x0000
> + * TDQS			*	0x0 (disabled)	11	0x0000
> + * Rtt			*	0x0 (disabled)	9, 6, 2	0x0000
> + * Write-levelling	*	0x0 (disable)	7	0x0000
> + * ODS			*	0x0 (RZQ/6=40)	5, 1	0x0000
> + * DLL			*	0x0 (enable)	0	0x0000
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR1_RTT_OFF_ODS_40				0x00008031
> +#define DDR3_MR1_RTT_120_ODS_40				0x00408031
> +#define DDR3_MR1_RTT_60_ODS_40				0x00048031
> +#define DDR3_MR1_RTT_OFF_ODS_34				0x00028031
> +#define DDR3_MR1_RTT_120_ODS_34				0x00428031
> +#define DDR3_MR1_RTT_60_ODS_34				0x00068031
> +
> +/*
> + * DDR3 chip MR0, n = 0:
> + *
> + * Par. 		Chip	VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Precharge PD		*	0x1 (fast exit)	12	0x1000
> + * WR			400MHz	0x2 (6)		11,10,9	0x0400
> + * 			533MHz	0x4 (8)		11,10,9 0x0800
> + * DLL reset		*	0x1 (Yes)	8	0x0100
> + * CL			400MHz	0x4 (6)		6,5,4,2	0x0020
> + * 			533MHz	0x6 (7)		6,5,4,2 0x0030
> + * 			533MHz	0x8 (8)		6,5,4,2 0x0040
> + * RD burst type	*	0x0 (seq.)	3	0x0000
> + * BL			*	0x0 (BL8)	0	0x0000
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR0_400MHZ					0x15208030
> +#define DDR3_MR0_533MHZ_CL7				0x19308030
> +#define DDR3_MR0_533MHZ_CL8				0x19408030
> +
> +
> +/*
> + * MDREF:
> + * REF_SEL (bit 14,15): 0 (64kHz, needed for high-temp.)
> + * REFR (bit 11, 12, 13): 0x3 (4 refreshes) -> 0x00001800
> + * 			  0x7 (8 refreshes) -> 0x00003800
> + */
> +#define MDREF_64KHZ 0x00001800
> +#define MDREF_32KHZ 0x00007800
> +
> +/* MPODTCTRL */
> +#define MPODTCTRL_ODT_OFF 0x00000007
> +#define MPODTCTRL_ODT_120 0x00011117
> +#define MPODTCTRL_ODT_60  0x00022227
> +#define MPODTCTRL_ODT_40  0x00033337
> +
> +/*
> + * MPDGCTRL0:
> + *
> + * Channel 0:
> + *
> + * Par. 		Chip	VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * RST_RD_FIFO		*	0		31	0x00000000
> + * DG_CMP_CYC		*	1		30	0x40000000
> + * DG_DIS		*	0		29	0x00000000
> + * HW_DG_EN		*	0		28	0x00000000
> + * DG_HC_DEL1		400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_EXT_UP		*	0		23	0x00000000
> + * DG_DL_ABS_OFFS1	400MHz	0x35		16	0x00350000
> + * 			533MHz	0x4b		16	0x004b0000
> + * DG_HC_DEL0		400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS0	400MHz	0x35		0	0x00000031
> + * 			533MHz	0x4b		0	0x00000050
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL0_CH0_400MHZ				0x42350231
> +#define MPDGCTRL0_CH0_533MHZ				0x434b0350
> +/*
> + *
> + * Channel 1:
> + *
> + * DG_HC_DEL1 (5)	400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS1 (5)	400MHz	0x35		16	0x00350000
> + * 			533MHz	0x4b		16	0x004b0000
> + * DG_HC_DEL0 (4)	400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS0 (4)	400MHz	0x35		0	0x00000031
> + * 			533MHz	0x4b		0	0x00000050
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL0_CH1_400MHZ				0x42350231
> +#define MPDGCTRL0_CH1_533MHZ				0x434b0350
> +
> +/*
> + * MPDGCTRL1:
> + *
> + * Channel 0:
> + *
> + * Par. 		Chip	VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * DG_HC_DEL3		400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS3	400MHz	0x1a		16	0x001a0000
> + * 			533MHz	0x4c		16	0x004c0000
> + * DG_HC_DEL2		400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS2	400MHz	0x18		0	0x00000018
> + * 			533MHz	0x59		0	0x00000059
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL1_CH0_400MHZ				0x021a0218
> +#define MPDGCTRL1_CH0_533MHZ				0x034c0359
> +/*
> + *
> + * Channel 1:
> + *
> + * DG_HC_DEL3 (7)	400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS3 (7)	400MHz	0x1a		16	0x001a0000
> + * 			533MHz	0x65		16	0x00650000
> + * DG_HC_DEL2 (6)	400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS2 (6)	400MHz	0x18		0	0x00000018
> + * 			533MHz	0x48		0	0x00000048
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL1_CH1_400MHZ				0x021a0218
> +#define MPDGCTRL1_CH1_533MHZ				0x03650348
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
> new file mode 100644
> index 0000000000..63eae0281e
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-alti6p.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_4G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_4G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_1GIB25
> +wm 32 0x021b0000 MDCTL_4G_32BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x001f001f
> +wm 32 0x021b4810 0x001f001f
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f

This is likely without effect since 09821fba06e4
("ARM i.MX6q: Mark VPU and IPU AXI transfers as cacheable,
increase IPU priority").

You might want to check that barebox doesn't set values different
from the presumably tried-and-true ones you've been setting.
If they're the same, you could drop this dead code.

> +/* RGMII config: ALTI6P doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9

Out of curiousity, why configure this here instead having the
pinctrl core do it?

> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
> new file mode 100644
> index 0000000000..62846845fb
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-lanmcu.imxcfg
> @@ -0,0 +1,127 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug 0 LED */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_512MIB
> +wm 32 0x021b0000 MDCTL_2G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
> new file mode 100644
> index 0000000000..a734096aeb
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-plybas.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_512MIB
> +wm 32 0x021b0000 MDCTL_2G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
> new file mode 100644
> index 0000000000..a734096aeb
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-plym2m.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_512MIB
> +wm 32 0x021b0000 MDCTL_2G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
> new file mode 100644
> index 0000000000..b42bb1cd9f
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prti6g.imxcfg
> @@ -0,0 +1,89 @@
> +soc imx6
> +loadaddr 0x80000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +#include "padsetup-ul.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 0x00000047	/* MDASP_512MIB */
> +wm 32 0x021b0000 MDCTL_2G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 0x00000117	/* MPODTCTRL_ODT_120 */
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b0850 0x40404040 /* For now set all to 50%. */
> +
> +/* MPWLDECTRL0 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Enable all clocks */
> +wm 32 0x020c4068 0xffffffff
> +wm 32 0x020c406c 0xffffffff
> +wm 32 0x020c4070 0xffffffff
> +wm 32 0x020c4074 0xffffffff
> +wm 32 0x020c4078 0xffffffff
> +wm 32 0x020c407c 0xffffffff
> +wm 32 0x020c4080 0xffffffff
> +
> +/* SD1 pad settings */
> +wm 32 0x020e044c 0x0001f0f9
> +wm 32 0x020e0448 0x0001f0f9
> +wm 32 0x020e0450 0x0001f0f9
> +wm 32 0x020e0454 0x0001f0f9
> +wm 32 0x020e0458 0x0001f0f9
> +wm 32 0x020e045c 0x0001f0f9
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
> new file mode 100644
> index 0000000000..1b2807fac4
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prti6q.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e0228 0x00000005
> +wm 32 0x020e0244 0x00000005
> +wm 32 0x020e05f8 0x000130b0
> +wm 32 0x020e0614 0x0001b0b0
> +
> +#include "padsetup-q.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00000742
> +check 32 until_all_bits_clear 0x021b0018 0x00000002
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +check 32 until_any_bit_set 0x021b001c 0x00004000
> +
> +wm 32 0x021b000c MDCFG0_8G_533MHZ_CL7
> +wm 32 0x021b0010 MDCFG1_533MHZ
> +wm 32 0x021b0014 MDCFG2_533MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_8G_533MHZ
> +wm 32 0x021b0008 MDOTC_533MHZ
> +wm 32 0x021b0004 MDPDC_533MHZ
> +wm 32 0x021b0040 MDASP_4GIB00
> +wm 32 0x021b0000 MDCTL_8G
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_60
> +wm 32 0x021b4818 MPODTCTRL_ODT_60
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_533MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_533MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_533MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_533MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x001f001f
> +wm 32 0x021b4810 0x001f001f
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* DEBUG leds */
> +wm 32 0x020e0244 0x00000005
> +wm 32 0x020e0614 0x000130b0
> +
> +/* RGMII config */
> +wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
> +wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e0724 0x0001f0f9
> +wm 32 0x020e0728 0x0001f0f9
> +wm 32 0x020e072c 0x0001f0f9
> +wm 32 0x020e0730 0x0001f0f9
> +wm 32 0x020e0734 0x0001f0f9
> +wm 32 0x020e0738 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
> new file mode 100644
> index 0000000000..091ad0ae80
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prtmvt.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_4G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_4G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_1GIB25
> +wm 32 0x021b0000 MDCTL_4G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
> new file mode 100644
> index 0000000000..a734096aeb
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prtrvt.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_512MIB
> +wm 32 0x021b0000 MDCTL_2G_16BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
> new file mode 100644
> index 0000000000..63d6e61133
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prtvt7.imxcfg
> @@ -0,0 +1,127 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug 0 LED */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_2G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_2G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_768MIB
> +wm 32 0x021b0000 MDCTL_2G_32BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
> new file mode 100644
> index 0000000000..b675751e60
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd2.imxcfg
> @@ -0,0 +1,241 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "lpddr2-defines.imxcfg"
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* Set DDR clk to 400MHz. */
> +wm 32 0x020c4018 0x00060324
> +
> +/* #include "padsetup-q.imxcfg" */
> +
> +/* LPDDR2 i.MX6D/Q pad setup */
> +wm 32 0x020e0798 0x00080000
> +wm 32 0x020e0758 0x00000000
> +
> +wm 32 0x020e0588 0x00000030
> +wm 32 0x020e0594 0x00000030
> +
> +wm 32 0x020e056c 0x00000030
> +wm 32 0x020e0578 0x00000030
> +wm 32 0x020e074c 0x00000030
> +
> +wm 32 0x020e057c 0x00000030
> +wm 32 0x020e058c 0x00000000
> +wm 32 0x020e059c 0x00000030
> +wm 32 0x020e05a0 0x00000030
> +wm 32 0x020e078c 0x00000030
> +
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e05a8 0x00003030
> +wm 32 0x020e05b0 0x00003030
> +wm 32 0x020e0524 0x00003030
> +wm 32 0x020e051c 0x00003030
> +wm 32 0x020e0518 0x00003030
> +wm 32 0x020e050c 0x00003030
> +wm 32 0x020e05b8 0x00003030
> +wm 32 0x020e05c0 0x00003030
> +
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e0788 0x00000030
> +wm 32 0x020e0794 0x00000030
> +wm 32 0x020e079c 0x00000030
> +wm 32 0x020e07a0 0x00000030
> +wm 32 0x020e07a4 0x00000030
> +wm 32 0x020e07a8 0x00000030
> +wm 32 0x020e0748 0x00000030
> +
> +wm 32 0x020e05ac 0x00000030
> +wm 32 0x020e05b4 0x00000030
> +wm 32 0x020e0528 0x00000030
> +wm 32 0x020e0520 0x00000030
> +wm 32 0x020e0514 0x00000030
> +wm 32 0x020e0510 0x00000030
> +wm 32 0x020e05bc 0x00000030
> +wm 32 0x020e05c4 0x00000030
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +check 32 until_any_bit_set 0x021b001c 0x00004000
> +wm 32 0x021b401c 0x00008000
> +/* check 32 until_any_bit_set 0x021b401c 0x00004000 */
> +
> +
> +wm 32 0x021b085c 0x1b4700c7
> +wm 32 0x021b485c 0x1b4700c7
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
> +
> +wm 32 0x021b0890 0x00400000
> +wm 32 0x021b4890 0x00400000
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +wm 32 0x021b083c 0x20000000
> +wm 32 0x021b0840 0x00000000
> +wm 32 0x021b483c 0x20000000
> +wm 32 0x021b4840 0x00000000
> +
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* Set Write data delay 3 delay units for all bits */
> +wm 32 0x021b082c 0xf3333333
> +wm 32 0x021b0830 0xf3333333
> +wm 32 0x021b0834 0xf3333333
> +wm 32 0x021b0838 0xf3333333
> +wm 32 0x021b482c 0xf3333333
> +wm 32 0x021b4830 0xf3333333
> +wm 32 0x021b4834 0xf3333333
> +wm 32 0x021b4838 0xf3333333
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/*
> + * Configure MMDC Channel 0
> + */
> +
> +/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
> +wm 32 0x021b0018 0x00001602
> +check 32 until_all_bits_clear 0x021b0018 0x00000002
> +
> +wm 32 0x021b0004 0x00020036
> +wm 32 0x021b0008 0x12272000 /* FIXME: Why does script aid set this? */
> +wm 32 0x021b000c MDCFG0_8G_LPDDR2_CL6
> +wm 32 0x021b0010 MDCFG1_LPDDR2
> +wm 32 0x021b0014 MDCFG2_LPDDR2
> +
> +wm 32 0x021b0018 0x0000174c
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x0f9f26d2 /* MDRWD */
> +wm 32 0x021b0030 MDOR_LPDDR2
> +wm 32 0x021b0038 0x00190778 /* MDCFG3LP */
> +wm 32 0x021b0040 0x0000004f /* NOTE: According to RM */
> +wm 32 0x021b0400 0x11420000 /* MAARCR disable dyn jump */
> +wm 32 0x021b0000 MDCTL_LPDDR2
> +
> +/*
> + * Configure MMDC Channel 1
> + */
> +
> +/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
> +wm 32 0x021b4018 0x00001602
> +check 32 until_all_bits_clear 0x021b4018 0x00000002
> +
> +wm 32 0x021b4004 0x00020036
> +wm 32 0x021b4008 0x12272000 /* FIXME: Why does script aid set this? */
> +wm 32 0x021b400c MDCFG0_8G_LPDDR2_CL6
> +wm 32 0x021b4010 MDCFG1_LPDDR2
> +wm 32 0x021b4014 MDCFG2_LPDDR2
> +
> +wm 32 0x021b4018 0x0000174c
> +wm 32 0x021b401c 0x00008000
> +wm 32 0x021b402c 0x0f9f26d2 /* MDOR */
> +wm 32 0x021b4030 MDOR_LPDDR2
> +wm 32 0x021b4038 0x00190778 /* MDCFG3LP */
> +wm 32 0x021b4040 MDASP_768MIB /* NOTE: According to RM */
> +wm 32 0x021b4400 0x11420000 /* MAARCR disable dyn jump */
> +wm 32 0x021b4000 MDCTL_LPDDR2
> +
> +/*
> + * Configure LPDDR2 devices
> + */
> +
> +wm 32 0x021b001c 0x00008010 /* Precharge all ch 0 */
> +wm 32 0x021b401c 0x00008010 /* Precharge all ch 1 */
> +
> +/* Channel 0 */
> +wm 32 0x021b001c 0x003f8030 /* Reset */
> +wm 32 0x021b001c 0xff0a8030 /* Calibrate */
> +wm 32 0x021b001c 0x82018030 /* MR1: nWR=6, WC=0, BT=0, BL=BL4 */
> +wm 32 0x021b001c 0x04028030 /* MR2: RL6/WL3 */
> +wm 32 0x021b001c 0x02038030 /* MR3: DS = 40 Ohm */
> +
> +/* Channel 1 */
> +wm 32 0x021b401c 0x003f8030
> +wm 32 0x021b401c 0xff0a8030
> +wm 32 0x021b401c 0x82018030
> +wm 32 0x021b401c 0x04028030
> +wm 32 0x021b401c 0x02038030
> +
> +/* MPDGCTRL disabled, reset fifos */
> +wm 32 0x021b083c 0xa0000000
> +wm 32 0x021b083c 0xa0000000
> +check 32 until_all_bits_clear 0x021b083c 0x80000000
> +wm 32 0x021b483c 0xa0000000
> +wm 32 0x021b483c 0xa0000000
> +check 32 until_all_bits_clear 0x021b483c 0x80000000
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +wm 32 0x021b4020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 0x00000000 /* LPDDR2: Disable ODT! */
> +wm 32 0x021b4818 0x00000000
> +
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b4004 MDPDC_400MHZ
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011006 /* Enable autorefresh  */
> +wm 32 0x021b4404 0x00011006 /* Enable autorefresh  */
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +wm 32 0x021b401c 0x00000000 /* Disable configuration req */
> +
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* DEBUG leds */
> +wm 32 0x020e0244 0x00000005
> +wm 32 0x020e0614 0x000130b0
> +
> +/* SD1 pad settings */
> +wm 32 0x020e0724 0x0001f0f9
> +wm 32 0x020e0728 0x0001f0f9
> +wm 32 0x020e072c 0x0001f0f9
> +wm 32 0x020e0730 0x0001f0f9
> +wm 32 0x020e0734 0x0001f0f9
> +wm 32 0x020e0738 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +wm 32 0x020e06cc 0x000130f9
> +
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
> new file mode 100644
> index 0000000000..a6b2baaa36
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-prtwd3.imxcfg
> @@ -0,0 +1,291 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "lpddr2-defines.imxcfg"
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* Set DDR clk to 400MHz. */
> +wm 32 0x020c4018 0x00060324
> +
> +/* #include "padsetup-q.imxcfg" */
> +
> +/* LPDDR2 i.MX6D/Q pad setup */
> +wm 32 0x020e0798 0x00080000
> +wm 32 0x020e0758 0x00000000
> +
> +wm 32 0x020e0588 0x00000030
> +wm 32 0x020e0594 0x00000030
> +
> +wm 32 0x020e056c 0x00000030
> +wm 32 0x020e0578 0x00000030
> +wm 32 0x020e074c 0x00000030
> +
> +wm 32 0x020e057c 0x00000030
> +wm 32 0x020e058c 0x00000000
> +wm 32 0x020e059c 0x00000030
> +wm 32 0x020e05a0 0x00000030
> +wm 32 0x020e078c 0x00000030
> +
> +wm 32 0x020e0750 0x00020000
> +wm 32 0x020e05a8 0x00003030
> +wm 32 0x020e05b0 0x00003030
> +wm 32 0x020e0524 0x00003030
> +wm 32 0x020e051c 0x00003030
> +wm 32 0x020e0518 0x00003030
> +wm 32 0x020e050c 0x00003030
> +wm 32 0x020e05b8 0x00003030
> +wm 32 0x020e05c0 0x00003030
> +
> +wm 32 0x020e0774 0x00020000
> +wm 32 0x020e0784 0x00000030
> +wm 32 0x020e0788 0x00000030
> +wm 32 0x020e0794 0x00000030
> +wm 32 0x020e079c 0x00000030
> +wm 32 0x020e07a0 0x00000030
> +wm 32 0x020e07a4 0x00000030
> +wm 32 0x020e07a8 0x00000030
> +wm 32 0x020e0748 0x00000030
> +
> +wm 32 0x020e05ac 0x00000030
> +wm 32 0x020e05b4 0x00000030
> +wm 32 0x020e0528 0x00000030
> +wm 32 0x020e0520 0x00000030
> +wm 32 0x020e0514 0x00000030
> +wm 32 0x020e0510 0x00000030
> +wm 32 0x020e05bc 0x00000030
> +wm 32 0x020e05c4 0x00000030
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +check 32 until_any_bit_set 0x021b001c 0x00004000
> +wm 32 0x021b401c 0x00008000
> +/* check 32 until_any_bit_set 0x021b401c 0x00004000 */
> +
> +
> +wm 32 0x021b085c 0x1b4700c7
> +wm 32 0x021b485c 0x1b4700c7
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
> +
> +wm 32 0x021b0890 0x00400000
> +wm 32 0x021b4890 0x00400000
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +wm 32 0x021b083c 0x20000000
> +wm 32 0x021b0840 0x00000000
> +wm 32 0x021b483c 0x20000000
> +wm 32 0x021b4840 0x00000000
> +
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* Set Write data delay 3 delay units for all bits */
> +wm 32 0x021b082c 0xf3333333
> +wm 32 0x021b0830 0xf3333333
> +wm 32 0x021b0834 0xf3333333
> +wm 32 0x021b0838 0xf3333333
> +wm 32 0x021b482c 0xf3333333
> +wm 32 0x021b4830 0xf3333333
> +wm 32 0x021b4834 0xf3333333
> +wm 32 0x021b4838 0xf3333333
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* NOC: DDRCONF */
> +/* Sabre-auto: wm 32 0x00bb0008 0x00000000 */
> +/* Values (Address mapping for 64bit):
> + *   0 : 16 Row, 3 Bank, 10 Col interleave (11 Col for 32 bit)
> + *   1 : 15 Row, 3 Bank, 11 Col interleave (12 Col for 32 bit)
> + *   2 : 18 Row, 3 Bank, 8 Col interleave  (9 Col for 32 bit)
> + *   3 : 17 Row, 3 Bank, 9 Col interleave  (10 Col for 32 bit)
> + *   4 : 2 CS (?), 15 Row, 3 Bank, 10 Col, interleave
> + * ...
> + */
> +wm 32 0x00bb0008 0x00000000
> +
> +/*
> + * NOC DdrTiming:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * ActToAct	533MHz		0x1b (28)	0	0x0000001b
> + * 		LPDDR2		0x18 (24)	0	0x00000018
> + * RdToMiss	533MHz		0x10 (16)	6	0x00000400
> + * 		LPDDR2		0x11 (17)	6	0x00000440
> + * WrToMiss	*		0x1e (30)	12	0x0001e000
> + *		LPDDR2		0x19 (25)	12	0x00019000
> + * BurstLen	*		0x4 (8/2)	18	0x00100000
> + * 		LPDDR2		0x2 (4/2)	18	0x00080000
> + * RdToWr	*		0x3 (3)		21	0x00600000
> + * 		LPDDR2		0x5 (5)		21	0x00a00000
> + * WrToRd	*		0xa (10)	26	0x28000000
> + * 		LPDDR2		0x6 (6)		26	0x18000000
> + * BwRatio	* 		0x0 (0)		31	0x00000000
> + * ----------------------------------------------------------------
> + */
> +/* Sabre-auto: wm 32 0x00bb000c				0x2891E41A */
> +wm 32 0x00bb000c 					0x18a99459
> +
> +/*
> + * NOC Activate:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * Rrd		*		0x6 (6)		0	0x00000006
> + * 		LPDDR2		0x4 (4)		0	0x00000004
> + * Faw		*		0x1b (27)	4	0x000001b0
> + * 		LPDDR2		0x14 (20)	4	0x00000140
> + * FawBank	*		0x0 (0)		10	0x00000000
> + * ----------------------------------------------------------------
> + */
> +/* Sabre-auto: wm 32 0x00bb0038 			0x00000564 */
> +wm 32 0x00bb0038		 			0x00000144
> +
> +/*
> + * NOC ReadLatency: (FIXME)
> + */
> +wm 32 0x00bb0014 0x00000040
> +
> +/*
> + * Configure MMDC Channel 0
> + */
> +
> +/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
> +wm 32 0x021b0018 0x00001602
> +check 32 until_all_bits_clear 0x021b0018 0x00000002
> +
> +wm 32 0x021b0004 0x00020036
> +wm 32 0x021b0008 0x12272000 /* FIXME: Why does script aid set this? */
> +wm 32 0x021b000c MDCFG0_8G_LPDDR2_CL6
> +wm 32 0x021b0010 MDCFG1_LPDDR2
> +wm 32 0x021b0014 MDCFG2_LPDDR2
> +
> +wm 32 0x021b0018 0x0000174c
> +wm 32 0x021b001c 0x00008000
> +wm 32 0x021b002c 0x0f9f26d2 /* MDRWD */
> +wm 32 0x021b0030 MDOR_LPDDR2
> +wm 32 0x021b0038 0x00190778 /* MDCFG3LP */
> +wm 32 0x021b0040 0x0000004f /* NOTE: According to RM */
> +wm 32 0x021b0400 0x15420000 /* MAARCR disable dyn jump/reordering */
> +wm 32 0x021b0000 MDCTL_LPDDR2
> +
> +/*
> + * Configure MMDC Channel 1
> + */
> +
> +/* MDMISC No addr mirror, 0 WALAT, 5 RALAT, LPDDR2 mode, RST */
> +wm 32 0x021b4018 0x00001602
> +check 32 until_all_bits_clear 0x021b4018 0x00000002
> +
> +wm 32 0x021b4004 0x00020036
> +wm 32 0x021b4008 0x12272000 /* FIXME: Why does script aid set this? */
> +wm 32 0x021b400c MDCFG0_8G_LPDDR2_CL6
> +wm 32 0x021b4010 MDCFG1_LPDDR2
> +wm 32 0x021b4014 MDCFG2_LPDDR2
> +
> +wm 32 0x021b4018 0x0000174c
> +wm 32 0x021b401c 0x00008000
> +wm 32 0x021b402c 0x0f9f26d2 /* MDRWD */
> +wm 32 0x021b4030 MDOR_LPDDR2
> +wm 32 0x021b4038 0x00190778 /* MDCFG3LP */
> +wm 32 0x021b4040 MDASP_768MIB /* NOTE: According to RM */
> +wm 32 0x021b4400 0x15420000 /* MAARCR disable dyn jump/reordering */
> +wm 32 0x021b4000 MDCTL_LPDDR2
> +
> +/*
> + * Configure LPDDR2 devices
> + */
> +
> +wm 32 0x021b001c 0x00008010 /* Precharge all ch 0 */
> +wm 32 0x021b401c 0x00008010 /* Precharge all ch 1 */
> +
> +/* Channel 0 */
> +wm 32 0x021b001c 0x003f8030 /* Reset */
> +wm 32 0x021b001c 0xff0a8030 /* Calibrate */
> +wm 32 0x021b001c 0x82018030 /* MR1: nWR=6, WC=0, BT=0, BL=BL4 */
> +wm 32 0x021b001c 0x04028030 /* MR2: RL6/WL3 */
> +wm 32 0x021b001c 0x02038030 /* MR3: DS = 40 Ohm */
> +
> +/* Channel 1 */
> +wm 32 0x021b401c 0x003f8030
> +wm 32 0x021b401c 0xff0a8030
> +wm 32 0x021b401c 0x82018030
> +wm 32 0x021b401c 0x04028030
> +wm 32 0x021b401c 0x02038030
> +
> +/* MPDGCTRL disabled, reset fifos */
> +wm 32 0x021b083c 0xa0000000
> +wm 32 0x021b083c 0xa0000000
> +check 32 until_all_bits_clear 0x021b083c 0x80000000
> +wm 32 0x021b483c 0xa0000000
> +wm 32 0x021b483c 0xa0000000
> +check 32 until_all_bits_clear 0x021b483c 0x80000000
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1380003 /* FIXME: Why different? */
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +wm 32 0x021b4020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 0x00000000 /* LPDDR2: Disable ODT! */
> +wm 32 0x021b4818 0x00000000
> +
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b4004 MDPDC_400MHZ
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011006 /* Enable autorefresh  */
> +wm 32 0x021b4404 0x00011006 /* Enable autorefresh  */
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +wm 32 0x021b401c 0x00000000 /* Disable configuration req */
> +
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* SD1 pad settings */
> +wm 32 0x020e0724 0x0001f0f9
> +wm 32 0x020e0728 0x0001f0f9
> +wm 32 0x020e072c 0x0001f0f9
> +wm 32 0x020e0730 0x0001f0f9
> +wm 32 0x020e0734 0x0001f0f9
> +wm 32 0x020e0738 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +wm 32 0x020e06cc 0x000130f9
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
> new file mode 100644
> index 0000000000..58d5183ca0
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-victgo.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_4G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_4G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_1GIB25
> +wm 32 0x021b0000 MDCTL_4G_32BIT
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x001f001f
> +wm 32 0x021b4810 0x001f001f
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config: MVT doesn't have GRMII, disable! */
> +wm 32 0x020e0768 0x000c0000 /* 1V5 DDR IO */
> +wm 32 0x020e0788 0x00000000 /* disable ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
> new file mode 100644
> index 0000000000..0612801ee8
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1.imxcfg
> @@ -0,0 +1,135 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x000130b0
> +wm 32 0x020e0610 0x0001f0b0
> +
> +#include "padsetup-dl.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011740
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +
> +wm 32 0x021b000c MDCFG0_4G_400MHZ
> +wm 32 0x021b0010 MDCFG1_400MHZ
> +wm 32 0x021b0014 MDCFG2_400MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_4G_400MHZ
> +wm 32 0x021b0008 MDOTC_400MHZ
> +wm 32 0x021b0004 MDPDC_400MHZ
> +wm 32 0x021b0040 MDASP_2GIB25
> +wm 32 0x021b0000 MDCTL_4G
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_400MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_400MHZ
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_120
> +wm 32 0x021b4818 MPODTCTRL_ODT_120
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_400MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_400MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_400MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_400MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x00440044 /* FIXME: Why these seeminly arbitrary values? */
> +wm 32 0x021b4810 0x00440044
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00011007 /* 0x0001...? FIXME: Disable powersaving for now  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* RGMII config */
> +wm 32 0x020e0768 0x00080000 /* 1V2 DDR IO */
> +wm 32 0x020e0788 0x00000200 /* 60 Ohm ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e06c4 0x0001f0f9
> +wm 32 0x020e06c8 0x0001f0f9
> +wm 32 0x020e06cc 0x0001f0f9
> +wm 32 0x020e06d0 0x0001f0f9
> +wm 32 0x020e06d4 0x0001f0f9
> +wm 32 0x020e06d8 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> +/* Debug */
> +wm 32 0x020e023c 0x00000005
> +wm 32 0x020e0240 0x00000005
> +wm 32 0x020e060c 0x0001f0b0
> +wm 32 0x020e0610 0x000130b0
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
> new file mode 100644
> index 0000000000..096bfa717f
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-vicut1q.imxcfg
> @@ -0,0 +1,140 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e0228 0x00000005
> +/* wm 32 0x020e0244 0x00000005 */
> +wm 32 0x020e05f8 0x000130b0
> +/* wm 32 0x020e0614 0x000130b0 */
> +
> +#include "padsetup-q.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00011742
> +check 32 until_all_bits_clear 0x021b0018 0x00000002
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +check 32 until_any_bit_set 0x021b001c 0x00004000
> +
> +wm 32 0x021b000c MDCFG0_8G_533MHZ_CL7
> +wm 32 0x021b0010 MDCFG1_533MHZ
> +wm 32 0x021b0014 MDCFG2_533MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_8G_533MHZ
> +wm 32 0x021b0008 MDOTC_533MHZ
> +wm 32 0x021b0004 MDPDC_533MHZ
> +wm 32 0x021b0040 MDASP_4GIB00
> +wm 32 0x021b0000 MDCTL_8G
> +// check 32 until_any_bit_set 0x021b0018 0x80000000
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_60
> +wm 32 0x021b4818 MPODTCTRL_ODT_60
> +
> +/* DQS gating calibration measured on UT2 and UTC boards */
> +wm 32 0x021b083c 0x43000300
> +wm 32 0x021b483c 0x430a0310
> +
> +wm 32 0x021b0840 0x030002b0
> +wm 32 0x021b4840 0x02b00255
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +/* Measured on UT2 and UTC, good averages */
> +wm 32 0x021b0848 0x453a3a3a
> +wm 32 0x021b4848 0x403b3947
> +wm 32 0x021b0850 0x40444540
> +wm 32 0x021b4850 0x46404840
> +
> +/* MPWLDECTRL0,1 */
> +/* Measured and averaged on UT2 and UTC boards */
> +wm 32 0x021b080c 0x00200020
> +wm 32 0x021b0810 0x0026001e
> +wm 32 0x021b480c 0x00100028
> +wm 32 0x021b4810 0x0012001b
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
> +
> +/* Clock configuration (CCM) */
> +/* CCGR0..6 */
> +wm 32 0x020c4068 0x00c03f3f
> +wm 32 0x020c406c 0x0030fc03
> +wm 32 0x020c4070 0x0fffc000
> +wm 32 0x020c4074 0x3ff00000
> +wm 32 0x020c4078 0x00fff300
> +wm 32 0x020c407c 0x0f0000c3
> +wm 32 0x020c4080 0x000003ff
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* DEBUG leds */
> +wm 32 0x020e0244 0x00000005
> +wm 32 0x020e0614 0x000130b0
> +
> +/* RGMII config */
> +wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
> +wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e0724 0x0001f0f9
> +wm 32 0x020e0728 0x0001f0f9
> +wm 32 0x020e072c 0x0001f0f9
> +wm 32 0x020e0730 0x0001f0f9
> +wm 32 0x020e0734 0x0001f0f9
> +wm 32 0x020e0738 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> diff --git a/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
> new file mode 100644
> index 0000000000..e19c9eb87e
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/flash-header-vicutp.imxcfg
> @@ -0,0 +1,187 @@
> +soc imx6
> +loadaddr 0x10000000
> +dcdofs 0x400
> +
> +#include "ddr3-defines.imxcfg"
> +
> +/* Debug */
> +wm 32 0x020e0228 0x00000005
> +/* wm 32 0x020e0244 0x00000005 */
> +wm 32 0x020e05f8 0x000130b0
> +/* wm 32 0x020e0614 0x000130b0 */
> +
> +#include "padsetup-q.imxcfg"
> +
> +/* Set Read data delay 3 delay units for all bits */
> +wm 32 0x021b081c 0x33333333
> +wm 32 0x021b0820 0x33333333
> +wm 32 0x021b0824 0x33333333
> +wm 32 0x021b0828 0x33333333
> +wm 32 0x021b481c 0x33333333
> +wm 32 0x021b4820 0x33333333
> +wm 32 0x021b4824 0x33333333
> +wm 32 0x021b4828 0x33333333
> +
> +/* MDMISC No addr mirror, 1 WALAT, 5 RALAT, DDR3 mode */
> +wm 32 0x021b0018 0x00001742
> +check 32 until_all_bits_clear 0x021b0018 0x00000002
> +
> +/* CSCR: Configuration mode */
> +wm 32 0x021b001c 0x00008000
> +check 32 until_any_bit_set 0x021b001c 0x00004000
> +
> +wm 32 0x021b000c MDCFG0_4G_533MHZ_CL7
> +wm 32 0x021b0010 MDCFG1_533MHZ
> +wm 32 0x021b0014 MDCFG2_533MHZ
> +
> +/* MDRWD */
> +wm 32 0x021b002c 0x000026d2
> +
> +wm 32 0x021b0030 MDOR_4G_533MHZ
> +wm 32 0x021b0008 MDOTC_533MHZ
> +wm 32 0x021b0004 MDPDC_533MHZ
> +wm 32 0x021b0040 MDASP_2GIB25
> +
> +/* Dual-Plus specific configuration */
> +/* MMDC: MAARCR: Disable reordering */
> +wm 32 0x021b0400 0x14420000
> +/* MMDC: MPPDCMPR2: ZQ Offset setting (TODO) */
> +wm 32 0x021b0890 0x00400008 /* Freescale sabre-auto: 0x00400C58 */
> +
> +/* NOC: DDRCONF */
> +/* Sabre-auto: wm 32 0x00bb0008 0x00000000 */
> +/* Values (Address mapping for 64bit):
> + *   0 : 16 Row, 3 Bank, 10 Col interleave (11 Col for 32 bit)
> + *   1 : 15 Row, 3 Bank, 11 Col interleave (12 Col for 32 bit)
> + *   2 : 18 Row, 3 Bank, 8 Col interleave  (9 Col for 32 bit)
> + *   3 : 17 Row, 3 Bank, 9 Col interleave  (10 Col for 32 bit)
> + *   4 : 2 CS (?), 15 Row, 3 Bank, 10 Col, interleave
> + * ...
> + */
> +wm 32 0x00bb0008 0x00000000
> +
> +/*
> + * NOC DdrTiming:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * ActToAct	533MHz		0x1b (28)	0	0x0000001b
> + * RdToMiss	533MHz		0x10 (16)	6	0x00000400
> + * WrToMiss	*		0x1e (30)	12	0x0001e000
> + * BurstLen	*		0x4 (8/2)	18	0x00100000
> + * RdToWr	*		0x3 (3)		21	0x00600000
> + * WrToRd	*		0xa (10)	26	0x28000000
> + * BwRatio	* 		0x0 (0)		31	0x00000000
> + * ----------------------------------------------------------------
> + */
> +/* Sabre-auto: wm 32 0x00bb000c				0x2891E41A */
> +wm 32 0x00bb000c 					0x2871e41c
> +
> +/*
> + * NOC Activate:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * Rrd		*		0x6 (6)		0	0x00000006
> + * Faw		*		0x1b (27)	4	0x000001b0
> + * FawBank	*		0x0 (0)		10	0x00000000
> + * ----------------------------------------------------------------
> + */
> +/* Sabre-auto: wm 32 0x00bb0038 			0x00000564 */
> +wm 32 0x00bb0038		 			0x000001b6
> +
> +/*
> + * NOC ReadLatency: (FIXME)
> + */
> +wm 32 0x00bb0014 0x00000040
> +
> +/*
> + * NOC IPU1/IPU2 aging: (FIXME)
> + */
> +wm 32 0x00bb0028 0x00000020
> +wm 32 0x00bb002c 0x00000020
> +
> +wm 32 0x021b0000 MDCTL_4G
> +// check 32 until_any_bit_set 0x021b0018 0x80000000
> +
> +/* DDR3 MR config */
> +wm 32 0x021b001c DDR3_MR2_533MHZ_RTT_120
> +
> +/*
> + * DDR3 chip MR3, n = 3, vvvv = 0 (no configurable function of interest).
> + */
> +wm 32 0x021b001c 0x00008033
> +
> +wm 32 0x021b001c DDR3_MR1_RTT_120_ODS_40
> +wm 32 0x021b001c DDR3_MR0_533MHZ_CL7
> +
> +/*
> + * ZQ calibration, n = 0x10 (Precharge all):
> + * Bit 10 = 1:  Start ZQ calibration
> + * REGISTER: 0x04008040
> + */
> +wm 32 0x021b001c 0x04008040
> +
> +/* MPZQHWCTRL */
> +wm 32 0x021b0800 0xa1390003 /* ZQ mode = 3  force calibration */
> +wm 32 0x021b4800 0xa1390003 
> +
> +wm 32 0x021b0020 MDREF_64KHZ
> +
> +wm 32 0x021b0818 MPODTCTRL_ODT_60
> +wm 32 0x021b4818 MPODTCTRL_ODT_60
> +
> +wm 32 0x021b083c MPDGCTRL0_CH0_533MHZ
> +wm 32 0x021b483c MPDGCTRL0_CH1_533MHZ
> +
> +wm 32 0x021b0840 MPDGCTRL1_CH0_533MHZ
> +wm 32 0x021b4840 MPDGCTRL1_CH1_533MHZ
> +
> +/* MPRDDLCTL, MPWRDLCTL */
> +wm 32 0x021b0848 0x40404040 /* TODO. Read delay line conf. */
> +wm 32 0x021b4848 0x40404040 /* For now set all to 50%. */
> +wm 32 0x021b0850 0x40404040
> +wm 32 0x021b4850 0x40404040
> +
> +/* MPWLDECTRL0,1 */
> +wm 32 0x021b080c 0x001f001f /* TODO. Write level delay control */
> +wm 32 0x021b0810 0x001f001f
> +wm 32 0x021b480c 0x001f001f
> +wm 32 0x021b4810 0x001f001f
> +
> +/* MPMUR0 */
> +wm 32 0x021b08b8 0x00000800 /* Force measurement on delay lines */
> +wm 32 0x021b48b8 0x00000800
> +
> +/* MDSCR */
> +wm 32 0x021b001c 0x00000000 /* Disable configuration req */
> +
> +/* MAPSR */
> +wm 32 0x021b0404 0x00001006 /* Enable autorefresh  */
> +
> +/* enable AXI cache for VDOA/PCIe/VPU/IPU */
> +wm 32 0x020e0010 0xff0000cf
> +/* set IPU AXI-id0 Qos=0xf(bypass AXI-id1 Qos=0x7) */
> +wm 32 0x020e0018 0x007f007f
> +wm 32 0x020e001c 0x007f007f
> +
> +/* DEBUG leds */
> +wm 32 0x020e0244 0x00000005
> +wm 32 0x020e0614 0x000130b0
> +
> +/* RGMII config */
> +wm 32 0x020e0790 0x00080000 /* 1V2 DDR IO */
> +wm 32 0x020e07ac 0x00000200 /* 60 Ohm ODT */
> +
> +/* SD1 pad settings */
> +wm 32 0x020e0724 0x0001f0f9
> +wm 32 0x020e0728 0x0001f0f9
> +wm 32 0x020e072c 0x0001f0f9
> +wm 32 0x020e0730 0x0001f0f9
> +wm 32 0x020e0734 0x0001f0f9
> +wm 32 0x020e0738 0x0001f0f9
> +
> +/* HDMI to IPU1-ch1, LVDS to IPU1-ch0 */
> +wm 32 0x020e0008 0x00000004
> +wm 32 0x020e000c 0x01e00004
> +
> diff --git a/arch/arm/boards/protonic-imx6/lowlevel.c b/arch/arm/boards/protonic-imx6/lowlevel.c
> new file mode 100644
> index 0000000000..60d809c3aa
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/lowlevel.c
> @@ -0,0 +1,209 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (C) 2020 Protonic Holland
> + * Copyright (C) 2020 Oleksij Rempel, Pengutronix
> + */
> +
> +#include <asm/barebox-arm.h>
> +#include <asm/barebox-arm-head.h>
> +#include <common.h>
> +#include <debug_ll.h>
> +#include <linux/sizes.h>
> +#include <mach/iomux-mx6.h>
> +
> +extern char __dtb_z_imx6q_prti6q_start[];
> +extern char __dtb_z_imx6q_prtwd2_start[];
> +extern char __dtb_z_imx6q_vicut1_start[];
> +extern char __dtb_z_imx6dl_alti6p_start[];
> +extern char __dtb_z_imx6dl_lanmcu_start[];
> +extern char __dtb_z_imx6dl_plybas_start[];
> +extern char __dtb_z_imx6dl_plym2m_start[];
> +extern char __dtb_z_imx6dl_prtmvt_start[];
> +extern char __dtb_z_imx6dl_prtrvt_start[];
> +extern char __dtb_z_imx6dl_prtvt7_start[];
> +extern char __dtb_z_imx6dl_victgo_start[];
> +extern char __dtb_z_imx6dl_vicut1_start[];
> +extern char __dtb_z_imx6qp_prtwd3_start[];
> +extern char __dtb_z_imx6qp_vicutp_start[];
> +extern char __dtb_z_imx6ul_prti6g_start[];
> +
> +static inline void setup_uart(void)
> +{
> +	void __iomem *iomuxbase = IOMEM(MX6_IOMUXC_BASE_ADDR);
> +
> +	imx_setup_pad(iomuxbase, MX6Q_PAD_KEY_COL0__UART4_TXD);
> +
> +	imx6_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +ENTRY_FUNCTION(start_imx6q_prti6q, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	imx6_ungate_all_peripherals();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	fdt = __dtb_z_imx6q_prti6q_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6q_prtwd2, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6q_prtwd2_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6q_vicut1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6q_vicut1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_alti6p, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_alti6p_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_1G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_lanmcu, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_lanmcu_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_plybas, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_plybas_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_plym2m, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_plym2m_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtmvt, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtmvt_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtrvt, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtrvt_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_256M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_prtvt7, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_prtvt7_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_victgo, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_victgo_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6dl_vicut1, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6dl_vicut1_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6qp_prtwd3, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6qp_prtwd3_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_512M, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6qp_vicutp, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6qp_vicutp_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x10000000, SZ_2G, fdt);
> +}
> +
> +ENTRY_FUNCTION(start_imx6ul_prti6g, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt = __dtb_z_imx6ul_prti6g_start + get_runtime_offset();
> +
> +	barebox_arm_entry(0x80000000, SZ_256M, fdt);
> +}
> diff --git a/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
> new file mode 100644
> index 0000000000..29c42cc697
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/lpddr2-defines.imxcfg
> @@ -0,0 +1,384 @@
> +/*
> + * Timing configuration:
> + *
> + * MDCFG0:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tRFC 	2Gb 400MHz	0x3f (64)	24	0x3f000000
> + * 		4Gb 400MHz	0x77 (120)	24	0x77000000
> + * 		8Gb 400MHz	0x8b (140)	24	0x8b000000
> + *	 	2Gb 533MHz	0x55 (86)	24	0x55000000
> + * 		4Gb 533MHz	0x9f (160)	24	0x9f000000
> + * 		8Gb 533MHz	0xba (187)	24	0xba000000
> + *              4Gb LPDDR2	0x33 (52)	24	0x33000000
> + * tXS		2Gb 400MHz	0x43 (68)	16	0x00430000
> + * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
> + * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
> + * 		2Gb 533MHz	0x5b (92)	16	0x005b0000
> + * 		4Gb 533MHz	0xa5 (166)	16	0x00a50000
> + * 		8Gb 533MHz	0xc0 (193)	16	0x00c00000
> + *		4Gb LPDDR2	0x37 (56)	16	0x00370000
> + * tXP		* 400MHz	0x2 (3)		13	0x00004000
> + * 		* 533MHz	0x3 (4)		13	0x00006000
> + * 		* LPDDR2	0x2 (3)		13	0x00004000
> + * tXPDLL	* 400MHz	0x9 (10)	9	0x00001200
> + * 		* 533MHz	0xc (13)	9	0x00001800
> + *		* LPDDR2	0x1 (-)		9	0x00000200
> + * tFAW		* 400MHz	0x13 (20)	4	0x00000130
> + *		* 533MHz	0x1a (27)	4	0x000001a0
> + *		* LPDDR2	0x13 (20)	4	0x00000130
> + * tCL		* 400MHz	0x3 (6)		0	0x00000003
> + *		* 533MHz-CL7	0x4 (7)		0	0x00000004
> + *		* 533MHz-CL8	0x5 (8)		0	0x00000005
> + *		* LPDDR2	0x3 (6)		0	0x00000003
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG0_2G_400MHZ				0x3f435333
> +#define MDCFG0_4G_400MHZ				0x777b5333
> +#define MDCFG0_8G_400MHZ				0x8b8f5333
> +#define MDCFG0_2G_533MHZ_CL8				0x555b79a5
> +#define MDCFG0_2G_533MHZ_CL7				0x555b79a4
> +#define MDCFG0_4G_533MHZ_CL8				0x9fa579a5
> +#define MDCFG0_4G_533MHZ_CL7				0x9fa579a4
> +#define MDCFG0_8G_533MHZ_CL8				0xbac079a5
> +#define MDCFG0_8G_533MHZ_CL7				0xbac079a4
> +#define MDCFG0_4G_LPDDR2_CL6				0x33374133
> +#define MDCFG0_8G_LPDDR2_CL6				0x53574133
> +
> +
> +/*
> + * MDCFG1:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tRCD		* 400MHz	0x5 (6)		28	0xa0000000
> + * 		* 533MHz	0x7 (8)		28	0xe0000000
> + *		* LPDDR2	0x5 (-)		28	0xa0000000
> + * tRP		* 400MHz	0x5 (6)		26	0x14000000
> + * 		* 533MHz	0x7 (8)		26	0x1c000000
> + * 		* LPDDR2	0x5 (-)		26	0x14000000
> + * tRC		* 400MHz	0x14 (21)	21	0x02800000
> + * 		* 533MHz	0x1b (28)	21	0x03600000
> + *		* LPDDR2	0x15 (-)	21	0x02a00000
> + * tRAS		* 400MHz	0x0e (15)	16	0x000e0000
> + * 		* 533MHz	0x13 (20)	16	0x00130000
> + *		* LPDDR2	0x10 (17)	16	0x00100000
> + * tRPA		*		0x1 (tRP+1)	15	0x00008000
> + *		RM rev 4: unused, read-only!	15	0x00000000
> + * tWR		* 400MHz	0x5 (6)		9	0x00000a00
> + * 		* 533MHz	0x7 (8)		9	0x00000e00
> + *		* LPDDR2	0x5 (6)		9	0x00000a00
> + * tMRD		* 		0x3 (4)		5	0x00000060
> + * max(tMRR,tMRW) LPDDR2	0x4 (5)		5	0x00000080
> + * tCWL		* 400MHz	0x3 (5)		0	0x00000003
> + *		* 533MHz	0x4 (6)		0	0x00000004
> + * tWL		* LPDDR2	0x2 (3)		0	0x00000002
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG1_400MHZ					0xb68e8a63
> +#define MDCFG1_533MHZ					0xff738e64
> +#define MDCFG1_LPDDR2					0x00100a82
> +
> +/*
> + * MDCFG2:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tDLLK	*		0x1ff (512)	16	0x01ff0000
> + *		LPDDR2		0x0c7 (-)	16	0x00c70000
> + * tRTP		*		0x3 (4)		6	0x000000c0
> + *		LPDDR2		0x2 (3)		6	0x00000080
> + * tWTR		*		0x3 (4)		3	0x00000018
> + *		LPDDR2		0x2 (3)		3	0x00000010
> + * tRRD		* 400MHz	0x3 (4)		0	0x00000003
> + * 		* 533MHz	0x5 (6)		0	0x00000005
> + *		LPDDR2		0x3 (4)		0	0x00000003
> + * ----------------------------------------------------------------
> + */
> +#define MDCFG2_400MHZ					0x01ff00db
> +#define MDCFG2_533MHZ					0x01ff00dd
> +#define MDCFG2_LPDDR2					0x00000093
> +
> +/*
> + * MDOR:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tXPR		2Gb 400MHz	0x43 (68)	16	0x00430000
> + * 		4Gb 400MHz	0x7b (124)	16	0x007b0000
> + * 		8Gb 400MHz	0x8f (144)	16	0x008f0000
> + *		2Gb 533MHz	0x5b (92)	16	0x005b0000
> + *		4Gb 533MHz	0xa5 (166)	16	0x00a50000
> + *		8Gb 533MHz	0xc0 (193)	16	0x00c00000
> + *		* LPDDR2	0x9f (-)	16	0x009f0000
> + * SDE_to_RST	*		0x10 (14)	8	0x00001000
> + *		* LPDDR2	0xe (-)		8	0x00000e00
> + * RST_to_CKE	*		0x23 (33)	0	0x00000023
> + * 		* LPDDR2	0x10 (14)	0	0x00000010
> + * ----------------------------------------------------------------
> + */
> +#define MDOR_2G_400MHZ					0x00431023
> +#define MDOR_4G_400MHZ					0x007b1023
> +#define MDOR_8G_400MHZ					0x008f1023
> +#define MDOR_2G_533MHZ					0x005b1023
> +#define MDOR_4G_533MHZ					0x00a51023
> +#define MDOR_8G_533MHZ					0x00c01023
> +#define MDOR_LPDDR2					0x009f0e10
> +
> +/*
> + * MDOTC ODT delays:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * tAOFPD	* 400MHz	0x3 (4)		27	0x18000000
> + * 		* 533MHz	0x4 (5)		27	0x20000000
> + * tAONPD	* 400MHz	0x3 (4)		24	0x03000000
> + * 		* 533MHz	0x4 (5)		24	0x04000000
> + * tANPD	* 400MHz	0x3 (4)		20	0x00300000
> + * 		* 533MHz	0x4 (5)		20	0x00400000
> + * tAXPD	* 400MHz	0x3 (4)		16	0x00030000
> + * 		* 533MHz	0x4 (5)		16	0x00040000
> + * tODTLon	* 400MHz	0x3 (3)		12	0x00003000
> + * 		* 533MHz	0x4 (4)		12	0x00004000
> + * tODTidle_off	* 400MHz	0x3 (3)		4	0x00000030
> + * 		* 533MHz	0x4 (4) 	4	0x00000040
> + * ----------------------------------------------------------------
> + */
> +#define MDOTC_400MHZ					0x1b333030
> +#define MDOTC_533MHZ					0x24444040
> +/* LPDDR2: not relevant, leave in reset state!! */
> +
> +/*
> + * MDPDC:
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * PRCT_1	*		0x0		28	0x00000000
> + * PRCT_0	*		0x0		24	0x00000000
> + * tCKE		*		0x2 (3)		16	0x00020000
> + * PWDT_1	*		0x5 (256)	12	0x00005000
> + * PWDT_0	*		0x5 (256)	8	0x00000500
> + * SLOW_PD	*		0x0 (0)		7	0x00000000
> + * BOTH_CS_PD	*		0x1 (1)		6	0x00000040
> + * tCKSRX	* 400MHz	0x5 (5)		3	0x00000028
> + * 		* 533MHz	0x6 (6)		3	0x00000030
> + * tCKSRE	* 400MHz	0x5 (5)		0	0x00000005
> + * 		* 533MHz	0x6 (6)		0	0x00000006
> + * ----------------------------------------------------------------
> + */
> +#define MDPDC_400MHZ					0x0002556d
> +#define MDPDC_533MHZ					0x00025576
> +#define MDPDC_LPDDR2					0x00025576 /* FIXME? */
> +
> +/*
> + * MDCTL:
> + * 2Gb: CS0 enable, 14bit ROW, 10bit COL, BL=8, 64bit data
> + *
> + * Par. 	Chip		VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * SDE_0	*		0x1 (1)		31	0x80000000
> + * SDE_1	*		0x0 (0)		30	0x00000000
> + * SDE_1	LPDDR2		0x1 (1)		30	0x40000000
> + * ROW		2Gb *		0x3 (14)	24	0x03000000
> + * 		4Gb *		0x4 (15)	24	0x04000000
> + * 		8Gb *		0x5 (16)	24	0x05000000
> + *		* LPDDR2	0x3 (14)	24	0x03000000
> + * COL		*		0x1 (10)	20	0x00100000
> + * BL		* 		0x1 (8)		19	0x00080000
> + * 		LPDDR2		0x0 (4)		19	0x00000000
> + * DSIZ		64bit		0x2 (64)	16	0x00020000
> + * DSIZ		32bit		0x1 (32)	16	0x00010000
> + * DSIZ		16bit		0x0 (16)	16	0x00000000
> + * ----------------------------------------------------------------
> + */
> +#define MDCTL_2G_16BIT					0x83180000
> +#define MDCTL_2G_32BIT					0x83190000
> +#define MDCTL_2G					0x831a0000
> +#define MDCTL_4G_16BIT					0x84180000
> +#define MDCTL_4G_32BIT					0x84190000
> +#define MDCTL_4G					0x841a0000
> +#define MDCTL_8G					0x851a0000
> +#define MDCTL_LPDDR2					0x83110000
> +
> +
> +/*
> + * MDASP Address space partitioning:
> + *
> + * At 0.25GiB, internal address space ends. Above that DDR3 should be
> + * located. The CS1/CS0 split-line determines where:
> + *
> + * For 1x2Gb chips (0.25GiB total on CS0): 0.5GiB
> + * For 2x4Gb chips (1GiB total on CS0): 1.25GiB
> + * For 4x2Gb chips (1GiB total on CS0): 1.25GiB
> + * For 4x4Gb chips (2GiB total on CS0): 2.25GiB
> + * For 4x8Gb chips (4GiB total on CS0): 4.00GiB (maximum possible,
> + *                      shadowed partially by internal address space).
> + *
> + * Register value	Split
> + * ---------------------------
> + * 0x0000000f		0.5GiB
> + * 0x00000017		0.75GiB
> + * 0x00000027		1.25GiB
> + * 0x00000047		2.25GiB
> + * 0x0000007f		4.00GiB
> + */
> +#define MDASP_512MIB	0x0000000f
> +#define MDASP_768MIB	0x00000017
> +#define MDASP_1GIB25	0x00000027
> +#define MDASP_2GIB25	0x00000047
> +#define MDASP_4GIB00	0x0000007f
> +
> +/*
> + * Initialize DDR3 chips
> + * MDSCR: Value = 0xvvvv803n, with 0xvvvv = value, n = Reg. number (BA)
> + */
> +/*
> + * DDR3 chip MR2, n = 2:
> + *
> + * Par. 	Chip		VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Rtt(wr)	*		0x0 (disabled)	10, 9	0x0000
> + * SR-Temp.	*		0x1 (Extended)	7	0x0080
> + * Auto-SR	*		0x0 (Manual)	6	0x0000
> + * CWL		* 400MHz	0x0 (5tCK)	5, 4, 3	0x0000
> + * 		* 533MHz	0x1 (6tCK)	5, 4, 3	0x0008
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR2_400MHZ_RTT_OFF				0x00808032
> +#define DDR3_MR2_533MHZ_RTT_OFF				0x00888032
> +#define DDR3_MR2_400MHZ_RTT_120				0x04808032
> +#define DDR3_MR2_533MHZ_RTT_120				0x04888032
> +
> +/*
> + * DDR3 chip MR1, n = 1:
> + *
> + * Par. 		Chip	VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Qoff			*	0x0 (enabled)	12	0x0000
> + * TDQS			*	0x0 (disabled)	11	0x0000
> + * Rtt			*	0x0 (disabled)	9, 6, 2	0x0000
> + * Write-levelling	*	0x0 (disable)	7	0x0000
> + * ODS			*	0x0 (RZQ/6=40)	5, 1	0x0000
> + * DLL			*	0x0 (enable)	0	0x0000
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR1_RTT_OFF_ODS_40				0x00008031
> +#define DDR3_MR1_RTT_120_ODS_40				0x00408031
> +#define DDR3_MR1_RTT_60_ODS_40				0x00048031
> +#define DDR3_MR1_RTT_OFF_ODS_34				0x00028031
> +#define DDR3_MR1_RTT_120_ODS_34				0x00428031
> +#define DDR3_MR1_RTT_60_ODS_34				0x00068031
> +
> +/*
> + * DDR3 chip MR0, n = 0:
> + *
> + * Par. 		Chip	VALUE		BITS	  vvvv
> + * ----------------------------------------------------------------
> + * Precharge PD		*	0x1 (fast exit)	12	0x1000
> + * WR			400MHz	0x2 (6)		11,10,9	0x0400
> + * 			533MHz	0x4 (8)		11,10,9 0x0800
> + * DLL reset		*	0x1 (Yes)	8	0x0100
> + * CL			400MHz	0x4 (6)		6,5,4,2	0x0020
> + * 			533MHz	0x6 (7)		6,5,4,2 0x0030
> + * 			533MHz	0x8 (8)		6,5,4,2 0x0040
> + * RD burst type	*	0x0 (seq.)	3	0x0000
> + * BL			*	0x0 (BL8)	0	0x0000
> + * ----------------------------------------------------------------
> + */
> +#define DDR3_MR0_400MHZ					0x15208030
> +#define DDR3_MR0_533MHZ_CL7				0x19308030
> +#define DDR3_MR0_533MHZ_CL8				0x19408030
> +
> +
> +/*
> + * MDREF:
> + * REF_SEL (bit 14,15): 0 (64kHz, needed for high-temp.)
> + * REFR (bit 11, 12, 13): 0x3 (4 refreshes) -> 0x00001800
> + * 			  0x7 (8 refreshes) -> 0x00003800
> + */
> +#define MDREF_64KHZ 0x00001800
> +#define MDREF_32KHZ 0x00007800
> +
> +/* MPODTCTRL */
> +#define MPODTCTRL_ODT_OFF 0x00000007
> +#define MPODTCTRL_ODT_120 0x00011117
> +#define MPODTCTRL_ODT_60  0x00022227
> +#define MPODTCTRL_ODT_40  0x00033337
> +
> +/*
> + * MPDGCTRL0:
> + *
> + * Channel 0:
> + *
> + * Par. 		Chip	VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * RST_RD_FIFO		*	0		31	0x00000000
> + * DG_CMP_CYC		*	1		30	0x40000000
> + * DG_DIS		*	0		29	0x00000000
> + * HW_DG_EN		*	0		28	0x00000000
> + * DG_HC_DEL1		400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_EXT_UP		*	0		23	0x00000000
> + * DG_DL_ABS_OFFS1	400MHz	0x35		16	0x00350000
> + * 			533MHz	0x4b		16	0x004b0000
> + * DG_HC_DEL0		400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS0	400MHz	0x35		0	0x00000031
> + * 			533MHz	0x4b		0	0x00000050
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL0_CH0_400MHZ				0x42350231
> +#define MPDGCTRL0_CH0_533MHZ				0x434b0350
> +/*
> + *
> + * Channel 1:
> + *
> + * DG_HC_DEL1 (5)	400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS1 (5)	400MHz	0x35		16	0x00350000
> + * 			533MHz	0x4b		16	0x004b0000
> + * DG_HC_DEL0 (4)	400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS0 (4)	400MHz	0x35		0	0x00000031
> + * 			533MHz	0x4b		0	0x00000050
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL0_CH1_400MHZ				0x42350231
> +#define MPDGCTRL0_CH1_533MHZ				0x434b0350
> +
> +/*
> + * MPDGCTRL1:
> + *
> + * Channel 0:
> + *
> + * Par. 		Chip	VALUE		SHIFT	Reg. field
> + * ----------------------------------------------------------------
> + * DG_HC_DEL3		400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS3	400MHz	0x1a		16	0x001a0000
> + * 			533MHz	0x4c		16	0x004c0000
> + * DG_HC_DEL2		400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS2	400MHz	0x18		0	0x00000018
> + * 			533MHz	0x59		0	0x00000059
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL1_CH0_400MHZ				0x021a0218
> +#define MPDGCTRL1_CH0_533MHZ				0x034c0359
> +/*
> + *
> + * Channel 1:
> + *
> + * DG_HC_DEL3 (7)	400MHz	2		24	0x02000000
> + * 			533MHz	3		24	0x03000000
> + * DG_DL_ABS_OFFS3 (7)	400MHz	0x1a		16	0x001a0000
> + * 			533MHz	0x65		16	0x00650000
> + * DG_HC_DEL2 (6)	400MHz	2		8	0x00000200
> + * 			533MHz	3		8	0x00000300
> + * DG_DL_ABS_OFFS2 (6)	400MHz	0x18		0	0x00000018
> + * 			533MHz	0x48		0	0x00000048
> + * ----------------------------------------------------------------
> + */
> +#define MPDGCTRL1_CH1_400MHZ				0x021a0218
> +#define MPDGCTRL1_CH1_533MHZ				0x03650348
> diff --git a/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
> new file mode 100644
> index 0000000000..f60d37f63e
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/padsetup-dl.imxcfg
> @@ -0,0 +1,70 @@
> +
> +/*
> + * Some defines for PAD setup:
> + * Unfortunately we don't have a powerful pre-processor, so we need to
> + * define explicit 32-bit hex values.
> + */
> +#define PAD_DSE_48 0x00000028
> +#define PAD_DSE_40 0x00000030
> +
> +#define PAD_DIFF_IN_DSE_48 0x00020028
> +#define PAD_DIFF_IN_DSE_40 0x00020030
> +#define PAD_DIFF_IN_DSE_34 0x00020038
> +
> +/* Disable ISB LED ASAP */
> +wm 32 0x020e04a8 0x000130b0
> +
> +#define PAD_SDQS PAD_DSE_48
> +wm 32 0x020e04bc PAD_SDQS /* SDQS0_P */
> +wm 32 0x020e04c0 PAD_SDQS /* SDQS1_P */
> +wm 32 0x020e04c4 PAD_SDQS /* SDQS2_P */
> +wm 32 0x020e04c8 PAD_SDQS /* SDQS3_P */
> +wm 32 0x020e04cc PAD_SDQS /* SDQS4_P */
> +wm 32 0x020e04d0 PAD_SDQS /* SDQS5_P */
> +wm 32 0x020e04d4 PAD_SDQS /* SDQS6_P */
> +wm 32 0x020e04d8 PAD_SDQS /* SDQS7_P */
> +
> +#define PAD_DQM_CTRL PAD_DIFF_IN_DSE_48
> +#define PAD_SDCLK    PAD_DIFF_IN_DSE_40
> +wm 32 0x020e0470 PAD_DQM_CTRL /* DQM0 */
> +wm 32 0x020e0474 PAD_DQM_CTRL /* DQM1 */
> +wm 32 0x020e0478 PAD_DQM_CTRL /* DQM2 */
> +wm 32 0x020e047c PAD_DQM_CTRL /* DQM3 */
> +wm 32 0x020e0480 PAD_DQM_CTRL /* DQM4 */
> +wm 32 0x020e0484 PAD_DQM_CTRL /* DQM5 */
> +wm 32 0x020e0488 PAD_DQM_CTRL /* DQM6 */
> +wm 32 0x020e048c PAD_DQM_CTRL /* DQM7 */
> +wm 32 0x020e0464 PAD_DQM_CTRL /* CAS */
> +wm 32 0x020e0490 PAD_DQM_CTRL /* RAS */
> +wm 32 0x020e04ac PAD_SDCLK /* SDCLK0_P */
> +wm 32 0x020e04b0 PAD_SDCLK /* SDCLK1_P */
> +wm 32 0x020e0494 PAD_DQM_CTRL /* RESET */
> +
> +/* 0x00003000 = 100k PU */
> +wm 32 0x020e04a4 0x00003000 /* SDCKE0 */
> +wm 32 0x020e04a8 0x00003000 /* SDCKE1 */
> +wm 32 0x020e04a0 0x00000000 /* SDBA2: disable PU */
> +
> +/* 0x00003030 = PU + 40 Ohm drive */
> +wm 32 0x020e04b4 0x00003030 /* ODT0 */
> +wm 32 0x020e04b8 0x00003030 /* ODT1 */
> +
> +#define PAD_BxDS PAD_DSE_48
> +wm 32 0x020e0764 PAD_BxDS /* B0DS */
> +wm 32 0x020e0770 PAD_BxDS /* B1DS */
> +wm 32 0x020e0778 PAD_BxDS /* B2DS */
> +wm 32 0x020e077c PAD_BxDS /* B3DS */
> +wm 32 0x020e0780 PAD_BxDS /* B4DS */
> +wm 32 0x020e0784 PAD_BxDS /* B5DS */
> +wm 32 0x020e078c PAD_BxDS /* B6DS */
> +wm 32 0x020e0748 PAD_BxDS /* B7DS */
> +wm 32 0x020e074c PAD_DSE_48 /* ADDDS */
> +
> +wm 32 0x020e0750 0x00020000 /* DDRMODE_CTL */
> +wm 32 0x020e0754 0x00000000 /* DDRPKE disable PU */
> +wm 32 0x020e0760 0x00020000 /* DDRMODE data */
> +
> +wm 32 0x020e076c 0x00000030 /* CTLDS 40 Ohm */
> +
> +wm 32 0x020e0774 0x000c0000 /* DDR_TYPE DDR3 */
> +
> diff --git a/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
> new file mode 100644
> index 0000000000..f5fa3e8d28
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/padsetup-q.imxcfg
> @@ -0,0 +1,69 @@
> +
> +/*
> + * Some defines for PAD setup:
> + * Unfortunately we don't have a powerful pre-processor, so we need to
> + * define explicit 32-bit hex values.
> + */
> +#define PAD_DSE_48 0x00000028
> +#define PAD_DSE_40 0x00000030
> +
> +#define PAD_DIFF_IN_DSE_48 0x00020028
> +#define PAD_DIFF_IN_DSE_40 0x00020030
> +#define PAD_DIFF_IN_DSE_34 0x00020038
> +
> +/* Disable ISB LED ASAP */
> +wm 32 0x020e0420 0x000130b0
> +
> +#define PAD_SDQS PAD_DSE_48
> +wm 32 0x020e05a8 PAD_SDQS /* SDQS0_P */
> +wm 32 0x020e05b0 PAD_SDQS /* SDQS1_P */
> +wm 32 0x020e0524 PAD_SDQS /* SDQS2_P */
> +wm 32 0x020e051c PAD_SDQS /* SDQS3_P */
> +wm 32 0x020e0518 PAD_SDQS /* SDQS4_P */
> +wm 32 0x020e050c PAD_SDQS /* SDQS5_P */
> +wm 32 0x020e05b8 PAD_SDQS /* SDQS6_P */
> +wm 32 0x020e05c0 PAD_SDQS /* SDQS7_P */
> +
> +#define PAD_DQM_CTRL PAD_DIFF_IN_DSE_48
> +#define PAD_SDCLK    PAD_DIFF_IN_DSE_40
> +wm 32 0x020e05ac PAD_DQM_CTRL /* DQM0 */
> +wm 32 0x020e05b4 PAD_DQM_CTRL /* DQM1 */
> +wm 32 0x020e0528 PAD_DQM_CTRL /* DQM2 */
> +wm 32 0x020e0520 PAD_DQM_CTRL /* DQM3 */
> +wm 32 0x020e0514 PAD_DQM_CTRL /* DQM4 */
> +wm 32 0x020e0510 PAD_DQM_CTRL /* DQM5 */
> +wm 32 0x020e05bc PAD_DQM_CTRL /* DQM6 */
> +wm 32 0x020e05c4 PAD_DQM_CTRL /* DQM7 */
> +wm 32 0x020e056c PAD_DQM_CTRL /* CAS */
> +wm 32 0x020e0578 PAD_DQM_CTRL /* RAS */
> +wm 32 0x020e0588 PAD_SDCLK /* SDCLK0_P */
> +wm 32 0x020e0594 PAD_SDCLK /* SDCLK1_P */
> +wm 32 0x020e057c PAD_DQM_CTRL /* RESET */
> +
> +/* 0x00003000 = 100k PU */
> +wm 32 0x020e0590 0x00003000 /* SDCKE0 */
> +wm 32 0x020e0598 0x00003000 /* SDCKE1 */
> +wm 32 0x020e058c 0x00000000 /* SDBA2: disable PU */
> +
> +/* 0x00003030 = PU + 40 Ohm drive */
> +wm 32 0x020e059c 0x00003030 /* ODT0 */
> +wm 32 0x020e05a0 0x00003030 /* ODT1 */
> +
> +#define PAD_BxDS PAD_DSE_48
> +wm 32 0x020e0784 PAD_BxDS /* B0DS */
> +wm 32 0x020e0788 PAD_BxDS /* B1DS */
> +wm 32 0x020e0794 PAD_BxDS /* B2DS */
> +wm 32 0x020e079c PAD_BxDS /* B3DS */
> +wm 32 0x020e07a0 PAD_BxDS /* B4DS */
> +wm 32 0x020e07a4 PAD_BxDS /* B5DS */
> +wm 32 0x020e07a8 PAD_BxDS /* B6DS */
> +wm 32 0x020e0748 PAD_BxDS /* B7DS */
> +wm 32 0x020e074c PAD_DSE_48 /* ADDDS */
> +
> +wm 32 0x020e0750 0x00020000 /* DDRMODE_CTL */
> +wm 32 0x020e0758 0x00000000 /* DDRPKE disable PU */
> +wm 32 0x020e0774 0x00020000 /* DDRMODE data */
> +
> +wm 32 0x020e078c 0x00000030 /* CTLDS 40 Ohm */
> +
> +wm 32 0x020e0798 0x000c0000 /* DDR_TYPE DDR3 */
> diff --git a/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
> new file mode 100644
> index 0000000000..e36601942d
> --- /dev/null
> +++ b/arch/arm/boards/protonic-imx6/padsetup-ul.imxcfg
> @@ -0,0 +1,42 @@
> +
> +/*
> + * Some defines for PAD setup:
> + * Unfortunately we don't have a powerful pre-processor, so we need to
> + * define explicit 32-bit hex values.
> + */
> +
> +#define PAD_DSE_48 0x00000028
> +#define PAD_DSE_40 0x00000030
> +
> +#define PAD_SDQS PAD_DSE_48
> +wm 32 0x020e0280 PAD_SDQS /* SDQS0_P */
> +wm 32 0x020e0284 PAD_SDQS /* SDQS1_P */
> +
> +#define PAD_DQM_CTRL PAD_DSE_48
> +#define PAD_SDCLK PAD_DSE_48
> +
> +wm 32 0x020e0244 PAD_DQM_CTRL /* DQM0 */
> +wm 32 0x020e0248 PAD_DQM_CTRL /* DQM1 */
> +wm 32 0x020e024c PAD_DQM_CTRL /* RAS */
> +wm 32 0x020e0250 PAD_DQM_CTRL /* CAS */
> +wm 32 0x020e027c PAD_SDCLK /* SDCLK0_P */
> +wm 32 0x020e0288 PAD_DQM_CTRL /* RESET */
> +
> +wm 32 0x020e0270 0x00000000 /* SDBA2: disable PU */
> +
> +wm 32 0x020e0260 PAD_DSE_48 /* ODT0 */
> +wm 32 0x020e0264 PAD_DSE_48 /* ODT1 */
> +
> +#define PAD_BxDS PAD_DSE_48
> +wm 32 0x020e0498 PAD_BxDS /* B0DS */
> +wm 32 0x020e04a4 PAD_BxDS /* B1DS */
> +
> +wm 32 0x020e0490 PAD_DSE_48  /* ADDDS */
> +
> +wm 32 0x020e0494 0x00020000 /* DDRMODE_CTL */
> +wm 32 0x020e04ac 0x00000000 /* DDRPKE disable PU */
> +wm 32 0x020e04b0 0x00020000 /* DDRMODE data */
> +
> +wm 32 0x020e04a0 0x00000030 /* CTLDS 40 Ohm */
> +
> +wm 32 0x020e04b4 0x000c0000 /* DDR_TYPE DDR3 */
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 1aeaa61e01..8afeb45016 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -74,6 +74,22 @@ lwl-dtb-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7) += imx7d-phyboard-zeta.dtb.o
>  lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_IMX8MQ) += imx8mq-phytec-phycore-som.dtb.o
>  lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3) += armada-xp-openblocks-ax3-4-bb.dtb.o
>  lwl-dtb-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_A6) += kirkwood-openblocks_a6-bb.dtb.o
> +lwl-dtb-$(CONFIG_MACH_PROTONIC_IMX6) += \
> +	imx6q-prti6q.dtb.o \
> +	imx6q-prtwd2.dtb.o \
> +	imx6q-vicut1.dtb.o \
> +	imx6dl-alti6p.dtb.o \
> +	imx6dl-lanmcu.dtb.o \
> +	imx6dl-plybas.dtb.o \
> +	imx6dl-plym2m.dtb.o \
> +	imx6dl-prtmvt.dtb.o \
> +	imx6dl-prtrvt.dtb.o \
> +	imx6dl-prtvt7.dtb.o \
> +	imx6dl-victgo.dtb.o \
> +	imx6dl-vicut1.dtb.o \
> +	imx6qp-prtwd3.dtb.o \
> +	imx6qp-vicutp.dtb.o \
> +	imx6ul-prti6g.dtb.o
>  lwl-dtb-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
>  lwl-dtb-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
>  lwl-dtb-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
> diff --git a/arch/arm/dts/imx6dl-alti6p.dts b/arch/arm/dts/imx6dl-alti6p.dts
> new file mode 100644
> index 0000000000..8d53100bea
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-alti6p.dts
> @@ -0,0 +1,118 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2016 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +
> +/ {
> +	model = "Altesco I6P Board";
> +	compatible = "alt,alti6p", "fsl,imx6dl";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x40000000>;
> +	};
> +};
> +
> +&hdmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hdmi>;
> +	ddc-i2c-bus = <&i2c1>;
> +	status = "okay";
> +};
> +
> +/* DDC */
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	rtc: pcf8563@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	clock-frequency = <50000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c4 {
> +	clock-frequency = <50000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c4>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
> +			MX6QDL_PAD_EIM_D21__USB_OTG_OC		0x1b0b0
> +			/* power enable, high active */
> +			MX6QDL_PAD_EIM_D22__GPIO3_IO22		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_hdmi: hdmigrp {
> +		fsl,pins = <
> +			/* NOTE: DDC is done via I2C2, so DON'T configure DDC pins for HDMI! */
> +			MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL3__I2C2_SCL		0x4001b8b1
> +			MX6QDL_PAD_KEY_ROW3__I2C2_SDA		0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_NANDF_CS3__I2C4_SDA		0x4001f8b1
> +			MX6QDL_PAD_NANDF_WP_B__I2C4_SCL		0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22   0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23   0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-lanmcu.dts b/arch/arm/dts/imx6dl-lanmcu.dts
> new file mode 100644
> index 0000000000..b05ed9c3ba
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-lanmcu.dts
> @@ -0,0 +1,434 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2019 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	model = "LANMCU";
> +	compatible = "lan,lanmcu", "fsl,imx6dl";
> +
> +	chosen {
> +		stdout-path = &uart4;
> +	};
> +
> +	memory {
> +		reg = <0x10000000 0x10000000>;
> +	};
> +
> +	reg_usb_otg_vbus: otg-vbus-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "regulator-OTG-VBUS";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio3 22 0>;
> +		enable-active-high;
> +	};
> +
> +	usdhc2_pwrseq: usdhc2_pwrseq {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wlan_npd>;
> +		compatible = "mmc-pwrseq-simple";
> +		reset-gpios = <&gpio6 10 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	display: display0 {
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_ipu1_disp>;
> +		compatible = "fsl,imx-parallel-display";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		interface-pix-fmt = "bgr666";
> +		status = "okay";
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			display_in: endpoint {
> +				remote-endpoint = <&ipu1_di0_disp0>;
> +			};
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			display_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +
> +	panel {
> +		compatible = "edt,etm0700g0bdh6";
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&display_out>;
> +			};
> +		};
> +	};
> +
> +	backlight_lcd: backlight_lcd {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 5000000>;
> +		brightness-levels = <0 5 7 9 12 15 20 27 35 47 62 81 107 142 188 248
> +			     328 433 573 757 1000>;
> +		default-brightness-level = <20>;
> +		status = "okay";
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		debug0 {
> +			label = "debug0";
> +			gpios = <&gpio1 8 0>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	prti6q {
> +		pinctrl_hog: hoggrp {
> +			fsl,pins = <
> +				/* HW revision detect */
> +				MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 0x1b0b0 /* REV_ID0 */
> +				MX6QDL_PAD_SD4_DAT1__GPIO2_IO09 0x1b0b0 /* REV_ID1 */
> +				MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0 /* REV_ID2 */
> +				MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b0 /* REV_ID3 */
> +				MX6QDL_PAD_SD4_DAT4__GPIO2_IO12 0x1b0b0 /* REV_ID4 */
> +			>;
> +		};
> +
> +		pinctrl_usbotg: usbotggrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D21__USB_OTG_OC  0x1b0b0
> +				/* power enable, high active */
> +				MX6QDL_PAD_EIM_D22__GPIO3_IO22  0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_ipu1_disp: ipudisp1grp {
> +			fsl,pins = <
> +				/* DSE 0x30 => 25 Ohm, 0x20 => 37 Ohm, 0x10 => 75 Ohm */
> +				MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0x30
> +				MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02        0x30
> +				MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03        0x30
> +				MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15       0x30
> +				MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00   0x30
> +				MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01   0x30
> +				MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02   0x30
> +				MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03   0x30
> +				MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04   0x30
> +				MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05   0x30
> +				MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06   0x30
> +				MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07   0x30
> +				MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08   0x30
> +				MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09   0x30
> +				MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10  0x30
> +				MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11  0x30
> +				MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12  0x30
> +				MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13  0x30
> +				MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14  0x30
> +				MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15  0x30
> +				MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16  0x30
> +				MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17  0x30
> +			>;
> +		};
> +
> +		pinctrl_enet: enetgrp {
> +			fsl,pins = <
> +				/* MX6QDL_ENET_PINGRP4 */
> +				MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +				MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +				MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +				MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +				MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +				MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +				MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +				MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +				MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +
> +				MX6QDL_PAD_GPIO_16__ENET_REF_CLK        0x1b0b0
> +				/* Phy reset */
> +				MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22        0x1b0b0
> +				/* nINTRP */
> +				MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23        0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_pwm1: pwm1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_9__PWM1_OUT             0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_leds: ledsgrp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_8__GPIO1_IO08           0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_wlan_npd: wlan_npd {
> +			fsl,pins = <
> +				/* WL_REG_ON */
> +				MX6QDL_PAD_NANDF_RB0__GPIO6_IO10        0x13069
> +			>;
> +		};
> +
> +		pinctrl_uart2: uart2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D28__GPIO3_IO28		0x130b1
> +			>;
> +		};
> +
> +		pinctrl_uart3: uart3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
> +				MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x130b1
> +			>;
> +		};
> +
> +		pinctrl_uart4: uart4grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL0__UART4_TX_DATA      0x1b0b1
> +				MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA      0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_CSI0_DAT8__I2C1_SDA	0x4001f8b1
> +				MX6QDL_PAD_CSI0_DAT9__I2C1_SCL	0x4001f8b1
> +			>;
> +		};
> +
> +		pinctrl_i2c3: i2c3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_GPIO_5__I2C3_SCL             0x4001b8b1
> +				MX6QDL_PAD_GPIO_6__I2C3_SDA             0x4001b8b1
> +			>;
> +		};
> +
> +		pinctrl_usdhc1: usdhc1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
> +				MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
> +				MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
> +				MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
> +				MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
> +				MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
> +				MX6QDL_PAD_GPIO_1__SD1_CD_B		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_usdhc2: usdhc2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +				MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +				MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +				MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +				MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +				MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +			>;
> +		};
> +
> +		pinctrl_usdhc3: usdhc3grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
> +				MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
> +				MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
> +				MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
> +				MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
> +			>;
> +		};
> +
> +		pinctrl_can1: can1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x80000000
> +				MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x80000000
> +			>;
> +		};
> +
> +		pinctrl_can2: can2grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX	0x80000000
> +				MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX	0x80000000
> +			>;
> +		};
> +
> +		pinctrl_ts_edt: ts1grp {
> +			fsl,pins = <
> +				MX6QDL_PAD_EIM_D20__GPIO3_IO20          0x1b0b0
> +			>;
> +		};
> +	};
> +};
> +
> +&ipu1_di0_disp0 {
> +	remote-endpoint = <&display_in>;
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	linux,rs485-enabled-at-boot-time;
> +	rts-gpios = <&gpio3 28 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	linux,rs485-enabled-at-boot-time;
> +	rts-gpios = <&gpio3 30 GPIO_ACTIVE_HIGH>;
> +	status = "okay";
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	vbus-supply = <&reg_usb_otg_vbus>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	rtc: pcf8563@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +
> +	touchscreen: edt_ft5406@38 {
> +		compatible = "edt,edt-ft5406";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_ts_edt>;
> +		reg = <0x38>;
> +		interrupt-parent = <&gpio3>;
> +		interrupts = <20 IRQ_TYPE_EDGE_FALLING>;
> +
> +		touchscreen-size-x = <1792>;
> +		touchscreen-size-y = <1024>;
> +
> +		touchscreen-fuzz-x = <0>;
> +		touchscreen-fuzz-y = <0>;
> +
> +		/* Touch screen calibration */
> +		threshold = <50>;
> +		gain = <5>;
> +		offset = <10>;
> +	};
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	no-1-8-v;
> +	non-removable;
> +	mmc-pwrseq = <&usdhc2_pwrseq>;
> +	pm-ignore-notify;
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +
> +	partitions {
> +		/*
> +		 * Map a partition at the last 64k of the area available for
> +		 * the second stage bootloader.
> +		 */
> +		compatible = "fixed-partitions";
> +		#size-cells = <1>;
> +		#address-cells = <1>;
> +
> +		bootstate_backend: bootstate_backend@f0000 {
> +			reg = <0xf0000 0x10000>;
> +			label = "bootstate";
> +		};
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can1>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can2>;
> +	status = "okay";
> +};
> diff --git a/arch/arm/dts/imx6dl-plybas.dts b/arch/arm/dts/imx6dl-plybas.dts
> new file mode 100644
> index 0000000000..de0ba05e13
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-plybas.dts
> @@ -0,0 +1,186 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +
> +/ {
> +	model = "Plymovent BAS board";
> +	compatible = "ply,plybas", "fsl,imx6dl";
> +
> +	memory {
> +		reg = <0x10000000 0x10000000>;
> +	};
> +
> +	backlight_lcd {
> +		status = "disabled";
> +	};
> +
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		autorepeat;
> +		button@20 {
> +			label = "START";
> +			linux,code = <31>;
> +			gpios = <&gpio5 8 1>;
> +		};
> +		button@21 {
> +			label = "CLEAN";
> +			linux,code = <46>;
> +			gpios = <&gpio5 9 1>;
> +		};
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		debug0 {
> +			label = "debug0";
> +			gpios = <&gpio1 8 0>;
> +		};
> +
> +		debug1 {
> +			label = "debug1";
> +			gpios = <&gpio1 9 0>;
> +		};
> +
> +		light_tower1 {
> +			label = "light_tower1";
> +			gpios = <&gpio4 22 0>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		light_tower2 {
> +			label = "light_tower2";
> +			gpios = <&gpio4 23 0>;
> +		};
> +
> +		light_tower3 {
> +			label = "light_tower3";
> +			gpios = <&gpio4 24 0>;
> +		};
> +
> +		light_tower4 {
> +			label = "light_tower4";
> +			gpios = <&gpio4 25 0>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	fsl,uart-has-rtscts;
> +	linux,rs485-enabled-at-boot-time;
> +	rs485-rts-delay = <0 20>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* CAN1_SR + CAN2_SR GPIO outputs */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
> +			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13	0x13070
> +
> +			MX6QDL_PAD_EIM_D23__GPIO3_IO23	0x1b0b0 /* YACO_nIRQ */
> +			MX6QDL_PAD_EIM_D30__GPIO3_IO30	0x130b0 /* YACO_BOOT0 */
> +			MX6QDL_PAD_EIM_D31__GPIO3_IO31	0x1b0b0 /* YACO_nRESET */
> +
> +			MX6QDL_PAD_DISP0_DAT0__GPIO4_IO21	0x13070 /* BUZZER */
> +			MX6QDL_PAD_DISP0_DAT6__GPIO4_IO27	0x13070 /* ANA_OUT_SD */
> +			MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0 /* ANA_OUT_ERR */
> +
> +			MX6QDL_PAD_DISP0_DAT11__GPIO5_IO05	0x13070 /* RELAY1 */
> +			MX6QDL_PAD_DISP0_DAT12__GPIO5_IO06	0x13070 /* RELAY2 */
> +
> +			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08	0x1b0b0 /* IN1 */
> +			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x1b0b0 /* IN2 */
> +			MX6QDL_PAD_DISP0_DAT16__GPIO5_IO10	0x1b0b0 /* IN3 */
> +			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x1b0b0 /* IN4 */
> +			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x1b0b0 /* IN5 */
> +			MX6QDL_PAD_DISP0_DAT19__GPIO5_IO13	0x1b0b0 /* IN6 */
> +			MX6QDL_PAD_DISP0_DAT20__GPIO5_IO14	0x1b0b0 /* IN7 */
> +			MX6QDL_PAD_DISP0_DAT21__GPIO5_IO15	0x1b0b0 /* IN8 */
> +			MX6QDL_PAD_DISP0_DAT22__GPIO5_IO16	0x1b0b0 /* IN9 */
> +			MX6QDL_PAD_DISP0_DAT23__GPIO5_IO17	0x1b0b0 /* IN10 */
> +			MX6QDL_PAD_DI0_PIN4__GPIO4_IO20	0x1b0b0 /* IN11 */
> +			MX6QDL_PAD_DI0_PIN2__GPIO4_IO18	0x1b0b0 /* IN12 */
> +
> +			MX6QDL_PAD_DI0_PIN3__GPIO4_IO19	0x1a0b0 /* HMI */
> +
> +			/* HW revision detect */
> +			MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 0x1b0b0 /* REV_ID0 */
> +			MX6QDL_PAD_SD4_DAT1__GPIO2_IO09 0x1b0b0 /* REV_ID1 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0 /* REV_ID2 */
> +			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b0 /* REV_ID3 */
> +			MX6QDL_PAD_SD4_DAT4__GPIO2_IO12 0x1b0b0 /* REV_ID4 */
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08	0x1b0b0 /* DEBUG0 */
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09	0x1b0b0 /* DEBUG1 */
> +
> +			MX6QDL_PAD_DISP0_DAT1__GPIO4_IO22	0x13070 /* LED1 (lighttower) */
> +			MX6QDL_PAD_DISP0_DAT2__GPIO4_IO23	0x13070 /* LED2 (lighttower) */
> +			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x13070 /* LED3 (lighttower) */
> +			MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x13070 /* LED4 (lighttower) */
> +		>;
> +	};
> +
> +	/* RS485 UART */
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D26__UART2_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D27__UART2_RX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x130b1
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26	0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30	0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-plym2m.dts b/arch/arm/dts/imx6dl-plym2m.dts
> new file mode 100644
> index 0000000000..b66321fb46
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-plym2m.dts
> @@ -0,0 +1,132 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +
> +/ {
> +	model = "Plymovent M2M board";
> +	compatible = "ply,plym2m", "fsl,imx6dl";
> +
> +	memory {
> +		reg = <0x10000000 0x10000000>;
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		debug0 {
> +			label = "debug0";
> +			gpios = <&gpio1 8 0>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> +
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio5 22 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* CAN1_SR GPIO output */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
> +
> +			MX6QDL_PAD_GPIO_0__GPIO1_IO00	0x1b0b0 /* CAN1_TERM */
> +			MX6QDL_PAD_EIM_EB2__GPIO2_IO30	0x1b0b0 /* TSC_BUSY */
> +
> +			/* HW revision detect */
> +			MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 0x1b0b0 /* REV_ID0 */
> +			MX6QDL_PAD_SD4_DAT1__GPIO2_IO09 0x1b0b0 /* REV_ID1 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0 /* REV_ID2 */
> +			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b0 /* REV_ID3 */
> +			MX6QDL_PAD_SD4_DAT4__GPIO2_IO12 0x1b0b0 /* REV_ID4 */
> +		>;
> +	};
> +
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
> +			/* power enable, high active */
> +			MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_ipu1_disp: ipudisp1grp {
> +		fsl,pins = <
> +			/* DSE 0x30 => 25 Ohm, 0x20 => 37 Ohm, 0x10 => 75 Ohm */
> +			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK	0x30
> +			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15		0x30
> +			MX6QDL_PAD_DI0_PIN2__IPU1_DI0_PIN02		0x30
> +			MX6QDL_PAD_DI0_PIN3__IPU1_DI0_PIN03		0x30
> +			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00	0x30
> +			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01	0x30
> +			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02	0x30
> +			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03	0x30
> +			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04	0x30
> +			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05	0x30
> +			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06	0x30
> +			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07	0x30
> +			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08	0x30
> +			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09	0x30
> +			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10	0x30
> +			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11	0x30
> +			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12	0x30
> +			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13	0x30
> +			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14	0x30
> +			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15	0x30
> +			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16	0x30
> +			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17	0x30
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22   0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23   0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_9__PWM1_OUT	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_backlight_m2m: backlightm2mgrp {
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08	0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-prtmvt.dts b/arch/arm/dts/imx6dl-prtmvt.dts
> new file mode 100644
> index 0000000000..05fce7178f
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-prtmvt.dts
> @@ -0,0 +1,164 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +
> +/ {
> +	model = "Protonic MVT board";
> +	compatible = "prt,prtmvt", "fsl,imx6dl";
> +
> +	memory {
> +		reg = <0x10000000 0x20000000>;
> +	};
> +
> +	gpio_keys {
> +		compatible = "gpio-keys";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		autorepeat;
> +
> +		button@20 {
> +			label = "GPIO Key F1";
> +			linux,code = <59>;
> +			gpios = <&pca_gpio 0 GPIO_ACTIVE_LOW>;
> +		};
> +		button@21 {
> +			label = "GPIO Key F2";
> +			linux,code = <60>;
> +			gpios = <&pca_gpio 1 GPIO_ACTIVE_LOW>;
> +		};
> +		button@22 {
> +			label = "GPIO Key F3";
> +			linux,code = <61>;
> +			gpios = <&pca_gpio 2 GPIO_ACTIVE_LOW>;
> +		};
> +		button@23 {
> +			label = "GPIO Key F4";
> +			linux,code = <62>;
> +			gpios = <&pca_gpio 3 GPIO_ACTIVE_LOW>;
> +		};
> +		button@24 {
> +			label = "GPIO Key F5";
> +			linux,code = <63>;
> +			gpios = <&pca_gpio 4 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		// Center
> +		button@25 {
> +			label = "GPIO Key CYCLE";
> +			linux,code = <154>;
> +			gpios = <&pca_gpio 5 GPIO_ACTIVE_LOW>;
> +		};
> +		button@26 {
> +			label = "GPIO Key ESC";
> +			linux,code = <1>;
> +			gpios = <&pca_gpio 6 GPIO_ACTIVE_LOW>;
> +		};
> +		button@27 {
> +			label = "GPIO Key UP";
> +			linux,code = <103>;
> +			gpios = <&pca_gpio 7 GPIO_ACTIVE_LOW>;
> +		};
> +		button@28 {
> +			label = "GPIO Key DOWN";
> +			linux,code = <108>;
> +			gpios = <&pca_gpio 8 GPIO_ACTIVE_LOW>;
> +		};
> +		button@29 {
> +			label = "GPIO Key OK";
> +			linux,code = <0x160>;
> +			gpios = <&pca_gpio 9 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		button@2a {
> +			label = "GPIO Key F6";
> +			linux,code = <64>;
> +			gpios = <&pca_gpio 10 GPIO_ACTIVE_LOW>;
> +		};
> +		button@2b {
> +			label = "GPIO Key F7";
> +			linux,code = <65>;
> +			gpios = <&pca_gpio 11 GPIO_ACTIVE_LOW>;
> +		};
> +		button@2c {
> +			label = "GPIO Key F8";
> +			linux,code = <66>;
> +			gpios = <&pca_gpio 12 GPIO_ACTIVE_LOW>;
> +		};
> +		button@2d {
> +			label = "GPIO Key F9";
> +			linux,code = <67>;
> +			gpios = <&pca_gpio 13 GPIO_ACTIVE_LOW>;
> +		};
> +		button@2e {
> +			label = "GPIO Key F10";
> +			linux,code = <68>;
> +			gpios = <&pca_gpio 14 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	status = "disabled";
> +};
> +
> +&pcie {
> +	status = "disabled";
> +};
> +
> +&i2c1 {
> +	pca_gpio: gpio@74 {
> +		#gpio-cells = <2>;
> +		compatible = "nxp,pca9539";
> +		reg = <0x74>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_pca9539>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <5 IRQ_TYPE_LEVEL_LOW>;
> +		gpio-controller;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26	0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pca9539: pca9539 {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_19__GPIO4_IO05		0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-prtrvt.dts b/arch/arm/dts/imx6dl-prtrvt.dts
> new file mode 100644
> index 0000000000..802bd50ae6
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-prtrvt.dts
> @@ -0,0 +1,182 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "Protonic RVT board";
> +	compatible = "prt,prtrvt", "fsl,imx6dl";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x10000000>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-debug0 {
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
> +};
> +
> +&ecspi1 {
> +	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +	};
> +};
> +
> +&ecspi3 {
> +	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3>;
> +	status = "okay";
> +
> +	nfc@0 {
> +		compatible = "ti,trf7970a";
> +		reg = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_nfc>;
> +		spi-max-frequency = <2000000>;
> +		interrupts-extended = <&gpio5 14 IRQ_TYPE_LEVEL_LOW>;
> +		ti,enable-gpios = <&gpio5 12 GPIO_ACTIVE_LOW>,
> +				  <&gpio5 11 GPIO_ACTIVE_LOW>;
> +		vin-supply = <&reg_3v3>;
> +		vin-voltage-override = <3100000>;
> +		autosuspend-delay = <30000>;
> +		irq-status-read-quirk;
> +		en2-rf-quirk;
> +		t5t-rmb-extra-byte-quirk;
> +		status = "okay";
> +	};
> +};
> +
> +&i2c3 {
> +	adc@49 {
> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* nc */
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* nc */
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* can1_l */
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* can1_h */
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +
> +	rtc@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	status = "disabled";
> +};
> +
> +&vpu {
> +	status = "disabled";
> +};
> +
> +&iomuxc {
> +	pinctrl_can1phy: can1phy {
> +		fsl,pins = <
> +			/* CAN1_SR */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
> +			/* CAN1_TERM */
> +			MX6QDL_PAD_GPIO_0__GPIO1_IO00	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: ecspi1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> +			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> +			/* CS */
> +			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
> +			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
> +			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
> +			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x000b1
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_nfc: nfcgrp {
> +		fsl,pins = <
> +			/* NFC_ASK_OOK */
> +			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x100b1
> +			/* NFC_PWR_EN */
> +			MX6QDL_PAD_DISP0_DAT16__GPIO5_IO10	0x100b1
> +			/* NFC_EN2 */
> +			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x100b1
> +			/* NFC_EN */
> +			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x100b1
> +			/* NFC_MOD */
> +			MX6QDL_PAD_DISP0_DAT19__GPIO5_IO13	0x100b1
> +			/* NFC_IRQ */
> +			MX6QDL_PAD_DISP0_DAT20__GPIO5_IO14	0x100b1
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-prtvt7.dts b/arch/arm/dts/imx6dl-prtvt7.dts
> new file mode 100644
> index 0000000000..c202e6786d
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-prtvt7.dts
> @@ -0,0 +1,472 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2016 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/input/input.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	model = "Protonic VT7";
> +	compatible = "prt,prtvt7", "fsl,imx6dl";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x20000000>;
> +	};
> +
> +	backlight_lcd: backlight-lcd {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 500000>;
> +		brightness-levels = <0 20 81 248 1000>;
> +		default-brightness-level = <20>;
> +		num-interpolated-steps = <21>;
> +		power-supply = <&reg_12v_bl>;
> +		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	display {
> +		compatible = "fsl,imx-parallel-display";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_ipu1_disp>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		interface-pix-fmt = "rgb24";
> +		status = "okay";
> +
> +		port@0 {
> +			reg = <0>;
> +
> +			display_in: endpoint {
> +				remote-endpoint = <&ipu1_di0_disp0>;
> +			};
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +
> +			display_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +
> +	keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		esc {
> +			label = "GPIO Key ESC";
> +			linux,code = <KEY_ESC>;
> +			gpios = <&gpio_pca 0 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		up {
> +			label = "GPIO Key UP";
> +			linux,code = <KEY_UP>;
> +			gpios = <&gpio_pca 1 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		down {
> +			label = "GPIO Key DOWN";
> +			linux,code = <KEY_DOWN>;
> +			gpios = <&gpio_pca 4 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		enter {
> +			label = "GPIO Key Enter";
> +			linux,code = <KEY_ENTER>;
> +			gpios = <&gpio_pca 3 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		cycle {
> +			label = "GPIO Key CYCLE";
> +			linux,code = <KEY_CYCLEWINDOWS>;
> +			gpios = <&gpio_pca 2 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f1 {
> +			label = "GPIO Key F1";
> +			linux,code = <KEY_F1>;
> +			gpios = <&gpio_pca 14 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f2 {
> +			label = "GPIO Key F2";
> +			linux,code = <KEY_F2>;
> +			gpios = <&gpio_pca 13 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f3 {
> +			label = "GPIO Key F3";
> +			linux,code = <KEY_F3>;
> +			gpios = <&gpio_pca 12 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f4 {
> +			label = "GPIO Key F4";
> +			linux,code = <KEY_F4>;
> +			gpios = <&gpio_pca 11 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f5 {
> +			label = "GPIO Key F5";
> +			linux,code = <KEY_F5>;
> +			gpios = <&gpio_pca 10 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f6 {
> +			label = "GPIO Key F6";
> +			linux,code = <KEY_F6>;
> +			gpios = <&gpio_pca 5 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f7 {
> +			label = "GPIO Key F7";
> +			linux,code = <KEY_F7>;
> +			gpios = <&gpio_pca 6 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f8 {
> +			label = "GPIO Key F8";
> +			linux,code = <KEY_F8>;
> +			gpios = <&gpio_pca 7 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f9 {
> +			label = "GPIO Key F9";
> +			linux,code = <KEY_F9>;
> +			gpios = <&gpio_pca 8 GPIO_ACTIVE_LOW>;
> +		};
> +
> +		f10 {
> +			label = "GPIO Key F10";
> +			linux,code = <KEY_F10>;
> +			gpios = <&gpio_pca 9 GPIO_ACTIVE_LOW>;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-debug0 {
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +
> +	panel {
> +		compatible = "innolux,g070y2t0ec";
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&display_out>;
> +			};
> +		};
> +	};
> +
> +	reg_12v_bl: regulator-bl-12v {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_reg_12v_bl>;
> +		regulator-name = "12v-bl";
> +		regulator-min-microvolt = <12000000>;
> +		regulator-max-microvolt = <12000000>;
> +		gpio = <&gpio1 7 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +
> +	reg_1v8: regulator-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "prti6q-sgtl5000";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,widgets =
> +			"Microphone", "Microphone Jack",
> +			"Line", "Line In Jack",
> +			"Headphone", "Headphone Jack",
> +			"Speaker", "External Speaker";
> +		simple-audio-card,routing =
> +			"MIC_IN", "Microphone Jack",
> +			"LINE_IN", "Line In Jack",
> +			"Headphone Jack", "HP_OUT",
> +			"External Speaker", "LINE_OUT";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&ssi1>;
> +			system-clock-frequency = <0>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +			bitclock-master;
> +			frame-master;
> +		};
> +	};
> +};
> +
> +&clks {
> +	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
> +	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
> +};
> +
> +&ecspi2 {
> +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	status = "okay";
> +
> +	tsc@0 {
> +		compatible = "ti,tsc2046";
> +		reg = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_tsc>;
> +		spi-max-frequency = <100000>;
> +		interrupts-extended = <&gpio3 20 IRQ_TYPE_EDGE_FALLING>;
> +		pendown-gpio = <&gpio3 20 GPIO_ACTIVE_HIGH>;
> +		vcc-supply = <&reg_3v3>;
> +
> +		ti,vref-delay-usecs = /bits/ 16 <100>;
> +
> +		ti,x-min = /bits/ 16 <0>;
> +		ti,x-max = /bits/ 16 <8000>;
> +		ti,y-min = /bits/ 16 <0>;
> +		ti,y-max = /bits/ 16 <4800>;
> +		ti,x-plate-ohms = /bits/ 16 <800>;
> +		ti,y-plate-ohms = /bits/ 16 <300>;
> +		ti,pressure-max = /bits/ 16 <4095>;
> +
> +		ti,skip-samples = <2>;
> +		ti,sample-period-msecs = <10>;
> +		ti,report-period-msecs = <30>;
> +
> +		ti,filter-tolerance = <80>;
> +		ti,touch-resistance-threshold = <3500>;
> +	};
> +};
> +
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux>;
> +	status = "okay";
> +
> +	mux_ssi1 {
> +		fsl,audmux-port = <0>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN		0
> +			IMX_AUDMUX_V2_PTCR_TFSEL(2)	0
> +			IMX_AUDMUX_V2_PTCR_TCSEL(2)	0
> +			IMX_AUDMUX_V2_PTCR_TFSDIR	0
> +			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> +		>;
> +	};
> +
> +	mux_pins3 {
> +		fsl,audmux-port = <2>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
> +			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
> +		>;
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
> +};
> +
> +&i2c1 {
> +	sgtl5000: codec@a {
> +		compatible = "fsl,sgtl5000";
> +		reg = <0xa>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_codec>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&clks 201>;
> +		VDDA-supply = <&reg_3v3>;
> +		VDDIO-supply = <&reg_3v3>;
> +		VDDD-supply = <&reg_1v8>;
> +	};
> +};
> +
> +&i2c3 {
> +	rtc@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +
> +	gpio_pca: gpio@74 {
> +		compatible = "nxp,pca9539";
> +		reg = <0x74>;
> +		interrupts-extended = <&gpio4 5 IRQ_TYPE_LEVEL_LOW>;
> +		#gpio-cells = <2>;
> +		gpio-controller;
> +	};
> +};
> +
> +&ipu1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ipu1_csi0>;
> +	status = "okay";
> +};
> +
> +&ipu1_di0_disp0 {
> +	remote-endpoint = <&display_in>;
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> +
> +&snvs_pwrkey {
> +	status = "okay";
> +};
> +
> +&ssi1 {
> +	#sound-dai-cells = <0>;
> +	fsl,mode = "i2s-slave";
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	status = "disabled";
> +};
> +
> +&vpu {
> +	status = "disabled";
> +};
> +
> +&iomuxc {
> +	pinctrl_audmux: audmuxgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> +			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +		>;
> +	};
> +
> +	pinctrl_can1phy: can1phy {
> +		fsl,pins = <
> +			/* CAN1_SR */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
> +			/* CAN1_TERM */
> +			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_codec: codecgrp {
> +		fsl,pins = <
> +			/* AUDIO_nRESET */
> +			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1f0b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> +			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> +			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> +		>;
> +	};
> +
> +	pinctrl_ipu1_csi0: ipu1csi0grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT12__IPU1_CSI0_DATA12	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT13__IPU1_CSI0_DATA13	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT14__IPU1_CSI0_DATA14	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT15__IPU1_CSI0_DATA15	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT16__IPU1_CSI0_DATA16	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT17__IPU1_CSI0_DATA17	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT18__IPU1_CSI0_DATA18	0x1b0b0
> +			MX6QDL_PAD_CSI0_DAT19__IPU1_CSI0_DATA19	0x1b0b0
> +			MX6QDL_PAD_CSI0_PIXCLK__IPU1_CSI0_PIXCLK 0x1b0b0
> +			/* ITU656_nRESET */
> +			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
> +			/* ITU656_nPDN */
> +			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_ipu1_disp: ipudisp1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DI0_DISP_CLK__IPU1_DI0_DISP_CLK 0xb0
> +			MX6QDL_PAD_DI0_PIN15__IPU1_DI0_PIN15	   0xb0
> +
> +			MX6QDL_PAD_DISP0_DAT0__IPU1_DISP0_DATA00 0xb0
> +			MX6QDL_PAD_DISP0_DAT1__IPU1_DISP0_DATA01 0xb0
> +			MX6QDL_PAD_DISP0_DAT2__IPU1_DISP0_DATA02 0xb0
> +			MX6QDL_PAD_DISP0_DAT3__IPU1_DISP0_DATA03 0xb0
> +			MX6QDL_PAD_DISP0_DAT4__IPU1_DISP0_DATA04 0xb0
> +			MX6QDL_PAD_DISP0_DAT5__IPU1_DISP0_DATA05 0xb0
> +			MX6QDL_PAD_DISP0_DAT6__IPU1_DISP0_DATA06 0xb0
> +			MX6QDL_PAD_DISP0_DAT7__IPU1_DISP0_DATA07 0xb0
> +
> +			MX6QDL_PAD_DISP0_DAT8__IPU1_DISP0_DATA08 0xb0
> +			MX6QDL_PAD_DISP0_DAT9__IPU1_DISP0_DATA09 0xb0
> +			MX6QDL_PAD_DISP0_DAT10__IPU1_DISP0_DATA10 0xb0
> +			MX6QDL_PAD_DISP0_DAT11__IPU1_DISP0_DATA11 0xb0
> +			MX6QDL_PAD_DISP0_DAT12__IPU1_DISP0_DATA12 0xb0
> +			MX6QDL_PAD_DISP0_DAT13__IPU1_DISP0_DATA13 0xb0
> +			MX6QDL_PAD_DISP0_DAT14__IPU1_DISP0_DATA14 0xb0
> +			MX6QDL_PAD_DISP0_DAT15__IPU1_DISP0_DATA15 0xb0
> +
> +			MX6QDL_PAD_DISP0_DAT16__IPU1_DISP0_DATA16 0xb0
> +			MX6QDL_PAD_DISP0_DAT17__IPU1_DISP0_DATA17 0xb0
> +			MX6QDL_PAD_DISP0_DAT18__IPU1_DISP0_DATA18 0xb0
> +			MX6QDL_PAD_DISP0_DAT19__IPU1_DISP0_DATA19 0xb0
> +			MX6QDL_PAD_DISP0_DAT20__IPU1_DISP0_DATA20 0xb0
> +			MX6QDL_PAD_DISP0_DAT21__IPU1_DISP0_DATA21 0xb0
> +			MX6QDL_PAD_DISP0_DAT22__IPU1_DISP0_DATA22 0xb0
> +			MX6QDL_PAD_DISP0_DAT23__IPU1_DISP0_DATA23 0xb0
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_9__PWM1_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_reg_12v_bl: 12blgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_7__GPIO1_IO07		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_tsc: tscgrp {
> +
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b0
> +			MX6QDL_PAD_EIM_EB2__GPIO2_IO30		0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-victgo.dts b/arch/arm/dts/imx6dl-victgo.dts
> new file mode 100644
> index 0000000000..55bc4c8d41
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-victgo.dts
> @@ -0,0 +1,145 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2016 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	model = "Kverneland Tellus GO";
> +	compatible = "kvg,victgo", "fsl,imx6dl";
> +
> +	memory {
> +		reg = <0x10000000 0x20000000>;
> +	};
> +
> +	rotary-encoder {
> +		compatible = "rotary-encoder";
> +		pinctrl-0 = <&pinctrl_rotary_ch>;
> +		gpios = <&gpio2 3 0>, <&gpio2 4 0>;
> +		linux,axis = <8>; /* REL_WHEEL */
> +		rotary-encoder,steps-per-period = <4>;
> +		rotary-encoder,relative-axis;
> +		rotary-encoder,rollover;
> +		wakeup-source;
> +	};
> +
> +	rotary-button {
> +		compatible = "gpio-keys";
> +		pinctrl-0 = <&pinctrl_rotary_btn>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		autorepeat;
> +		button@0 {
> +			label = "Rotary Key";
> +			gpios = <&gpio2 05 1>;
> +			linux,code = <KEY_ENTER>;
> +			gpio-key,wakeup;
> +		};
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	phy-reset-gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	status = "disabled";
> +};
> +
> +&i2c1 {
> +	ht16k33: ht16k33@70 {
> +		compatible = "holtek,ht16k33";
> +		pinctrl-0 = <&pinctrl_ht16k33>;
> +		reg = <0x70>;
> +		refresh-rate-hz = <20>;
> +		debounce-delay-ms = <50>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <5 (IRQ_TYPE_LEVEL_HIGH | IRQ_TYPE_EDGE_RISING)>;
> +		keypad,num-rows = <12>;
> +		keypad,num-columns = <3>;
> +		linux,keymap = <
> +			MATRIX_KEY(2, 0, KEY_F6)
> +			MATRIX_KEY(3, 0, KEY_F8)
> +			MATRIX_KEY(4, 0, KEY_F10)
> +			MATRIX_KEY(5, 0, KEY_F4)
> +			MATRIX_KEY(6, 0, KEY_F2)
> +			MATRIX_KEY(2, 1, KEY_F5)
> +			MATRIX_KEY(3, 1, KEY_F7)
> +			MATRIX_KEY(4, 1, KEY_F9)
> +			MATRIX_KEY(5, 1, KEY_F3)
> +			MATRIX_KEY(6, 1, KEY_F1)
> +			>;
> +	};
> +};
> +
> +&pwm2 {
> +	status = "disabled";
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x1b0b0
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x1b0b0
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER       0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN       0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0     0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1     0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN      0x1b0b0
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK   	0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26   	0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_DISP0_DAT9__GPIO4_IO30   	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT16__ECSPI2_MOSI	0x100b1
> +			MX6QDL_PAD_DISP0_DAT17__ECSPI2_MISO	0x100b1
> +			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x100b1
> +			MX6QDL_PAD_DISP0_DAT19__ECSPI2_SCLK	0x100b1
> +		>;
> +	};
> +
> +	pinctrl_rotary_ch: rotarygrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_NANDF_D3__GPIO2_IO03	0x1b0b0 /* ROTARY_A */
> +			MX6QDL_PAD_NANDF_D4__GPIO2_IO04	0x1b0b0	/* ROTARY_B */
> +		>;
> +	};
> +
> +	pinctrl_rotary_btn: rotarygrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_NANDF_D5__GPIO2_IO05	0x1b0b0	/* ROTARY_BTN */
> +		>;
> +	};
> +
> +	pinctrl_ht16k33: ht16k33grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_19__GPIO4_IO05	0x1b0b0 /* IRQ */
> +		>;
> +	};
> +
> +	pinctrl_tsc2046e: tsc2046egrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08      0x1b0b0
> +			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09      0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6dl-vicut1.dts b/arch/arm/dts/imx6dl-vicut1.dts
> new file mode 100644
> index 0000000000..725acbefc5
> --- /dev/null
> +++ b/arch/arm/dts/imx6dl-vicut1.dts
> @@ -0,0 +1,51 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6dl.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +
> +/ {
> +	model = "Kverneland UT1 Board";
> +	compatible = "kvg,vicut1", "fsl,imx6dl";
> +
> +	memory {
> +		reg = <0x10000000 0x80000000>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP_RGMII_MD(0x1b030, 0x10030) */
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC         0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0         0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1         0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2         0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3         0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL   0x1b030
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC         0x10030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0         0x10030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1         0x10030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2         0x10030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3         0x10030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL   0x10030
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK    0x10030
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x10030
> +
> +			/* Phy reset */
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
> new file mode 100644
> index 0000000000..f0469d5f62
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-prti6q.dts
> @@ -0,0 +1,554 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6q.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/sound/fsl-imx-audmux.h>
> +
> +/ {
> +	model = "Protonic PRTI6Q board";
> +	compatible = "prt,prti6q", "fsl,imx6q";
> +
> +	chosen {
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &ecspi1, "partname:env";
> +		};
> +	};
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0xf0000000>;
> +	};
> +
> +	backlight_lcd: backlight-lcd {
> +		compatible = "pwm-backlight";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_backlight>;
> +		pwms = <&pwm1 0 5000000>;
> +		brightness-levels = <0 16 64 255>;
> +		num-interpolated-steps = <16>;
> +		default-brightness-level = <16>;
> +		power-supply = <&reg_3v3>;
> +		enable-gpios = <&gpio4 28 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	can3_25m_osc: can3-25m-osc {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		led-debug0 {
> +			function = LED_FUNCTION_STATUS;
> +			gpios = <&gpio1 8 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		led-debug1 {
> +			function = LED_FUNCTION_SD;
> +			gpios = <&gpio1 9 GPIO_ACTIVE_HIGH>;
> +			linux,default-trigger = "disk-activity";
> +		};
> +	};
> +
> +	panel {
> +		compatible = "kyo,tcg121xglp";
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			panel_in: endpoint {
> +				remote-endpoint = <&lvds0_out>;
> +			};
> +		};
> +	};
> +
> +	reg_wifi: regulator-wifi {
> +		compatible = "regulator-fixed";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_npd>;
> +		enable-active-high;
> +		gpio = <&gpio1 26 GPIO_ACTIVE_HIGH>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-min-microvolt = <1800000>;
> +		regulator-name = "regulator-WL12xx";
> +		startup-delay-us = <70000>;
> +	};
> +
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,name = "prti6q-sgtl5000";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,widgets =
> +			"Microphone", "Microphone Jack",
> +			"Line", "Line In Jack",
> +			"Headphone", "Headphone Jack",
> +			"Speaker", "External Speaker";
> +		simple-audio-card,routing =
> +			"MIC_IN", "Microphone Jack",
> +			"LINE_IN", "Line In Jack",
> +			"Headphone Jack", "HP_OUT",
> +			"External Speaker", "LINE_OUT";
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&ssi1>;
> +			system-clock-frequency = <0>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&sgtl5000>;
> +			bitclock-master;
> +			frame-master;
> +		};
> +	};
> +
> +	sound-spdif {
> +		compatible = "fsl,imx-audio-spdif";
> +		model = "imx-spdif";
> +		spdif-controller = <&spdif>;
> +		spdif-in;
> +		spdif-out;
> +	};
> +};
> +
> +&audmux {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_audmux>;
> +	status = "okay";
> +
> +	mux_ssi1 {
> +		fsl,audmux-port = <0>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN		0
> +			IMX_AUDMUX_V2_PTCR_TFSEL(2)	0
> +			IMX_AUDMUX_V2_PTCR_TCSEL(2)	0
> +			IMX_AUDMUX_V2_PTCR_TFSDIR	0
> +			IMX_AUDMUX_V2_PTCR_TCLKDIR IMX_AUDMUX_V2_PDCR_RXDSEL(2)
> +		>;
> +	};
> +
> +	mux_pins3 {
> +		fsl,audmux-port = <2>;
> +		fsl,port-config = <
> +			IMX_AUDMUX_V2_PTCR_SYN IMX_AUDMUX_V2_PDCR_RXDSEL(0)
> +			0		       IMX_AUDMUX_V2_PDCR_TXRXEN
> +		>;
> +	};
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can2>;
> +	status = "okay";
> +};
> +
> +&ecspi1 {
> +	cs-gpios = <&gpio3 19 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <20000000>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "boot";
> +			reg = <0x0 0x100000>;
> +		};
> +
> +		partition@100000 {
> +			label = "env";
> +			reg = <0x100000 0x10000>;
> +		};
> +
> +		partition@110000 {
> +			label = "spare";
> +			reg = <0x110000 0x2f0000>;
> +		};
> +	};
> +};
> +
> +&ecspi2 {
> +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>, <&gpio4 25 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2 &pinctrl_ecspi2_cs>;
> +	status = "okay";
> +
> +	can@0 {
> +		compatible = "microchip,mcp2515";
> +		reg = <0>;
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_can3>;
> +		clocks = <&can3_25m_osc>;
> +		interrupts-extended = <&gpio3 20 IRQ_TYPE_LEVEL_LOW>;
> +		spi-max-frequency = <5000000>;
> +	};
> +
> +	adc@1 {
> +		compatible = "ti,adc128s052";
> +		reg = <1>;
> +		spi-max-frequency = <2000000>;
> +		vref-supply = <&reg_3v3>;
> +	};
> +};
> +
> +&ecspi3 {
> +	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3>;
> +	status = "okay";
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii-id";
> +	phy-handle = <&rgmii_phy>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* Microchip KSZ9031RNX PHY */
> +		rgmii_phy: ethernet-phy@0 {
> +			reg = <0>;
> +			interrupts-extended = <&gpio1 28 IRQ_TYPE_LEVEL_LOW>;
> +			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +			reset-assert-us = <10000>;
> +			reset-deassert-us = <300>;
> +		};
> +	};
> +};
> +
> +&hdmi {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hdmi>;
> +	ddc-i2c-bus = <&i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	sgtl5000: audio-codec@a {
> +		compatible = "fsl,sgtl5000";
> +		reg = <0xa>;
> +		#sound-dai-cells = <0>;
> +		clocks = <&clks 201>;
> +		VDDA-supply = <&reg_3v3>;
> +		VDDIO-supply = <&reg_3v3>;
> +		VDDD-supply = <&reg_1v8>;
> +	};
> +};
> +
> +/* DDC */
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	adc@49 {
> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* can2_l */
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* can2_h */
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* can1_l */
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* can1_h */
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +};
> +
> +&pcie {
> +	status = "okay";
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&ldb {
> +	status = "okay";
> +
> +	lvds-channel@0 {
> +		status = "okay";
> +
> +		port@4 {
> +			reg = <4>;
> +
> +			lvds0_out: endpoint {
> +				remote-endpoint = <&panel_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&sata {
> +	status = "okay";
> +};
> +
> +&snvs_poweroff {
> +	status = "okay";
> +};
> +
> +&spdif {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_spdif>;
> +	status = "okay";
> +};
> +
> +&ssi1 {
> +	#sound-dai-cells = <0>;
> +	fsl,mode = "ac97-slave";
> +	status = "okay";
> +};
> +
> +&uart2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart2>;
> +	status = "okay";
> +};
> +
> +&uart5 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart5>;
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	pinctrl-0 = <&pinctrl_usbotg &pinctrl_usbotg_id>;
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	non-removable;
> +	vmmc-supply = <&reg_wifi>;
> +	cap-power-off-card;
> +	keep-power-in-suspend;
> +	status = "okay";
> +
> +	wifi {
> +		compatible = "ti,wl1271";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi>;
> +		interrupts-extended = <&gpio1 30 IRQ_TYPE_LEVEL_HIGH>;
> +		ref-clock-frequency = "38400000";
> +		tcxo-clock-frequency = "19200000";
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_audmux: audmuxgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> +			MX6QDL_PAD_CSI0_DAT7__AUD3_RXD		0x130b0
> +			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +		>;
> +	};
> +
> +	pinctrl_backlight: backlightgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT7__GPIO4_IO28	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_can2: can2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL4__FLEXCAN2_TX 0x80000000
> +			MX6QDL_PAD_KEY_ROW4__FLEXCAN2_RX 0x80000000
> +		>;
> +	};
> +
> +	pinctrl_can3: can3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D20__GPIO3_IO20		0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi1: ecspi1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D17__ECSPI1_MISO		0x100b1
> +			MX6QDL_PAD_EIM_D18__ECSPI1_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_D16__ECSPI1_SCLK		0x100b1
> +			/* CS */
> +			MX6QDL_PAD_EIM_D19__GPIO3_IO19		0x000b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> +			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> +			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi2_cs: ecspi2csgrp {
> +		fsl,pins = <
> +			/* ADC128S022 CS */
> +			MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
> +			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
> +			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
> +			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x000b1
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL	0x1b030
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL	0x10030
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK	0x10030
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
> +
> +			/* Phy reset */
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_hdmi: hdmigrp {
> +		fsl,pins = <
> +			/* NOTE: DDC is done via I2C2, so DON'T
> +			 * configure DDC pins for HDMI!
> +			 */
> +			MX6QDL_PAD_EIM_A25__HDMI_TX_CEC_LINE	0x1f8b0
> +		>;
> +	};
> +
> +	/* DDC */
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL3__I2C2_SCL	0x4001b8b1
> +			MX6QDL_PAD_KEY_ROW3__I2C2_SDA	0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_spdif: spdifgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_16__SPDIF_IN		0x1b0b0
> +			MX6QDL_PAD_GPIO_19__SPDIF_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_uart2: uart2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D26__UART2_RX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D27__UART2_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D28__UART2_DTE_CTS_B	0x1b0b1
> +			MX6QDL_PAD_EIM_D29__UART2_DTE_RTS_B	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_uart5: uart5grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL1__UART5_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_KEY_ROW1__UART5_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg_id: usbotgidgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RX_ER__USB_OTG_ID	0x1f058
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +		>;
> +	};
> +
> +	pinctrl_wifi: wifigrp {
> +		fsl,pins = <
> +			/* WL12xx IRQ */
> +			MX6QDL_PAD_ENET_TXD0__GPIO1_IO30	0x10880
> +		>;
> +	};
> +
> +	pinctrl_wifi_npd: wifinpd {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_RXD1__GPIO1_IO26	0x1b8b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6q-prtwd2.dts b/arch/arm/dts/imx6q-prtwd2.dts
> new file mode 100644
> index 0000000000..8572917865
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-prtwd2.dts
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2018 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6q.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/leds/common.h>
> +
> +/ {
> +	model = "Protonic WD2 board";
> +	compatible = "prt,prtwd2", "fsl,imx6q";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x20000000>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>;
> +	};
> +
> +	usdhc2_wifi_pwrseq: usdhc2_wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_npd>;
> +		reset-gpios = <&gpio6 10 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	/* PRTWD2 rev 1 bitbang I2C for Ethernet Switch */
> +	i2c@4 {
> +		compatible = "i2c-gpio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_i2c4>;
> +		sda-gpios = <&gpio1 22 (GPIO_ACTIVE_HIGH|GPIO_OPEN_DRAIN)>;
> +		scl-gpios = <&gpio1 31 GPIO_ACTIVE_HIGH>;
> +		i2c-gpio,delay-us = <20>;	/* ~10 kHz */
> +		i2c-gpio,scl-output-only;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-0 = <&pinctrl_can1 &pinctrl_can1phy>;
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rmii";
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>;
> +	clock-names = "ipg", "ahb";
> +	status = "okay";
> +
> +	fixed-link {
> +		speed = <100>;
> +		pause;
> +		full-duplex;
> +	};
> +};
> +
> +&i2c3 {
> +	adc@49 {
> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		/* V in */
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* I charge */
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* V bus  */
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		/* nc */
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	non-removable;
> +	no-1-8-v;
> +	non-removable;
> +	mmc-pwrseq = <&usdhc2_wifi_pwrseq>;
> +	pm-ignore-notify;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +	status = "okay";
> +
> +	wifi@1 {
> +		compatible = "brcm,bcm4329-fmac";
> +		reg = <1>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb_eth_chg>;
> +
> +	pinctrl_can1phy: can1phy {
> +		fsl,pins = <
> +			/* CAN1_SR */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12	0x13070
> +		>;
> +	};
> +
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP4 */
> +			MX6QDL_PAD_ENET_RXD0__ENET_RX_DATA0	0x1b0b0
> +			MX6QDL_PAD_ENET_RXD1__ENET_RX_DATA1	0x1b0b0
> +			MX6QDL_PAD_ENET_RX_ER__ENET_RX_ER	0x130b0
> +			MX6QDL_PAD_ENET_TX_EN__ENET_TX_EN	0x1b0b0
> +			MX6QDL_PAD_ENET_TXD0__ENET_TX_DATA0	0x1b0b0
> +			MX6QDL_PAD_ENET_TXD1__ENET_TX_DATA1	0x1b0b0
> +			MX6QDL_PAD_ENET_CRS_DV__ENET_RX_EN	0x1b0b0
> +
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x1b0b0
> +			/* Phy reset */
> +			MX6QDL_PAD_CSI0_DAT4__GPIO5_IO22	0x1b0b0
> +			/* nINTRP */
> +			MX6QDL_PAD_CSI0_DAT5__GPIO5_IO23	0x1b0b0
> +
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
> +		>;
> +	};
> +
> +	pinctrl_i2c4: i2c4grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_ENET_MDIO__GPIO1_IO22	0x1f8b0
> +			MX6QDL_PAD_ENET_MDC__GPIO1_IO31		0x1f8b0
> +		>;
> +	};
> +
> +	pinctrl_usb_eth_chg: usbethchggrp {
> +		fsl,pins = <
> +			/* USB charging control */
> +			MX6QDL_PAD_NANDF_CS0__GPIO6_IO11	0x130b0
> +			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x130b0
> +			MX6QDL_PAD_NANDF_CS2__GPIO6_IO15	0x130b0
> +			MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x130b0
> +			>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +		>;
> +	};
> +
> +	pinctrl_wifi_npd: wifinpd {
> +		fsl,pins = <
> +			/* WL_REG_ON */
> +			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10	0x13069
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6q-vicut1.dts b/arch/arm/dts/imx6q-vicut1.dts
> new file mode 100644
> index 0000000000..9f60ed1ac2
> --- /dev/null
> +++ b/arch/arm/dts/imx6q-vicut1.dts
> @@ -0,0 +1,52 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6q.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +
> +/ {
> +	model = "Kverneland UT1Q Board";
> +	compatible = "kvg,vicut1q", "fsl,imx6q";
> +
> +	memory {
> +		reg = <0x10000000 0xf0000000>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +	/* phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>; */
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP_RGMII_MD(0x1b030, 0x10030) */
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC         0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0         0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1         0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2         0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3         0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL   0x1b030
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC         0x10030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0         0x10030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1         0x10030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2         0x10030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3         0x10030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL   0x10030
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK    0x10030
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x10030
> +
> +			/* Phy reset */
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6qdl-prti6q.dtsi b/arch/arm/dts/imx6qdl-prti6q.dtsi
> new file mode 100644
> index 0000000000..ed526d185f
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-prti6q.dtsi
> @@ -0,0 +1,174 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart4;
> +	};
> +
> +	reg_1v8: regulator-1v8 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "1v8";
> +		regulator-min-microvolt = <1800000>;
> +		regulator-max-microvolt = <1800000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_3v3: regulator-3v3 {
> +		compatible = "regulator-fixed";
> +		regulator-name = "3v3";
> +		regulator-min-microvolt = <3300000>;
> +		regulator-max-microvolt = <3300000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_h1_vbus: regulator-h1-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "h1-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		regulator-always-on;
> +	};
> +
> +	reg_usb_otg_vbus: regulator-otg-vbus {
> +		compatible = "regulator-fixed";
> +		regulator-name = "otg-vbus";
> +		regulator-min-microvolt = <5000000>;
> +		regulator-max-microvolt = <5000000>;
> +		gpio = <&gpio3 22 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +	};
> +};
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_can1>;
> +	status = "okay";
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c3>;
> +	status = "okay";
> +
> +	temperature-sensor@70 {
> +		compatible = "ti,tmp103";
> +		reg = <0x70>;
> +	};
> +};
> +
> +&uart4 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart4>;
> +	status = "okay";
> +};
> +
> +&usbh1 {
> +	vbus-supply = <&reg_usb_h1_vbus>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&usbotg {
> +	vbus-supply = <&reg_usb_otg_vbus>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usbotg>;
> +	phy_type = "utmi";
> +	dr_mode = "host";
> +	disable-over-current;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;
> +	status = "okay";
> +};
> +
> +&usdhc3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc3>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_can1: can1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_ROW2__FLEXCAN1_RX	0x80000000
> +			MX6QDL_PAD_KEY_COL2__FLEXCAN1_TX	0x80000000
> +		>;
> +	};
> +
> +	pinctrl_i2c1: i2c1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT8__I2C1_SDA		0x4001f8b1
> +			MX6QDL_PAD_CSI0_DAT9__I2C1_SCL		0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_i2c3: i2c3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_GPIO_5__I2C3_SCL		0x4001b8b1
> +			MX6QDL_PAD_GPIO_6__I2C3_SDA		0x4001b8b1
> +		>;
> +	};
> +
> +	pinctrl_uart4: uart4grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_KEY_COL0__UART4_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_KEY_ROW0__UART4_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usdhc1: usdhc1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD1_CMD__SD1_CMD		0x170f9
> +			MX6QDL_PAD_SD1_CLK__SD1_CLK		0x100f9
> +			MX6QDL_PAD_SD1_DAT0__SD1_DATA0		0x170f9
> +			MX6QDL_PAD_SD1_DAT1__SD1_DATA1		0x170f9
> +			MX6QDL_PAD_SD1_DAT2__SD1_DATA2		0x170f9
> +			MX6QDL_PAD_SD1_DAT3__SD1_DATA3		0x170f9
> +			MX6QDL_PAD_GPIO_1__GPIO1_IO01		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_usdhc3: usdhc3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17099
> +			MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10099
> +			MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17099
> +			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17099
> +			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17099
> +			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17099
> +			MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17099
> +			MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17099
> +			MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17099
> +			MX6QDL_PAD_SD3_DAT7__SD3_DATA7		0x17099
> +			MX6QDL_PAD_SD3_RST__SD3_RESET		0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
> +			MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6qdl-vicut1.dtsi b/arch/arm/dts/imx6qdl-vicut1.dtsi
> new file mode 100644
> index 0000000000..dc18614f89
> --- /dev/null
> +++ b/arch/arm/dts/imx6qdl-vicut1.dtsi
> @@ -0,0 +1,208 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +#include "imx6qdl-prti6q.dtsi"
> +#include <dt-bindings/input/input.h>
> +
> +/ {
> +	gpio_key_pwr: gpio_keys {
> +		compatible = "gpio-keys";
> +		autorepeat;
> +
> +		power {
> +			label = "GPIO Key Power";
> +			gpios = <&gpio2 23 GPIO_ACTIVE_LOW>;
> +			linux,code = <KEY_POWER>;
> +			gpio-key,wakeup;
> +		};
> +	};
> +
> +	leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		debug0 {
> +			label = "debug0";
> +			gpios = <&gpio1 8 0>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +
> +		debug1 {
> +			label = "debug1";
> +			gpios = <&gpio1 9 0>;
> +			linux,default-trigger = "mmc";
> +		};
> +
> +		power_led {
> +			label = "power_led";
> +			gpios = <&gpio2 24 0>;
> +			default-state = "on";
> +		};
> +
> +		isb_led {
> +			label = "isb_led";
> +			gpios = <&gpio4 31 0>;
> +			default-state = "off";
> +		};
> +	};
> +};
> +
> +&clks {
> +	assigned-clocks = <&clks IMX6QDL_CLK_LDB_DI0_SEL>;
> +	assigned-clock-parents = <&clks IMX6QDL_CLK_PLL5_VIDEO_DIV>;
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&uart3 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart3>;
> +	status = "okay";
> +};
> +
> +&i2c3 {
> +	rtc: pcf8563@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +};
> +
> +&iomuxc {
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* SGTL5000 sys_mclk */
> +			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> +			/* CAN1_SR + CAN2_SR GPIO outputs */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
> +			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13		0x13070
> +			/* CAN1_TERM */
> +			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
> +			/* ITU656_nRESET */
> +			MX6QDL_PAD_GPIO_2__GPIO1_IO02		0x1b0b0
> +			/* CAM1_MIRROR */
> +			MX6QDL_PAD_GPIO_3__GPIO1_IO03		0x130b0
> +			/* CAM2_MIRROR */
> +			MX6QDL_PAD_GPIO_4__GPIO1_IO04		0x130b0
> +			/* CAM_nDETECT */
> +			MX6QDL_PAD_GPIO_17__GPIO7_IO12		0x1b0b0
> +			/* nON_SWITCH */
> +			MX6QDL_PAD_EIM_CS0__GPIO2_IO23		0x1b0b0
> +			/* ISB_IN1 */
> +			MX6QDL_PAD_EIM_A16__GPIO2_IO22		0x130b0
> +			/* ISB_nIN2 */
> +			MX6QDL_PAD_EIM_A17__GPIO2_IO21		0x1b0b0
> +			/* WARN_LIGHT */
> +			MX6QDL_PAD_EIM_A19__GPIO2_IO19		0x100b0
> +			/* ON2_FB */
> +			MX6QDL_PAD_EIM_A25__GPIO5_IO02		0x100b0
> +			/* YACO_nIRQ */
> +			MX6QDL_PAD_EIM_D23__GPIO3_IO23		0x1b0b0
> +			/* YACO_BOOT0 */
> +			MX6QDL_PAD_EIM_D30__GPIO3_IO30		0x130b0
> +			/* YACO_nRESET */
> +			MX6QDL_PAD_EIM_D31__GPIO3_IO31		0x1b0b0
> +			/* FORCE_ON1 */
> +			MX6QDL_PAD_EIM_EB2__GPIO2_IO30		0x1b0b0
> +			/* AUDIO_nRESET */
> +			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1f0b0
> +			/* ITU656_nPDN */
> +			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
> +
> +			/* HW revision detect */
> +			/* REV_ID0 */
> +			MX6QDL_PAD_SD4_DAT0__GPIO2_IO08 0x1b0b0
> +			/* REV_ID1 = PWM output LED_PWM (SION) */
> +			/* defined in &pinctrl_pwm3 */
> +			/* REV_ID2 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10 0x1b0b0
> +			/* REV_ID3 */
> +			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11 0x1b0b0
> +			/* REV_ID4 */
> +			MX6QDL_PAD_SD4_DAT4__GPIO2_IO12 0x1b0b0
> +
> +			/* New in HW revision 1 */
> +			MX6QDL_PAD_EIM_D20__GPIO3_IO20	0x100b0 /* ON1_FB */
> +			MX6QDL_PAD_DI0_PIN2__GPIO4_IO18 0x1b0b0 /* DIP1_FB */
> +
> +			/* New in UTC (UT1 HW revision 1) and TGO */
> +			/* WHEEL */
> +			MX6QDL_PAD_NANDF_D0__GPIO2_IO00 0x100b0
> +			/* RADAR */
> +			MX6QDL_PAD_NANDF_D1__GPIO2_IO01 0x100b0
> +			/* PTO */
> +			MX6QDL_PAD_NANDF_D2__GPIO2_IO02 0x100b0
> +			/* CPU_ON1_CTRL */
> +			MX6QDL_PAD_DISP0_DAT0__GPIO4_IO21 0x1b0b0
> +			/* CPU_ON2_CTRL */
> +			MX6QDL_PAD_DISP0_DAT1__GPIO4_IO22 0x1b0b0
> +			/* CPU_HITCH_IN_OUT */
> +			MX6QDL_PAD_DISP0_DAT2__GPIO4_IO23 0x100b0
> +			/* CPU_LIGHT_ON */
> +			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24 0x100b0
> +			/* CPU_CONTACT_IN */
> +			MX6QDL_PAD_DISP0_DAT6__GPIO4_IO27 0x100b0
> +		>;
> +	};
> +
> +	pinctrl_usbotg: usbotggrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D21__USB_OTG_OC	0x1b0b0
> +			/* power enable, high active */
> +			MX6QDL_PAD_EIM_D22__GPIO3_IO22	0x1b0b0
> +		>;
> +	};
> +
> +	/* YaCO AUX Uart */
> +	pinctrl_uart1: uart1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT10__UART1_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_CSI0_DAT11__UART1_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	/* YaCO Touchscreen UART */
> +	pinctrl_uart3: uart3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_D24__UART3_TX_DATA	0x1b0b1
> +			MX6QDL_PAD_EIM_D25__UART3_RX_DATA	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		fsl,pins = <
> +			/* DEBUG0A */
> +			MX6QDL_PAD_DI0_DISP_CLK__GPIO4_IO16	0x1b0b0
> +			/* DEBUG1A */
> +			MX6QDL_PAD_DI0_PIN15__GPIO4_IO17	0x1b0b0
> +			/* DEBUG0 */
> +			MX6QDL_PAD_GPIO_8__GPIO1_IO08		0x1b0b0
> +			/* DEBUG1 */
> +			MX6QDL_PAD_GPIO_9__GPIO1_IO09		0x1b0b0
> +			/* POWER_LED */
> +			MX6QDL_PAD_EIM_CS1__GPIO2_IO24		0x1b0b0
> +			/* ISB_LED */
> +			MX6QDL_PAD_DISP0_DAT10__GPIO4_IO31	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm2: pwm2grp {
> +		fsl,pins = <
> +			/* ISB LED (not in TGO or UTC version 1+) */
> +			MX6QDL_PAD_DISP0_DAT9__PWM2_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm3: pwm3grp {
> +		fsl,pins = <
> +			/* REV_ID1 = PWM output LED_PWM (SION for ID) */
> +			MX6QDL_PAD_SD4_DAT1__PWM3_OUT   0x4001b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6qp-prtwd3.dts b/arch/arm/dts/imx6qp-prtwd3.dts
> new file mode 100644
> index 0000000000..0ef0bae036
> --- /dev/null
> +++ b/arch/arm/dts/imx6qp-prtwd3.dts
> @@ -0,0 +1,675 @@
> +/*
> + * Copyright (c) 2018 Protonic Holland
> + *
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6qp.dtsi>
> +#include "imx6qdl-prti6q.dtsi"
> +
> +/ {
> +	model = "Protonic WD3 board";
> +	compatible = "prt,prtwd3", "fsl,imx6qp";
> +
> +	memory@10000000 {
> +		device_type = "memory";
> +		reg = <0x10000000 0x20000000>;
> +	};
> +
> +	memory@80000000 {
> +		device_type = "memory";
> +		reg = <0x80000000 0x20000000>;
> +	};
> +
> +	aliases {
> +		mdio-gpio0 = &mdio0;
> +	};
> +
> +	usdhc2_wifi_pwrseq: usdhc2_wifi_pwrseq {
> +		compatible = "mmc-pwrseq-simple";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_wifi_npd>;
> +		reset-gpios = <&gpio6 10 GPIO_ACTIVE_LOW>;
> +	};
> +
> +	clk20m_can: fdcan_clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <20000000>;
> +	};
> +
> +	clk25m_switch: switch_clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	clk25m_phy3: phy3_clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <25000000>;
> +	};
> +
> +	clk50m_phy: phy_clock {
> +		compatible = "fixed-clock";
> +		#clock-cells = <0>;
> +		clock-frequency = <50000000>;
> +	};
> +
> +	mdio0: mdio {
> +		compatible = "virtual,mdio-gpio";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_mdio0>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		gpios = <&gpio5 6 GPIO_ACTIVE_HIGH
> +			 &gpio5 7 GPIO_ACTIVE_HIGH>;
> +	};
> +
> +	display_panel0 {
> +		compatible = "kyo,tcg121xglp";
> +		backlight = <&backlight_lcd>;
> +
> +		port {
> +			display_panel0_in: endpoint {
> +				remote-endpoint = <&serializer0_out>;
> +			};
> +		};
> +	};
> +
> +	display_panel1 {
> +		compatible = "kyo,tcg121xglp";
> +		backlight = <&backlight_panel1>;
> +
> +		port {
> +			display_panel1_in: endpoint {
> +				remote-endpoint = <&serializer1_out>;
> +			};
> +		};
> +	};
> +
> +	backlight_lcd: backlight_lcd {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm1 0 5000000>;
> +		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192 255>;
> +		default-brightness-level = <15>;
> +		power-supply = <&reg_3v3>;
> +	};
> +
> +	backlight_panel1: backlight_panel1 {
> +		compatible = "pwm-backlight";
> +		pwms = <&pwm2 0 5000000>;
> +		brightness-levels = <0 1 2 4 6 8 12 16 24 32 48 64 96 128 192 255>;
> +		default-brightness-level = <0>;
> +		power-supply = <&reg_3v3>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	status = "okay";
> +
> +	clocks = <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET>,
> +		 <&clks IMX6QDL_CLK_ENET_REF>,
> +		 <&clks IMX6QDL_CLK_ENET_REF>;
> +	clock-names = "ipg", "ahb", "ptp", "enet_clk_ref";
> +	assigned-clocks = <&clks IMX6QDL_CLK_ENET_REF>;
> +	assigned-clock-rates = <125000000>;
> +
> +	phy-mode = "rgmii";
> +	fixed-link {
> +		speed = <100>;
> +		full-duplex;
> +	};
> +
> +	mdio1: mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		/* Microchip KSZ9031 */
> +		rgmii_phy: ethernet-phy@2 {
> +			compatible = "ethernet-phy-ieee802.3-c22";
> +			reg = <2>;
> +
> +			interrupts-extended = <&gpio1 28 IRQ_TYPE_EDGE_FALLING>;
> +
> +			/* FIXME: tx/rx clk skew are currently set by imx
> +                         * platform driver. Write own walues here to not depend
> +                         * fixup of horror.
> +                         */
> +
> +			reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>;
> +			/* reset assert time is provided by documentation */
> +			reset-assert-us = <10000>;
> +			/* documented reset deassert time (100us) is not enough
> +                         * use test value of 300us.
> +			 */
> +			reset-deassert-us = <1000>;
> +
> +			clocks = <&clk25m_phy3>;
> +		};
> +	};
> +};
> +
> +&ecspi2 {
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio2 26 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +	status = "okay";
> +	sja1105_switch: sja1105@0 {
> +		reg = <0>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		compatible = "nxp,sja1105q";
> +		spi-max-frequency = <4000000>;
> +		spi-cpha;
> +		spi-rx-delay-us = <1>;
> +		spi-tx-delay-us = <1>;
> +
> +		reset-gpios = <&gpio5 5 GPIO_ACTIVE_LOW>;
> +
> +		clocks = <&clk25m_switch>;
> +		#clock-cells = <1>;
> +
> +		ports {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +
> +			port@0 {
> +				reg = <0>;
> +				label = "usb";
> +				phy-handle = <&usbeth_phy>;
> +				phy-mode = "rmii";
> +			};
> +
> +			port@1 {
> +				reg = <1>;
> +				label = "t1slave";
> +				phy-handle = <&tja1102_phy1>;
> +				phy-mode = "rmii";
> +			};
> +
> +			port@2 {
> +				reg = <2>;
> +				label = "t1master";
> +				phy-handle = <&tja1102_phy0>;
> +				phy-mode = "rmii";
> +
> +			};
> +
> +			port@3 {
> +				reg = <3>;
> +				label = "rj45";
> +				phy-handle = <&rgmii_phy>;
> +				phy-mode = "rgmii-id";
> +			};
> +
> +			port@4 {
> +				reg = <4>;
> +				label = "cpu";
> +				ethernet = <&fec>;
> +				phy-mode = "rgmii-id";
> +
> +				fixed-link {
> +					speed = <100>;
> +					full-duplex;
> +				};
> +			};
> +		};
> +	};
> +};
> +
> +&mdio0 {
> +	usbeth_phy: ethernet-phy@3 {
> +		compatible = "ethernet-phy-ieee802.3-c22";
> +		reg = <0x3>;
> +
> +		interrupts-extended = <&gpio5 12 IRQ_TYPE_LEVEL_LOW>;
> +		micrel,led-mode = <0>;
> +
> +		reset-gpios = <&gpio5 11 GPIO_ACTIVE_LOW>;
> +		reset-assert-us = <500>;
> +		reset-deassert-us = <1000>;
> +
> +		/* FIXME: the clock is provided by switch and we should know
> +		 * and we should request it only after switch have done clock
> +		 * configuration. Since it is currently not implemented,
> +		 * use fixed clock.
> +		 * WARNING: Using fixed clocks in this case  is potential source
> +		 * for evil bugs. Switch may reconfigure, stop or change clk
> +		 * freq without letting PHY to know about it.
> +		 */
> +		clocks = <&clk50m_phy>;
> +		clock-names = "rmii-ref";
> +	};
> +
> +	tja1102_phy0: ethernet-phy@4 {
> +		compatible = "ethernet-phy-id0180.dc80";
> +		reg = <0x4>;
> +
> +		interrupts-extended = <&gpio5 8 IRQ_TYPE_LEVEL_LOW>;
> +
> +		reset-gpios = <&gpio5 9 GPIO_ACTIVE_LOW>;
> +		/* reset detection time is 20 usec.  */
> +		reset-assert-us = <20>;
> +		/* reset to standby 2 msec.  */
> +		reset-deassert-us = <2000>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		tja1102_phy1: ethernet-phy@5 {
> +			reg = <0x5>;
> +
> +			interrupts-extended = <&gpio5 8 IRQ_TYPE_LEVEL_LOW>;
> +		};
> +	};
> +};
> +
> +&ecspi3 {
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio4 24 GPIO_ACTIVE_HIGH>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi3>;
> +	status = "okay";
> +	can3: can@0 {
> +		compatible = "microchip,mcp2518fd";
> +		spi-max-frequency = <5000000>;
> +		reg = <0>;
> +		clocks = <&clk20m_can>;
> +		interrupt-parent = <&gpio4>;
> +		interrupts = <25 0x2>;
> +	};
> +};
> +
> +&i2c1 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	status = "okay";
> +
> +	serializer0: ds90ub927@c {
> +		compatible = "ti,ds90ub927";
> +		reg = <0x0c>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		port@0 {
> +			reg = <0>;
> +			serializer0_in: endpoint {
> +				remote-endpoint = <&lvds0_out>;
> +			};
> +		};
> +		/* port@1 {
> +			reg = <1>;
> +			serializer0_audio_in: endpoint {
> +				remote-endpoint = <&audio_i2s0_out>;
> +			};
> +		}; */
> +		port@2 {
> +			reg = <2>;
> +			serializer0_out: endpoint {
> +				remote-endpoint = <&display_panel0_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&i2c2 {
> +	clock-frequency = <100000>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	status = "okay";
> +
> +	serializer1: ds90ub927@c {
> +		compatible = "ti,ds90ub927";
> +		reg = <0x0c>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		port@0 {
> +			reg = <0>;
> +			serializer1_in: endpoint {
> +				remote-endpoint = <&lvds1_out>;
> +			};
> +		};
> +		port@2 {
> +			reg = <2>;
> +			serializer1_out: endpoint {
> +				remote-endpoint = <&display_panel1_in>;
> +			};
> +		};
> +	};
> +
> +	camdeser: ds90ub954@30 {
> +		compatible = "ti,ds90ub954";
> +		reg = <0x30>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +		port@0 {
> +			reg = <0>;
> +			camdeser_fpd_link_in: endpoint {
> +			};
> +		};
> +		port@1 {
> +			reg = <1>;
> +			camdeser_mipi_out: endpoint {
> +				remote-endpoint = <&mipi_csi_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	no-1-8-v;	/* force 3.3V VIO */
> +	non-removable;
> +	mmc-pwrseq = <&usdhc2_wifi_pwrseq>;
> +	pm-ignore-notify;
> +	status = "okay";
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	brcmf: bcrmf@1 {
> +		reg = <1>;
> +		compatible = "brcm,bcm4329-fmac";
> +	};
> +};
> +
> +&i2c3 {
> +	adc@49 {
> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <1>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +};
> +
> +&ldb {
> +	status = "okay";
> +
> +	lvds-channel@0 {
> +		status = "okay";
> +
> +		port@4 {
> +			reg = <4>;
> +
> +			lvds0_out: endpoint {
> +				remote-endpoint = <&serializer0_in>;
> +			};
> +		};
> +	};
> +
> +	lvds-channel@1 {
> +		status = "okay";
> +
> +		port@4 {
> +			reg = <4>;
> +
> +			lvds1_out: endpoint {
> +				remote-endpoint = <&serializer1_in>;
> +			};
> +		};
> +	};
> +};
> +
> +&mipi_csi {
> +	status = "okay";
> +	port@0 {
> +		reg = <0>;
> +
> +		mipi_csi_in: endpoint {
> +			remote-endpoint = <&camdeser_mipi_out>;
> +		};
> +	};
> +};
> +
> +&ipu1_csi0_mux_from_parallel_sensor {
> +	/* Empty, to disable parallel camera from PRTI6Q */
> +};
> +
> +&pwm1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm1>;
> +	status = "okay";
> +};
> +
> +&pwm2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_pwm2>;
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC		    0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0		0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1		0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2		0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3		0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL   0x1b030
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC		0x10030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0		0x10030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1		0x10030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2		0x10030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3		0x10030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL   0x10030
> +
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO		0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC		0x10030
> +
> +			/* Configure clock provider for RGMII ref clock */
> +			MX6QDL_PAD_GPIO_16__ENET_REF_CLK	0x4001b0b0
> +			/* Configure clock consumer for RGMII ref clock */
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK    0x10030
> +
> +			/* SJA1105Q switch reset */
> +			MX6QDL_PAD_DISP0_DAT11__GPIO5_IO05	0x10030
> +
> +			/* phy3/rgmii_phy reset */
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x10030
> +			/* phy3/rgmii_phy int */
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x40010000
> +		>;
> +	};
> +
> +	pinctrl_mdio0: mdio0grp {
> +		fsl,pins = <
> +			/* phy0/usbeth_phy reset */
> +			MX6QDL_PAD_DISP0_DAT17__GPIO5_IO11	0x10030
> +			/* phy0/usbeth_phy int */
> +			MX6QDL_PAD_DISP0_DAT18__GPIO5_IO12	0x100b1
> +
> +			/* phy12/tja1102_phy0 reset */
> +			MX6QDL_PAD_DISP0_DAT15__GPIO5_IO09	0x10030
> +			/* phy12/tja1102_phy0 int */
> +			MX6QDL_PAD_DISP0_DAT14__GPIO5_IO08	0x100b1
> +			/* phy12/tja1102_phy0 enable. Set 100K pull-up */
> +			MX6QDL_PAD_DISP0_DAT16__GPIO5_IO10	0x1f030
> +		>;
> +	};
> +
> +	pinctrl_ecspi2: ecspi2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_OE__ECSPI2_MISO		0x100b1
> +			MX6QDL_PAD_EIM_CS0__ECSPI2_SCLK		0x100b1
> +			MX6QDL_PAD_EIM_CS1__ECSPI2_MOSI		0x100b1
> +			MX6QDL_PAD_EIM_RW__GPIO2_IO26		0x000b1
> +		>;
> +	};
> +
> +
> +
> +	pinctrl_hog: hoggrp {
> +		fsl,pins = <
> +			/* SGTL5000 sys_mclk */
> +			MX6QDL_PAD_CSI0_MCLK__CCM_CLKO1		0x030b0
> +			/* CAN1_SR + CAN2_SR GPIO outputs */
> +			MX6QDL_PAD_KEY_COL3__GPIO4_IO12		0x13070
> +			MX6QDL_PAD_KEY_ROW3__GPIO4_IO13		0x13070
> +			/* CAN1_TERM (not used on WD3) */
> +			MX6QDL_PAD_GPIO_0__GPIO1_IO00		0x1b0b0
> +
> +			/* HW revision detect */
> +			/* REV_ID0 */
> +			MX6QDL_PAD_SD4_DAT0__GPIO2_IO08		0x1b0b0
> +			/* REV_ID1 */
> +			MX6QDL_PAD_SD4_DAT1__GPIO2_IO09		0x1b0b0
> +			/* REV_ID2 */
> +			MX6QDL_PAD_SD4_DAT2__GPIO2_IO10		0x1b0b0
> +			/* REV_ID3 */
> +			MX6QDL_PAD_SD4_DAT3__GPIO2_IO11		0x1b0b0
> +			/* REV_ID4 */
> +			MX6QDL_PAD_SD4_DAT4__GPIO2_IO12		0x1b0b0
> +
> +			/* USB charging control */
> +			/* CHG Control */
> +			MX6QDL_PAD_NANDF_CS0__GPIO6_IO11	0x130b0
> +			/* RID0 */
> +			MX6QDL_PAD_NANDF_CS1__GPIO6_IO14	0x130b0
> +			/* RID1 */
> +			MX6QDL_PAD_NANDF_CS2__GPIO6_IO15	0x130b0
> +			/* RID2 */
> +			MX6QDL_PAD_NANDF_CS3__GPIO6_IO16	0x130b0
> +
> +			/* Power VSEL and TG */
> +			/* VSEL */
> +			MX6QDL_PAD_NANDF_ALE__GPIO6_IO08	0x1b0b0
> +			/* TG */
> +			MX6QDL_PAD_NANDF_CLE__GPIO6_IO07	0x1b0b0
> +
> +			/* Display panel 0 GPIO */
> +			/* L/R */
> +			MX6QDL_PAD_CSI0_DAT10__GPIO5_IO28	0x1b0b0
> +			/* TS_nINT */
> +			MX6QDL_PAD_CSI0_DAT11__GPIO5_IO29	0x1b0b0
> +			/* EN */
> +			MX6QDL_PAD_CSI0_DAT12__GPIO5_IO30	0x1b0b0
> +			/* LVDS0_nINT */
> +			MX6QDL_PAD_CSI0_DAT14__GPIO6_IO00	0x1b0b0
> +			/* LVDS0_PD */
> +			MX6QDL_PAD_CSI0_DAT15__GPIO6_IO01	0x1b0b0
> +
> +			/* Display panel 1 GPIO */
> +			/* L/R */
> +			MX6QDL_PAD_CSI0_MCLK__GPIO5_IO19	0x1b0b0
> +			/* TS_nINT */
> +			MX6QDL_PAD_CSI0_DATA_EN__GPIO5_IO20	0x1b0b0
> +			/* EN */
> +			MX6QDL_PAD_CSI0_PIXCLK__GPIO5_IO18	0x1b0b0
> +			/* LVDS1_nINT */
> +			MX6QDL_PAD_CSI0_DAT7__GPIO5_IO25	0x1b0b0
> +			/* LVDS1_PD */
> +			MX6QDL_PAD_CSI0_VSYNC__GPIO5_IO21	0x1b0b0
> +
> +			/* Camera */
> +			/* CAM_GPIO0 */
> +			MX6QDL_PAD_CSI0_DAT13__GPIO5_IO31	0x1b0b0
> +			/* CAM_nINT */
> +			MX6QDL_PAD_CSI0_DAT16__GPIO6_IO02	0x1b0b0
> +			/* CAM_GPIO1 */
> +			MX6QDL_PAD_CSI0_DAT17__GPIO6_IO03	0x1b0b0
> +			/* CAM_nPD */
> +			MX6QDL_PAD_CSI0_DAT18__GPIO6_IO04	0x1b0b0
> +			/* CAM_LOCK */
> +			MX6QDL_PAD_CSI0_DAT19__GPIO6_IO05	0x1b0b0
> +
> +			/* USB ethernet reset (asix) */
> +			MX6QDL_PAD_DISP0_DAT5__GPIO4_IO26	0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_wifi_npd: wifinpd {
> +		fsl,pins = <
> +			/* WL_REG_ON */
> +			MX6QDL_PAD_NANDF_RB0__GPIO6_IO10	0x13069
> +		>;
> +	};
> +
> +	pinctrl_usdhc2: usdhc2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_SD2_CMD__SD2_CMD		0x170b9
> +			MX6QDL_PAD_SD2_CLK__SD2_CLK		0x100b9
> +			MX6QDL_PAD_SD2_DAT0__SD2_DATA0		0x170b9
> +			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x170b9
> +			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x170b9
> +			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x170b9
> +		>;
> +	};
> +
> +	pinctrl_audmux: audmuxgrp {
> +		fsl,pins = <
> +			MX6QDL_PAD_CSI0_DAT4__AUD3_TXC		0x130b0
> +			MX6QDL_PAD_CSI0_DAT5__AUD3_TXD		0x110b0
> +			MX6QDL_PAD_CSI0_DAT6__AUD3_TXFS		0x130b0
> +		>;
> +	};
> +
> +	pinctrl_i2c2: i2c2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_EIM_EB2__I2C2_SCL		0x4001f8b1
> +			MX6QDL_PAD_EIM_D16__I2C2_SDA		0x4001f8b1
> +		>;
> +	};
> +
> +	pinctrl_leds: ledsgrp {
> +		/* No leds */
> +		fsl,pins = <>;
> +	};
> +
> +	pinctrl_ecspi3: ecspi3grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT0__ECSPI3_SCLK	0x100b1
> +			MX6QDL_PAD_DISP0_DAT1__ECSPI3_MOSI	0x100b1
> +			MX6QDL_PAD_DISP0_DAT2__ECSPI3_MISO	0x100b1
> +			/* CS */
> +			MX6QDL_PAD_DISP0_DAT3__GPIO4_IO24	0x000b1
> +			/* CAN2_nINT */
> +			MX6QDL_PAD_DISP0_DAT4__GPIO4_IO25	0x1b0b1
> +		>;
> +	};
> +
> +	pinctrl_pwm1: pwm1grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT8__PWM1_OUT		0x1b0b0
> +		>;
> +	};
> +
> +	pinctrl_pwm2: pwm2grp {
> +		fsl,pins = <
> +			MX6QDL_PAD_DISP0_DAT9__PWM2_OUT		0x1b0b0
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6qp-vicutp.dts b/arch/arm/dts/imx6qp-vicutp.dts
> new file mode 100644
> index 0000000000..44cfe68867
> --- /dev/null
> +++ b/arch/arm/dts/imx6qp-vicutp.dts
> @@ -0,0 +1,52 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * Copyright (c) 2014 Protonic Holland
> + */
> +
> +/dts-v1/;
> +#include <arm/imx6qp.dtsi>
> +#include "imx6qdl-vicut1.dtsi"
> +
> +/ {
> +	model = "Kverneland UT1P Board";
> +	compatible = "kvg,vicutp", "fsl,imx6qp";
> +
> +	memory {
> +		reg = <0x10000000 0x80000000>;
> +	};
> +};
> +
> +&fec {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_enet>;
> +	phy-mode = "rgmii";
> +	/* phy-reset-gpios = <&gpio1 25 GPIO_ACTIVE_LOW>; */
> +	status = "okay";
> +};
> +
> +&iomuxc {
> +	pinctrl_enet: enetgrp {
> +		fsl,pins = <
> +			/* MX6QDL_ENET_PINGRP_RGMII_MD(0x1b030, 0x10030) */
> +			MX6QDL_PAD_RGMII_RXC__RGMII_RXC         0x1b030
> +			MX6QDL_PAD_RGMII_RD0__RGMII_RD0         0x1b030
> +			MX6QDL_PAD_RGMII_RD1__RGMII_RD1         0x1b030
> +			MX6QDL_PAD_RGMII_RD2__RGMII_RD2         0x1b030
> +			MX6QDL_PAD_RGMII_RD3__RGMII_RD3         0x1b030
> +			MX6QDL_PAD_RGMII_RX_CTL__RGMII_RX_CTL   0x1b030
> +			MX6QDL_PAD_RGMII_TXC__RGMII_TXC         0x10030
> +			MX6QDL_PAD_RGMII_TD0__RGMII_TD0         0x10030
> +			MX6QDL_PAD_RGMII_TD1__RGMII_TD1         0x10030
> +			MX6QDL_PAD_RGMII_TD2__RGMII_TD2         0x10030
> +			MX6QDL_PAD_RGMII_TD3__RGMII_TD3         0x10030
> +			MX6QDL_PAD_RGMII_TX_CTL__RGMII_TX_CTL   0x10030
> +			MX6QDL_PAD_ENET_REF_CLK__ENET_TX_CLK    0x10030
> +			MX6QDL_PAD_ENET_MDIO__ENET_MDIO         0x10030
> +			MX6QDL_PAD_ENET_MDC__ENET_MDC           0x10030
> +
> +			/* Phy reset */
> +			MX6QDL_PAD_ENET_CRS_DV__GPIO1_IO25	0x1b0b0
> +			MX6QDL_PAD_ENET_TX_EN__GPIO1_IO28	0x1b0b1
> +		>;
> +	};
> +};
> diff --git a/arch/arm/dts/imx6ul-prti6g.dts b/arch/arm/dts/imx6ul-prti6g.dts
> new file mode 100644
> index 0000000000..e65198bab2
> --- /dev/null
> +++ b/arch/arm/dts/imx6ul-prti6g.dts
> @@ -0,0 +1,81 @@
> +/*
> + * Copyright (C) 2016 Protonic Holland
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +/dts-v1/;
> +
> +#include "imx6ul-prti6g.dtsi"
> +
> +/ {
> +	model = "Protonic PRTI6G Board";
> +	compatible = "prt,prti6g", "fsl,imx6ul";
> +};
> +
> +&pinctrl_hog {
> +	fsl,pins = <
> +		/* HW revision detect */
> +		MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x1b0b0	/* REV_ID0 */
> +		MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x1b0b0	/* REV_ID1 */
> +		MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x1b0b0 /* REV_ID2 */
> +		MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x1b0b0	/* REV_ID3 */
> +		MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x1b0b0	/* BOARD_ID0 */
> +		MX6UL_PAD_ENET2_TX_CLK__GPIO2_IO14	0x1b0b0	/* BOARD_ID1 */
> +		MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15	0x1b0b0	/* BOARD_ID2 */
> +		MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12	0x1b0b0	/* BOARD_ID3 */
> +
> +		/* Safety controller IO */
> +		MX6UL_PAD_SNVS_TAMPER6__GPIO5_IO06	0x1b0b0	/* WAKE_SC */
> +		MX6UL_PAD_SNVS_TAMPER7__GPIO5_IO07	0x1b0b0	/* PROGRAM_SC */
> +	>;
> +};
> +
> +&ecspi2 {
> +	status = "okay";
> +};
> +
> +&can2 {
> +	status = "okay";
> +};
> +
> +&i2c2 {
> +	can_adc: ads1015@49 {
> +		compatible = "ti,ads1015";
> +		reg = <0x49>;
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		channel@4 {
> +			reg = <4>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@5 {
> +			reg = <5>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@6 {
> +			reg = <6>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +
> +		channel@7 {
> +			reg = <7>;
> +			ti,gain = <3>;
> +			ti,datarate = <3>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/dts/imx6ul-prti6g.dtsi b/arch/arm/dts/imx6ul-prti6g.dtsi
> new file mode 100644
> index 0000000000..c20bbd5bc2
> --- /dev/null
> +++ b/arch/arm/dts/imx6ul-prti6g.dtsi
> @@ -0,0 +1,330 @@
> +/*
> + * Copyright (C) 2016 Protonic Holland
> + *
> + * This program is free software; you can redistribute it and/or
> + * modify it under the terms of the GNU General Public License as
> + * published by the Free Software Foundation; either version 2 of
> + * the License, or (at your option) any later version.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + */
> +
> +#include <arm/imx6ul.dtsi>
> +#include <dt-bindings/gpio/gpio.h>
> +
> +/ {
> +	chosen {
> +		stdout-path = &uart1;
> +		environment@0 {
> +			compatible = "barebox,environment";
> +			device-path = &flash, "partname:env";
> +		};
> +	};
> +
> +	memory {
> +		reg = <0x80000000 0x10000000>;
> +	};
> +
> +	regulators {
> +		compatible = "simple-bus";
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		reg_3p2v: 3p2-regulator {
> +			compatible = "regulator-fixed";
> +			regulator-name = "regulator-3P2V";
> +			regulator-min-microvolt = <3200000>;
> +			regulator-max-microvolt = <3200000>;
> +			regulator-always-on;
> +		};
> +
> +		reg_1p35v: 1p35-regulator {
> +			compatible = "regulator-fixed";
> +			regulator-name = "regulator-1P35V";
> +			regulator-min-microvolt = <1350000>;
> +			regulator-max-microvolt = <1350000>;
> +			regulator-always-on;
> +		};
> +	};
> +
> +	leds: leds {
> +		compatible = "gpio-leds";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&pinctrl_leds>;
> +
> +		debug {
> +			label = "debug0";
> +			gpios = <&gpio4 16 0>;
> +			linux,default-trigger = "heartbeat";
> +		};
> +	};
> +};
> +
> +&usbotg1 {
> +	dr_mode = "host";
> +	status = "okay";
> +};
> +
> +&uart1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_uart1>;
> +	status = "okay";
> +};
> +
> +&usdhc1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc1>;
> +	cd-gpios = <&gpio4 12 GPIO_ACTIVE_LOW>;
> +	vmmc-supply = <&reg_3p2v>;
> +	wakeup-source;
> +	status = "okay";
> +};
> +
> +&usdhc2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usdhc2>;
> +	bus-width = <8>;
> +	non-removable;
> +	status = "okay";
> +};
> +
> +&ecspi1 {
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio4 26 GPIO_ACTIVE_LOW>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi1>;
> +	status = "okay";
> +
> +	flash: w25q64fv@0 {
> +		compatible = "winbond,w25q64", "jedec,spi-nor";
> +		spi-max-frequency = <20000000>;
> +		m25p,fast-read;
> +		reg = <0>;
> +
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "boot";
> +			reg = <0x0 0x60000>;		/* 384 Kb */
> +		};
> +
> +		partition@60000 {
> +			label = "env";
> +			reg = <0x60000 0x10000>;	/* 64 Kb */
> +		};
> +
> +		partition@70000 {
> +			label = "dtb";
> +			reg = <0x70000 0x10000>;	/* 64 Kb */
> +		};
> +
> +		partition@80000 {
> +			label = "kernel";
> +			reg = <0x80000 0x780000>;	/* 7680 Kb */
> +		};
> +	};
> +};
> +
> +&ecspi2 {
> +	fsl,spi-num-chipselects = <1>;
> +	cs-gpios = <&gpio4 22 GPIO_ACTIVE_LOW>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_ecspi2>;
> +};
> +
> +&i2c1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c1>;
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	/* RFID chip */
> +};
> +
> +&i2c2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_i2c2>;
> +	clock-frequency = <100000>;
> +	status = "okay";
> +
> +	rtc: pcf8563@51 {
> +		compatible = "nxp,pcf8563";
> +		reg = <0x51>;
> +	};
> +
> +	tmp103: tmp103@70 {
> +		compatible = "ti,tmp103", "tmp103";
> +		reg = <0x70>;
> +	};
> +};
> +
> +&fec1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_fec1 &pinctrl_ethphy0_rst>;
> +	phy-mode = "rmii";
> +	phy-handle = <&ethphy0>;
> +	phy-reset-gpios = <&gpio5 0 GPIO_ACTIVE_LOW>;
> +	phy-reset-duration = <11>;
> +	status = "okay";
> +
> +	mdio {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		ethphy0: ethernet-phy@0 {
> +			reg = <0>;
> +		};
> +	};
> +};
> +
> +
> +&can1 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan1>;
> +	status = "okay";
> +};
> +
> +&can2 {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_flexcan2>;
> +};
> +
> +&iomuxc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_hog>;
> +
> +	prti6g {
> +		pinctrl_hog: hoggrp {
> +			fsl,pins = <
> +				/* HW revision detect */
> +				MX6UL_PAD_ENET2_RX_DATA0__GPIO2_IO08	0x1b0b0	/* REV_ID0 */
> +				MX6UL_PAD_ENET2_RX_DATA1__GPIO2_IO09	0x1b0b0	/* REV_ID1 */
> +				MX6UL_PAD_ENET2_RX_EN__GPIO2_IO10	0x1b0b0 /* REV_ID2 */
> +				MX6UL_PAD_ENET2_TX_DATA0__GPIO2_IO11	0x1b0b0	/* REV_ID3 */
> +				MX6UL_PAD_ENET2_TX_EN__GPIO2_IO13	0x1b0b0	/* BOARD_ID0 */
> +				MX6UL_PAD_ENET2_TX_CLK__GPIO2_IO14	0x1b0b0	/* BOARD_ID1 */
> +				MX6UL_PAD_ENET2_RX_ER__GPIO2_IO15	0x1b0b0	/* BOARD_ID2 */
> +				MX6UL_PAD_ENET2_TX_DATA1__GPIO2_IO12	0x1b0b0	/* BOARD_ID3 */
> +
> +				/* CAN diagnostics (nSMBALERT) */
> +				MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_leds: ledsgrp {
> +			fsl,pins = <
> +				MX6UL_PAD_NAND_DQS__GPIO4_IO16		0x1b0b0
> +			>;
> +		};
> +
> +		pinctrl_uart1: uart1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_UART1_TX_DATA__UART1_DCE_TX	0x1b0b1
> +				MX6UL_PAD_UART1_RX_DATA__UART1_DCE_RX	0x1b0b1
> +			>;
> +		};
> +
> +		pinctrl_usdhc1: usdhc1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_SD1_CMD__USDHC1_CMD		0x070b1
> +				MX6UL_PAD_SD1_CLK__USDHC1_CLK		0x07099
> +				MX6UL_PAD_SD1_DATA0__USDHC1_DATA0	0x070b1
> +				MX6UL_PAD_SD1_DATA1__USDHC1_DATA1	0x070b1
> +				MX6UL_PAD_SD1_DATA2__USDHC1_DATA2	0x070b1
> +				MX6UL_PAD_SD1_DATA3__USDHC1_DATA3	0x070b1
> +				MX6UL_PAD_NAND_READY_B__GPIO4_IO12	0x170b0 /* SD1 CD */
> +			>;
> +		};
> +
> +		pinctrl_usdhc2: usdhc2grp {
> +			fsl,pins = <
> +				MX6UL_PAD_NAND_WE_B__USDHC2_CMD		0x170f9
> +				MX6UL_PAD_NAND_RE_B__USDHC2_CLK		0x100f9
> +				MX6UL_PAD_NAND_DATA00__USDHC2_DATA0	0x170f9
> +				MX6UL_PAD_NAND_DATA01__USDHC2_DATA1	0x170f9
> +				MX6UL_PAD_NAND_DATA02__USDHC2_DATA2	0x170f9
> +				MX6UL_PAD_NAND_DATA03__USDHC2_DATA3	0x170f9
> +				MX6UL_PAD_NAND_DATA04__USDHC2_DATA4	0x170f9
> +				MX6UL_PAD_NAND_DATA05__USDHC2_DATA5	0x170f9
> +				MX6UL_PAD_NAND_DATA06__USDHC2_DATA6	0x170f9
> +				MX6UL_PAD_NAND_DATA07__USDHC2_DATA7	0x170f9
> +				MX6UL_PAD_NAND_ALE__USDHC2_RESET_B	0x170b0
> +			>;
> +		};
> +
> +		pinctrl_ecspi1: ecspi1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_CSI_DATA04__ECSPI1_SCLK 	0x0b0b0
> +				MX6UL_PAD_CSI_DATA05__GPIO4_IO26	0x000b1
> +				MX6UL_PAD_CSI_DATA06__ECSPI1_MOSI	0x0b0b0
> +				MX6UL_PAD_CSI_DATA07__ECSPI1_MISO	0x0b0b0
> +			>;
> +		};
> +
> +		pinctrl_ecspi2: ecspi2grp {
> +			fsl,pins = <
> +				MX6UL_PAD_CSI_DATA00__ECSPI2_SCLK 	0x0b0b0
> +				MX6UL_PAD_CSI_DATA01__GPIO4_IO22	0x000b1
> +				MX6UL_PAD_CSI_DATA02__ECSPI2_MOSI	0x0b0b0
> +				MX6UL_PAD_CSI_DATA03__ECSPI2_MISO	0x0b0b0
> +			>;
> +		};
> +
> +		pinctrl_i2c1: i2c1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_CSI_MCLK__I2C1_SDA		0x4001b8b0
> +				MX6UL_PAD_CSI_PIXCLK__I2C1_SCL		0x4001b8b0
> +			>;
> +		};
> +
> +		pinctrl_i2c2: i2c2grp {
> +			fsl,pins = <
> +				MX6UL_PAD_CSI_VSYNC__I2C2_SDA		0x4001b8b0
> +				MX6UL_PAD_CSI_HSYNC__I2C2_SCL		0x4001b8b0
> +			>;
> +		};
> +
> +		pinctrl_fec1: fec1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_GPIO1_IO07__ENET1_MDC		0x1b0b0
> +				MX6UL_PAD_GPIO1_IO06__ENET1_MDIO	0x100b0
> +				MX6UL_PAD_ENET1_RX_DATA0__ENET1_RDATA00	0x1b0b0
> +				MX6UL_PAD_ENET1_RX_DATA1__ENET1_RDATA01	0x1b0b0
> +				MX6UL_PAD_ENET1_RX_EN__ENET1_RX_EN	0x100b0
> +				MX6UL_PAD_ENET1_RX_ER__ENET1_RX_ER	0x1b0b0
> +				MX6UL_PAD_ENET1_TX_EN__ENET1_TX_EN	0x1b0b0
> +				MX6UL_PAD_ENET1_TX_DATA0__ENET1_TDATA00	0x1b0b0
> +				MX6UL_PAD_ENET1_TX_DATA1__ENET1_TDATA01	0x1b0b0
> +				MX6UL_PAD_ENET1_TX_CLK__ENET1_REF_CLK1	0x4001b031
> +			>;
> +		};
> +
> +		pinctrl_ethphy0_rst: ethphy-rstgrp-0 {
> +			fsl,pins = <
> +				MX6UL_PAD_SNVS_TAMPER0__GPIO5_IO00	0x00880 /* PHY RESET */
> +			>;
> +		};
> +
> +		pinctrl_flexcan1: flexcan1grp {
> +			fsl,pins = <
> +				MX6UL_PAD_UART3_CTS_B__FLEXCAN1_TX	0x0b0b0
> +				MX6UL_PAD_UART3_RTS_B__FLEXCAN1_RX	0x0b0b0
> +				MX6UL_PAD_SNVS_TAMPER3__GPIO5_IO03	0x0b0b0	/* SR */
> +				MX6UL_PAD_SNVS_TAMPER4__GPIO5_IO04	0x0b0b0	/* TERM */
> +				MX6UL_PAD_SNVS_TAMPER2__GPIO5_IO02	0x0b0b0	/* nSMBALERT */
> +			>;
> +		};
> +
> +		pinctrl_flexcan2: flexcan2grp {
> +			fsl,pins = <
> +				MX6UL_PAD_UART2_CTS_B__FLEXCAN2_TX	0x0b0b0
> +				MX6UL_PAD_UART2_RTS_B__FLEXCAN2_RX	0x0b0b0
> +				MX6UL_PAD_SNVS_TAMPER5__GPIO5_IO05	0x0b0b0	/* SR */
> +			>;
> +		};
> +	};
> +};
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 6dd5cb2aca..4a0f0b717f 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -336,6 +336,12 @@ config MACH_PHYTEC_SOM_IMX6
>          select ARCH_IMX6
>  	select ARCH_IMX6UL
>  
> +config MACH_PROTONIC_IMX6
> +        bool "Protonic-Holland i.MX6 based boards"
> +        select ARCH_IMX6
> +	select ARCH_IMX6UL
> +	select ARM_USE_COMPRESSED_DTB
> +
>  config MACH_KONTRON_SAMX6I
>          bool "Kontron sAMX6i"
>          select ARCH_IMX6
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index 765702f26d..d8879e314f 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -299,6 +299,34 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx
>  
>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6dl_som_lc_emmc_1gib, phytec-som-imx6/flash-header-phytec-pcm058dl-1gib, phytec-phycore-imx6dl-som-lc-emmc-1gib)
>  
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_prti6q, protonic-imx6/flash-header-prti6q, protonic-prti6q)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_prtwd2, protonic-imx6/flash-header-prtwd2, protonic-prtwd2)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6q_vicut1, protonic-imx6/flash-header-vicut1q, protonic-vicut1q)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_alti6p, protonic-imx6/flash-header-alti6p, protonic-alti6p)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_lanmcu, protonic-imx6/flash-header-lanmcu, protonic-lanmcu)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_plybas, protonic-imx6/flash-header-plybas, protonic-plybas)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_plym2m, protonic-imx6/flash-header-plym2m, protonic-plym2m)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtmvt, protonic-imx6/flash-header-prtmvt, protonic-prtmvt)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtrvt, protonic-imx6/flash-header-prtrvt, protonic-prtrvt)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_prtvt7, protonic-imx6/flash-header-prtvt7, protonic-prtvt7)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_victgo, protonic-imx6/flash-header-victgo, protonic-victgo)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6dl_vicut1, protonic-imx6/flash-header-vicut1, protonic-vicut1)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_prtwd3, protonic-imx6/flash-header-prtwd3, protonic-prtwd3)
> +
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6qp_vicutp, protonic-imx6/flash-header-vicutp, protonic-vicutp)
> +
>  $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6q_samx6i, kontron-samx6i/flash-header-samx6i-quad, imx6q-samx6i)
>  
>  $(call build_imx_habv4img, CONFIG_MACH_KONTRON_SAMX6I, start_imx6dl_samx6i, kontron-samx6i/flash-header-samx6i-duallite, imx6dl-samx6i)
> @@ -326,6 +354,8 @@ $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx
>  
>  $(call build_imx_habv4img, CONFIG_MACH_PHYTEC_SOM_IMX6, start_phytec_phycore_imx6ull_som_emmc_512mb, phytec-som-imx6/flash-header-phytec-pcl063-512mb, phytec-phycore-imx6ull-emmc-512mb)
>  
> +$(call build_imx_habv4img, CONFIG_MACH_PROTONIC_IMX6, start_imx6ul_prti6g, protonic-imx6/flash-header-prti6g, protonic-prti6g)
> +
>  $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_256mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-256, imx6ul-pico-hobbit-256mb)
>  
>  $(call build_imx_habv4img, CONFIG_MACH_TECHNEXION_PICO_HOBBIT, start_imx6ul_pico_hobbit_512mb, technexion-pico-hobbit/flash-header-imx6ul-pico-hobbit-512, imx6ul-pico-hobbit-512mb)
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
