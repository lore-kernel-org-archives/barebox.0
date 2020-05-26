Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx012.vodafonemail.xion.oxcs.net ([153.92.174.90])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdbv4-0007dE-IR
 for barebox@lists.infradead.org; Tue, 26 May 2020 15:55:13 +0000
Date: Tue, 26 May 2020 17:54:53 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <2035082672.75503.1590508494270@mail.vodafone.de>
In-Reply-To: <20200525060129.GM11869@pengutronix.de>
References: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
 <20200525060129.GM11869@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: configure the mac address of an eth device
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sascha,

thank you for your suggestion about the MAC, the code works now as expected.

Just another quick question: is there a function like of_eth_register_ethaddr()
also for a 'serial-number' value ?

I also have a 'serial number' value from the eeprom and I would like to pass to the kernel.
Just calling something like:

of_set_property(of_get_root_node(), "serial-number", s, strlen(s) + 1, 1);

does not work because it changes only the device tree for barebox but not that
for the kernel. So I registered an of fixup:

of_register_fixup(samx7_board_fixup, s);

for it and it works then but it is a bit more complex.

giorgio

> On May 25, 2020 at 8:01 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> 
> Hi Giorgio,
> 
> On Sun, May 24, 2020 at 01:57:08PM +0200, Giorgio wrote:
> > Hi,
> > 
> > I'm working with an arm som with an imx7d soc on it.
> > The som also has an eeprom with some module specific manufacturer parameters
> > like two MAC address, for eth0 and eth1, a module description string or a module
> > serial number.
> > I've now added some code to my board.c to extract the strings from the eeprom and now
> > I need to actually configure the MAC addresses from them, to avoid barebox choose
> > random ones when it needs the eth's.
> 
> Use of_eth_register_ethaddr(). It will do two things for you. First it
> will let the ethernet device come up with the right MAC address under
> barebox. Also it will add the "mac-address" property to the device tree
> passed to Linux.
> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
