Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUWHw-0000Bh-Rs
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 12:28:26 +0000
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
 [209.85.217.44]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id wB5CRa2h028013
 for <barebox@lists.infradead.org>; Wed, 5 Dec 2018 21:27:36 +0900
Received: by mail-vs1-f44.google.com with SMTP id e7so11951743vsc.2
 for <barebox@lists.infradead.org>; Wed, 05 Dec 2018 04:27:36 -0800 (PST)
MIME-Version: 1.0
References: <20181129113048.31857-1-s.trumtrar@pengutronix.de>
 <20181129113048.31857-5-s.trumtrar@pengutronix.de>
 <CAK7LNAS5eO1yRQRQGPcH-PKS2f_-9Oruhb5Pp+O6-ztwJZHw4A@mail.gmail.com>
In-Reply-To: <CAK7LNAS5eO1yRQRQGPcH-PKS2f_-9Oruhb5Pp+O6-ztwJZHw4A@mail.gmail.com>
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Wed, 5 Dec 2018 21:26:59 +0900
Message-ID: <CAK7LNAQ9taBx=AN=Q+ymqOCNnmObH25QqCQHuBYanZOjDNx-vQ@mail.gmail.com>
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

On Wed, Dec 5, 2018 at 9:22 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:
>
> On Thu, Nov 29, 2018 at 8:31 PM Steffen Trumtrar
> <s.trumtrar@pengutronix.de> wrote:
> >
> > The barebox Makefiles do not use KBUILD_CPPFLAGS but CPPFLAGS as variable name.
> >
> > Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> > ---
>
>
> This might be a step backward.
>
>
> In old days, Linux also used well-known CPPFLAGS.
>
> Then Linux renamed CPPFLAGS -> KBUILD_CFLAGS

I mean CPPFLAGS -> KBUILD_CPPFLAGS


-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
