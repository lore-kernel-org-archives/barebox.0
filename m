Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 68.mail-out.ovh.net ([91.121.185.69])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OzMB3-00028w-T8
	for barebox@lists.infradead.org; Sat, 25 Sep 2010 04:15:58 +0000
Date: Sat, 25 Sep 2010 06:14:26 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100925041426.GC2111@game.jcrosoft.org>
References: <1285350271-18637-1-git-send-email-plagnioj@jcrosoft.com>
	<AANLkTimAbBNcJEbJPSVXhHMBmgFUyh7wAgmYPguDg1T5@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimAbBNcJEbJPSVXhHMBmgFUyh7wAgmYPguDg1T5@mail.gmail.com>
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
Subject: Re: [PATCH] MAKEALL: make it generic
To: Mike Frysinger <vapier.adi@gmail.com>
Cc: barebox@lists.infradead.org

On 14:13 Fri 24 Sep     , Mike Frysinger wrote:
> On Fri, Sep 24, 2010 at 13:44, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > +if [ ! "${LOGDIR}" ] ; then
> > + =A0 =A0 =A0 LOGDIR=3D"LOG"
> > +fi
> =

> simpler syntax:
> : ${LOGDIR:=3DLOG}
> =

> > +if [ ! "${BUILDDIR}" ] ; then
> > + =A0 =A0 =A0 BUILDIR=3D"makeall_buildir"
> > =A0fi
> =

> : ${BUILDDIR:=3Dmakeall_builddir}
> =

> i think your patch misses a "d" here at least ...
ok will update
> =

> > +CROSS_COMPILE_arm=3D/opt/arm-2007q3/bin/arm-none-linux-gnueabi-
> > +CROSS_COMPILE_m68k=3Dm68k-uclinux-
> > +CROSS_COMPILE_blackfin=3D/opt/uClinux/bfin-linux-uclibc/bin/bfin-linux=
-uclibc-
> > +CROSS_COMPILE_ppc=3D/opt/powerpc/bin/powerpc-unknown-linux-gnu-
> > +CROSS_COMPILE_sandbox=3D/usr/bin/
> > +CROSS_COMPILE_x86=3D/usr/bin/
> =

> i dont think hardcoding paths is a good idea, and bfin-linux-uclibc-
> might not work.  so bfin-uclinux- might be better.
it's just an example of configuration
so I do not mind Sascha what do you prefer?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
