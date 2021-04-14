Delivery-date: Wed, 14 Apr 2021 16:38:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWgf1-0003pO-K7
	for lore@lore.pengutronix.de; Wed, 14 Apr 2021 16:38:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWgf0-0005vI-9j
	for lore@pengutronix.de; Wed, 14 Apr 2021 16:38:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=lPEQh4eGubKN/RH0hxUW0iw5aI/Ccd69FND+i3Ji6kI=; b=fVf0v3v5/ec0Oji79N5VqJWJH
	p4XDa/9hzRmJeU9wPDNdOcDwfvV4xPVaAVonG+MTg1UlPlvLSKf/8aw/Of/gAeb5PE8NzyfaudMXF
	fe+APdrEG4hxtPAEB6VZp3fBBRdVIorbbeoM5OnzPMuoDnVHPWlWFZlCcQgFuXORhxpFFtBox8EMa
	zu3RlZDh3qsRMdhjx/z4W5Q0V3nfFWEQ/2lkaFxQFYDxS+KvlwAQY/53ByWqgIzMk3AmL2ODWG/Fj
	zmX+xPx0VMm6cclQPcyvNbbrpjU/lPiMuvJcQLOrTEa5FfpUkiEGm+8gvXnHG6lVjuQdkLCenAD6+
	a6o311vhw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWgdw-00CuLO-Kl; Wed, 14 Apr 2021 14:37:25 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWgdn-00CuKl-Lf
 for barebox@desiato.infradead.org; Wed, 14 Apr 2021 14:37:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=From:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=i0ZqB662oDGoIIs8kMV+SBQwagp272zMD1S0ux0edqE=; b=uTUkV1ApTS9JTByeH631uttrKE
 Vok7zwGyswcxUZXZJxM0D2N4vJLRf/xRblz4sCM1y6kPondhXs+fdj4LwVuslSF+Yhg1ZxwOVlAuf
 u9dptc9z93/10iTzZiWEC9jQAwFRLMhq57FwJkc8Om9c1hiUUVmTe2YioXgsDb3+Pun5Y4jyzWub+
 26h0aFXfx+vEjFSAkRKviVVQKlpllSnunRUc7PtHst35YkvMm2fZSTvnk/gut2cYqRS97AfZheSFE
 llkUUa6Zau0CJMZSGSS+I3gb/dBnK1ytmjHck8Dm3KBebPAiuY2w/g1mggW/Jau+viZ4NtZwLjHuD
 mpYIdv3A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWgdj-007peY-V2
 for barebox@lists.infradead.org; Wed, 14 Apr 2021 14:37:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWgdi-0005l1-Nd; Wed, 14 Apr 2021 16:37:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lWgdi-0007Bp-ER; Wed, 14 Apr 2021 16:37:10 +0200
Date: Wed, 14 Apr 2021 16:37:10 +0200
To: Lars Pedersen <lapeddk@gmail.com>
Cc: barebox@lists.infradead.org, Bruno Thomsen <bruno.thomsen@gmail.com>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20210414143710.GY19819@pengutronix.de>
References: <20210413061727.186938-1-lapeddk@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210413061727.186938-1-lapeddk@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 16:36:42 up 55 days, 18:00, 103 users,  load average: 0.10, 0.06,
 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210414_073712_353793_7DEFF59A 
X-CRM114-Status: GOOD (  31.34  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] ARM: i.MX: Kamstrup mx7 concentrator board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Apr 13, 2021 at 08:17:27AM +0200, Lars Pedersen wrote:
> This adds support for Kamstrup mx7 concentrator board
> 
> Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
> Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> Changes since v1:
> - Removed all board.c specific stuff
> - Board power reset via new GPIO board power-off driver
> - TPM reset will now be handled entirely in hardware
> - Set barebox_set_model removed.

Applied like it is here, without the fixup.

Sascha

> 
>  arch/arm/boards/Makefile                      |   1 +
>  .../boards/kamstrup-mx7-concentrator/Makefile |   1 +
>  .../flash-header-tqma7d.imxcfg                |  79 +++++++++++++
>  .../kamstrup-mx7-concentrator/lowlevel.c      |  35 ++++++
>  arch/arm/configs/imx_v7_defconfig             |   1 +
>  arch/arm/dts/Makefile                         |   1 +
>  arch/arm/dts/imx7d-flex-concentrator-mfg.dts  | 108 ++++++++++++++++++
>  arch/arm/mach-imx/Kconfig                     |   5 +
>  images/Makefile.imx                           |   5 +
>  9 files changed, 236 insertions(+)
>  create mode 100644 arch/arm/boards/kamstrup-mx7-concentrator/Makefile
>  create mode 100644 arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
>  create mode 100644 arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
>  create mode 100644 arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> 
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index 9ccb75e27..0e59d6a77 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -63,6 +63,7 @@ obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
>  obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
>  obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
>  obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
> +obj-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR)	+= kamstrup-mx7-concentrator/
>  obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
>  obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
>  obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/Makefile b/arch/arm/boards/kamstrup-mx7-concentrator/Makefile
> new file mode 100644
> index 000000000..7ab9f5274
> --- /dev/null
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/Makefile
> @@ -0,0 +1 @@
> +lwl-y += lowlevel.o
> \ No newline at end of file
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
> new file mode 100644
> index 000000000..4b3632411
> --- /dev/null
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
> @@ -0,0 +1,79 @@
> +soc imx7
> +loadaddr 0xbfbff000
> +ivtofs 0x400
> +
> +#include <mach/imx7-ddr-regs.h>
> +
> +wm 32 0x30340004 0x4F400005 /* IOMUXC_GPR_GPR1 */
> +/* Clear then set bit30 to ensure exit from DDR retention */
> +wm 32 0x30360388 0x40000000
> +wm 32 0x30360384 0x40000000
> +
> +/* TQMa7x DRAM Timing REV0100 */
> +/* DCD Code i.MX7D/S 528 MHz 1 GByte Samsung K4B4G1646D */
> +wm 32 0x30360070 0x0070302C /* CCM_ANALOG_PLL_DDRx */
> +wm 32  0x30360090 0x00000000 /* CCM_ANALOG_PLL_NUM */
> +wm 32  0x30360070 0x0060302C /* CCM_ANALOG_PLL_DDRx */
> +check 32 until_all_bits_set 0x30360070 0x80000000
> +wm 32 0x30391000 0x00000002 /* SRC_DDRC_RCR */
> +
> +wm 32 MX7_DDRC_MSTR 0x01040001
> +wm 32 MX7_DDRC_DFIUPD0 0x80400003
> +wm 32 MX7_DDRC_DFIUPD1 0x00100020
> +wm 32 MX7_DDRC_DFIUPD2 0x80100004
> +wm 32 MX7_DDRC_RFSHTMG 0x00200045
> +wm 32 MX7_DDRC_MP_PCTRL_0 0x00000001
> +wm 32 MX7_DDRC_INIT0 0x00020081
> +wm 32 MX7_DDRC_INIT1 0x00680000
> +wm 32 MX7_DDRC_INIT3 0x09300004
> +wm 32 MX7_DDRC_INIT4 0x00480000
> +wm 32 MX7_DDRC_INIT5 0x00100004
> +wm 32 MX7_DDRC_RANKCTL 0x0000033F
> +wm 32 MX7_DDRC_DRAMTMG0 0x090E0809
> +wm 32 MX7_DDRC_DRAMTMG1 0x0007020E
> +wm 32 MX7_DDRC_DRAMTMG2 0x03040407
> +wm 32 MX7_DDRC_DRAMTMG3 0x00002006
> +wm 32 MX7_DDRC_DRAMTMG4 0x04020304
> +wm 32 MX7_DDRC_DRAMTMG5 0x03030202
> +wm 32 MX7_DDRC_DRAMTMG8 0x00000803
> +wm 32 MX7_DDRC_ZQCTL0 0x00800020
> +wm 32 MX7_DDRC_DFITMG0 0x02098204
> +wm 32 MX7_DDRC_DFITMG1 0x00030303
> +wm 32 MX7_DDRC_ADDRMAP0 0x00000016
> +wm 32 MX7_DDRC_ADDRMAP1 0x00171717
> +wm 32 MX7_DDRC_ADDRMAP4 0x00000F0F
> +wm 32 MX7_DDRC_ADDRMAP5 0x04040404
> +wm 32 MX7_DDRC_ADDRMAP6 0x0F040404
> +wm 32 MX7_DDRC_ODTCFG 0x06000604
> +wm 32 MX7_DDRC_ODTMAP 0x00000001
> +wm 32 0x30391000 0x00000000 /* SRC_DDRC_RCR */
> +wm 32 MX7_DDR_PHY_PHY_CON0 0x17420F40
> +wm 32 MX7_DDR_PHY_PHY_CON1 0x10210100
> +wm 32 MX7_DDR_PHY_PHY_CON4 0x00060807
> +wm 32 MX7_DDR_PHY_MDLL_CON0 0x1010007E
> +wm 32 MX7_DDR_PHY_DRVDS_CON0 0x00000924
> +/* DDR_PHY_CMD_DESKEW_CON0 not set */
> +/* DDR_PHY_CMD_DESKEW_CON1 not set */
> +/* DDR_PHY_CMD_DESKEW_CON2 not set */
> +/* DDR_PHY_CMD_DESKEW_CON3 not set */
> +/* DDR_PHY_LVL_CON0 not set */
> +wm 32 MX7_DDR_PHY_OFFSET_RD_CON0 0x0B0B0B0B
> +wm 32 MX7_DDR_PHY_OFFSET_WR_CON0 0x06060606
> +wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x01000010
> +wm 32 MX7_DDR_PHY_CMD_SDLL_CON0 0x00000010
> +
> +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C407304
> +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447304
> +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447306
> +check 32 until_all_bits_set MX7_DDR_PHY_ZQ_CON1 0x1 /* ZQ Calibration is finished */
> +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C447304
> +wm 32 MX7_DDR_PHY_ZQ_CON0 0x0C407304
> +
> +wm 32 0x30384130 0x00000000 /* CCM_CCGRn */
> +wm 32 0x30340020 0x00000178 /* IOMUXC_GPR_GPR8 */
> +wm 32 0x30384130 0x00000002 /* CCM_CCGRn */
> +wm 32 0x30790018 0x0000000f /* DDR_PHY_LP_CON0 */
> +
> +/* DDRC_STAT */
> +check 32 until_all_bits_set 0x307a0004 0x1
> +
> diff --git a/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> new file mode 100644
> index 000000000..8cd6d67f7
> --- /dev/null
> +++ b/arch/arm/boards/kamstrup-mx7-concentrator/lowlevel.c
> @@ -0,0 +1,35 @@
> +#include <debug_ll.h>
> +#include <io.h>
> +#include <common.h>
> +#include <linux/sizes.h>
> +#include <mach/generic.h>
> +#include <asm/barebox-arm-head.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/imx7-ccm-regs.h>
> +#include <mach/iomux-mx7.h>
> +#include <mach/debug_ll.h>
> +#include <asm/cache.h>
> +#include <mach/esdctl.h>
> +
> +extern char __dtb_z_imx7d_flex_concentrator_mfg_start[];
> +
> +static inline void setup_uart(void)
> +{
> +	imx7_early_setup_uart_clock();
> +
> +	imx7_setup_pad(MX7D_PAD_SAI2_TX_BCLK__UART4_DCE_TX);
> +
> +	imx7_uart_setup_ll();
> +
> +	putc_ll('>');
> +}
> +
> +ENTRY_FUNCTION(start_kamstrup_mx7_concentrator, r0, r1, r2)
> +{
> +	imx7_cpu_lowlevel_init();
> +
> +	if (IS_ENABLED(CONFIG_DEBUG_LL))
> +		setup_uart();
> +
> +	imx7d_barebox_entry(__dtb_z_imx7d_flex_concentrator_mfg_start + get_runtime_offset());
> +}
> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_defconfig
> index 16e109464..624698ae3 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -13,6 +13,7 @@ CONFIG_MACH_FREESCALE_MX53_VMX53=y
>  CONFIG_MACH_TX53=y
>  CONFIG_MACH_PHYTEC_SOM_IMX6=y
>  CONFIG_MACH_PROTONIC_IMX6=y
> +CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR=y
>  CONFIG_MACH_KONTRON_SAMX6I=y
>  CONFIG_MACH_DFI_FS700_M60=y
>  CONFIG_MACH_GUF_SANTARO=y
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index d5f61768a..d66b6db07 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -30,6 +30,7 @@ lwl-$(CONFIG_MACH_GRINN_LITEBOARD) += imx6ul-liteboard.dtb.o
>  lwl-$(CONFIG_MACH_GUF_SANTARO) += imx6q-guf-santaro.dtb.o
>  lwl-$(CONFIG_MACH_GUF_VINCELL) += imx53-guf-vincell.dtb.o imx53-guf-vincell-lt.dtb.o
>  lwl-$(CONFIG_MACH_GW_VENTANA) += imx6q-gw54xx.dtb.o
> +lwl-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += imx7d-flex-concentrator-mfg.dtb.o
>  lwl-$(CONFIG_MACH_KONTRON_SAMX6I) += imx6q-samx6i.dtb.o \
>  					imx6dl-samx6i.dtb.o
>  lwl-$(CONFIG_MACH_LENOVO_IX4_300D) += armada-xp-lenovo-ix4-300d-bb.dtb.o
> diff --git a/arch/arm/dts/imx7d-flex-concentrator-mfg.dts b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> new file mode 100644
> index 000000000..d174ef725
> --- /dev/null
> +++ b/arch/arm/dts/imx7d-flex-concentrator-mfg.dts
> @@ -0,0 +1,108 @@
> +/*
> + * The code contained herein is licensed under the GNU General Public
> + * License. You may obtain a copy of the GNU General Public License
> + * Version 2 or later at the following locations:
> + *
> + * http://www.opensource.org/licenses/gpl-license.html
> + * http://www.gnu.org/copyleft/gpl.html
> + */
> +
> +#include <arm/imx7d-flex-concentrator-mfg.dts>
> +
> +/ {
> +	chosen {
> +		environment {
> +			compatible = "barebox,environment";
> +			device-path = &environment_emmc;
> +		};
> +	};
> +
> +	aliases {
> +		state = &state_emmc;
> +	};
> +
> +	state_emmc: state {
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		compatible = "barebox,state";
> +		magic = <0x4b414d31>;
> +		backend-type = "raw";
> +		backend = <&backend_state_emmc>;
> +		backend-stridesize = <0x200>;
> +
> +		bootstate {
> +			#address-cells = <1>;
> +			#size-cells = <1>;
> +
> +			system0 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts@0 {
> +					reg = <0x0 0x4>;
> +					type = "uint32";
> +					default = <10>;
> +				};
> +
> +				priority@4 {
> +					reg = <0x4 0x4>;
> +					type = "uint32";
> +					default = <21>;
> +				};
> +			};
> +
> +			system1 {
> +				#address-cells = <1>;
> +				#size-cells = <1>;
> +
> +				remaining_attempts@8 {
> +					reg = <0x8 0x4>;
> +					type = "uint32";
> +					default = <0>;
> +				};
> +
> +				priority@c {
> +					reg = <0xc 0x4>;
> +					type = "uint32";
> +					default = <20>;
> +				};
> +			};
> +
> +			last_chosen@10 {
> +				reg = <0x10 0x4>;
> +				type = "uint32";
> +			};
> +		};
> +	};
> +};
> +
> +/* eMMC */
> +&usdhc3 {
> +	partitions {
> +		compatible = "fixed-partitions";
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +
> +		partition@0 {
> +			label = "barebox";
> +			reg = <0x0 0x100000>;
> +		};
> +
> +		environment_emmc: partition@100000 {
> +			label = "barebox-environment";
> +			reg = <0x100000 0x100000>;
> +		};
> +
> +		backend_state_emmc: partition@200000 {
> +			label = "barebox-state";
> +			reg = <0x200000 0x100000>;
> +		};
> +	};
> +};
> +
> +/* FIXME: barebox serial is broken when barebox applies requested reparenting */
> +&uart4 {
> +	/delete-property/ assigned-clocks;
> +	/delete-property/ assigned-clock-parents;
> +};
> +
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 3f8012c73..cc73d0a0d 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -526,6 +526,11 @@ config MACH_FREESCALE_MX7_SABRESD
>  
>  	  https://goo.gl/6EKGdk
>  
> +config MACH_KAMSTRUP_MX7_CONCENTRATOR
> +	bool "Kamstrup i.MX7 Concentrator"
> +	select ARCH_IMX7
> +	select ARM_USE_COMPRESSED_DTB
> +
>  config MACH_NXP_IMX6ULL_EVK
>  	bool "NXP i.MX6ull EVK Board"
>  	select ARCH_IMX6UL
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index b892ec019..bc5ad1c7c 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -403,6 +403,11 @@ CFG_start_zii_imx7d_dev.pblb.imximg = $(board)/zii-imx7d-dev/flash-header-zii-im
>  FILE_barebox-zii-imx7d-dev.img = start_zii_imx7d_dev.pblb.imximg
>  image-$(CONFIG_MACH_ZII_IMX7D_DEV) += barebox-zii-imx7d-dev.img
>  
> +pblb-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += start_kamstrup_mx7_concentrator
> +CFG_start_kamstrup_mx7_concentrator.pblb.imximg = $(board)/kamstrup-mx7-concentrator/flash-header-tqma7d.imxcfg
> +FILE_barebox-kamstrup-mx7-concentrator.img = start_kamstrup_mx7_concentrator.pblb.imximg
> +image-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR) += barebox-kamstrup-mx7-concentrator.img
> +
>  # ----------------------- i.MX8mm based boards --------------------------
>  pblb-$(CONFIG_MACH_NXP_IMX8MM_EVK) += start_nxp_imx8mm_evk
>  CFG_start_nxp_imx8mm_evk.pblb.imximg = $(board)/nxp-imx8mm-evk/flash-header-imx8mm-evk.imxcfg
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

