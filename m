Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmW7R-0008FN-GQ
 for barebox@lists.infradead.org; Wed, 04 Jul 2012 20:24:15 +0000
Date: Wed, 4 Jul 2012 22:23:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120704202340.GF30009@pengutronix.de>
References: <6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAE@SRV-VS06.TELEVIC.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6EE7D1502C48E44E92DCADF9DD3E0DB9019FCE5B1DAE@SRV-VS06.TELEVIC.COM>
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
Subject: Re: starting ethernet switch in SMI mode
To: Vanalme Filip <F.Vanalme@TELEVIC.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jul 04, 2012 at 01:53:39PM +0200, Vanalme Filip wrote:
> Hi,
> 
> On our board with i.MX27 processor, we have a Micrel 5-port Managed
> Ethernet switch (ksz8895mq). When starting in normal MII mode, from
> the Barebox prompt, I can get an IP address by executing the dhcp
> command.  When I change the switch's mode to SPI (via hardware
> strapping), I'm not able to get an IP address anymore via DHCP. In
> this mode, one has to write to a register in the switch to make the
> switch start. So, within our startup code, I added some code to start
> the switch. Reading back the register, I see that the bit is set, so I
> assume the switch sould be running at that moment. However, when
> executing the dhcp command, I get "phy0: Autonegotiation timeout".
> That's strange, because, when I boot to Linux kernel, the kernel
> starts up without any problem and gets an IP address via DHCP. So in
> Linux, it's doing OK.  Because it is working in Linux, I'm quite sure
> the switch was started in a correct way.  I don't understand why
> Barebox is unable to contact the switch while there's no problem in
> Linux to do the same. Anyone any idea on this problem ?

Have you tried ignoring the return result from miidev_wait_aneg? I
assume barebox just can't communicate with the phy because the phy is in
SPI mode.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
