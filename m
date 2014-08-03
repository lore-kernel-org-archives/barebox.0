Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f181.google.com ([209.85.217.181])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDzmQ-0001zv-CS
 for barebox@lists.infradead.org; Sun, 03 Aug 2014 17:41:11 +0000
Received: by mail-lb0-f181.google.com with SMTP id 10so4532402lbg.26
 for <barebox@lists.infradead.org>; Sun, 03 Aug 2014 10:40:44 -0700 (PDT)
Date: Sun, 3 Aug 2014 21:53:38 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140803215338.3b436b58bf5d796c46dd23bd@gmail.com>
In-Reply-To: <1407082665.7251.1.camel@polaris.local>
References: <1406958354-12051-1-git-send-email-antonynpavlov@gmail.com>
 <1407082665.7251.1.camel@polaris.local>
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
Subject: Re: [RFC] gen-dtb-s: make metadata binary fields always little-endian
To: jlu@pengutronix.de
Cc: barebox@lists.infradead.org

On Sun, 03 Aug 2014 18:17:45 +0200
Jan L=FCbbe <jlu@pengutronix.de> wrote:

> Hi,
> =

> On Sat, 2014-08-02 at 09:45 +0400, Antony Pavlov wrote:
> >  =

> >                 compatlen=3D$($FDTGET -t s "$dtb" / compatible | wc -c)
> > -               echo ".int 0x640c8005"
> > -               echo ".int " $compatlen
> > +               echo ".byte 0x05, 0x80, 0x0c, 0x64"
> > +               python -c "print(\".byte 0x%02x, 0x%02x, 0x%02x, 0x%02x=
\\n\" % ($compatlen & 0xff, ($compatlen >> 8) & 0xff, ($compatlen >> 16) & =
0xff, ($compatlen >> 24) & 0xff))"
> =

> Rather than adding a build-time dependency on python, maybe we should
> just handle this in C?

We use sphinx for documentation generation so we already have dependency on=
 python.

Here is an another solution:

-               echo ".int " $compatlen
+		echo ".byte " $(printf "%08x" $compatlen | sed "s/\(..\)/0x\1\n/g" | tac=
 | xargs | sed "s/ /, /g")

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
