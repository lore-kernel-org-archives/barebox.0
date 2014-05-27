Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wp9yg-0004sN-8B
 for barebox@lists.infradead.org; Tue, 27 May 2014 05:31:11 +0000
Date: Tue, 27 May 2014 07:30:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140527053045.GL15686@pengutronix.de>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox@lists.infradead.org, Daniele Lacamera <mlists@danielinux.net>, Daniele Lacamera <daniele.lacamera@tass.be>, Sam Van Den Berge <sam.van.den.berge@tass.be>

On Mon, May 26, 2014 at 04:09:33PM +0400, Antony Pavlov wrote:
> On Mon, 26 May 2014 11:45:57 +0200
> Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> 
> 1. For end user barebox in many ways behave like linux shell console
> 
>    We have files, standard shell commands, environment etc. It is very convenient!
> 
>    But current network code breaks this illusion (e.g. you can't ping a barebox running board).
>    The details of network subsystem realisation shape barebox user network modus operandi.
> 
>    Adding full-grown but tiny network stack to barebox makes barebox' behaviour
>    (from user's point of view) more close to linux shell console.
> 
> 2. tcp
> 
>    IMHO __optional__ TCP support can be beneficial for bootloader.
>    E.g. I would like to use widely used telnet protocol for network console.
> 
>    See also U-boot mod (https://forum.openwrt.org/viewtopic.php?id=43237),
>    http-server enabled U-Boot, less than 64K!
> 
> 3. ipv6
> 
>    Current IPv4 address space is near totaly exhausted
>    (see https://www.icann.org/news/announcement-2-2014-05-20-en).
>    I suppose with the lapse of time IPv6 will be used even in bootloaders :)
>    picotcp gives you IPv6 just now.

These features sound very nice. I hope we can get the binary size
impacts within sensible limits. Is it possible to disable TCP support in
picotcp?

> 
> 4. several simultaneously running network interfaces support
> 
>    Imagine a small cluster system.
>    The processors of this cluster are connected via special interconnect, and only one
>    "master" processor has ethernet connection to the surrounding world. with current
>    "single active network device" conception you can't use barebox for connecting "slave" cluster'
>    processors to the surrounding world using "master" processor as a gateway.

That sound more like you should start Linux earlier.

An integration of picotcp which allows to play with real hardware would
be great, even if it's quick and dirty. That would allow us to see the
size impact and the behaviour of the stack without interrupts.

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
