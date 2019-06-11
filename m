Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hal6h-0002Ln-FP
 for barebox@lists.infradead.org; Tue, 11 Jun 2019 18:02:54 +0000
Message-ID: <35c8b85377b409b96f89d3307b211db0a7b2ab95.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 11 Jun 2019 20:02:48 +0200
In-Reply-To: <20190611104603.GC6199@t480s.localdomain>
References: <20190610155835.18304-1-vivien.didelot@gmail.com>
 <429f1bb0f0ae5c86d2d11be2e105eb5de6f59d1d.camel@pengutronix.de>
 <20190611104603.GC6199@t480s.localdomain>
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
Subject: Re: [PATCH] ARM: zii-rdu2: disable eth0 and eth1
To: Vivien Didelot <vivien.didelot@gmail.com>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, barebox@lists.infradead.org

Hi Vivien,

Am Dienstag, den 11.06.2019, 10:46 -0400 schrieb Vivien Didelot:
> Hi Lucas,
> 
> On Tue, 11 Jun 2019 13:45:13 +0200, Lucas Stach <l.stach@pengutronix.de> wrote:
> > Am Montag, den 10.06.2019, 11:58 -0400 schrieb Vivien Didelot:
> > > The current support for the ZII RDU2 Board times out on eth0 and eth1
> > > when booting 'net' from an alternative interface, like a USB Ethernet
> > > dongle. eth0 is the DSA master interface and has no use within barebox,
> > > as well as the gigabit interface eth1 which is wired to the switch
> > > port 0. Disable them to allow Barebox to boot right away from network.
> > 
> > NACK.
> > 
> > With the just merged patches to the RDU2 environment the FEC interface
> > is fully usable for regular network boot, which is what I use for my
> > development setups.
> 
> Do you mean we can now use one of netleft, netaux or netright to tftpboot?

The default switch config on my units is pass-through. I don't know if
this is true for all units, it may have changed at some point. The
patches in barebox/next make sure that the switch is reset when trying
to bring the network interface up. With this configuration you can use
any of the netleft/netright/netaux connectors to do regular netboot.

> > As USB network boot requires additional hardware, I would say it's fair
> > to require to change the environment on the boards used for DSA
> > development.
> 
> I'd certainly agree with that if booting from a DSA slave is now possible.

For DSA development you will still need a USB network dongle, but for
all development that hasn't to do with the ethernet switch, netbooting
from Barebox works fine with the default configuration.

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
