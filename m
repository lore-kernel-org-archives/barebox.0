Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g4KoI-0001He-RQ
 for barebox@lists.infradead.org; Mon, 24 Sep 2018 06:57:36 +0000
Date: Mon, 24 Sep 2018 08:57:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180924065722.GE4097@pengutronix.de>
References: <20180919164905.32612-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180919164905.32612-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] .gitignore: Add .bin.gen.S files found firmware/
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 19, 2018 at 09:49:05AM -0700, Andrey Smirnov wrote:
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  .gitignore | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks

Sascha

> 
> diff --git a/.gitignore b/.gitignore
> index d83d3176e..dd1a052ea 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -30,6 +30,7 @@
>  *.so
>  *.so.dbg
>  *.symtypes
> +*.bin.gen.S
>  Module.symvers
>  
>  #
> -- 
> 2.17.1
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
