Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOEuH-0003Cm-26
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 21:42:34 +0000
Date: Tue, 16 Oct 2012 23:42:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121016214231.GI27665@pengutronix.de>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <20121015175414.GB5803@game.jcrosoft.org>
 <20121015225600.0a10a803c98d4213e8e2a1a3@mail.ru>
 <20121016080947.GG5803@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121016080947.GG5803@game.jcrosoft.org>
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
Subject: Re: [PATCH v2 1/3] ARM: Add CLPS711X architecture
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 16, 2012 at 10:09:47AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 22:56 Mon 15 Oct     , Alexander Shiyan wrote:
> > On Mon, 15 Oct 2012 19:54:14 +0200
> > Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> > 
> > > On 20:26 Mon 15 Oct     , Alexander Shiyan wrote:
> > > > This patch adds new architecture (CLPS711X) into barebox.
> > > > The core-logic functionality of the device is built around an ARM720T
> > > > processor running at clock speeds up to 90 MHz.
> > > > 
> > > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> > ...
> > > > +#include <linux/clkdev.h>
> > > split the code in 2
> > >  - clock
> > >  - clocksource in drivers/clocksource
> > >  and cs as a driver
> > drivers/clocksource is missing in master repository and as far I know we are
> > made patches for "master" but not for "next".
> so base your code on next

Generally basing code on next causes maintenance burden. I really prefer
patches on master. In this case it means that the location for the
clocksource driver is fine. What we can look at is that this files
really only contains the clocksource so that it can simply be moved
later.

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
