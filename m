Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TSS44-0000Ew-Df
 for barebox@lists.infradead.org; Sun, 28 Oct 2012 12:34:05 +0000
Received: from mail634.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 220ABFFA19C
 for <barebox@lists.infradead.org>; Sun, 28 Oct 2012 13:41:06 +0100 (CET)
Date: Sun, 28 Oct 2012 13:31:48 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121028123148.GE28904@game.jcrosoft.org>
References: <1351101988-6681-1-git-send-email-s.hauer@pengutronix.de>
 <20121024183359.GN21588@game.jcrosoft.org>
 <20121025063711.GC27665@pengutronix.de>
 <20121028112159.GU24458@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121028112159.GU24458@pengutronix.de>
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
Subject: Re: [PATCH] net phy: poll for a link
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:21 Sun 28 Oct     , Sascha Hauer wrote:
> Jean-Christophe,
> 
> On Thu, Oct 25, 2012 at 08:37:11AM +0200, Sascha Hauer wrote:
> > On Wed, Oct 24, 2012 at 08:33:59PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > On 20:06 Wed 24 Oct     , Sascha Hauer wrote:
> > > > Since we have phylib we have no instance which polls for a link. This
> > > > means that network boot often bails out after a powercycle or phy reset.
> > > > This changes the link status behaviour to:
> > > > 
> > > > - Always check for a link if the last link test was unsuccesful
> > > > - If the last check was succesful, check for a link when the last
> > > >   check is longer than 5 seconds ago
> > > > - Try to get a link for 5 seconds.
> > > 5 seconds is too long
> > > 
> > > and check the link is wrong you need to check the autoneg
> > > the link may be down because no cable
> > > 
> > > Here we need to check the autoneg is finished
> > > and the phy is up
> > > 
> > > so use phy_aneg_done and genphy_config_aneg is for this
> > 
> > phy_aneg_done is not exported and genphy_config_aneg is for phy driver
> > use only.
> > 
> > Could you prepare a patch for this? You insisted hard on getting this
> > merged in the first place and seem to know what has to be done.
> 
> Will you prepare a patch for this? This is really something I want to
> have solved before the next release and right now I do not understand
> your proposed solution to this.
next week maybe tuesday or wednesday
I need to finish some work on at91 for the Atmel kernel release
to fix some hw issue

The 1-wire support is needed for this

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
