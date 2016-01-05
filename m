Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aGMMx-0000Sb-S6
 for barebox@lists.infradead.org; Tue, 05 Jan 2016 07:49:29 +0000
Date: Tue, 5 Jan 2016 08:49:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160105074905.GM13058@pengutronix.de>
References: <1450484040.26955.228.camel@rtred1test09.kymeta.local>
 <20160104083257.GA13058@pengutronix.de>
 <1451934086.26955.274.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1451934086.26955.274.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 1/2] OF: fix typo in for_each_compatible_node()
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Mon, Jan 04, 2016 at 07:01:21PM +0000, Trent Piepho wrote:
> Missing closing parenthesis.
> 
> Signed-off-by: Trent Piepho <tpiepho@kymetacorp.com>

Applied, thanks.

BTW as long as the patches you fixup are in the next branch you can
commit the fixes with --fixup. This allows me to squash the fixup into
the correct patch without much thinking.

Sascha

> ---
>  include/of.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/of.h b/include/of.h
> index 18c92d7..75cc3c1 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -647,7 +647,7 @@ static inline struct device_node *of_find_node_by_path_or_alias(
>  	     dn = of_find_compatible_node(dn, type, compatible))
>  /* Iterate over compatible nodes in default device tree */
>  #define for_each_compatible_node(dn, type, compatible) \
> -        for_each_compatible_node_from(dn, NULL, type, compatible
> +        for_each_compatible_node_from(dn, NULL, type, compatible)
>  static inline struct device_node *of_find_matching_node(
>  	struct device_node *from,
>  	const struct of_device_id *matches)
> -- 
> 1.8.3.1
> 
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
