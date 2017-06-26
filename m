Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dPNdA-0008Nz-Cw
 for barebox@lists.infradead.org; Mon, 26 Jun 2017 06:36:18 +0000
Date: Mon, 26 Jun 2017 08:35:54 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170626063554.kskmccgsdzwtusew@pengutronix.de>
References: <1497973342-30198-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1497973342-30198-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH v5] arm: boards: phytec-som-am335x: Update boot scripts
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 20, 2017 at 05:42:22PM +0200, Daniel Schultz wrote:
> Expand the boot scripts with EMMC and add a default file source for
> expansions.
> 
> Removed "rw" and "rootwait" bootargs from existing boot scripts.

Why is "rootwait" removed? From my experience adding "rootwait" is
pretty essential when booting from mmc. Has that changed?

>  
> -if [ $bootsource = mmc ]; then
> -	global.boot.default="mmc nand spi net"
> +if [ -e /dev/mmc1.0 ]; then
> +	nvmem="emmc"
> +else
> +	nvmem="nand"
> +fi
> +
> +if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
> +	global.boot.default="emmc mmc spi net"
> +elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
> +	global.boot.default="mmc $nvmem spi net"
>  elif [ $bootsource = nand ]; then
>  	global.boot.default="nand spi mmc net"
>  elif [ $bootsource = spi ]; then
> -	global.boot.default="spi nand mmc net"
> +	global.boot.default="spi $nvmem mmc net"
>  elif [ $bootsource = net ]; then
> -	global.boot.default="net nand spi mmc"
> +	global.boot.default="net $nvmem spi mmc"
>  fi

Normally the desired behaviour is that the bootsource can be changed
persistently by setting nv.boot.default to the desired source. This
does not work when global.boot.default gets overwritten after the nvvars
have been read from the environment.

This behaviour is not changed with this patch, but I would welcome a
patch that changes this script to the desired behaviour. This could
be done by changing global.boot.default only when nv.boot.default is
empty.

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
