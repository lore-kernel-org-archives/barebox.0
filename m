Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qqh9G-0006cy-7b
	for barebox@lists.infradead.org; Tue, 09 Aug 2011 07:54:50 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id CFD67FF95C3
	for <barebox@lists.infradead.org>;
	Tue,  9 Aug 2011 09:54:48 +0200 (CEST)
Date: Tue, 9 Aug 2011 09:36:07 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110809073607.GF22213@game.jcrosoft.org>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
	<20110808070650.GA22017@game.jcrosoft.org>
	<20110808073247.GO31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110808073247.GO31404@pengutronix.de>
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
Subject: Re: ARM: use high vectors if possible
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:32 Mon 08 Aug     , Sascha Hauer wrote:
> Hi J,
> 
> On Mon, Aug 08, 2011 at 09:06:50AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 08:46 Mon 08 Aug     , Sascha Hauer wrote:
> > > Created this series to get high vector support. Using high vectors
> > > at 0xffff0000 allow us to map in a faulting page at 0x0 with which
> > > we can catch NULL pointer dereferences. The other patches are only
> > > some cleanups around exceptions which I came along the way.
> > be careful on ixp4xx (which I work on 0x0 is the nor flash address)
> 
> Well, we already map the vectors to 0x0 without this series, so ixp4xx
> is broken anyway.
> So we either have to add a flag somewhere to disable mapping anything
> to 0x0 or we have to use the mmu to map the nor flash somewhere else.
> 
> I see this is a problem which must be solved, but this series does not
> change the current situation in this regard.
I'll prefer to remap the flash and keep the same scheme everywhere

can you drop a line in the doc about this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
