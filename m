Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOF0F-0003Tr-3h
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 21:48:45 +0000
Date: Tue, 16 Oct 2012 23:48:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016214841.GK27665@pengutronix.de>
References: <1350417491-27030-1-git-send-email-franck.jullien@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1350417491-27030-1-git-send-email-franck.jullien@gmail.com>
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
Subject: Re: [PATCH] cosmetic: remove right alignment on driver list
To: Franck Jullien <franck.jullien@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 09:58:11PM +0200, Franck Jullien wrote:
> In order to avoid misalignment, just remove the right alignment while
> printing the drivers list.
> 
> Signed-off-by: Franck Jullien <franck.jullien@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/base/driver.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 64fe289..0879cd0 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -403,7 +403,7 @@ static int do_devinfo(int argc, char *argv[])
>  
>  		printf("\ndrivers:\n");
>  		for_each_driver(drv)
> -			printf("%10s\n",drv->name);
> +			printf("%s\n",drv->name);
>  	} else {
>  		dev = get_device_by_name(argv[1]);
>  
> -- 
> 1.7.1
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
