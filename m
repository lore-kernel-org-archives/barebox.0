Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from p02c12o143.mxlogic.net ([208.65.145.76])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SInFr-0003sq-DD
 for barebox@lists.infradead.org; Fri, 13 Apr 2012 20:38:04 +0000
From: ANDY KENNEDY <ANDY.KENNEDY@adtran.com>
Date: Fri, 13 Apr 2012 20:38:12 +0000
Message-ID: <F9C551623D2CBB4C9488801D14F864C614BE42@ex-mb1.corp.adtran.com>
References: <F9C551623D2CBB4C9488801D14F864C614B2F7@ex-mb1.corp.adtran.com>
 <20120413202303.GT3852@pengutronix.de>
In-Reply-To: <20120413202303.GT3852@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: I want to use Barebox
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> > 1)  I have a concern that barebox is not mainstream enough yet.
> 
> Well by using it you could make it a bit more mainstream ;)

Hmmm.  That will be an UP HILL battle for me, I'm sure.  Are there any
stats on how many folks / who all uses Barebox currently?


> others like gpio or mtd are from the kernel. Porting these over usually
> means some refactoring. For example U-Boot has no device/driver model,
> so you would have to add registration and probe functions. The
> complicated thing about drivers (at least in the bootloader world) is
> getting the hardware accesses right, and these can be copied from the
> original driver.
> 

Confused.  So, you are saying that going from U-Boot to Barebox is
not trivial (being the driver model is different), but these BSPs
often times have drivers in the Linux kernel.  Granted, these are
arch drivers and thus are probably not easily ripped out of the Linux
kernel (most platform specific drivers I've seen are so intermingled
with other Kernel calls it would be difficult to detach that).  Would
it be less painful to port from the arch directory in the kernel than
from U-Boot?

> I hope this helps with your decision

This does not sway me more to using Barebox, that is impossible ;).
Perhaps it will give me fodder for convincing others.

> 
>  Sascha

Thanks for your reply.  It was most useful.
Andy

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
