Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QOPSj-0001W3-DM
	for barebox@lists.infradead.org; Mon, 23 May 2011 07:22:02 +0000
Date: Mon, 23 May 2011 09:21:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110523072159.GE20715@pengutronix.de>
References: <201105201500.50593.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201105201500.50593.tim.sander@hbm.com>
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
Subject: Re: [PATCH] fix genenv when using svn based enviroment directory
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

Hi Tim,

On Fri, May 20, 2011 at 03:00:50PM +0200, Tim Sander wrote:
> Hi
> 
> When setting the default env of barebox to a svn directory the build stops
> with questions on removal and the barebox env is polluted with svn files.
> 
> The patch below fixes that.
> 
> Tested with 2011.03.1. Newer versions don't boot anymore on my pcm043 :-(.
> 
> Signed-off-by: Tim Sander <tim.sander@hbm.com>
> 
> ---
>  scripts/genenv |    4 +++-
>  1 files changed, 3 insertions(+), 1 deletions(-)
> 
> diff --git a/scripts/genenv b/scripts/genenv
> index de8b4f1..c6bcd4b 100755
> --- a/scripts/genenv
> +++ b/scripts/genenv
> @@ -13,7 +13,9 @@ tempdir=$(mktemp -d)
>  for i in $*; do
>         cp -r $i/* $tempdir
>  done
> +find $tempdir -name .svn |xargs rm -r
> +
>  $objtree/scripts/bareboxenv -s $tempdir $objtree/barebox_default_env
>  
> -rm -r $tempdir
> +rm -rf $tempdir

Is this second change intended? If yes, why?

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
