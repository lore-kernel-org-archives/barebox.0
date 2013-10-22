Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VYVzK-0003zT-OQ
 for barebox@lists.infradead.org; Tue, 22 Oct 2013 07:02:47 +0000
Date: Tue, 22 Oct 2013 09:02:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131022070224.GJ30088@pengutronix.de>
References: <1382353671-22937-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1382353671-22937-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: i.MX51: Update DTS template
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Mon, Oct 21, 2013 at 03:07:51PM +0400, Alexander Shiyan wrote:
> Update i.MX51 DT template from kernel.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/dts/imx51.dtsi | 715 ++++++++++++++++++++++++++----------------------
>  1 file changed, 393 insertions(+), 322 deletions(-)
> 
> diff --git a/arch/arm/dts/imx51.dtsi b/arch/arm/dts/imx51.dtsi
> index 1a71ec9..f4dcff3 100644
> --- a/arch/arm/dts/imx51.dtsi
> +++ b/arch/arm/dts/imx51.dtsi
> @@ -15,18 +15,18 @@
>  
>  / {
>  	aliases {
> -		serial0 = &uart1;
> -		serial1 = &uart2;
> -		serial2 = &uart3;
>  		gpio0 = &gpio1;
>  		gpio1 = &gpio2;
>  		gpio2 = &gpio3;
>  		gpio3 = &gpio4;
> -		mmc0 = &esdhc1;
> -		mmc1 = &esdhc2;
> -		mmc2 = &esdhc3;
> -		mmc3 = &esdhc4;
> -		pata0 = &pata;

I kept these. We need them for persistent device names.

Applied, thanks

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
