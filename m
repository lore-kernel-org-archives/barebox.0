Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrCqk-00021R-Ba
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 17:45:51 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id BCA531018E28
	for <barebox@lists.infradead.org>;
	Wed, 10 Aug 2011 19:45:58 +0200 (CEST)
Date: Wed, 10 Aug 2011 19:27:06 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110810172706.GV22213@game.jcrosoft.org>
References: <CAA4bVAHyTDdjUy+xUsKWqXQWwyKh0iX_TTE=fqC=K_jPqZjGEQ@mail.gmail.com>
	<20110808210536.GB22213@game.jcrosoft.org>
	<CAA4bVAEpBaHrb_WOV4z+Y6eotO2AhR8R3B17kx_Xa9-=rd4VPA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAEpBaHrb_WOV4z+Y6eotO2AhR8R3B17kx_Xa9-=rd4VPA@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: versatilepb board support is broken
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 15:22 Wed 10 Aug     , Antony Pavlov wrote:
> On 9 August 2011 01:05, Jean-Christophe PLAGNIOL-VILLARD
> <plagnioj@jcrosoft.com> wrote:
> > On 23:49 Mon 08 Aug =A0 =A0 , Antony Pavlov wrote:
> >> Hi!
> >>
> >> The following patch breaks qemu versatilepb board support:
> >>
> >> c0ff8f7f47fa10b2e683cb0452f659c97aec186f
> >> =A0 =A0 versatile: switch to add_generic_device
> >>
> >> The problem is in serial port initialization.
> >>
> >> As versatilepb use only one serial port, this hack make barebox workab=
le
> >> again (of course it is not a good solution).
> >>
> >> --- a/arch/arm/mach-versatile/core.c
> >> +++ b/arch/arm/mach-versatile/core.c
> >> @@ -156,6 +156,7 @@ void versatile_register_uart(unsigned id)
> >> =A0 =A0 =A0 switch (id) {
> >> =A0 =A0 =A0 case 0:
> >> =A0 =A0 =A0 =A0 =A0 =A0 =A0 start =3D VERSATILE_UART0_BASE;
> > I found the issue too
> >
> > but you need to fix all uart
> =

> It was not a fix, it was a DIRTY HACK (but it was very illustrative). :)))
so please put [RFC xxx] or any thing slse in the subject that we see it's n=
ot
a patch to apply

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
