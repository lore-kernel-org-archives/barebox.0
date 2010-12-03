Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POQh3-00084B-Nv
	for barebox@lists.infradead.org; Fri, 03 Dec 2010 08:08:38 +0000
Message-ID: <4CF8A582.8080003@flatfrog.com>
Date: Fri, 3 Dec 2010 09:08:34 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CF7AB25.3010604@flatfrog.com>	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>	<4CF7CBD0.7080609@flatfrog.com>	<B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>	<4CF89B06.3070209@flatfrog.com>
	<AANLkTineUQPxVixwGswwxvBdZhxrqvmZ8=+rv3QynZ=8@mail.gmail.com>
In-Reply-To: <AANLkTineUQPxVixwGswwxvBdZhxrqvmZ8=+rv3QynZ=8@mail.gmail.com>
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
To: Belisko Marek <marek.belisko@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 2010-12-03 08:33, Belisko Marek wrote:
> Yes clock for UART is also 48Mhz. I think difference is how to setup main clock
> which will be then also used for UART. Just quessing you have latest beagleboard
> revision which have 3730?

The board I'm trying to RAM boot with barebox is our own design, but I'd 
be happy to try it on a BeagleBoard xM if there's a way (mine is an A2 
revision).

I'll take a look at arch/arm/mach-omap/omap3_clock.c.

Thanks,
Orjan

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
