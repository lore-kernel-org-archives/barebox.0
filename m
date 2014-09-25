Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XX2Kh-0004C0-EN
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 06:15:16 +0000
Date: Thu, 25 Sep 2014 08:14:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140925061453.GI4992@pengutronix.de>
References: <1411569797-12017-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1411569797-12017-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] imx35-regs: add UART2 to CCM defines
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 24, 2014 at 04:43:17PM +0200, Eric B=E9nard wrote:
> Signed-off-by: Eric B=E9nard <eric@eukrea.com>
> ---
>  arch/arm/mach-imx/include/mach/imx35-regs.h | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> =

> diff --git a/arch/arm/mach-imx/include/mach/imx35-regs.h b/arch/arm/mach-=
imx/include/mach/imx35-regs.h
> index bbfde23..b30037c 100644
> --- a/arch/arm/mach-imx/include/mach/imx35-regs.h
> +++ b/arch/arm/mach-imx/include/mach/imx35-regs.h
> @@ -153,6 +153,7 @@
>  #define MX35_CCM_CGR1_FEC_SHIFT	0
>  #define MX35_CCM_CGR1_I2C1_SHIFT	10
>  #define MX35_CCM_CGR1_SDHC1_SHIFT	26
> +#define MX35_CCM_CGR2_UART2_SHIFT	18
>  #define MX35_CCM_CGR2_USB_SHIFT	22
>  =

>  #define MX35_CCM_RCSR_MEM_CTRL_SHIFT		25
> -- =

> 1.9.3
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
