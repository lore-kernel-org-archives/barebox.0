Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QZetU-0002ax-7G
	for barebox@lists.infradead.org; Thu, 23 Jun 2011 08:04:12 +0000
Date: Thu, 23 Jun 2011 10:04:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110623080405.GU6069@pengutronix.de>
References: <1308735715-8758-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1308735715-8758-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [RFC] update: Add eccmode switching for different types
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Wed, Jun 22, 2011 at 11:41:55AM +0200, Jan Weitzel wrote:
> to use update on nand with different eccmodes for the nand partitions
> we need to set the eccmode before updating.
> Adding eccdev and eccmode to enviroment to use.
> eccdev example: gpmc_nand0
> eccmode for the different types:
> root_eccmode
> barebox_eccmode
> bareboxenv_eccmode
> xload_eccmode

I do not have a good idea how to solve this, but this is a generic
script and putting omap specific stuff in it is not a good idea.

Sascha

> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
>  defaultenv/bin/update |    8 ++++++++
>  1 files changed, 8 insertions(+), 0 deletions(-)
> 
> diff --git a/defaultenv/bin/update b/defaultenv/bin/update
> index 55ac10b..7473611 100644
> --- a/defaultenv/bin/update
> +++ b/defaultenv/bin/update
> @@ -27,21 +27,26 @@ done
>  
>  if [ x${type} = xkernel ]; then
>  	image=$kernelimage
> +	eccmode=${kernel_eccmode}
>  elif [ x${type} = xrootfs ]; then
>  	image=$rootfsimage
>  	type=root
> +	eccmode=${root_eccmode}
>  elif [ x${type} = xbarebox ]; then
>  	image=$bareboximage
>  	if [ x${image} = x ]; then
>  		image=barebox.bin
>  	fi
> +	eccmode=${barebox_eccmode}
>  elif [ x${type} = xbareboxenv ]; then
>  	image=$bareboxenvimage
>  	if [ x${image} = x ]; then
>  		image=bareboxenv.bin
>  	fi
> +	eccmode=${bareboxenv_eccmode}
>  elif [ x${type} = xxload ]; then
>  	image=$xloadimage
> +	eccmode=${xload_eccmode}
>  else
>  	. /env/bin/_update_help
>  	exit 1
> @@ -53,6 +58,9 @@ fi
>  
>  if [ x${device_type} = xnand ]; then
>  	part=/dev/nand0.${type}.bb
> +	if [ x${eccmode} != x ] && [ x${eccdev} != x ]; then
> +		${eccdev}.eccmode=${eccmode}
> +	fi
>  elif [ x${device_type} = xnor ]; then
>  	part=/dev/nor0.${type}
>  else
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
