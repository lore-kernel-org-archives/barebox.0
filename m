Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-05.nifty.com ([210.131.2.90])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWDS-0006St-EM
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 12:23:48 +0000
Received: from mail-ua1-f54.google.com (mail-ua1-f54.google.com
 [209.85.222.54]) (authenticated)
 by conssluserg-05.nifty.com with ESMTP id wB5CN6uC025411
 for <barebox@lists.infradead.org>; Wed, 5 Dec 2018 21:23:06 +0900
Received: by mail-ua1-f54.google.com with SMTP id k10so7014098ual.6
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 04:23:06 -0800 (PST)
MIME-Version: 1.0
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-5-s.trumtrar@pengutronix.de>
In-Reply-To: <20181129113048.31857-5-s.trumtrar@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Dec 2018 21:22:29 +0900
Message-ID: <CAK7LNAS5eO1yRQRQGPcH-PKS2f_-9Oruhb5Pp+O6-ztwJZHw4A@mail.gmail.com>
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
Subject: Re: [PATCH 04/15] scripts/Kbuild.include: replace KBUILD_CPPFLAGS
 with CPPFLAGS
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 29, 2018 at 8:31 PM Steffen Trumtrar
<s.trumtrar@pengutronix.de> wrote:
>
> The barebox Makefiles do not use KBUILD_CPPFLAGS but CPPFLAGS as variable name.
>
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---


This might be a step backward.


In old days, Linux also used well-known CPPFLAGS.

Then Linux renamed CPPFLAGS -> KBUILD_CFLAGS

See the following commit:


commit 06c5040cdb13d27adad118f2fbfae905a1911b37
Author: Sam Ravnborg <sam@neptun.(none)>
Date:   Mon Oct 15 22:17:25 2007 +0200

    kbuild: enable 'make CPPFLAGS=...' to add additional options to CPP



Barebox forked from U-Boot around 2007,
so maybe Barebox is based on older Makefiles.






>  scripts/Kbuild.include | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/scripts/Kbuild.include b/scripts/Kbuild.include
> index e62bd35692d0..0cb3a70a6a42 100644
> --- a/scripts/Kbuild.include
> +++ b/scripts/Kbuild.include
> @@ -111,12 +111,12 @@ as-instr = $(call try-run,\
>  # Usage: cflags-y += $(call cc-option,-march=winchip-c6,-march=i586)
>
>  cc-option = $(call try-run,\
> -       $(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
> +       $(CC) $(CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",$(1),$(2))
>
>  # cc-option-yn
>  # Usage: flag := $(call cc-option-yn,-march=winchip-c6)
>  cc-option-yn = $(call try-run,\
> -       $(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
> +       $(CC) $(CPPFLAGS) $(CFLAGS) $(1) -c -xc /dev/null -o "$$TMP",y,n)
>
>  # cc-option-align
>  # Prefix align with either -falign or -malign
> @@ -126,7 +126,7 @@ cc-option-align = $(subst -functions=0,,\
>  # cc-disable-warning
>  # Usage: cflags-y += $(call cc-disable-warning,unused-but-set-variable)
>  cc-disable-warning = $(call try-run,\
> -       $(CC) $(KBUILD_CPPFLAGS) $(CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
> +       $(CC) $(CPPFLAGS) $(CFLAGS) -W$(strip $(1)) -c -xc /dev/null -o "$$TMP",-Wno-$(strip $(1)))
>
>  # cc-version
>  # Usage gcc-ver := $(call cc-version)
> --
> 2.19.2
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox



-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
