Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X1dyP-0006jZ-Vh
 for barebox@lists.infradead.org; Mon, 30 Jun 2014 15:58:30 +0000
Date: Mon, 30 Jun 2014 17:58:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140630155807.GK14257@pengutronix.de>
References: <alpine.LFD.2.11.1406300914550.5509@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1406300914550.5509@localhost>
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
Subject: Re: [PATCH] Makefile: Add missing closing quote for "make help"
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jun 30, 2014 at 09:16:23AM -0400, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
>   definitely prevents "make help" frum running.
> 
> diff --git a/Makefile b/Makefile
> index 6dad637..a8e57ee 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -1076,7 +1076,7 @@ help:
>  	@echo  '                    enough build support to build external modules'
>  	@echo  '  mrproper	  - Remove all generated files + config + various backup files'
>  	@echo  '  distclean	  - mrproper + remove editor backup and patch files'
> -	@echo  '  docs            - build documentation
> +	@echo  '  docs            - build documentation'
>  	@echo  ''
>  	@echo  'Configuration targets:'
>  	@$(MAKE) -f $(srctree)/scripts/kconfig/Makefile help
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
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
