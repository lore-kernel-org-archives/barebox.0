Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22b.google.com ([2a00:1450:4010:c04::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VsGgd-0000z3-VF
 for barebox@lists.infradead.org; Sun, 15 Dec 2013 18:45:09 +0000
Received: by mail-lb0-f171.google.com with SMTP id w7so540291lbi.30
 for <barebox@lists.infradead.org>; Sun, 15 Dec 2013 10:44:45 -0800 (PST)
Date: Sun, 15 Dec 2013 22:52:18 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20131215225218.0185e701c5bef4889559a65d@gmail.com>
In-Reply-To: <1387130880.154942460@f379.i.mail.ru>
References: <1387119725-6803-1-git-send-email-antonynpavlov@gmail.com>
 <1387119725-6803-2-git-send-email-antonynpavlov@gmail.com>
 <1387130880.154942460@f379.i.mail.ru>
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
Subject: Re: [JUST RFC] ARM: DIGIC: add csrc-dummy
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Sun, 15 Dec 2013 22:08:00 +0400
Alexander Shiyan <shc_work@mail.ru> wrote:

> > The clocksource csrc-timer driver that uses DIGIC
> > hardware TIMER2 perfectrly works on Canon A1100,
> > but does not works on Canon EOS 600D.
> > IMHO we need additional timer initialisation.
> > =

> > This patch introduces a quick-and-dirty termporary
> > solution for this situation: a clocksource driver that
> > does not use any hardware at all.
> > =

> > Also this driver is very handy for running barebox
> > on Magic Lantern EOS qemu-based emulator as
> > the emulator does not realize timer counter register at all!
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ...
> > +	printf("clocksource_init: mult=3D%08x, shift=3D%08x\n",
> > +			dummy_cs.mult, dummy_cs.shift);
> =

> No reason to spam into console. Put this into pr_debug.
> =


Of cause there is no reason to spam into console!

This patch is mailed only for illustration of the concept,
it even can't be applyed.

Have you any comments on the concept itself?

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
