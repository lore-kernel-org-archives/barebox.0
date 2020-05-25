Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jd6B2-0003l0-9B
 for barebox@lists.infradead.org; Mon, 25 May 2020 06:01:33 +0000
Date: Mon, 25 May 2020 08:01:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200525060129.GM11869@pengutronix.de>
References: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
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
Subject: Re: configure the mac address of an eth device
To: Giorgio <giorgio.nicole@arcor.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Giorgio,

On Sun, May 24, 2020 at 01:57:08PM +0200, Giorgio wrote:
> Hi,
> 
> I'm working with an arm som with an imx7d soc on it.
> The som also has an eeprom with some module specific manufacturer parameters
> like two MAC address, for eth0 and eth1, a module description string or a module
> serial number.
> I've now added some code to my board.c to extract the strings from the eeprom and now
> I need to actually configure the MAC addresses from them, to avoid barebox choose
> random ones when it needs the eth's.

Use of_eth_register_ethaddr(). It will do two things for you. First it
will let the ethernet device come up with the right MAC address under
barebox. Also it will add the "mac-address" property to the device tree
passed to Linux.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
