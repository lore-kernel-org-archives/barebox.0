Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it1-x142.google.com ([2607:f8b0:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWmiH-0003qV-BN
 for barebox@lists.infradead.org; Fri, 31 May 2019 18:57:14 +0000
Received: by mail-it1-x142.google.com with SMTP id g24so4366815iti.5
 for <barebox@lists.infradead.org>; Fri, 31 May 2019 11:57:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190531090224.21707-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190531090224.21707-1-a.fatoum@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 31 May 2019 11:56:59 -0700
Message-ID: <CAHQ1cqEMhG-AYqzheMgnU+G_72ct6RM7ZesUJe9+aEeVhAAEEQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: panic with a message when relocation type is unknown
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, May 31, 2019 at 2:02 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Currently such failures result in a
>
>         >00000000 00000000
>
>         ### ERROR ### Please RESET the board ###
>
> With this patch this now becomes
>
>         >00000000 00000000
>         Unknown relocation type
>         ### ERROR ### Please RESET the board ###
>
> which improves user experience a little bit.
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 821cafbf26c2..3668c5977ca9 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -78,7 +78,7 @@ void relocate_to_current_adr(void)
>                         putc_ll(' ');
>                         puthex_ll(rel->r_addend);
>                         putc_ll('\n');
> -                       panic("");
> +                       panic("Unknown relocation type");
>                 }
>
>                 dstart += sizeof(*rel);
> @@ -108,7 +108,7 @@ void relocate_to_current_adr(void)
>                         putc_ll(' ');
>                         puthex_ll(rel->r_offset);
>                         putc_ll('\n');
> -                       panic("");
> +                       panic("Unknown relocation type");

Looking at this code makes me wonder if calls to panic() are even
appropriate here. I am not sure there's any guarantee that by the time
we get to this line relocation for "Unknown relocation type"(or
original "") string would be processed and panic() would get right
arguments not to mention all of the functions called as a part of
panic() and their potential dependencies. Another thing about painc()
is in PBL it completely ignores passed arguments, so no message will
be printed there.

Maybe it'd make sense to go in a different direction and drop calls to
panic() altogether and replace them with:

puts_ll(relocation_failed_message());
hang();

where relocation_failed_message() on ARM can be something like:

.section .text.relocation_failed_message
ENTRY(relocation_failed_message)
push {lr}
bl 1f
.byte 'U, 'n, 'k, 'n, 'o, 'w, 'n, '\ , 'r, 'e, 'l, 'o, 'c, 'a, 't, 'i,
'o, 'n, '\ , 't, 'y, 'p, 'e, '\r, '\n, 0x00
1:
mov r0, lr
/* In case we are in thumb */
bic r0, r0, #1
pop {pc}
ENDPROC(relocation_failed_message)

to guarantee that it won't depend on relocation? Might be an overkill
though, so take this with a grain of salt.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
