Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abjxd-0007Fo-Ra
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 07:15:42 +0000
Date: Fri, 4 Mar 2016 08:15:18 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160304071518.GR20323@pengutronix.de>
References: <1456959088-9609-1-git-send-email-akurz@blala.de>
 <20160304070448.GB21869@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160304070448.GB21869@pengutronix.de>
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
Subject: Re: [PATCH] arm/cpu/lowlevel: fix: possible processor mode change
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>

Hello Sascha,

On Fri, Mar 04, 2016 at 08:04:48AM +0100, Sascha Hauer wrote:
> Hi Alexander,
> =

> On Wed, Mar 02, 2016 at 11:51:28PM +0100, Alexander Kurz wrote:
> > This is a re-application of fix 17644b55.
> > arm_cpu_lowlevel_init() will set the processor mode to 0x13 (supervisor=
).
> > When this function is entered via a different processor mode, register
> > banking will happen to lr (r14), resulting in an invalid return address.
> > This fix will preserve the return address manually.
> > =

> > Signed-off-by: Alexander Kurz <akurz@blala.de>
> > ---
> >  arch/arm/cpu/lowlevel.S | 4 +++-
> >  1 file changed, 3 insertions(+), 1 deletion(-)
> > =

> > diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
> > index b76222d..e5baa12 100644
> > --- a/arch/arm/cpu/lowlevel.S
> > +++ b/arch/arm/cpu/lowlevel.S
> > @@ -4,6 +4,8 @@
> >  =

> >  .section ".text_bare_init_","ax"
> >  ENTRY(arm_cpu_lowlevel_init)
> > +	/* save lr, since it may be banked away with a processor mode change =
*/
> > +	mov	r2, lr

Acked-by: Uwe Kleine-K=F6nig <u.kleine-koenig@pengutronix.de>

> Thanks for fixing this and for adding a comment why this is done. This
> hopefully prevents us from breaking it again.
> =

> Out of interest, what system are you using where this fix is necesssary?
> =

> Uwe, now we know why that was done and why e190bcf (arm/cpu/lowlevel:
> Don't save the return address in another register) was a bad idea.

Right. :-) But even if I had seen
17644b55cae9c234b26213d644e9fd939b0ec815 back then I would have wondered
because the commit log isn't that verbose :-(

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
