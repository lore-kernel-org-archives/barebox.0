Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a7HsP-0003kK-Io
 for barebox@lists.infradead.org; Fri, 11 Dec 2015 07:12:26 +0000
Date: Fri, 11 Dec 2015 08:12:03 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151211071203.GS11966@pengutronix.de>
References: <1449742046-20906-1-git-send-email-s.hauer@pengutronix.de>
 <1449742046-20906-3-git-send-email-s.hauer@pengutronix.de>
 <1449775419.26955.68.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449775419.26955.68.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH 2/3] linux/barebox-wrapper: Silence gcc5 warning
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Dec 10, 2015 at 07:23:33PM +0000, Trent Piepho wrote:
> On Thu, 2015-12-10 at 11:07 +0100, Sascha Hauer wrote:
> > gcc5 warns about using flags uninitialized in spin_lock_irqsave,
> > although it could look into the static inline spin_lock_irqsave
> > implementation and see it's not used at all. An empty define instead
> > of the static inline wrapper would lead to a "unused variable" warning.
> > Let's create a macro and fake some usage of the flags variable. This
> > probably helps until gcc6 is out.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  include/linux/barebox-wrapper.h | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/include/linux/barebox-wrapper.h b/include/linux/barebox-wrapper.h
> > index 3859185..5fe7971 100644
> > --- a/include/linux/barebox-wrapper.h
> > +++ b/include/linux/barebox-wrapper.h
> > @@ -39,8 +39,8 @@ typedef int   spinlock_t;
> >  #define spin_lock_init(...)
> >  #define spin_lock(...)
> >  #define spin_unlock(...)
> > -static inline void spin_lock_irqsave(spinlock_t *lock, unsigned long flags) {}
> > -static inline void spin_unlock_irqrestore(spinlock_t *lock, unsigned long flags) {}
> > +#define spin_lock_irqsave(lock, flags) do { flags = 0; } while (0)
> > +#define spin_unlock_irqrestore(lock, flags) do { flags = flags; } while (0)
> 
> It's more complex, but one would still get compiler type checking of the
> arguments if one did:
> 
> static inline void _slis(spinlock_t *lock, unsigned long flags) {}
> static inline void _slir(spinlock_t *lock, unsigned long flags) {}
> #define spin_lock_irqsave(lock, flags) _slis(lock, flags = 0)
> #define spin_lock_irqrestore(lock, flags) _slir(lock, flags = flags)
> 
> It think that would make gcc happy too?

Yes, I that should work aswell. I don't think we need the type safety
check though. The spin_lock functions purely exist to help adopting
kernel code, so if the flags variable had the wrong type it wouldn't
have worked in the kernel. Even if the type is wrong it doesn't affect
the barebox code.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
