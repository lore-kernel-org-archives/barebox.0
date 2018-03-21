Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1eyVlJ-0001AL-1p
 for barebox@lists.infradead.org; Wed, 21 Mar 2018 04:54:10 +0000
Received: by mail-it0-x244.google.com with SMTP id 19-v6so5172315itw.3
 for <barebox@lists.infradead.org>; Tue, 20 Mar 2018 21:53:58 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180316125354.23462-62-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
 <20180316125354.23462-62-s.hauer@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 20 Mar 2018 21:53:56 -0700
Message-ID: <CAHQ1cqEAim+g-NWynFYkX_0MeB9PYzOiXPFiV5=uyfzqnDBy8A@mail.gmail.com>
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
Subject: Re: [PATCH 61/78] ARM: aarch64: mmu: Make zero page faulting
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Mar 16, 2018 at 5:53 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> Make zero page faulting which allows us to catch NULL pointer derefs.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/cpu/mmu_64.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index 20f6c387f3..094bc0ac62 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -316,6 +316,8 @@ static int mmu_init(void)
>         for_each_memory_bank(bank)
>                 create_sections(bank->start, bank->start, bank->size, CACHED_MEM);
>
> +       create_sections(0x0, 0x0, 0x1000, 0x0);

Sascha:

Maybe add commit message as comment to the line above as well?


Thanks,
Andrey Smirnov

> +
>         mmu_enable();
>
>         return 0;
> --
> 2.16.1
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
