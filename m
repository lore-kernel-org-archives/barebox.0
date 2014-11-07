Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmdXb-00061m-Gb
 for barebox@lists.infradead.org; Fri, 07 Nov 2014 07:01:04 +0000
Date: Fri, 7 Nov 2014 08:00:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141107070040.GX30369@pengutronix.de>
References: <1415283038-5097-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415283038-5097-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] blspec: fix incompatible pointer type warning
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 06, 2014 at 03:10:38PM +0100, Lucas Stach wrote:
> The warning is correct in that we pass in size_t instead
> of int. As we are not interested in the size of the
> property at this point, just remove the assignment.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  common/blspec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index a4adc48da967..f46a11d44c0e 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -294,7 +294,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
>  	}
>  
>  	pr_info("ignoring entry with incompatible devicetree \"%s\"\n",
> -			(char *)of_get_property(root, "compatible", &size));
> +			(char *)of_get_property(root, "compatible", NULL));
>  
>  	ret = false;
>  
> -- 
> 2.1.1
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
