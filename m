Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDBPi-0002vp-Jl
 for barebox@lists.infradead.org; Wed, 06 Mar 2013 10:17:35 +0000
Received: from mail413.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id E7E5A104E85B
 for <barebox@lists.infradead.org>; Wed,  6 Mar 2013 11:28:36 +0100 (CET)
Date: Wed, 6 Mar 2013 11:13:13 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130306101313.GG4401@game.jcrosoft.org>
References: <20130306092643.GF4401@game.jcrosoft.org>
 <1362562189-17783-1-git-send-email-plagnioj@jcrosoft.com>
 <1362562189-17783-9-git-send-email-plagnioj@jcrosoft.com>
 <1362563980.426099414@f331.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362563980.426099414@f331.mail.ru>
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
Subject: Re: [PATCH 09/20] arm: add application support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 13:59 Wed 06 Mar     , Alexander Shiyan wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/Kconfig                       |    1 +
> >  arch/arm/Makefile                      |    6 +-
> >  arch/arm/apps/Kconfig                  |   11 ++++
> >  arch/arm/apps/Makefile                 |    6 ++
> >  arch/arm/apps/apps.lds.S               |   64 ++++++++++++++++++
> >  arch/arm/apps/binfmt.c                 |  111 ++++++++++++++++++++++++++++++++
> >  arch/arm/apps/head.S                   |   59 +++++++++++++++++
> >  arch/arm/apps/include/arch/asm/macro.h |   46 +++++++++++++
> >  arch/arm/apps/include/arch/setjmp.h    |   26 ++++++++
> >  arch/arm/apps/raise.c                  |   27 ++++++++
> >  arch/arm/apps/setjmp.S                 |   60 +++++++++++++++++
> >  arch/arm/apps/start.c                  |   35 ++++++++++
> >  12 files changed, 451 insertions(+), 1 deletion(-)
> >  create mode 100644 arch/arm/apps/Kconfig
> >  create mode 100644 arch/arm/apps/Makefile
> >  create mode 100644 arch/arm/apps/apps.lds.S
> >  create mode 100644 arch/arm/apps/binfmt.c
> >  create mode 100644 arch/arm/apps/head.S
> >  create mode 100644 arch/arm/apps/include/arch/asm/macro.h
> >  create mode 100644 arch/arm/apps/include/arch/setjmp.h
> >  create mode 100644 arch/arm/apps/raise.c
> >  create mode 100644 arch/arm/apps/setjmp.S
> >  create mode 100644 arch/arm/apps/start.c
> ...
> 
> Is this feature really needed? If we Include it, is dramatically increases size of BB.
> We have a scripting, maybe just inclusion a small "C" interpreter is enough?
> Such as "picoc" (http://code.google.com/p/picoc/), for example.
increase?? no
 1 to 2 KiB

on barebox side you just have the syscall

it's nothing and this is optionnal

Best Regards,
J.
> 
> ---

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
