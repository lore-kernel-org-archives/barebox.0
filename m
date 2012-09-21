Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 13.mo5.mail-out.ovh.net ([87.98.182.191]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TF6wF-0004Qr-Uy
 for barebox@lists.infradead.org; Fri, 21 Sep 2012 17:22:54 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id C880A100800C
 for <barebox@lists.infradead.org>; Fri, 21 Sep 2012 19:28:42 +0200 (CEST)
Date: Fri, 21 Sep 2012 19:20:17 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120921172017.GQ26553@game.jcrosoft.org>
References: <1348158669-14034-1-git-send-email-renaud.barbier@ge.com>
 <1348158669-14034-2-git-send-email-renaud.barbier@ge.com>
 <20120920182332.GD26553@game.jcrosoft.org>
 <20120921063408.GC1322@pengutronix.de>
 <20120921080658.GL26553@game.jcrosoft.org>
 <20120921083034.GE1322@pengutronix.de> <505C9E29.708@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <505C9E29.708@ge.com>
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
Subject: Re: [PATCH 1/5] phylib: bus reset function
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 18:04 Fri 21 Sep     , Renaud Barbier wrote:
> On 21/09/12 09:30, Sascha Hauer wrote:
> > On Fri, Sep 21, 2012 at 10:06:58AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >> On 08:34 Fri 21 Sep     , Sascha Hauer wrote:
> >>> On Thu, Sep 20, 2012 at 08:23:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> >>>> On 17:31 Thu 20 Sep     , Renaud Barbier wrote:
> >>>>> Added an entry point for a bus reset function.
> >>>>>
> >>>>> Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
> >>>>> ---
> >>>>>  drivers/net/phy/phy.c |    3 +++
> >>>>>  include/miidev.h      |    1 +
> >>>>>  2 files changed, 4 insertions(+), 0 deletions(-)
> >>>>>
> >>>>> diff --git a/drivers/net/phy/phy.c b/drivers/net/phy/phy.c
> >>>>> index 5406ea3..d9f5409 100644
> >>>>> --- a/drivers/net/phy/phy.c
> >>>>> +++ b/drivers/net/phy/phy.c
> >>>>> @@ -129,6 +129,9 @@ int phy_device_connect(struct eth_device *edev, struct mii_device *bus, int addr
> >>>>>  	unsigned int i;
> >>>>>  	int ret = -EINVAL;
> >>>>>  
> >>>>> +	if (bus->reset)
> >>>>> +		bus->reset(bus);
> >>>>> +
> >>>> I do not like this we should not touch the bus at phy connect
> >>>
> >>> Then please make a suggestion where it should be then. I also have some
> >>> drivers where this function could be used.
> >> I have too the need of a reset
> >>
> >> I get a big issue on reset the mii bus at eth open
> >>
> >> my only idea was to move the phy detect awqy from the eth_open to the mii bus
> >> probe
> >>
> >> but this will increase the boot time as we do not need to probe the phy if we
> >> do not use the network
> > 
> > Before we start adding quirks for do-the-reset-only-when necessary,
> > access-the-phy-pnly-when necessary can we have a statement on which
> > timescales we talk about here? A quick test on a i.MX board shows that
> > detecting the phy takes 186us when its address is specified and 1.7ms
> > when the whole bus is scanned for phys. This is really not worth adding
> > quirks for.
> > 
> > BTW the reset function for the mii *bus* really should be done when the
> > bus is registered. Doing it when a new phy is registered will break phys
> > already present.
> In summary, we agree that we need a bus reset function and that it
> should be called at present by the function mii_register.
wait a few we agree on more than this, I will take a look how to update the
phylib correctly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
