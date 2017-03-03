Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjgN4-0002d3-PU
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 06:07:20 +0000
Date: Fri, 3 Mar 2017 07:06:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170303060657.7a4i5efcjcx73zqc@pengutronix.de>
References: <20170301142641.6596-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301142641.6596-1-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/3] ARM: align exception vectors to 32 byte
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Mar 01, 2017 at 03:26:39PM +0100, Lucas Stach wrote:
> On ARMv7 the exception vectors inside the barebox binary are used directly
> by remapping the vectors base through the VBAR register. While VBAR allows
> to remap the exception vectors freely, it still imposes a minimum alignment
> of 32 byte, as the lower bits are treated as the exception vector offset.
> Enforce this alignment inside the barebox binary.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/lib32/barebox.lds.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
> index b49c269a4346..e7b87b7cdd18 100644
> --- a/arch/arm/lib32/barebox.lds.S
> +++ b/arch/arm/lib32/barebox.lds.S
> @@ -45,7 +45,7 @@ SECTIONS
>  		__bare_init_start = .;
>  		*(.text_bare_init*)
>  		__bare_init_end = .;
> -		. = ALIGN(4);
> +		. = ALIGN(0x20);
>  		__exceptions_start = .;
>  		KEEP(*(.text_exceptions*))
>  		__exceptions_stop = .;
> -- 
> 2.11.0
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
