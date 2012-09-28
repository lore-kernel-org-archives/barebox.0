Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo3.mail-out.ovh.net ([178.32.228.3])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THWge-0001Cs-QP
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 09:16:45 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 537D2FFC404
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 11:25:18 +0200 (CEST)
Date: Fri, 28 Sep 2012 11:14:14 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120928091414.GI26553@game.jcrosoft.org>
References: <20120928022821.GF26553@game.jcrosoft.org>
 <20120928075047.GA1322@pengutronix.de>
 <20120928082716.GG26553@game.jcrosoft.org>
 <20120928085524.GB1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928085524.GB1322@pengutronix.de>
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
Subject: Re: issue patch in next net/eth: fix link handling
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:55 Fri 28 Sep     , Sascha Hauer wrote:
> On Fri, Sep 28, 2012 at 10:27:16AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 09:50 Fri 28 Sep     , Sascha Hauer wrote:
> > > On Fri, Sep 28, 2012 at 04:28:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > HI,
> > > > 
> > > > 	The patch is next
> > > > 	net/eth: fix link handling
> > > > 
> > > > 	was NEVER send to the ML
> > > > 
> > > > 	IIRC I was the author of the first version and this disapear
> > > > 
> > > > 	Uwe and I just get this discussion on the kernel ML about patch update
> > > > 
> > > 
> > > I was basically pissed off because I got the strong feeling that I spent
> > > more time reviewing and testing the patch than you initially spent
> > > writing it in the first place. The second version still stored apples
> > > in edev->phydev->link and bananas in edev->carrier, but still did a
> > > edev->carrier = dev->link.
> > I did this on purpose as I do want to store the link and later export it via
> > env as I get a patch here for 2 wifi driver where I'll not use the phylib
> > 
> > so store the carrier is the correct way
> 
> Whatever it is, adding a variable to an ethernet device and then
> manipulating it in both the phylib and the ethernet code is desastrous.
> It must be clear everytime who owns a variable. Doing a
> 
> eth_current->carrier = CARRIER_UNKNOW;
> 
> in the ethernet code, and then:
> 
> edev->carrier = dev->link;
> 
> in the phy code is a recipe for spaghetti code.
> 
so we need to do call net_carrier in phylib as done in the kernel
the net framework mamange the carrier by itself

as example in wifi phy up does not mean carrier on

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
