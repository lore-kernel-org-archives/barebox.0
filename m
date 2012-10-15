Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp21.mail.ru ([94.100.176.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TNppb-0004SV-Vu
 for barebox@lists.infradead.org; Mon, 15 Oct 2012 18:56:05 +0000
Date: Mon, 15 Oct 2012 22:56:00 +0400
From: Alexander Shiyan <shc_work@mail.ru>
Message-Id: <20121015225600.0a10a803c98d4213e8e2a1a3@mail.ru>
In-Reply-To: <20121015175414.GB5803@game.jcrosoft.org>
References: <1350318405-20081-1-git-send-email-shc_work@mail.ru>
 <20121015175414.GB5803@game.jcrosoft.org>
Mime-Version: 1.0
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

On Mon, 15 Oct 2012 19:54:14 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> On 20:26 Mon 15 Oct     , Alexander Shiyan wrote:
> > This patch adds new architecture (CLPS711X) into barebox.
> > The core-logic functionality of the device is built around an ARM720T
> > processor running at clock speeds up to 90 MHz.
> > 
> > Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
...
> > +#include <linux/clkdev.h>
> split the code in 2
>  - clock
>  - clocksource in drivers/clocksource
>  and cs as a driver
drivers/clocksource is missing in master repository and as far I know we are
made patches for "master" but not for "next".

...
> > +	osc = 3686400;
> > +	ext = 13000000;
> creaet a clock for this
This is constant frequencies and it is used only here. Is this really need?

...
> > +void clps711x_add_uart(unsigned int id)
> > +{
> > +	add_generic_device_res("clps711x_serial", id, NULL, 0, NULL);
> where is the base address address?
Base address is not needed because it is impossible to request resource for
registers for this CPU. Registers is shared for all devices.

> where is the check on the id?
Simple check is provided in serial driver by definition, for example:
SYSFLG(x) ? SYSFLG2 : SYSFLG1, where x is "id".
But, you are right, I will made one more check for id in "probe".

-- 
Alexander Shiyan <shc_work@mail.ru>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
