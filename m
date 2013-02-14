Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U5z9L-0005TT-FU
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 13:46:56 +0000
Received: from mail242.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E7F21104EE72
 for <barebox@lists.infradead.org>; Thu, 14 Feb 2013 14:44:57 +0100 (CET)
Date: Thu, 14 Feb 2013 14:33:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130214133320.GS19322@game.jcrosoft.org>
References: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360833179-10324-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH] ARM pbl: move piggydata before bss
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:12 Thu 14 Feb     , Sascha Hauer wrote:
> This decreases the pbl image size by the size of the bss segment.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/pbl/zbarebox.lds.S |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/arch/arm/pbl/zbarebox.lds.S b/arch/arm/pbl/zbarebox.lds.S
> index 564b3c6..2914fdd 100644
> --- a/arch/arm/pbl/zbarebox.lds.S
> +++ b/arch/arm/pbl/zbarebox.lds.S
> @@ -59,18 +59,18 @@ SECTIONS
>  	.data : { *(.data*) }
>  
>  	. = ALIGN(4);
> -	__bss_start = .;
> -	.bss : { *(.bss*) }
> -	__bss_stop = .;
> -	_end = .;
> -
> -	. = ALIGN(4);
>  	__piggydata_start = .;
>  	.piggydata : {
>  		*(.piggydata)
>  	}
>  	__piggydata_end = .;
>  
> +	. = ALIGN(4);
> +	__bss_start = .;
> +	.bss : { *(.bss*) }
> +	__bss_stop = .;
> +	_end = .;

I did this on purpose

so we can load the pbl in sram without the piggydata

so do not change it

Best Regards,
J.
> +
>  	_barebox_image_size = __piggydata_end - (TEXT_BASE - SZ_2M);
>  	_barebox_pbl_size = __bss_start - (TEXT_BASE - SZ_2M);
>  }
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
