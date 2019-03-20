Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6WOO-0007ga-RR
 for barebox@lists.infradead.org; Wed, 20 Mar 2019 08:16:09 +0000
Date: Wed, 20 Mar 2019 09:16:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190320081607.prrfhjc7cgrzskns@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
 <20190313094202.14901-5-s.hauer@pengutronix.de>
 <CAHQ1cqFa97quXr6AW12AJKSbQ4+pN_TG71dNG83RrHVDBGSs8Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqFa97quXr6AW12AJKSbQ4+pN_TG71dNG83RrHVDBGSs8Q@mail.gmail.com>
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
Subject: Re: [PATCH 04/15] ARM: Add arm64 pbl udelay
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Mar 19, 2019 at 11:12:19AM -0700, Andrey Smirnov wrote:
> On Wed, Mar 13, 2019 at 3:27 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> > PBL often needs a way to udelay execution. Since we have a generic timer
> > in ARMv8 we can implement a generic udelay.
> >
> 
> Now that get_cntpct() and get_cntfrq() are implemented for ARMv7 we
> can probably extend this to both ARMv8 and ARMv7.

Yes, we could do this. The problem is that this works only on ARMv7
cores that have this timer. What about the others? PBL code that depends
on udelay() can then only run on these cores. Arguably we already have
this problem when I introduce the symbol for ARMv8, but it probably gets
worse when we start using udelay in more places in PBL.
Any idea for a way to implement a udelay for the older cores?

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
