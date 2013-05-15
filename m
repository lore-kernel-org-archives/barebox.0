Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcWoK-0001bq-Mf
 for barebox@lists.infradead.org; Wed, 15 May 2013 08:11:45 +0000
Date: Wed, 15 May 2013 10:11:21 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130515101121.291e7a4c@skate>
In-Reply-To: <1368604987.4171.4.camel@weser.hi.pengutronix.de>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de> <51932913.90704@gmail.com>
 <20130515092920.161eb910@skate>
 <1368604987.4171.4.camel@weser.hi.pengutronix.de>
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
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Lucas Stach,

On Wed, 15 May 2013 10:03:07 +0200, Lucas Stach wrote:

> > So to me, Barebox should do the 0xf1 remapping as soon as possible in
> > its initialization, for all Marvell EBU platforms, and give up the idea
> > of being able to chainload a second stage Barebox.
> > 
> > Is there anything I'm missing?
> 
> If you are indicating that the remapping was done through a specific
> CP15 entry, barebox should equally be able to read this bit out and
> decide if remapping has to be applied or not.

This CP15 bit thing will only ever be valid for Armada 370/XP. For
Kirkwood, Dove, Orion5x, there is no really reliable way to detect
whether the remapping has occurred or not.

> Is this CP15 bit persistent? Even if not you may be able to set it in
> bootm, just before you jump to the chainloaded image.

The one that was chosen is persistent until the first call to the wfi
instruction, which has the effect of clearing this bit back to 0.

Anyway, if people are concerned by being able to chainload Barebox from
Barebox, or chainload Barebox from U-Boot, we can always add a Kconfig
option to say "I want to do the remapping" (to be enabled when Barebox
is used as the real primary bootloader), or "I don't want to do the
remapping and I'll assume it has already been done before I'm
loaded" (to be enabled when Barebox is chainloaded from another
bootloader that has already done the remapping). I suppose people
willing to do chainloading should be smart enough to understand what
this Kconfig option means, and in which situation is should be enabled
or disabled.

Best regards,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
