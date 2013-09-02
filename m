Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VGPqS-0001n4-WA
 for barebox@lists.infradead.org; Mon, 02 Sep 2013 08:50:49 +0000
Date: Mon, 2 Sep 2013 10:50:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130902085027.GQ30088@pengutronix.de>
References: <1378103909-5335-1-git-send-email-c.hemp@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1378103909-5335-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] commands: Fix memtest return value
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 02, 2013 at 08:38:29AM +0200, Christian Hemp wrote:
> Signed-off-by: Christian Hemp <c.hemp@phytec.de>

Applied, thanks

Sascha

> ---
>  commands/memtest.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/commands/memtest.c b/commands/memtest.c
> index d2a1487..c82badc 100644
> --- a/commands/memtest.c
> +++ b/commands/memtest.c
> @@ -236,7 +236,7 @@ out:
>  		return 1;
>  	} else {
>  		printf("Memtest successful.\n");
> -		return 1;
> +		return 0;
>  	}
>  }
>  
> -- 
> 1.7.0.4
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
