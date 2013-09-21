Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNHyC-0003rS-1M
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 07:51:13 +0000
Date: Sat, 21 Sep 2013 09:50:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130921075047.GJ30088@pengutronix.de>
References: <CAO-21LPB36R6Gk1RiWah8-pinu3rsKEcN-DgeQZkT65VNCDiEA@mail.gmail.com>
 <20130919073520.GS30088@pengutronix.de>
 <CAO-21LOxC24toR=vwTJFx1RrkKX0U-cgbZXjh8UOhznm08Rv0Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAO-21LOxC24toR=vwTJFx1RrkKX0U-cgbZXjh8UOhznm08Rv0Q@mail.gmail.com>
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
Subject: Re: Porting to a new board
To: "Allen Kennedy Jr." <allen@kennedystuff.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 20, 2013 at 04:02:44PM -0500, Allen Kennedy Jr. wrote:
> Thanks for the great idea to start with a loaded image in ram.
> 
> I was able to get it to run, but I can't get the Ethernet to work.
> I'm not entirely sure where to begin looking.
> 
> I hit devinfo and get:
> <snip>
>      `---- imx27-fec
>           `---- miibus0
>           `---- eth0
> <...>
> drivers:
> <...>
> SMSC LAN83C185
> SMSC LAN8187
> SMSC LAN8700
> SMSC LAN911x Internal PHY
> SMSC LAN8710/LAN8720
> fec_imx
> Generic PHY
> </snip>
> 
> This would seem to indicate to me that the drivers are loading. And
> that the register happened.
> But I'm not sure where to go from here.

What's the output of some network command, like for example 'dhcp'?

What's the output of 'md -w -s /dev/phy0'?

Problems with networking usually go down to problems with the phy.
What's the content of the platform data for the FEC? It should look
like:

static struct fec_platform_data fec_info = {
        .xcv_type = PHY_INTERFACE_MODE_MII,
        .phy_addr = -1,
};


With xcv_type being MII (I think it's the only possibility on i.MX27)
and phy_addr to either -1 for autodetecting the address or the correct
address. Use -1 to be on the safe side.

When 'md -w -s /dev/phy0' doesn't show any sensible register output then
your pinmux may be wrong or you haven't brought your phy out of reset
with some gpio.

> 
> In another thread... the advice was given to check the MII address,
> although I'm not sure how to interpret the data sheet.
> It looks as though the address is 31.  But I could be wrong.  When I
> try 31, and do a DHCP the processor hangs.
> So I tried 0, and the processor hangs.
> 
> Is there a "scan the bus mode" I can use in the fec driver?  I don't
> see one, but I may be looking in the wrong spot.

It's not in the FEC driver but in the generic MII support. As said, use
-1 as phy id.

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
