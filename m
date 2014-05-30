Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22e.google.com ([2a00:1450:4010:c04::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WqIZo-0005Dk-0c
 for barebox@lists.infradead.org; Fri, 30 May 2014 08:54:12 +0000
Received: by mail-lb0-f174.google.com with SMTP id n15so839209lbi.33
 for <barebox@lists.infradead.org>; Fri, 30 May 2014 01:53:48 -0700 (PDT)
Date: Fri, 30 May 2014 13:05:08 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140530130508.ec39ce68bf04233e2c89feae@gmail.com>
In-Reply-To: <CAOpc7mG1WzFvhzctPULHeaZV10uBbVxK1f0kn9qAAiFXkBxc_w@mail.gmail.com>
References: <1400788130-24202-1-git-send-email-antonynpavlov@gmail.com>
 <1400788130-24202-3-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mG1WzFvhzctPULHeaZV10uBbVxK1f0kn9qAAiFXkBxc_w@mail.gmail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/7] ARM: uemd: add DEBUG_LL support
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Fri, 30 May 2014 08:09:21 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

> 2014-05-22 21:48 GMT+02:00 Antony Pavlov <antonynpavlov@gmail.com>:
> > --- a/arch/arm/Kconfig
> > +++ b/arch/arm/Kconfig
> > @@ -203,6 +203,7 @@ config ARCH_UEMD
> >         select OFDEVICE
> >         select OFTREE
> >         select CLOCKSOURCE_UEMD
> > +       select HAS_DEBUG_LL
> =

> Why not putting this into the _defconfig?

I suppose you are mixing up HAS_DEBUG_LL with DEBUG_LL.

DEBUG_LL depends on HAS_DEBUG_LL. If HAS_DEBUG_LL=3Dy then DEBUG_LL can be =
enabled or DEBUG_LL can be disabled.
So you have no chance to use DEBUG_LL without HAS_DEBUG_LL=3Dy!

If you want to enable HAS_DEBUG_LL you have to explicitly select it in a Kc=
onfig file.
You can't use just _defconfig for HAS_DEBUG_LL enabling.

> (On my device, it's neither in defconfig nor in Kconfig, I only had it
> on in the initial "bring it to live" period. Afterwards I turned it
> off)


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
