Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aOBN1-0004ip-Ix
 for barebox@lists.infradead.org; Tue, 26 Jan 2016 21:41:52 +0000
Date: Tue, 26 Jan 2016 22:41:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160126214128.GC13058@pengutronix.de>
References: <CAGm1_ksgdg933-MmgmX7a3H2m5HPf-y+pdZybX9+ahLEA_J+tg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAGm1_ksgdg933-MmgmX7a3H2m5HPf-y+pdZybX9+ahLEA_J+tg@mail.gmail.com>
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
Subject: Re: Linux headers
To: Yegor Yefremov <yegorslists@googlemail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Yegor,

On Tue, Jan 26, 2016 at 04:17:39PM +0100, Yegor Yefremov wrote:
> AFAIK include/linux/barebox-wrapper.h was introduced to simplify Linux
> driver porting. During my current effort to port SquashFS driver I had
> to repeatedly remove such includes like:
> 
> #include <linux/vfs.h>
> #include <linux/slab.h>
> #include <linux/vmalloc.h>
> #include <linux/sched.h>
> #include <linux/spinlock.h>
> #include <linux/wait.h>
> 
> and so on.
> 
> Would it be better to provide such headers even if they would almost
> always include dummy code? Though it would pollute the include folder
> somehow, but it will be easier to port/sync Linux drivers and it will
> help to preserve the structure of this drivers.
> 
> What do you think about this?

What would you add to these header files? I mean for spinlock.h it's
clear, it would contain dummy spinlocks. For other files I'm not sure
how much useful stuff we can put in there. For example wait.h contains
much stuff that - when it's used in the code you are porting - cannot
simply be replaced with dummy code but must be handled somehow. So if we
create the Linux header files there should be more gain than only the
ability to keep the include list untouched. I don't know for how many
files this is the case.

Porting over Linux code to barebox is often a balancing act. We can put
much effort into creating header files which make it possible to (almost)
blindly copy over code or we can keenly modify the Linux code to fit
into barebox. One extreme leads to easily portable but probably
inefficient code, the other leads to hard to update but probably better
understandable code. The truth is probably somewhere between both
extremes.

Anyway, to put it short, I think it makes sense to at least move the
stuff we already have in barebox-wrapper.h to their original places.

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
