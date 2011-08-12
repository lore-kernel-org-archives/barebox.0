Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ey0-f171.google.com ([209.85.215.171])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qrrme-0001fr-Qf
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:28:21 +0000
Received: by eyg24 with SMTP id 24so3157325eyg.30
	for <barebox@lists.infradead.org>; Fri, 12 Aug 2011 06:28:17 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 12 Aug 2011 17:28:17 +0400
Message-ID: <CAA4bVAFYh0z-DCYbB8WoZZkBHszDHjmrYAF2D89drCSvSdCKZQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] arm naming inconsistance
To: barebox <barebox@lists.infradead.org>

Hi!

Barebox has an hierarchy for supported stuff:

 arch -> mach

    arch \in {arm, x86, nios2 ...}

 for arch=3Darm, mach \in { at91, ims, msx, ... versatile }

 Also there is the 'board', the lowest level of hierarchy.

 E.g. for mach=3Dat91, board \in { at91sam9m10g45ek, pm9263 ...}

But there are strange things in arch/arm/Kconfig and
arch/arm/cpu/start.c:

#ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
        arch_init_lowlevel();
#endif

At the first glance all ok: if arch has lowlevel init, the do
arch_init_lowlevel().
But arch_init_lowlevel() is not __per-arch__ function, but
__per-mach__ function!
It is used in at91 and omap mach.

#ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
        board_init_lowlevel();
#endif

Here we have a more bizarre thing: if __mach__ do low level init then
do __board__ low level init!

In arch/arm/Kconfig we have the same strange things:

config ARCH_VERSATILE
        bool "ARM Versatile boards (ARM926EJ-S)"
        select CPU_ARM926T

But versatile is not arch, it's a mach!

By this examples one can see that the conception of architecture
('arch') is mixed up with the conception of machine ('mach').

Can anybody explain this?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
