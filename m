Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjmq-0005kf-8r
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 18:55:45 +0000
Date: Wed, 2 Oct 2019 20:55:41 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20191002185541.GC32491@ravnborg.org>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
 <20191002144430.14946-7-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144430.14946-7-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 6/7] lds: remove more unnecessary alignments
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Wed, Oct 02, 2019 at 04:44:29PM +0200, Sascha Hauer wrote:
> The alignemnt in the DTB and clk_of_table shouldn't be needed. Remove
s/alignemnt/alignment/g

I do this type of spelling error all the time :-(

	Sam

Acked-by: Sam Ravnborg <sam@ravnborg.org>

> them.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  include/asm-generic/barebox.lds.h | 2 --
>  1 file changed, 2 deletions(-)
> 
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index acf838e85f..a3e367c9ed 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -73,14 +73,12 @@
>  	__barebox_magicvar_end = .;
>  
>  #define BAREBOX_CLK_TABLE			\
> -	. = ALIGN(8);				\
>  	__clk_of_table_start = .;		\
>  	KEEP(*(.__clk_of_table));		\
>  	KEEP(*(.__clk_of_table_end));		\
>  	__clk_of_table_end = .;
>  
>  #define BAREBOX_DTB				\
> -	. = ALIGN(8);				\
>  	__dtb_start = .;			\
>  	KEEP(*(.dtb.rodata.*));			\
>  	__dtb_end = .;
> -- 
> 2.23.0
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
