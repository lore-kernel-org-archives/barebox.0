Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from bear.ext.ti.com ([192.94.94.41])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PODzr-0004p7-RM
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 18:35:13 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Fri, 3 Dec 2010 00:04:59 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB5930247B9A457@dbde02.ent.ti.com>
References: <4CF7AB25.3010604@flatfrog.com>
	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
	<4CF7CBD0.7080609@flatfrog.com>
In-Reply-To: <4CF7CBD0.7080609@flatfrog.com>
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
> From: barebox-bounces@lists.infradead.org 
> [mailto:barebox-bounces@lists.infradead.org] On Behalf Of 
> Orjan Friberg
> Sent: Thursday, December 02, 2010 10:10 PM
> To: Belisko Marek
> Cc: barebox@lists.infradead.org
> Subject: Re: Barebox on a 3730
> 
> On 2010-12-02 16:13, Belisko Marek wrote:
> > Not have omap3530 or other but have same issue with 
> different board type.
> > Problem was with clock setup for serial. Just an idea check 
> if clock is correct
> > according data sheet. Maybe 37xx differs from 35xx ;)
> 
> Clocking looks like it should be the same but just out of curiosity, 
> what issue did you have with the clock setup?  (What was bad, 
> how did it 
> manifest itself.)
> 
> I haven't found any 3530 vs. 3730 diffs in the uart configuration in 
> u-boot or linux (though there is a silicon errata fix in the latest 
> linux-omap-2.6 kernel related to not reading from an empty FIFO).
> 
Look for the AM37x TRM here:
http://focus.ti.com/docs/prod/folders/print/am3715.html

> But then again, they could potentially both be relying on the first 
> stage bootloader setting things upp correctly (and then not 
> touching it).
> 
> 
> Thanks,
> Orjan
> 
> -- 
> Orjan Friberg
> FlatFrog Laboratories AB
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
