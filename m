Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMaDA-0007Ff-93
 for barebox@lists.infradead.org; Fri, 12 Oct 2012 08:03:12 +0000
Date: Fri, 12 Oct 2012 10:03:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121012080310.GI27665@pengutronix.de>
References: <1349865771-18825-1-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1349865771-18825-1-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 1/2] parameter: fix memory leak
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Oct 10, 2012 at 12:42:50PM +0200, Jan Luebbe wrote:
> In __dev_add_param, the name string is allocated using strdup.
> Free it when removing the parameter.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>

Applied, thanks

Sascha

> ---
>  lib/parameter.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index 3ecb480..b33ad17 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -224,6 +224,7 @@ void dev_remove_parameters(struct device_d *dev)
>  	list_for_each_entry_safe(p, n, &dev->parameters, list) {
>  		p->set(dev, p, NULL);
>  		list_del(&p->list);
> +		free(p->name);
>  		free(p);
>  	}
>  }
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
