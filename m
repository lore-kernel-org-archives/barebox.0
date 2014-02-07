Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh9w-00084X-Mm
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:51:41 +0000
Message-ID: <1391763137.1807.1.camel@tellur>
From: Lucas Stach <dev@lynxeye.de>
Date: Fri, 07 Feb 2014 09:52:17 +0100
In-Reply-To: <CAO6XYUu7PyrjnT=c-t2RVZ51xZagtGXqQyFGYL9dpF2qLypt_w@mail.gmail.com>
References: <CAO6XYUu7PyrjnT=c-t2RVZ51xZagtGXqQyFGYL9dpF2qLypt_w@mail.gmail.com>
Mime-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: net usb asix: read MAC from EEPROM on AX88772B
To: "Michael D. Burkey" <mdburkey@gmail.com>
Cc: barebox@lists.infradead.org

Hi Michael,

Am Donnerstag, den 06.02.2014, 15:47 -0500 schrieb Michael D. Burkey:
> Philipp,
> 
> I have just checked out the tip release of barebox and have been
> playing with your added code for the ASIX88772B (which I find a bit
> humorous, as I had just migrated almost EXACTLY the same code myself
> from the Linux sources two days ago, before I noticed yours -- I had
> even put the "read MAC from EE" code into the exact same function).
> 
> The bad news is, your patches and mine both behave identically and
> neither works quite right.
> 
> Specifically, while the network will connect and it will pull a DHCP
> address, it still gets tons of invalid lengths from asix_rx_fixup().
> It also doesn't seem to work for much else beyond that.
> 
> Have you had any additional luck in getting it working "right" with the 88772B?
> 
> Basically, since we are both obviously working on it, I figured it
> would make sense if we coordinated efforts a bit, so as to avoid
> duplicated effort.
> 

If you want the AX88772B to work reliable, you will have to port over
the Linux commit that allows the proper handling of AX Frames split
between two USB URBs.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
