Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8ScY-0003R9-53
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 09:07:06 +0000
Date: Mon, 3 Sep 2012 11:07:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903090700.GG26594@pengutronix.de>
References: <1346653494-24187-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346653494-24187-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] nhk8815: fix nand IO_DATA end resource
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Sep 03, 2012 at 08:24:54AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> introduce in commit
> 5f03074ea98b64b55c133b35ee144fdc909e6d69
> resource: store 'end' instead of 'size' in struct resource
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/nhk8815/setup.c |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/nhk8815/setup.c b/arch/arm/boards/nhk8815/setup.c
> index ccc0510..5820114 100644
> --- a/arch/arm/boards/nhk8815/setup.c
> +++ b/arch/arm/boards/nhk8815/setup.c
> @@ -63,7 +63,7 @@ static struct resource nhk8815_nand_resources[] = {
>  		.flags	= IORESOURCE_MEM,
>  	}, {
>  		.start	= NAND_IO_DATA,
> -		.end	= NAND_IO_CMD + 0xfff,
> +		.end	= NAND_IO_DATA + 0xfff,
>  		.flags	= IORESOURCE_MEM,
>  	}
>  };
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
