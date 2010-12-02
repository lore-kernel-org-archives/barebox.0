Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from comal.ext.ti.com ([198.47.26.152])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POCIr-00064U-1l
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 16:46:42 +0000
From: "Premi, Sanjeev" <premi@ti.com>
Date: Thu, 2 Dec 2010 22:13:09 +0530
Message-ID: <B85A65D85D7EB246BE421B3FB0FBB5930247466DBA@dbde02.ent.ti.com>
References: <4CF7AB25.3010604@flatfrog.com>,
	<AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
In-Reply-To: <AANLkTimHbFqqTZ3_oqWCTg+dYHuKA2jHqWCymmy++qTO@mail.gmail.com>
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
To: Belisko Marek <marek.belisko@gmail.com>, Orjan Friberg <of@flatfrog.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

_______________________________________
From: barebox-bounces@lists.infradead.org [barebox-bounces@lists.infradead.org] On Behalf Of Belisko Marek [marek.belisko@gmail.com]
Sent: Thursday, December 02, 2010 8:43 PM
To: Orjan Friberg
Cc: barebox@lists.infradead.org
Subject: Re: Barebox on a 3730

Hi,

On Thu, Dec 2, 2010 at 3:20 PM, Orjan Friberg <of@flatfrog.com> wrote:
> Hi,
>
> We have successfully used Barebox as bootloader on one of our own boards
> with an OMAP 3530.  Same board, but with a 3730 instead (and a few auxiliary
> components changed) I'm getting completely garbled output on the serial
> port.  I tried changing the baud rate from 115200 to 38400 and 19200 to no
> avail.
Not have omap3530 or other but have same issue with different board type.
Problem was with clock setup for serial. Just an idea check if clock is correct
according data sheet. Maybe 37xx differs from 35xx ;)

[sp] Yes. There is a difference between the 35x and 37x clock settings.

>
> Anyone here rambooted a 3730 with barebox?  (Just to rule out that I need to
> do any software changes.)

[sp] If the support does exist yet - changes are necessary.

[sp] How urgent is your need? I could make a patch - but you may have
      to wait for couple of days.

>
> When setting the board in boot mode "60" is printed on the serial port by
> the boot ROM, the same way "40W" was printed by the 3530 so it's not like
> the serial port isn't working at all.  I can bootstrap via either USB or
> serial port.  We're using the omap3530_beagle_per_uart_defconfig.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
