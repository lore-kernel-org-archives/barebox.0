Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RDCES-0002yl-LA
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 09:33:13 +0000
Date: Mon, 10 Oct 2011 11:33:09 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111010093309.GQ31404@pengutronix.de>
References: <20110210121003.GT9041@pengutronix.de>
	<4E8C5F56.50104@besancon.parkeon.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E8C5F56.50104@besancon.parkeon.com>
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
Subject: Re: Re: barebox startup
To: Pierre Schirrer <pschirrer@besancon.parkeon.com>
Cc: barebox@lists.infradead.org

On Wed, Oct 05, 2011 at 03:44:54PM +0200, Pierre Schirrer wrote:
> Hello Sascha,
> 
> >/
> />/
> />/  For the moment, I don't have any activity on my Ethernet ports (no
> />/  leds on or blinking), although I added the fec device. When I execute
> />/  the dhcp command, I get :
> />/
> />/  barebox:/ dhcp
> />/  warning: No MAC address set. Using random address 8E:A2:E8:DD:E2:73
> />/  phy0: Link is up - 100/Full
> />/  transmission timeout
> />/  T transmission timeout
> />/  T transmission timeout
> />/
> />/  But, whether I connect the cable or not, it always shows "phy0:Link is up - 100/Full".
> /
> Have a look at the output of md -s /dev/phy0. You should see valid phy
> registers, not 0xffffffff.
> 
> 
> I have exactly the same problem on an i.MX21 board (proprietary
> design). I have used the imx21ads to start from.
> 
> md -s /dev/phy0 returns 0xffffffff. Any ideas how to correct this
> (the smc91c111 base address is 0xd2c80000) ?

Have you used the correct phy address? In the smc91111 driver the phy
address is currently hardcoded to 0:

	priv->miidev.address = 0;

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
