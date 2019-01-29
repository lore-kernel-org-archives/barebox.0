Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goOJS-0007HY-K1
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 08:00:08 +0000
Date: Tue, 29 Jan 2019 09:00:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190129080003.jiddsvklwq274um5@pengutronix.de>
References: <20190125170640.19469-1-l.stach@pengutronix.de>
 <20190125170640.19469-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190125170640.19469-3-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 3/3] ARM: nxp-imx8mq-evk: include the HDMI firmware in
 the image
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 25, 2019 at 06:06:40PM +0100, Lucas Stach wrote:
> The board has a HDMI output by default, so it makes sense to include
> the necessary firmware for this.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> index aff8321b9ad6..b0016372314a 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> +++ b/arch/arm/boards/nxp-imx8mq-evk/flash-header-imx8mq-evk.imxcfg
> @@ -3,3 +3,4 @@ soc imx8mq
>  loadaddr 0x007E1000
>  max_load_size 0x3F000
>  dcdofs 0x400
> +signed_hdmi_firmware firmware/imx/signed_hdmi_imx8m.bin

The HDMI firmware is not part of this commit, so this breaks the build.

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
