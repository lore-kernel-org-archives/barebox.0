Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QrsF0-0002DB-A2
	for barebox@lists.infradead.org; Fri, 12 Aug 2011 13:57:39 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 7BDACFFB16E
	for <barebox@lists.infradead.org>;
	Fri, 12 Aug 2011 15:57:48 +0200 (CEST)
Date: Fri, 12 Aug 2011 15:38:41 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110812133841.GD1916@game.jcrosoft.org>
References: <CAA4bVAFYh0z-DCYbB8WoZZkBHszDHjmrYAF2D89drCSvSdCKZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAA4bVAFYh0z-DCYbB8WoZZkBHszDHjmrYAF2D89drCSvSdCKZQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] arm naming inconsistance
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On 17:28 Fri 12 Aug     , Antony Pavlov wrote:
> Hi!
> 
> Barebox has an hierarchy for supported stuff:
> 
>  arch -> mach
> 
>     arch \in {arm, x86, nios2 ...}
> 
>  for arch=arm, mach \in { at91, ims, msx, ... versatile }
> 
>  Also there is the 'board', the lowest level of hierarchy.
> 
>  E.g. for mach=at91, board \in { at91sam9m10g45ek, pm9263 ...}
> 
> But there are strange things in arch/arm/Kconfig and
> arch/arm/cpu/start.c:
> 
> #ifdef CONFIG_ARCH_HAS_LOWLEVEL_INIT
>         arch_init_lowlevel();
> #endif
> 
> At the first glance all ok: if arch has lowlevel init, the do
> arch_init_lowlevel().
> But arch_init_lowlevel() is not __per-arch__ function, but
> __per-mach__ function!
> It is used in at91 and omap mach.
> 
> #ifdef CONFIG_MACH_DO_LOWLEVEL_INIT
>         board_init_lowlevel();
> #endif
in at91 I did so because it's really a board init but the init is generic to
the soc so no need to duplicate it

the only difference are the clock and timings basicly

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
