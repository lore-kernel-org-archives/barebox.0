Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1THW4e-0005sP-6s
 for barebox@lists.infradead.org; Fri, 28 Sep 2012 08:37:29 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id C83F8FFC015
 for <barebox@lists.infradead.org>; Fri, 28 Sep 2012 10:38:20 +0200 (CEST)
Date: Fri, 28 Sep 2012 10:27:16 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120928082716.GG26553@game.jcrosoft.org>
References: <20120928022821.GF26553@game.jcrosoft.org>
 <20120928075047.GA1322@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120928075047.GA1322@pengutronix.de>
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

On 09:50 Fri 28 Sep     , Sascha Hauer wrote:
> On Fri, Sep 28, 2012 at 04:28:21AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > HI,
> > 
> > 	The patch is next
> > 	net/eth: fix link handling
> > 
> > 	was NEVER send to the ML
> > 
> > 	IIRC I was the author of the first version and this disapear
> > 
> > 	Uwe and I just get this discussion on the kernel ML about patch update
> > 
> 
> I was basically pissed off because I got the strong feeling that I spent
> more time reviewing and testing the patch than you initially spent
> writing it in the first place. The second version still stored apples
> in edev->phydev->link and bananas in edev->carrier, but still did a
> edev->carrier = dev->link.
I did this on purpose as I do want to store the link and later export it via
env as I get a patch here for 2 wifi driver where I'll not use the phylib

so store the carrier is the correct way

we could use a net_carrier(xx) as in the kernel to update the field but I do
need the carrier to not be manage only for the phylib

my work on thiose wifi driver is not finished but on the way maybe next
release
> 
> Sorry for not posting it on the ML, doing that now.
I was pissed off that this is based on my work and I lost the author of the
patch and no mention about my work

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
