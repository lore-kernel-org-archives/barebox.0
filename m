Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPk56-0003IE-6B
 for barebox@lists.infradead.org; Tue, 27 Jun 2017 06:34:38 +0000
Date: Tue, 27 Jun 2017 08:34:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170627063414.p67v4r5mlfphu7rl@pengutronix.de>
References: <1498230590-7661-1-git-send-email-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1498230590-7661-1-git-send-email-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH] ARM: dts: i.MX6: fix usdhc3 pinmuxing on tqma6x
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jun 23, 2017 at 05:09:50PM +0200, Michael Tretter wrote:
> The usdhc3 pin group wrongly referred the SD4 pads instead of the SD3 pads.
> This leads to issues when muxing the SD4_CMD and SD4_CLK pads for uart3.
> 
> This regression was introduced by code refactoring in commit a5207a6 ("ARM:
> dts: i.MX6: drop usage of pin group defines").
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/dts/imx6qdl-tqma6x.dtsi | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/dts/imx6qdl-tqma6x.dtsi b/arch/arm/dts/imx6qdl-tqma6x.dtsi
> index f0b1a0db7..82f9ec368 100644
> --- a/arch/arm/dts/imx6qdl-tqma6x.dtsi
> +++ b/arch/arm/dts/imx6qdl-tqma6x.dtsi
> @@ -76,12 +76,12 @@
>  
>  		pinctrl_usdhc3: usdhc3grp {
>  			fsl,pins = <
> -				MX6QDL_PAD_SD4_CMD__SD4_CMD		0x17059
> -				MX6QDL_PAD_SD4_CLK__SD4_CLK		0x10059
> -				MX6QDL_PAD_SD4_DAT0__SD4_DATA0		0x17059
> -				MX6QDL_PAD_SD4_DAT1__SD4_DATA1		0x17059
> -				MX6QDL_PAD_SD4_DAT2__SD4_DATA2		0x17059
> -				MX6QDL_PAD_SD4_DAT3__SD4_DATA3		0x17059
> +				MX6QDL_PAD_SD3_CMD__SD3_CMD		0x17059
> +				MX6QDL_PAD_SD3_CLK__SD3_CLK		0x10059
> +				MX6QDL_PAD_SD3_DAT0__SD3_DATA0		0x17059
> +				MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
> +				MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
> +				MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
>  				MX6QDL_PAD_SD3_DAT4__SD3_DATA4		0x17059
>  				MX6QDL_PAD_SD3_DAT5__SD3_DATA5		0x17059
>  				MX6QDL_PAD_SD3_DAT6__SD3_DATA6		0x17059
> -- 
> 2.11.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
