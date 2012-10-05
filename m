Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TK8mT-0001Gf-Eo
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 14:21:41 +0000
Received: from mail413.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 589A610508FE
 for <barebox@lists.infradead.org>; Fri,  5 Oct 2012 16:27:30 +0200 (CEST)
Date: Fri, 5 Oct 2012 16:18:48 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121005141848.GT26553@game.jcrosoft.org>
References: <1349422624-5278-1-git-send-email-gregory.hermant@calao-systems.com>
 <20121005134131.GU1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121005134131.GU1322@pengutronix.de>
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
Subject: Re: [PATCH 1/2] Add support for the Calao-systems HABA-KNX controllers
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:41 Fri 05 Oct     , Sascha Hauer wrote:
> On Fri, Oct 05, 2012 at 09:37:03AM +0200, Gregory Hermant wrote:
> > Signed-off-by: Gregory Hermant <gregory.hermant@calao-systems.com>
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> 
> >  create mode 100644 arch/arm/boards/haba-knx/Makefile
> >  create mode 100644 arch/arm/boards/haba-knx/config.h
> >  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/10
> >  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/11
> >  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/12
> >  create mode 100644 arch/arm/boards/haba-knx/env/boot.d/13
> 
> Please drop the links for now until the boot sequence patches are
> reworked.
> 
> > +
> > +# MAC address if needed
> > +#ethaddr=xx:xx:xx:xx:xx:xx
> > +ethaddr=6a:63:73:00:00:34
> 
> No hardcoded MAC addresses in the environment please.
> 
> > +#include <spi/flash.h>
> > +
> > +static void haba_knx_set_board_type(void)
> > +{
> > +	if (machine_is_haba_knx_lite())
> > +		armlinux_set_architecture(MACH_TYPE_HABA_KNX_LITE);
> > +	else
> > +		armlinux_set_architecture(MACH_TYPE_HABA_KNX_EXPLORER);
> 
> Can the board type somehow be autodetected? That would be great.
can not

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
