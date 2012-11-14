Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TYYFt-00026K-EU
 for barebox@lists.infradead.org; Wed, 14 Nov 2012 08:23:30 +0000
Date: Wed, 14 Nov 2012 09:23:27 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121114082327.GI10369@pengutronix.de>
References: <1352716147-13515-1-git-send-email-fabio.porcedda@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352716147-13515-1-git-send-email-fabio.porcedda@gmail.com>
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
Subject: Re: [PATCH] ARM pbl: add generated file zbarebox.map to .gitignore
To: Fabio Porcedda <fabio.porcedda@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Nov 12, 2012 at 11:29:07AM +0100, Fabio Porcedda wrote:
> Signed-off-by: Fabio Porcedda <fabio.porcedda@gmail.com>
> ---
>  arch/arm/pbl/.gitignore | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/pbl/.gitignore b/arch/arm/pbl/.gitignore
> index 3384d8b..d71bb7c 100644
> --- a/arch/arm/pbl/.gitignore
> +++ b/arch/arm/pbl/.gitignore
> @@ -3,3 +3,4 @@ piggy.lzo
>  zbarebox
>  zbarebox.bin
>  zbarebox.lds
> +zbarebox.map
> -- 
> 1.8.0
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
