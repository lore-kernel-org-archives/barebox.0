Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WkTLZ-00080u-Ab
 for barebox@lists.infradead.org; Wed, 14 May 2014 07:11:25 +0000
Date: Wed, 14 May 2014 09:11:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140514071103.GY5858@pengutronix.de>
References: <1400016811-9725-1-git-send-email-b.galvani@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400016811-9725-1-git-send-email-b.galvani@gmail.com>
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
Subject: Re: [PATCH] ARM: radxa-rock: set hostname after devicetree
 initialization
To: Beniamino Galvani <b.galvani@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, May 13, 2014 at 11:33:31PM +0200, Beniamino Galvani wrote:
> hostname_init() must be called after the devicetree root node has been
> initialized, otherwise the check on board compatible always returns
> false.
> 
> Signed-off-by: Beniamino Galvani <b.galvani@gmail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/radxa-rock/board.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/radxa-rock/board.c b/arch/arm/boards/radxa-rock/board.c
> index 691f243..3d9b5be 100644
> --- a/arch/arm/boards/radxa-rock/board.c
> +++ b/arch/arm/boards/radxa-rock/board.c
> @@ -84,4 +84,4 @@ static int hostname_init(void)
>  
>  	return 0;
>  }
> -core_initcall(hostname_init);
> +postcore_initcall(hostname_init);
> -- 
> 1.7.10.4
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
