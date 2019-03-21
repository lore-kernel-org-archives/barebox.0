Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6sBx-0001vq-J8
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 07:32:47 +0000
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com
 [209.85.217.48]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id x2L7WFeu025206
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 16:32:16 +0900
Received: by mail-vs1-f48.google.com with SMTP id i207so3111220vsd.10
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 00:32:15 -0700 (PDT)
MIME-Version: 1.0
References: <1553068113-13704-1-git-send-email-yamada.masahiro@socionext.com>
 <20190321072131.tt4xeiq7hzlgt7ey@pengutronix.de>
In-Reply-To: <20190321072131.tt4xeiq7hzlgt7ey@pengutronix.de>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Thu, 21 Mar 2019 16:31:38 +0900
Message-ID: <CAK7LNARrwztiCOD60KDi15kcvnqwhECvvmwi7r+S_cHmNrP5sA@mail.gmail.com>
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
Subject: Re: [PATCH] linux/kernel.h: split *_MAX and *_MIN macros into
 <linux/limits.h>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,


On Thu, Mar 21, 2019 at 4:21 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Wed, Mar 20, 2019 at 04:48:33PM +0900, Masahiro Yamada wrote:
> > Copy include/linuxlimits.h from Linux 5.1-rc1


This is a typo.

include/linuxlimits.h  ->  include/linux/limits.h

Could you fix it up if possible?




> > (removing #include <uapi/linux/limits.h>).
> >
> > While we are here, add SPDX License tag to <linux/kernel.h>.
> >
> > Based on the following Linux commits:
> >
> >  - 54d50897d544 ("linux/kernel.h: split *_MAX and *_MIN macros
> >    into <linux/limits.h>")
> >
> >  - 2dc0e68d5ada ("linux/kernel.h: use 'short' to define USHRT_MAX,
> >    SHRT_MAX, SHRT_MIN")
> >
> > Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
> > ---
>
> Applied, thanks
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
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
