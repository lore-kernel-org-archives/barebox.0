Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOrv-0007yu-US
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 10:28:51 +0000
Date: Fri, 17 Jan 2020 11:26:37 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20200117102637.GA3698@ravnborg.org>
References: <20200117095013.31379-1-ceggers@arri.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117095013.31379-1-ceggers@arri.de>
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
Subject: Re: [PATCH] lds: Fix alignment of initcall table
To: Christian Eggers <ceggers@arri.de>
Cc: barebox@lists.infradead.org, ceggers@gmx.de

Hi Christian.

Thanks for the patch.

On Fri, Jan 17, 2020 at 10:50:13AM +0100, Christian Eggers wrote:
> Depending on the preceding *(.rodata*) sections, the contents of the
> RO_DATA_SECTION macro may be unaligned.
> 
> In my case, the initcall table was unaligned, because the preceding
> .rodata ended with the defaultenv when CONFIG_KALLSYMS was set to N.
> 
>                 0x00000000000b0a00      0x1c2 arch/arm/lib32/built-in.o
>  .rodata.unwind_get_byte.str1.1
>                 0x00000000000b0bc2       0x1e arch/arm/lib32/built-in.o
>  .rodata.default_environment
>                 0x00000000000b0be0       0x1d defaultenv/built-in.o
>  .rodata.defaultenv_add_base.part.0.str1.1
>                 0x00000000000b0bfd       0x35 defaultenv/built-in.o
>  .rodata.defaultenv_load.str1.1
>                 0x00000000000b0c32       0x2b defaultenv/built-in.o
>                                          0x36 (size before relaxing)
>                 0x00000000000b0c5d       <--- oops
>                  __barebox_initcalls_start = .
>  *(.initcall.0)
> 
> Tested on i.MX6 (ARM v7).
> 
> Fixes: c5d38e9201 ("lds: Add and use RO_DATA_SECTION macro")
> Signed-off-by: Christian Eggers <ceggers@arri.de>

Have you seen:
d5f8bd9c503e0a17ef071eec50c537cc82a7956c ("lds: align RO_DATA_SECTION members")
which was recently committed to master?

It looks like the two patches fixes the same.
Expect that you have much higher alignment demands in a few cases (ia32, x86).

Could you verify if things works on latest master or you still need
additional alignment?

Thanks,
	Sam

> +++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
> @@ -35,6 +35,7 @@ SECTIONS
> 
>         .data : {
>                 *(.rodata*)
> +               . = ALIGN(4096);
>                 RO_DATA_SECTION
>                 *(.data)
>                 *(.data1)
> diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> index 40a942503..0d42e6ddd 100644
> --- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> +++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
> @@ -38,6 +38,7 @@ SECTIONS
> 
>         .data : {
>                 *(.rodata*)
> +               . = ALIGN(4096);
>                 RO_DATA_SECTION
>                 *(.got.plt)
>                 *(.got)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
