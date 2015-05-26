Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yx8DO-0004uB-SF
 for barebox@lists.infradead.org; Tue, 26 May 2015 06:19:51 +0000
Date: Tue, 26 May 2015 08:19:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150526061928.GY6325@pengutronix.de>
References: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1432296678-375-1-git-send-email-w.egorov@phytec.de>
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
Subject: Re: [RFC 1/3] bootsource: Add NET bootsource
To: Wadim Egorov <w.egorov@phytec.de>
Cc: barebox@lists.infradead.org

Hi Wadim,

Looks good to me. Since it's marked as RFC I won't apply it, unless you
want me to.

Sascha

On Fri, May 22, 2015 at 02:11:16PM +0200, Wadim Egorov wrote:
> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
> ---
>  common/bootsource.c  | 1 +
>  include/bootsource.h | 1 +
>  2 files changed, 2 insertions(+)
> 
> diff --git a/common/bootsource.c b/common/bootsource.c
> index 7f3d51f..707b079 100644
> --- a/common/bootsource.c
> +++ b/common/bootsource.c
> @@ -35,6 +35,7 @@ static const char *bootsource_str[] = {
>  	[BOOTSOURCE_ONENAND] = "onenand",
>  	[BOOTSOURCE_HD] = "harddisk",
>  	[BOOTSOURCE_USB] = "usb",
> +	[BOOTSOURCE_NET] = "net",
>  };
>  
>  static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
> diff --git a/include/bootsource.h b/include/bootsource.h
> index 4bca9b9..c6d3b3a 100644
> --- a/include/bootsource.h
> +++ b/include/bootsource.h
> @@ -15,6 +15,7 @@ enum bootsource {
>  	BOOTSOURCE_ONENAND,
>  	BOOTSOURCE_HD,
>  	BOOTSOURCE_USB,
> +	BOOTSOURCE_NET,
>  };
>  
>  #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
> -- 
> 1.9.1
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
