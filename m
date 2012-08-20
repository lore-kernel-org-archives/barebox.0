Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo1.mail-out.ovh.net ([178.32.228.1])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T3TT5-0000SI-OS
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 15:00:40 +0000
Received: from mail31.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id D23AEFF8F02
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2012 17:07:36 +0200 (CEST)
Date: Mon, 20 Aug 2012 17:00:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120820150047.GD6271@game.jcrosoft.org>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
 <1345472428-17417-13-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345472428-17417-13-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 12/13] defaultenv: support kernel and oftree on a
 filesystem
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On 16:20 Mon 20 Aug     , Jan Luebbe wrote:
> The path specified by kernel/oftree_path must be mounted
> aready (either via automount or by the board code).
please use defaultenv-2

Best Regards,
J.
> 
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  defaultenv/bin/boot |   18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 
> diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
> index bf6ec76..81593bd 100644
> --- a/defaultenv/bin/boot
> +++ b/defaultenv/bin/boot
> @@ -129,7 +129,14 @@ elif [ x$kernel_loc = xnand ]; then
>  	fi
>  	kdev="/dev/nand0.${kernel_mtd_nand}.bb"
>  elif [ x$kernel_loc = xdisk ]; then
> -	kdev="/dev/$kernel_part"
> +	if [ -n $kernel_path ]; then
> +		kdev="$kernel_path"
> +	elif [ -n $kernel_part ]; then
> +		kdev="/dev/$kernel_part"
> +	else
> +		echo "error: set either kernel_path or kernel_part"
> +		exit 1
> +	fi
>  else
>  	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
>  	exit 1
> @@ -145,7 +152,14 @@ elif [ x$oftree_loc = xnor ]; then
>  elif [ x$oftree_loc = xnand ]; then
>  	odev="/dev/nand0.oftree.bb"
>  elif [ x$oftree_loc = xdisk ]; then
> -	odev="/dev/$oftree_part"
> +	if [ -n $oftree_path ]; then
> +		odev="$oftree_path"
> +	elif [ -n $oftree_part ]; then
> +		odev="/dev/$oftree_part"
> +	else
> +		echo "error: set either oftree_path or oftree_part"
> +		exit 1
> +	fi
>  fi
>  
>  [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
