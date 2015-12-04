Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a4kfJ-00066Y-GK
 for barebox@lists.infradead.org; Fri, 04 Dec 2015 07:20:26 +0000
Date: Fri, 4 Dec 2015 08:20:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151204072002.GU11966@pengutronix.de>
References: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1449105900.26955.1.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] ARM: Remove kernel booting call for thumb2 mode
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox <barebox@lists.infradead.org>

On Thu, Dec 03, 2015 at 01:24:56AM +0000, Trent Piepho wrote:
> The asm code to do the actual call into the kernel (or another
> barebox) when compiled in thumb2 mode isn't necessary.  gcc generates
> a perfectly good calling sequence from a normal function pointer call.
> If it didn't, the code in bootstrap_boot() that uses a function
> pointer to jump to the 2nd stage barebox from an xloader wouldn't
> work.
> 
> It appears to be allowed that the call to kernel() could return, as
> neither start_linux() nor kernel() are marked noreturn, and there is
> code after calls to start_linux().
> 
> The asm code has a bug in this case, as it uses bx and not blx, and
> thus doesn't set the link register.  Since it's a tail call, this
> would be okay, but only if the LR value from the start of
> start_linux() (and the callee-saved registers) are restored
> beforehand, which isn't done.  The gcc generated call sequence will do
> this.

The kernel won't return, so this bug shouldn't hit us. Anyway, nice
cleanup. Tested and applied, thanks

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
