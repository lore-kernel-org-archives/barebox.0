Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Slxhq-0001Ym-K2
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 07:39:32 +0000
Date: Tue, 3 Jul 2012 09:39:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120703073926.GU2698@pengutronix.de>
References: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: Re: [PATCH 1/2] Add support for kernel and device tree images stored
 in a partition
To: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: barebox@lists.infradead.org, Brian Lilly <brian@crystalfontz.com>

Hi Maxime,

On Mon, Jul 02, 2012 at 04:14:53PM +0200, Maxime Ripard wrote:
> It is a quite common setup to have a partition with all you need to boot
> from the bootloader, ie the kernel image, the device tree blob, etc.
> 
> This patch introduces a new "file" location for these two images, which
> uses in turn the *_part and the new *_part_type variable specifying the
> fs type used by mount.

That was one of the major shortcomings of the default environment and
one of the main reasons I created a new environment template. Have you
considered using it?

Sascha

> 
> Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
> Cc: Brian Lilly <brian@crystalfontz.com>
> ---
>  defaultenv/bin/boot |   12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index 61b893a..26360ed 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -114,6 +114,12 @@ elif [ x$kernel_loc = xnand ]; then
>  	kdev="/dev/nand0.kernel.bb"
>  elif [ x$kernel_loc = xdisk ]; then
>  	kdev="/dev/$kernel_part"
> +elif [ x$kernel_loc = xfile ]; then
> +	if [ ! -d $kernel_part ]; then
> +		mkdir $kernel_part
> +		mount /dev/$kernel_part $kernel_part_type $kernel_part
> +	fi
> +	kdev="$kernel_part/$kernelimage"
>  else
>  	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
>  	exit 1
> @@ -128,6 +134,12 @@ elif [ x$oftree_loc = xnand ]; then
>  	odev="/dev/nand0.oftree.bb"
>  elif [ x$oftree_loc = xdisk ]; then
>  	odev="/dev/$oftree_part"
> +elif [ x$oftree_loc = xfile ]; then
> +	if [ ! -d $oftree_part ]; then
> +		mkdir $oftree_loc
> +		mount /dev/$oftree_part $oftree_part_type $oftree_part
> +	fi
> +	odev="$oftree_part/$oftreeimage"
>  fi
>  
>  [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
> -- 
> 1.7.9.5
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
