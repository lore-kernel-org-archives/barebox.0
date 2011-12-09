Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RYy1M-0007IP-3g
 for barebox@lists.infradead.org; Fri, 09 Dec 2011 10:49:41 +0000
Received: from mail192.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 85AC5104DF34
 for <barebox@lists.infradead.org>; Fri,  9 Dec 2011 11:49:51 +0100 (CET)
Date: Fri, 9 Dec 2011 11:45:42 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111209104542.GM23884@game.jcrosoft.org>
References: <1323262387-8012-1-git-send-email-s.hauer@pengutronix.de>
 <1323262387-8012-11-git-send-email-s.hauer@pengutronix.de>
 <20111208142036.GB23884@game.jcrosoft.org>
 <20111209053308.GH23884@game.jcrosoft.org>
 <20111209101551.GF27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111209101551.GF27267@pengutronix.de>
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
Subject: Re: [PATCH 10/11] arm at91sam9260: Add missing
 AT91SAM_ETX2_ETX3_ALTERNATIVE define
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:15 Fri 09 Dec     , Sascha Hauer wrote:
> On Fri, Dec 09, 2011 at 06:33:08AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:20 Thu 08 Dec     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 13:53 Wed 07 Dec     , Sascha Hauer wrote:
> > > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > > ---
> > > >  arch/arm/mach-at91/include/mach/board.h |    1 +
> > > >  1 files changed, 1 insertions(+), 0 deletions(-)
> > > > 
> > > > diff --git a/arch/arm/mach-at91/include/mach/board.h b/arch/arm/mach-at91/include/mach/board.h
> > > > index 546fe90..5e23688 100644
> > > > --- a/arch/arm/mach-at91/include/mach/board.h
> > > > +++ b/arch/arm/mach-at91/include/mach/board.h
> > > > @@ -51,6 +51,7 @@ void at91_add_device_nand(struct atmel_nand_data *data);
> > > >  #define AT91SAM_ETHER_MII		(0 << 0)
> > > >  #define AT91SAM_ETHER_RMII		(1 << 0)
> > > >  #define AT91SAM_ETHER_FORCE_LINK	(1 << 1)
> > > > +#define AT91SAM_ETX2_ETX3_ALTERNATIVE	(2 << 0
> > > this will not work too
> > > 
> > > (1 << 1) = (1 << 0)
> > btw where does this come from
> > 
> > I see no patch about it on the ML at All
> 
> Sorry, I realized after the fact that Michael hasn't Cced the mailing
> list. I owe you a beer.
good tks

can he post them for review at least

because I don't like too much this new flags
and expect all the soc will updated

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
