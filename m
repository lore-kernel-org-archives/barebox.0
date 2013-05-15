Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWhq-0001R7-JZ
 for barebox@lists.infradead.org; Wed, 15 May 2013 08:05:05 +0000
Message-ID: <1368604987.4171.4.camel@weser.hi.pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 15 May 2013 10:03:07 +0200
In-Reply-To: <20130515092920.161eb910@skate>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de> <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de> <51932913.90704@gmail.com>
 <20130515092920.161eb910@skate>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Am Mittwoch, den 15.05.2013, 09:29 +0200 schrieb Thomas Petazzoni:
> Dear Sebastian Hesselbarth,
> 
> On Wed, 15 May 2013 08:20:03 +0200, Sebastian Hesselbarth wrote:
> 
> > it's not that easy as I thought. Armada 370 behaves very different
> > from Dove here. While Dove allows to read from unmapped adresses,
> > Armada 370 hangs immediately.
> > 
> > I will work with Thomas on this asap and find a solution, but I am
> > not sure if it will work without dirty tricks. Thomas has one in
> > mind and I tend to agree with him on this one.
> 
> Hum, then either I don't remember, or something, but I don't have a
> trick in mind. We're doing something very custom in the kernel to
> support legacy bootloaders for Armada 370/XP that were not remapping to
> 0xf1, and therefore new bootloaders for Armada 370/XP should remap to
> 0xf1 *and* set a specific CP15 to indicate the kernel that the
> remapping has already been done. So this second thing is basically what
> Barebox will have to do for Armada 370/XP platforms.
> 
> But other than that, I don't have a specific idea in mind. For the
> kernel, I've thought about the problem many times, had many discussions
> with Marvell engineers, and our conclusion is that there is not
> reliable way to detect where the registers are currently mapped.
> 
> So to me, Barebox should do the 0xf1 remapping as soon as possible in
> its initialization, for all Marvell EBU platforms, and give up the idea
> of being able to chainload a second stage Barebox.
> 
> Is there anything I'm missing?
> 

If you are indicating that the remapping was done through a specific
CP15 entry, barebox should equally be able to read this bit out and
decide if remapping has to be applied or not.

Is this CP15 bit persistent? Even if not you may be able to set it in
bootm, just before you jump to the chainloaded image.

Regards,
Lucas
-- 
Pengutronix e.K.                           | Lucas Stach                 |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-5076 |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
