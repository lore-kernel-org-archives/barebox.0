Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQpEZ-0000m2-HI
 for barebox@lists.infradead.org; Thu, 07 Jun 2018 07:21:25 +0000
Date: Thu, 7 Jun 2018 09:21:11 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180607072111.v4z6g3gfnaw36ms5@pengutronix.de>
References: <1528284502-39491-1-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1528284502-39491-1-git-send-email-t.remmet@phytec.de>
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
Subject: Re: [PATCH] mtd: core: Fix printing partitions in hex
To: Teresa Remmet <t.remmet@phytec.de>
Cc: barebox@lists.infradead.org

On Wed, Jun 06, 2018 at 01:28:22PM +0200, Teresa Remmet wrote:
> When printing the partition size with "0x" prefix the value has to
> be displayed in hex.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  drivers/mtd/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
> index d2012b5f70d6..ae7818a189d7 100644
> --- a/drivers/mtd/core.c
> +++ b/drivers/mtd/core.c
> @@ -473,7 +473,7 @@ static char *print_size(uint64_t s)
>  		return basprintf("%lldM", s >> 20);
>  	if (!(s & ((1 << 10) - 1)))
>  		return basprintf("%lldk", s >> 10);
> -	return basprintf("0x%lld", s);
> +	return basprintf("0x%llx", s);
>  }
>  
>  static int print_part(char *buf, int bufsize, struct mtd_info *mtd, uint64_t last_ofs,
> -- 
> 2.7.4
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
