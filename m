Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcVNG-0008Oj-Ok
 for barebox@lists.infradead.org; Wed, 15 May 2013 06:39:43 +0000
Date: Wed, 15 May 2013 08:39:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515063920.GC32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de> <51932913.90704@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51932913.90704@gmail.com>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

On Wed, May 15, 2013 at 08:20:03AM +0200, Sebastian Hesselbarth wrote:
> On 05/15/2013 07:55 AM, Sascha Hauer wrote:
> >>>Is it possible to remap the registers using the kwbimage tool? That way
> >>>every code that runs would see the desired register layout.
> >>
> >>Although possible, I prefer a different approach:
> >>- IIRC all MVEBU SoCs boot up at 0xd0000000
> >>- Have a regbase variable within barebox that initially points to that
> >>- Have a mvreadl/mvwritel that adds it to reg offsets
> >>- Rewrite _initial_ SoC code to use mvreadl/mvwritel
> >
> >I applied this series, but please get this topic done before more code
> >enters that has to be changed when doing the above.
> 
> Sascha,
> 
> it's not that easy as I thought. Armada 370 behaves very different
> from Dove here. While Dove allows to read from unmapped adresses,
> Armada 370 hangs immediately.
> 
> I will work with Thomas on this asap and find a solution, but I am
> not sure if it will work without dirty tricks. Thomas has one in
> mind and I tend to agree with him on this one.

I hope the tricks won't get too dirty, otherwise it may be better to
drop the 2nd stage feature.
BTW. in earlier days we used to start 2nd stage loaders with the 'go'
command, but nowadays we have 'bootm' which could detect that it's a
barebox image we are about to start and could create whatever register
mapping  a barebox image expects.
This wouldn't help when starting a barebox image for example from
U-Boot or JTAG, but would at least make it possible to chainload barebox
from barebox.

> 
> Further, yesterday when I played with Armada 370 I wasn't able to
> have it boot with a variable pointer but the same code boots with
> a pointer that never gets modified. Haven't investigated more, but
> if we remap first thing after boot, that can remain constant at the
> remapped reg base.

Is the barebox binary copied to its link address by the ROM already or
does barebox need to copy itself to the link address? That would make
using global variables impossible befor copying to the correct address.

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
