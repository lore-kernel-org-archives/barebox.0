Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UcW9e-0000i6-Rm
 for barebox@lists.infradead.org; Wed, 15 May 2013 07:29:43 +0000
Date: Wed, 15 May 2013 09:29:20 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130515092920.161eb910@skate>
In-Reply-To: <51932913.90704@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130513075852.GG32299@pengutronix.de>
 <5190AFA1.1080503@gmail.com>
 <20130515055550.GZ32299@pengutronix.de> <51932913.90704@gmail.com>
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
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sebastian Hesselbarth,

On Wed, 15 May 2013 08:20:03 +0200, Sebastian Hesselbarth wrote:

> it's not that easy as I thought. Armada 370 behaves very different
> from Dove here. While Dove allows to read from unmapped adresses,
> Armada 370 hangs immediately.
> 
> I will work with Thomas on this asap and find a solution, but I am
> not sure if it will work without dirty tricks. Thomas has one in
> mind and I tend to agree with him on this one.

Hum, then either I don't remember, or something, but I don't have a
trick in mind. We're doing something very custom in the kernel to
support legacy bootloaders for Armada 370/XP that were not remapping to
0xf1, and therefore new bootloaders for Armada 370/XP should remap to
0xf1 *and* set a specific CP15 to indicate the kernel that the
remapping has already been done. So this second thing is basically what
Barebox will have to do for Armada 370/XP platforms.

But other than that, I don't have a specific idea in mind. For the
kernel, I've thought about the problem many times, had many discussions
with Marvell engineers, and our conclusion is that there is not
reliable way to detect where the registers are currently mapped.

So to me, Barebox should do the 0xf1 remapping as soon as possible in
its initialization, for all Marvell EBU platforms, and give up the idea
of being able to chainload a second stage Barebox.

Is there anything I'm missing?

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
