Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMjCt-0005Nh-Ug
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 14:25:58 +0000
Date: Mon, 21 Dec 2009 15:24:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221142453.GJ15126@pengutronix.de>
References: <alpine.LFD.2.00.0912210651050.14193@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912210651050.14193@localhost>
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
Subject: Re: [PATCH repeat] MTD:  Correct typo in preprocessor directive.
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Dec 21, 2009 at 06:52:42AM -0500, Robert P. J. Day wrote:
> 
> Configuration directive should obviously start with "CONFIG_".
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
>   i submitted this already but it hasn't gone in so i don't want it
> lost in the shuffle.  it looks like a simple typo fix, unless someone
> else sees something more there.

Ok, applied.

Sascha

> 
> 
> diff --git a/drivers/nand/diskonchip.c b/drivers/nand/diskonchip.c
> index e17af70..e762524 100644
> --- a/drivers/nand/diskonchip.c
> +++ b/drivers/nand/diskonchip.c
> @@ -120,7 +120,7 @@ static int no_autopart=0;
>  module_param(no_autopart, int, 0);
>  #endif
> 
> -#ifdef MTD_NAND_DISKONCHIP_BBTWRITE
> +#ifdef CONFIG_MTD_NAND_DISKONCHIP_BBTWRITE
>  static int inftl_bbt_write=1;
>  #else
>  static int inftl_bbt_write=0;
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
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
