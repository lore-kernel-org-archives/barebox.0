Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ablsz-0007vn-4u
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 09:19:03 +0000
Date: Fri, 4 Mar 2016 10:18:38 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20160304091838.GV20323@pengutronix.de>
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
> =

> Thanks for fixing this and for adding a comment why this is done. This
> hopefully prevents us from breaking it again.
> =

> Out of interest, what system are you using where this fix is necesssary?

arch/arm/boot/compressed/head.S in Linux has:

                /*
                 * Booting from Angel - need to enter SVC mode and disable
                 * FIQs/IRQs (numeric definitions from angel arm.h source).
                 * We only do this if we were in user mode on entry.
                 */
                mrs     r2, cpsr                @ get current mode
                tst     r2, #3                  @ not user?
                bne     not_angel
                mov     r0, #0x17               @ angel_SWIreason_EnterSVC
 ARM(           swi     0x123456        )       @ angel_SWI_ARM
 THUMB(         svc     0xab            )       @ angel_SWI_THUMB
not_angel:

Not that the patch under discussion would fix running barebox from
Angel, but it seems that this is another situation where the image is
not started in SVC.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
