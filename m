Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gveKR-0008Ri-Ck
 for barebox@lists.infradead.org; Mon, 18 Feb 2019 08:31:09 +0000
Date: Mon, 18 Feb 2019 09:31:05 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190218083105.tl4j5jjp7l42rnpz@pengutronix.de>
References: <20190207145801.6893-1-a.fatoum@pengutronix.de>
 <20190211080020.5sjssmrhq26vl7tn@pengutronix.de>
 <8bb4a983-9b6b-bb50-d2b4-7244ad18e27f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8bb4a983-9b6b-bb50-d2b4-7244ad18e27f@pengutronix.de>
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
Subject: Re: [PATCH] LICENSES: adopt Linux-like LICENSES directory structure
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2019 at 09:56:10AM +0100, Ahmad Fatoum wrote:
> On 11/2/19 09:00, Sascha Hauer wrote:
> >> diff --git a/LICENSES/exceptions/u-boot-exception-2.0 b/LICENSES/exceptions/u-boot-exception-2.0
> >> new file mode 100644
> >> index 000000000000..c9b3cd981f51
> >> --- /dev/null
> >> +++ b/LICENSES/exceptions/u-boot-exception-2.0
> >> @@ -0,0 +1,15 @@
> >> +
> >> +GPL License Exception:
> >> +
> >> +Even though U-Boot in general is covered by the GPL-2.0/GPL-2.0+,
> >> +this does *not* cover the so-called "standalone" applications that
> >> +use U-Boot services by means of the jump table provided by U-Boot
> >> +exactly for this purpose - this is merely considered normal use of
> >> +U-Boot, and does *not* fall under the heading of "derived work".
> >> +
> >> +  The header files "include/image.h" and "arch/*/include/asm/u-boot.h"
> >> +define interfaces to U-Boot.  Including these (unmodified) header
> >> +files in another file is considered normal use of U-Boot, and does
> >> +*not* fall under the heading of "derived work".
> > 
> > I don't think we need this. barebox doesn't have (and never had since
> > the fork from U-Boot) these standalone applications. There is no
> > jumptable in barebox. What we do have is modules support, but these are
> > not covered by this text.
> 
> I can send out a v2 without the exception. Everything else is ok?

Yes, at least for me.

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
