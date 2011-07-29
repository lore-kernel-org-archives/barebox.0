Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo4.mail-out.ovh.net ([178.33.253.54]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmmHg-0001r2-M1
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 12:35:21 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id D7DF3FFA536
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 14:36:07 +0200 (CEST)
Date: Fri, 29 Jul 2011 14:17:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110729121739.GC25658@game.jcrosoft.org>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
	<1311918777-26719-5-git-send-email-plagnioj@jcrosoft.com>
	<20110729095237.GA20587@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110729095237.GA20587@pengutronix.de>
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
Subject: Re: [PATCH 5/7] resource: introduce add_usb_ehci_device to
	register echi device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:52 Fri 29 Jul     , Sascha Hauer wrote:
> On Fri, Jul 29, 2011 at 07:52:55AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > pass the hccr and hcor register base via resource
> > 
> > instroduce add_generic_usb_echi_device with hccr = base + 0x100 and
> > hcor = base + 0x140
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> 
> Overall this looks better than my i.MX specific patch for ehci. I'll
> drop mine.
> 
> > 
> > diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
> > index 844dc1d..54856a3 100644
> > --- a/drivers/usb/host/ehci-hcd.c
> > +++ b/drivers/usb/host/ehci-hcd.c
> > @@ -900,20 +900,22 @@ static int ehci_probe(struct device_d *dev)
> >  	host = &ehci->host;
> >  	dev->priv = ehci;
> >  
> > -	if (pdata) {
> > +	/* default to EHCI_HAS_TT to not change behaviour of boards
> > +	 * with platform_data
> > +	 */
> 
> Maybe you can fix this comment on the way: It should be 'without
> platform_data'
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
