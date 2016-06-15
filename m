Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bD3c3-0004hC-Lz
 for barebox@lists.infradead.org; Wed, 15 Jun 2016 05:43:40 +0000
Date: Wed, 15 Jun 2016 07:43:17 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160615054317.GB9677@pengutronix.de>
References: <20160614065506.25821-1-aar@pengutronix.de>
 <20160614065506.25821-2-aar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160614065506.25821-2-aar@pengutronix.de>
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
Subject: Re: [PATCH 2/2] ifup: fix handling when ip env is not given
To: Alexander Aring <aar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 14, 2016 at 08:55:06AM +0200, Alexander Aring wrote:
> This patch handles the ip env to "" if no ip env is given. Otherwise
> we get a NULL pointer derefence.
> 
> Signed-off-by: Alexander Aring <aar@pengutronix.de>
> ---
>  net/ifup.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/net/ifup.c b/net/ifup.c
> index 17e1b2f..59df069 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -94,6 +94,9 @@ int ifup(const char *name, unsigned flags)
>  		goto out;
>  
>  	ip = getenv("ip");
> +	if (!ip)
> +		ip = "";
> +
>  	if (!strcmp(ip, "dhcp")) {
>  		ret = run_command("dhcp");
>  		if (ret)
> -- 
> 2.8.3
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
