Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-04.nifty.com ([210.131.2.83])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eRsdM-0002j1-1N
 for barebox@lists.infradead.org; Thu, 21 Dec 2017 04:39:06 +0000
Received: from mail-ua0-f173.google.com (mail-ua0-f173.google.com
 [209.85.217.173]) (authenticated)
 by conssluserg-04.nifty.com with ESMTP id vBL4cR9o006173
 for <barebox@lists.infradead.org>; Thu, 21 Dec 2017 13:38:28 +0900
Received: by mail-ua0-f173.google.com with SMTP id a25so9420098uak.3
 for <barebox@lists.infradead.org>; Wed, 20 Dec 2017 20:38:28 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1513830635-24496-1-git-send-email-yamada.masahiro@socionext.com>
References: <1513830635-24496-1-git-send-email-yamada.masahiro@socionext.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 21 Dec 2017 13:37:46 +0900
Message-ID: <CAK7LNAQgp=cu8+jvGooDMrXPOqzbt2TTrEGsXcPVvf-Q3iguYw@mail.gmail.com>
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
Subject: Re: [PATCH] linux/kernel.h: move ALIGN_DOWN() to
 include/linux/kernel.h
To: barebox@lists.infradead.org

2017-12-21 13:30 GMT+09:00 Masahiro Yamada <yamada.masahiro@socionext.com>:
> Linux commit ed067d4a859f ("linux/kernel.h: Add ALIGN_DOWN macro")
> moved ALIGN_MACRO to include/linux/kernel.h.


This is a typo.

ALIGN_MACRO -> ALIGN_DOWN




> Let's do likewise.
>
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> ---
>
>  include/common.h       | 2 --
>  include/linux/kernel.h | 1 +
>  2 files changed, 1 insertion(+), 2 deletions(-)
>
> diff --git a/include/common.h b/include/common.h
> index dd7445e..54c76d4 100644
> --- a/include/common.h
> +++ b/include/common.h
> @@ -93,8 +93,6 @@ extern int (*barebox_main)(void);
>  void __noreturn start_barebox(void);
>  void shutdown_barebox(void);
>
> -#define ALIGN_DOWN(x, a)       ((x) & ~((typeof(x))(a) - 1))
> -
>  #define ARRAY_AND_SIZE(x)      (x), ARRAY_SIZE(x)
>
>  /*
> diff --git a/include/linux/kernel.h b/include/linux/kernel.h
> index b4d2f09..ab713f2 100644
> --- a/include/linux/kernel.h
> +++ b/include/linux/kernel.h
> @@ -33,6 +33,7 @@
>  #define S64_MIN                ((s64)(-S64_MAX - 1))
>
>  #define ALIGN(x, a)            __ALIGN_MASK(x, (typeof(x))(a) - 1)
> +#define ALIGN_DOWN(x, a)       ALIGN((x) - ((a) - 1), (a))
>  #define __ALIGN_MASK(x, mask)  (((x) + (mask)) & ~(mask))
>  #define PTR_ALIGN(p, a)                ((typeof(p))ALIGN((unsigned long)(p), (a)))
>  #define IS_ALIGNED(x, a)               (((x) & ((typeof(x))(a) - 1)) == 0)
> --
> 2.7.4
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
