Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo3.mail-out.ovh.net ([87.98.172.162]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJ7JJ-0000dY-EO
 for barebox@lists.infradead.org; Tue, 02 Oct 2012 18:35:14 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 38224FFB849
 for <barebox@lists.infradead.org>; Tue,  2 Oct 2012 20:43:59 +0200 (CEST)
Date: Tue, 2 Oct 2012 20:32:46 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121002183246.GB26553@game.jcrosoft.org>
References: <20120924093122.GD26553@game.jcrosoft.org>
 <506AFDEB.4010805@ge.com>
 <20121002160421.GA26553@game.jcrosoft.org>
 <20121002165847.GA1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121002165847.GA1322@pengutronix.de>
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
Subject: Re: [PATCH 0/1 v7] net: introduce phylib
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:58 Tue 02 Oct     , Sascha Hauer wrote:
> On Tue, Oct 02, 2012 at 06:04:21PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > The mdiobus_scan performed when registering the mdio bus at probe time
> > > has an impact on boot time. I have a 85xx board whose PHY needs 450ms to
> > > be ready for access.
> > > 
> > > I will send a patch for the gianfar driver to register the mdio bus only
> > > when the device is open.
> > That why I did at the first open before
> > 
> > and I guess your case is not the only one
> > 
> > I do not like the idea to register the bus later
> > 
> > we need to have defer probe
> 
> Yes, that's probably the best. Normally, when a phy address is given, we
> do not have to scan the bus at all, we only have to do it when -1 is
> given as phy address.
> 
> Another idea would be to pass a bitmask for valid phy addresses rather
> than a number. Maybe some board has a phy at a known address and another
> one at some to be detected address. Then for one phy the mask would be
> 0x00010000 and for the other 0xfffeffff. Given that this would be more
> effort to change all the platform data we can do this should the need
> arise.
scan the bus take nothing 100ms normally the mdio lock is 3MHz to 6MHz,
the issue is that some phy need to be reset and you need wait for it
and the bus reset

so I think we need to add:

 - device probe defer support
 - phy reset support at phylib level

phy mask will just reduce a few the bus scan

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
