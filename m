Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPNS4-0006FU-Vt
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:01:42 +0000
Date: Wed, 21 Nov 2018 09:01:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121080124.s47maw3ex6dmzgm7@pengutronix.de>
References: <20181120094035.18252-1-matthias.schiffer@ew.tq-group.com>
 <20181120094035.18252-3-matthias.schiffer@ew.tq-group.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181120094035.18252-3-matthias.schiffer@ew.tq-group.com>
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
Subject: Re: [PATCH] FIT: look for hash-1 as well as hash@1 nodes in
 signature check
To: matthias.schiffer@ew.tq-group.com
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2018 at 10:40:35AM +0100, matthias.schiffer@ew.tq-group.com wrote:
> From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> 
> The examples in the U-boot docs use "hash-N" as the name for hash nodes.
> It seems "hash@N" was used instead at some point during the development of
> the FIT format and "hash-N" is more correct; support for "hash@N" is
> preserved for backward compatibility.

Indeed. dtc lately throughs warnings when a node with a '@' in it
doesn't have a reg property.

> 
> Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
> ---
>  common/image-fit.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index dfd1fa02c..356c1ae5d 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -392,7 +392,9 @@ static int fit_verify_hash(struct fit_handle *handle, struct device_node *image,
>  		ret = -EINVAL;
>  	}
>  
> -	hash = of_get_child_by_name(image, "hash@1");
> +	hash = of_get_child_by_name(image, "hash-1");
> +	if (!hash)
> +		hash = of_get_child_by_name(image, "hash@1");

A few lines below we have the same with:

	sig_node = of_get_child_by_name(image, "signature@1");

Care to fix this aswell in this patch?

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
