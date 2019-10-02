Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFjkr-0004IV-VE
 for barebox@lists.infradead.org; Wed, 02 Oct 2019 18:53:44 +0000
Date: Wed, 2 Oct 2019 20:53:37 +0200
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20191002185337.GB32491@ravnborg.org>
References: <20191002144430.14946-1-s.hauer@pengutronix.de>
 <20191002144430.14946-6-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002144430.14946-6-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 5/7] X86: lds: remove unnecessary alignments
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha.

On Wed, Oct 02, 2019 at 04:44:28PM +0200, Sascha Hauer wrote:
> We do not seem to need all these alignments in the rodata sections
> except the one for the command array. Remove them and put the alignment
> for the command array into the BAREBOX_CMDS define.

The changelog does not match the code.
The alignment is only for x86_64.

> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -46,7 +46,13 @@
>  	KEEP(*(.exitcall.6))			\
>  	__barebox_exitcalls_end = .;
>  
> +/* For some obscure reason X86_64 needs these 64bit aligned */

The obscure reason looks like this (from include/command.h):
#ifdef __x86_64__
/* This is required because the linker will put symbols on a 64 bit alignment */
__attribute__((aligned(64)))
#endif

I did not try it. But I would assume removing the alignment from the .h
file and the .lds file would sort it out.


	Sam


> +#ifdef __x86_64__
> +#define X86_64_ALIGN . = ALIGN(64);
> +#endif
> +
>  #define BAREBOX_CMDS				\
> +	X86_64_ALIGN				\
>  	__barebox_cmd_start = .;		\
>  	KEEP(*(SORT_BY_NAME(.barebox_cmd*)))	\
>  	__barebox_cmd_end = .;
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
