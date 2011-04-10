Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail14.tpgi.com.au ([203.12.160.182])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8mK4-0007y9-MW
	for barebox@lists.infradead.org; Sun, 10 Apr 2011 04:32:30 +0000
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 10 Apr 2011 14:33:44 +1000
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
	<1302273422-6987-15-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-15-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Message-Id: <201104101433.44722.marc@cpdesign.com.au>
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
Subject: Re: [PATCH 14/16] ARM: compile in image size and magic into barebox
	image
To: barebox@lists.infradead.org

Hi,

> This is useful to detect a barebox image and to be able
> to copy only the image size if barebox is stored on
> raw partitions which are bigger than the image.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/start.c           |    6 ++++++
>  arch/arm/lib/barebox.lds.S     |    1 +
>  include/asm-generic/sections.h |    3 +++
>  3 files changed, 10 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> index e0fb712..ddb65e8 100644
> --- a/arch/arm/cpu/start.c
> +++ b/arch/arm/cpu/start.c
> @@ -38,6 +38,12 @@ void __naked __section(.text_entry)
> exception_vectors(void) "ldr pc, =not_used\n"			/* (reserved) */
>  		"ldr pc, =irq\n"			/* irq (interrupt) */
>  		"ldr pc, =fiq\n"			/* fiq (fast interrupt) */
> +		".word 0x65726162\n"			/* 'BARE' */
> +		".word 0x00786f62\n"			/* 'BOX' */
> +		".word _text\n"				/* text base. If copied there,
> +							 * barebox can skip relocation
> +							 */
> +		".word _barebox_image_size\n"		/* image size to copy */
>  	);
>  }

I like this, is there a way to include a version string/info also?

(The aim is to be able to derive the barebox version of an image from just 
reading the file).

> 
> diff --git a/arch/arm/lib/barebox.lds.S b/arch/arm/lib/barebox.lds.S
> index 7683f73..81a9123 100644
> --- a/arch/arm/lib/barebox.lds.S
> +++ b/arch/arm/lib/barebox.lds.S
> @@ -93,4 +93,5 @@ SECTIONS
>  	.bss : { *(.bss*) }
>  	__bss_stop = .;
>  	_end = .;
> +	_barebox_image_size = __bss_start - _text;
>  }
> diff --git a/include/asm-generic/sections.h
> b/include/asm-generic/sections.h index c5d60a9..1f48fb8 100644
> --- a/include/asm-generic/sections.h
> +++ b/include/asm-generic/sections.h
> @@ -4,5 +4,8 @@
>  extern char _text[], _stext[], _etext[];
>  extern char __bss_start[], __bss_stop[];
>  extern char _end[];
> +extern void *_barebox_image_size;
> +
> +#define barebox_image_size	(unsigned int)&_barebox_image_size

I don't understand this line. Did you mean something like:

#define barebox_image_size *((unsigned int *)_barebox_image_size)

Or am I missing something?

Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
