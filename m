Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
	helo=mo1.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1R5adM-0003k8-Ov
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 09:59:30 +0000
Received: from mail179.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo1.mail-out.ovh.net (Postfix) with SMTP id D451C10144E1
	for <barebox@lists.infradead.org>;
	Mon, 19 Sep 2011 12:00:17 +0200 (CEST)
Date: Mon, 19 Sep 2011 11:37:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110919093716.GF16141@game.jcrosoft.org>
References: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
	<1316175828-19748-4-git-send-email-plagnioj@jcrosoft.com>
	<20110919091824.GG31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110919091824.GG31404@pengutronix.de>
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
Subject: Re: [PATCH 4/7] at91/boards: switch to software ecc as in linux kernel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:18 Mon 19 Sep     , Sascha Hauer wrote:
> On Fri, Sep 16, 2011 at 02:23:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  arch/arm/boards/at91sam9260ek/init.c     |    2 +-
> >  arch/arm/boards/at91sam9263ek/init.c     |    2 +-
> >  arch/arm/boards/pm9263/init.c            |    2 +-
> >  arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
> >  4 files changed, 4 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> > index 861e898..e4b98bf 100644
> > --- a/arch/arm/boards/at91sam9260ek/init.c
> > +++ b/arch/arm/boards/at91sam9260ek/init.c
> > @@ -64,7 +64,7 @@ static struct atmel_nand_data nand_pdata = {
> >  	.cle		= 22,
> >  /*	.det_pin	= ... not connected */
> >  	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC),
> > -	.ecc_mode	= NAND_ECC_HW,
> > +	.ecc_mode	= NAND_ECC_SOFT,
> 
> What does the Atmel nand bootloader expect (I assume it's possible to
> boot from NAND, right?). Is it software or hardware ecc?
don't care the ecc is not manage by the rom code

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
