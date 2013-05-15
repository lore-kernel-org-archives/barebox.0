Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcUhF-0007sq-HM
 for barebox@lists.infradead.org; Wed, 15 May 2013 05:56:18 +0000
Date: Wed, 15 May 2013 07:55:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130515055550.GZ32299@pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5190AFA1.1080503@gmail.com>
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

Hi Sebastian,

On Mon, May 13, 2013 at 11:17:21AM +0200, Sebastian Hesselbarth wrote:
> On 05/13/2013 09:58 AM, Sascha Hauer wrote:
> >On Sun, May 12, 2013 at 03:09:04PM +0200, Sebastian Hesselbarth wrote:
> >>This commit adds minimal support for the Marvell Dove SoC (88AP510) as
> >>first SoC of the Marvell Orion family. Orion SoCs have a different timer,
> >>therefore current mach-mvebu and Armada 370/XP Kconfig and Makefiles are
> >>slightly modified and a new clocksource drivers is added.
> >>
> >>Signed-off-by: Sebastian Hesselbarth<sebastian.hesselbarth@gmail.com>
> >>---
> >>Note: Linux for Dove expects internal registers to be remapped. For more
> >>compatibility with barebox for MVEBU, I did not remap those yet. I rather
> >>suggest to allow to add a pre-boot hook right before linux gets booted by
> >>barebox.
> >
> >Damn, I thought that the PowerPC SoCs are the only ones that have such a
> >crazy register hiding feature.
> >
> >I'd really prefer that the barebox memory layout is compatible to the
> >existing devicetrees. Otherwise we block the way of probing barebox from
> >the devicetree and to start barebox second stage.
> 
> Sascha,
> 
> memory layout will be compatible for sure. Just because I will not
> rewrite the whole bunch of dtsi files we built up in the past ;)
> 
> >Is it possible to remap the registers using the kwbimage tool? That way
> >every code that runs would see the desired register layout.
> 
> Although possible, I prefer a different approach:
> - IIRC all MVEBU SoCs boot up at 0xd0000000
> - Have a regbase variable within barebox that initially points to that
> - Have a mvreadl/mvwritel that adds it to reg offsets
> - Rewrite _initial_ SoC code to use mvreadl/mvwritel

I applied this series, but please get this topic done before more code
enters that has to be changed when doing the above.

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
