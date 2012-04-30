Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo4.mail-out.ovh.net ([178.33.248.196]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpSw-0001C9-EV
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:12:31 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 114A310509A4
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:13:46 +0200 (CEST)
Date: Mon, 30 Apr 2012 13:51:30 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120430115130.GC2992@game.jcrosoft.org>
References: <1335621130-935-1-git-send-email-antonynpavlov@gmail.com>
 <CAA4bVAE_Q=Fisk0HP7MJ8RgHs3UafwTvUp6TAgp6FdeU+S00bQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAE_Q=Fisk0HP7MJ8RgHs3UafwTvUp6TAgp6FdeU+S00bQ@mail.gmail.com>
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
Subject: Re: [RFC 1/2] MIPS: start.S: add "barebox" label at _start + 8
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 20:04 Sat 28 Apr     , Antony Pavlov wrote:
> On 28 April 2012 17:52, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> > =A0arch/mips/boot/start.S | =A0 =A08 ++++++++
> > =A01 file changed, 8 insertions(+)
> >
> > diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
> > index b756d40..d8f4fd5 100644
> > --- a/arch/mips/boot/start.S
> > +++ b/arch/mips/boot/start.S
> > @@ -52,6 +52,14 @@ _pc: addiu =A0 \rd, ra, \label - _pc =A0 =A0 =A0 =A0=
 =A0 # label is assumed to be
> > =A0 =A0 =A0 =A0.align 4
> >
> > =A0EXPORT(_start)
> > +
> > + =A0 =A0 =A0 b =A0 =A0 =A0 __start
> > + =A0 =A0 =A0 =A0nop
> > +
> > + =A0 =A0 =A0 .ascii =A0"barebox"
> =

> There is the problem with mips64 (thank to Jean-Christophe).
> We must set offset for "barebox" string more explicitly.
> =

> I will remake the patches.
I double check by building the malta as 64bit it work but it's true it will=
 be
better to specified the offset explecitly

btw we need to discuss with the kernel ML to add a Magic too in the
vmlinux.bin and vmlinu.bin to be able to detect there type automatically

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
