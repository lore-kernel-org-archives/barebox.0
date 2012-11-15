Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TZ3EY-0007Gb-0I
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 17:28:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:6f8:1178:2:5054:ff:fec0:8e10]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1TZ3EU-0005EC-O1
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 18:28:06 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1TZ3EU-0004pp-Mj
 for barebox@lists.infradead.org; Thu, 15 Nov 2012 18:28:06 +0100
Date: Thu, 15 Nov 2012 18:28:06 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20121115172806.GD8330@pengutronix.de>
References: <1352881301-9744-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1352881301-9744-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] replace barebox* in .gitignore with individual files
To: barebox@lists.infradead.org

On Wed, Nov 14, 2012 at 09:21:41AM +0100, Sascha Hauer wrote:
> This effectively reverts:
> 
> | commit f9df22b002af99532b66360e08128ea3e7e82a97
> | Author: Alexander Shiyan <shc_work@mail.ru>
> | Date:   Mon Oct 8 10:35:04 2012 +0400
> |
> |    Add more generated files to .gitignore
> 
> barebox* is not limited to the toplevel directory, so this ignores
> all files starting with 'barebox' from which we have several we do
> not wish to ignore. Add barebox-flash-image to the ignore list which
> seemed to be the motivation for the original patch.

You could use:

/barebox*

This will not match any files in sub-directories.

Michael


> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: Alexander Shiyan <shc_work@mail.ru>
> ---
>  .gitignore |   13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/.gitignore b/.gitignore
> index 81e74a0..064753d 100644
> --- a/.gitignore
> +++ b/.gitignore
> @@ -26,11 +26,22 @@
>  #
>  tags
>  TAGS
> -barebox*
>  cross_arch
>  cross_compile
> +barebox
> +barebox.S
> +barebox.bin
> +barebox.srec
> +barebox.netx
> +barebox.s5p
> +barebox.spi
> +barebox.ubl
> +barebox.uimage
> +barebox.map
> +barebox-flash-image
>  System.map
>  Module.symvers
> +barebox_default_env*
>  
>  #
>  # Generated include files
> -- 
> 1.7.10.4
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
