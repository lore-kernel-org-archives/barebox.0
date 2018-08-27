Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fuCEF-0002SS-LB
 for barebox@lists.infradead.org; Mon, 27 Aug 2018 07:46:29 +0000
Date: Mon, 27 Aug 2018 09:46:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180827074615.uv4dfqnck2jijb7w@pengutronix.de>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
 <20180825210315.4661-2-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180825210315.4661-2-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/6] clk: i.MX: Port Linux clock tree for i.MX51 and i.MX53
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Sat, Aug 25, 2018 at 02:03:10PM -0700, Andrey Smirnov wrote:
> Existing clock tree code for i.MX5 in Barebox predates DT and is not
> aware of it. This results in missing clocks on DT-based boards like
> RDU1 and Babbage.
> 
> Port clock tree from Linux to resolve this proble. In order to avoid
> breaking any other current users, change new code's compatiblity
> string prefix from "fsl" to "barebox", so that converstion to new
> clock could be done on per-board basis.

If a board changes the CCM compatible string in its internal device tree
this means it is no longer able to start a kernel with this device tree.

Also this means that the author of a new board actively has to change
the device tree to something barebox specific - something which is
forgotten too easy.

Last not least I think we'll never reach a state when the last board
is tested and converted so that we can remove the old code.

For these reasons I do not like the approach. I think we have to just
jump into the cold water and risk the regressions, like we always do.

I can test this addiitionally on the GuF Vincell and i.MX53 QSB if that
makes you more confident.

Sascha

> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  drivers/clk/imx/Makefile          |   2 +-
>  drivers/clk/imx/clk-imx51-imx53.c | 549 ++++++++++++++++++++++++++++++
>  2 files changed, 550 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/clk/imx/clk-imx51-imx53.c
> 
> +	clk[IMX5_CLK_SSI_APM]		= imx_clk_mux("ssi_apm", MXC_CCM_CSCMR1, 8, 2, ssi_apm_sels, ARRAY_SIZE(ssi_apm_sels));
> +	clk[IMX5_CLK_SSI1_ROOT_SEL]	= imx_clk_mux("ssi1_root_sel", MXC_CCM_CSCMR1, 14, 2, ssi_clk_sels, ARRAY_SIZE(ssi_clk_sels));
> +	clk[IMX5_CLK_SSI2_ROOT_SEL]	= imx_clk_mux("ssi2_root_sel", MXC_CCM_CSCMR1, 12, 2, ssi_clk_sels, ARRAY_SIZE(ssi_clk_sels));
> +	clk[IMX5_CLK_SSI3_ROOT_SEL]	= imx_clk_mux("ssi3_root_sel", MXC_CCM_CSCMR1, 11, 1, ssi3_clk_sels, ARRAY_SIZE(ssi3_clk_sels));
> +	clk[IMX5_CLK_SSI_EXT1_SEL]	= imx_clk_mux("ssi_ext1_sel", MXC_CCM_CSCMR1, 28, 2, ssi_clk_sels, ARRAY_SIZE(ssi_clk_sels));
> +	clk[IMX5_CLK_SSI_EXT2_SEL]	= imx_clk_mux("ssi_ext2_sel", MXC_CCM_CSCMR1, 30, 2, ssi_clk_sels, ARRAY_SIZE(ssi_clk_sels));
> +	clk[IMX5_CLK_SSI_EXT1_COM_SEL]	= imx_clk_mux("ssi_ext1_com_sel", MXC_CCM_CSCMR1, 0, 1, ssi_ext1_com_sels, ARRAY_SIZE(ssi_ext1_com_sels));
> +	clk[IMX5_CLK_SSI_EXT2_COM_SEL]	= imx_clk_mux("ssi_ext2_com_sel", MXC_CCM_CSCMR1, 1, 1, ssi_ext2_com_sels, ARRAY_SIZE(ssi_ext2_com_sels));
> +	clk[IMX5_CLK_SSI1_ROOT_PRED]	= imx_clk_divider("ssi1_root_pred", "ssi1_root_sel", MXC_CCM_CS1CDR, 6, 3);
> +	clk[IMX5_CLK_SSI1_ROOT_PODF]	= imx_clk_divider("ssi1_root_podf", "ssi1_root_pred", MXC_CCM_CS1CDR, 0, 6);
> +	clk[IMX5_CLK_SSI2_ROOT_PRED]	= imx_clk_divider("ssi2_root_pred", "ssi2_root_sel", MXC_CCM_CS2CDR, 6, 3);
> +	clk[IMX5_CLK_SSI2_ROOT_PODF]	= imx_clk_divider("ssi2_root_podf", "ssi2_root_pred", MXC_CCM_CS2CDR, 0, 6);
> +	clk[IMX5_CLK_SSI_EXT1_PRED]	= imx_clk_divider("ssi_ext1_pred", "ssi_ext1_sel", MXC_CCM_CS1CDR, 22, 3);
> +	clk[IMX5_CLK_SSI_EXT1_PODF]	= imx_clk_divider("ssi_ext1_podf", "ssi_ext1_pred", MXC_CCM_CS1CDR, 16, 6);
> +	clk[IMX5_CLK_SSI_EXT2_PRED]	= imx_clk_divider("ssi_ext2_pred", "ssi_ext2_sel", MXC_CCM_CS2CDR, 22, 3);
> +	clk[IMX5_CLK_SSI_EXT2_PODF]	= imx_clk_divider("ssi_ext2_podf", "ssi_ext2_pred", MXC_CCM_CS2CDR, 16, 6);
> +	clk[IMX5_CLK_SSI1_ROOT_GATE]	= imx_clk_gate2("ssi1_root_gate", "ssi1_root_podf", MXC_CCM_CCGR3, 18);
> +	clk[IMX5_CLK_SSI2_ROOT_GATE]	= imx_clk_gate2("ssi2_root_gate", "ssi2_root_podf", MXC_CCM_CCGR3, 22);
> +	clk[IMX5_CLK_SSI3_ROOT_GATE]	= imx_clk_gate2("ssi3_root_gate", "ssi3_root_sel", MXC_CCM_CCGR3, 26);
> +	clk[IMX5_CLK_SSI_EXT1_GATE]	= imx_clk_gate2("ssi_ext1_gate", "ssi_ext1_com_sel", MXC_CCM_CCGR3, 28);
> +	clk[IMX5_CLK_SSI_EXT2_GATE]	= imx_clk_gate2("ssi_ext2_gate", "ssi_ext2_com_sel", MXC_CCM_CCGR3, 30);
> +	clk[IMX5_CLK_EPIT1_IPG_GATE]	= imx_clk_gate2("epit1_ipg_gate", "ipg", MXC_CCM_CCGR2, 2);
> +	clk[IMX5_CLK_EPIT1_HF_GATE]	= imx_clk_gate2("epit1_hf_gate", "per_root", MXC_CCM_CCGR2, 4);
> +	clk[IMX5_CLK_EPIT2_IPG_GATE]	= imx_clk_gate2("epit2_ipg_gate", "ipg", MXC_CCM_CCGR2, 6);
> +	clk[IMX5_CLK_EPIT2_HF_GATE]	= imx_clk_gate2("epit2_hf_gate", "per_root", MXC_CCM_CCGR2, 8);
> +	clk[IMX5_CLK_OWIRE_GATE]	= imx_clk_gate2("owire_gate", "per_root", MXC_CCM_CCGR2, 22);
> +	clk[IMX5_CLK_SRTC_GATE]		= imx_clk_gate2("srtc_gate", "per_root", MXC_CCM_CCGR4, 28);
> +	clk[IMX5_CLK_PATA_GATE]		= imx_clk_gate2("pata_gate", "ipg", MXC_CCM_CCGR4, 0);
> +	clk[IMX5_CLK_SPDIF0_SEL]	= imx_clk_mux("spdif0_sel", MXC_CCM_CSCMR2, 0, 2, spdif_sel, ARRAY_SIZE(spdif_sel));
> +	clk[IMX5_CLK_SPDIF0_PRED]	= imx_clk_divider("spdif0_pred", "spdif0_sel", MXC_CCM_CDCDR, 25, 3);
> +	clk[IMX5_CLK_SPDIF0_PODF]	= imx_clk_divider("spdif0_podf", "spdif0_pred", MXC_CCM_CDCDR, 19, 6);
> +	clk[IMX5_CLK_SPDIF0_COM_SEL]	= imx_clk_mux_flags("spdif0_com_sel", MXC_CCM_CSCMR2, 4, 1,
> +						spdif0_com_sel, ARRAY_SIZE(spdif0_com_sel), CLK_SET_RATE_PARENT);
> +	clk[IMX5_CLK_SPDIF0_GATE]	= imx_clk_gate2("spdif0_gate", "spdif0_com_sel", MXC_CCM_CCGR5, 26);
> +	clk[IMX5_CLK_SPDIF_IPG_GATE]	= imx_clk_gate2("spdif_ipg_gate", "ipg", MXC_CCM_CCGR5, 30);

We can remove all the sound related stuff here.

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
