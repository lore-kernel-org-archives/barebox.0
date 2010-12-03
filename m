Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PORgG-0007k1-Lg
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 09:11:53 +0000
Message-ID: <4CF8B454.1080202@flatfrog.com>
Date: Fri, 3 Dec 2010 10:11:48 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CF7AB25.3010604@flatfrog.com>	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>	<4CF7CBD0.7080609@flatfrog.com>	<B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>	<4CF89B06.3070209@flatfrog.com>	<AANLkTineUQPxVixwGswwxvBdZhxrqvmZ8=+rv3QynZ=8@mail.gmail.com>
	<4CF8A582.8080003@flatfrog.com>
In-Reply-To: <4CF8A582.8080003@flatfrog.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox on a 3730
To: Belisko Marek <marek.belisko@gmail.com>, "Premi, Sanjeev" <premi@ti.com>
Cc: barebox@lists.infradead.org

On 2010-12-03 09:08, Orjan Friberg wrote:
> I'll take a look at arch/arm/mach-omap/omap3_clock.c.

Ok, that stuff looks like it's a bit out of my league.  I guess you'd 
need to read the TRM very carefully and/or have a JTAG debugger handy to 
get it right.

Sanjeev, if you're able to make a patch I'd be grateful.

(On a related note, is everyone using MMC for bootstrapping?  I'm 
finding very little related to rambooting the 35x or 37x.)

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
