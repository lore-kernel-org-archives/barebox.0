Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POCDl-00057P-1G
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 16:41:26 +0000
Message-ID: <4CF7CBD0.7080609@flatfrog.com>
Date: Thu, 2 Dec 2010 17:39:44 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CF7AB25.3010604@flatfrog.com>
	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
In-Reply-To: <AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
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

On 2010-12-02 16:13, Belisko Marek wrote:
> Not have omap3530 or other but have same issue with different board type.
> Problem was with clock setup for serial. Just an idea check if clock is correct
> according data sheet. Maybe 37xx differs from 35xx ;)

Clocking looks like it should be the same but just out of curiosity, 
what issue did you have with the clock setup?  (What was bad, how did it 
manifest itself.)

I haven't found any 3530 vs. 3730 diffs in the uart configuration in 
u-boot or linux (though there is a silicon errata fix in the latest 
linux-omap-2.6 kernel related to not reading from an empty FIFO).

But then again, they could potentially both be relying on the first 
stage bootloader setting things upp correctly (and then not touching it).


Thanks,
Orjan

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
