Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwCGM-00070N-2k
 for barebox@lists.infradead.org; Tue, 31 Jul 2012 13:13:48 +0000
Date: Tue, 31 Jul 2012 15:13:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120731131319.GY30009@pengutronix.de>
References: <50170C6A.2000101@erwinrol.com>
 <5017B839.7070806@erwinrol.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5017B839.7070806@erwinrol.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: x86 weirdness
To: Erwin Rol <mailinglists@erwinrol.com>
Cc: barebox@lists.infradead.org

Hi Erwin,

On Tue, Jul 31, 2012 at 12:49:29PM +0200, Erwin Rol wrote:
> Hey x86-asm-experts,

Surely you do not mean me ;)

> 
> On 31-7-2012 0:36, Erwin Rol wrote:
> 
> So when I use the memset code the asm looks like this below. As you
> can see the memset gets its 3 parameters from the stack (see
> comments below in the asm src). But when you look at the location
> when memset is called it looks like the caller tries to pass the
> parameters in registers. After looking into the Makefile I noticed
> the arch/x86/boot/* sources get compiled with -mregparm=3, but the
> other sources use normal calling convention. This means code from
> arch/x86/boot/* can not call any other barebox functions when they
> are not of type void f(void). The file arch/x86/boot/regs.c also
> calls memset but it seems the compiler notices that regs.c is 16bit
> code and so it inlines a 16bit memset version (I at least don't see
> a call function).
> 
> Is there any GCC or LD magic we can use to prevent error like this?
> Wouldn't it be better to _not_ change the calling convention in the
> Makefile, but mark the functions that need it with __attribute__ ?

Maybe it's easier and more straight forward to just use a for-loop here
instead of playing magic games with attributes and or flags? Are there
more functions affected or is it just memset?

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
