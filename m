Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVVuS-0000n9-2Y
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:20:49 +0000
Received: by mail-ua1-x942.google.com with SMTP id w10so253571uar.12
 for <barebox@lists.infradead.org>; Thu, 14 Nov 2019 23:20:47 -0800 (PST)
MIME-Version: 1.0
References: <20191115071359.16798-1-ahmad@a3f.at>
In-Reply-To: <20191115071359.16798-1-ahmad@a3f.at>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Fri, 15 Nov 2019 08:20:06 +0100
Message-ID: <CAGm1_ksFJWGJ=cGZXK+ZhmYQ+yKKLoOT19jjdXRLLBUWx0Qn-w@mail.gmail.com>
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
Subject: Re: [PATCH] MIPS: ath79: art: fix typo in SPDX-License-Identifier
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox <barebox@lists.infradead.org>, Oleksij Rempel <linux@rempel-privat.de>

Hi Ahmad,

On Fri, Nov 15, 2019 at 8:14 AM Ahmad Fatoum <ahmad@a3f.at> wrote:
>
> There's no GPL-2. SPDX identifier. Change it to GPL-2.0 instead.

GPL-2.0 is deprecated use GPL-2.0-only instead.

https://spdx.org/licenses/GPL-2.0.html

Regard,
Yegor

>
> Cc: Oleksij Rempel <linux@rempel-privat.de>
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  arch/mips/mach-ath79/art.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/arch/mips/mach-ath79/art.c b/arch/mips/mach-ath79/art.c
> index 2a2099e9f561..4a8a3e1fe6b1 100644
> --- a/arch/mips/mach-ath79/art.c
> +++ b/arch/mips/mach-ath79/art.c
> @@ -1,4 +1,4 @@
> -// SPDX-License-Identifier: GPL-2.
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * Copyright (c) 2018 Oleksij Rempel <linux@rempel-privat.de>
>   */
> --
> 2.20.1
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
