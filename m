Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PPR0P-00084F-N5
	for barebox@lists.infradead.org; Mon, 06 Dec 2010 02:40:47 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Mon, 6 Dec 2010 08:10:28 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB5930247B9AC02@dbde02.ent.ti.com>
References: <4CF7AB25.3010604@flatfrog.com>
	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
	<4CF7CBD0.7080609@flatfrog.com>
	<B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>
	<4CF89B06.3070209@flatfrog.com>
	<AANLkTineUQPxVixwGswwxvBdZhxrqvmZ8=+rv3QynZ=8@mail.gmail.com>
	<4CF8A582.8080003@flatfrog.com> <4CF8B454.1080202@flatfrog.com>
In-Reply-To: <4CF8B454.1080202@flatfrog.com>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: Barebox on a 3730
To: Orjan Friberg <of@flatfrog.com>, Belisko Marek <marek.belisko@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> -----Original Message-----
> From: Orjan Friberg [mailto:of@flatfrog.com] 
> Sent: Friday, December 03, 2010 2:42 PM
> To: Belisko Marek; Premi, Sanjeev
> Cc: barebox@lists.infradead.org
> Subject: Re: Barebox on a 3730
> 
> On 2010-12-03 09:08, Orjan Friberg wrote:
> > I'll take a look at arch/arm/mach-omap/omap3_clock.c.
> 
> Ok, that stuff looks like it's a bit out of my league.  I guess you'd 
> need to read the TRM very carefully and/or have a JTAG 
> debugger handy to 
> get it right.
> 
> Sanjeev, if you're able to make a patch I'd be grateful.
> 
Looks like I got into more than I could chew for a weekend!

I found many things missing in the process of creating the
patch; and ended with a big lst of 'dirty' patches. I will
be able to try them on the EVM today; but clean-up can take
another day.

If I can get the board to boot, I can send the patches to
you off-the-list for you to get started while I clean-up;
...if helps you.

~sanjeev

> (On a related note, is everyone using MMC for bootstrapping?  I'm 
> finding very little related to rambooting the 35x or 37x.)
> 
> -- 
> Orjan Friber
> FlatFrog Laboratories AB
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
