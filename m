Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TO2Fy-0005Dm-ES
 for barebox@lists.infradead.org; Tue, 16 Oct 2012 08:12:07 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 07C5E104F650
 for <barebox@lists.infradead.org>; Tue, 16 Oct 2012 10:18:44 +0200 (CEST)
Date: Tue, 16 Oct 2012 10:09:47 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121016080947.GG5803@game.jcrosoft.org>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <20121015175414.GB5803@game.jcrosoft.org>
 <20121015225600.0a10a803c98d4213e8e2a1a3@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121015225600.0a10a803c98d4213e8e2a1a3@mail.ru>
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
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On 22:56 Mon 15 Oct     , Alexander Shiyan wrote:
> On Mon, 15 Oct 2012 19:54:14 +0200
> Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:
> 
> > On 20:26 Mon 15 Oct     , Alexander Shiyan wrote:
> > > This patch adds new architecture (CLPS711X) into barebox.
> > > The core-logic functionality of the device is built around an ARM720T
> > > processor running at clock speeds up to 90 MHz.
> > > 
> > > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ...
> > > +#include <linux/clkdev.h>
> > split the code in 2
> >  - clock
> >  - clocksource in drivers/clocksource
> >  and cs as a driver
> drivers/clocksource is missing in master repository and as far I know we are
> made patches for "master" but not for "next".
so base your code on next
> 
> ...
> > > +	osc = 3686400;
> > > +	ext = 13000000;
> > creaet a clock for this
> This is constant frequencies and it is used only here. Is this really need?
but it's still a clock if the driver need clock info fixed or not he request a
clock as the value can change across soc
> 
> ...
> > > +void clps711x_add_uart(unsigned int id)
> > > +{
> > > +	add_generic_device_res("clps711x_serial", id, NULL, 0, NULL);
> > where is the base address address?
> Base address is not needed because it is impossible to request resource for
> registers for this CPU. Registers is shared for all devices.
> 
> > where is the check on the id?
> Simple check is provided in serial driver by definition, for example:
> SYSFLG(x) ? SYSFLG2 : SYSFLG1, where x is "id".
> But, you are right, I will made one more check for id in "probe".
> 
> -- 
> Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
