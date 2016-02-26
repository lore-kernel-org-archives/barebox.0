Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from krieglstein.org ([176.28.13.145]
 helo=lvps176-28-13-145.dedicated.hosteurope.de)
 by merlin.infradead.org with esmtp (Exim 4.85 #2 (Red Hat Linux))
 id 1aZDoh-0004dp-GJ
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 08:32:04 +0000
From: Tim Sander <tim@krieglstein.org>
Date: Fri, 26 Feb 2016 09:29:43 +0100
Message-ID: <3783021.3LzxP9NtCy@dabox>
In-Reply-To: <20160226072506.GN3939@pengutronix.de>
References: <3814032.giLfJ2gLGN@dabox> <1751869.VnkfJctKHi@dabox>
 <20160226072506.GN3939@pengutronix.de>
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
Subject: Re: [PATCH v7] Terasic DE0-Nano-SoC: add support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>

Hi

Am Freitag, 26. Februar 2016, 08:25:06 schrieb Sascha Hauer:
> On Thu, Feb 25, 2016 at 11:29:42AM +0100, Tim Sander wrote:
> > v7: eof whitespace fixes
> > 
> > A Patch for supporting the Terasic DE0 NANO-SoC with barebox.
> > The pretty similar Socrates Board was taken as a starting point with
> > pulling in the memory timings/pinmux from
> > http://rocketboards.org/foswiki/view/Documentation/AtlasSoCCompileHardware
> > Design
> > 
> > Signed-off-by: Tim Sander <tim@krieglstein.org>
> 
> Applied, thanks. Please provide a Changelog next time, otherwise it's
> hard to guess what you actually changed.
I only included the change for the last patch not the whole stuff, so if i 
understand correctly i will include all changelog files the next time.
 
> BTW I noticed the xload defconfig does not build anymore with this patch
> applied because the image gets too big. I searched for the reason at got
> a step closer. The SDRAM sequencer code is compiled into the image
> multiple times, one time for each board. The intention was that the
> linker throws away the unused copies via -ffunction-section and
> --gc-sections. Unfortunately this does not work because the functions in
> the different copies all end up with the same name. So for example we
> have mem_precharge_and_activate() three times in the image. Only one
> version is used, but the others can't be thrown away because they are in
> the same section.
One thing that comes to mind is gcc -flto. My experience shows that it works
much nicer than gc-sections. It hurts on large code bases though but i guess 
this can be neglected with barebox.

> I hope we can solve this, otherwise we have to split the xloader
> defconfigs into multiple configs.
It would be indeed nicer if the compiler could sort that out.

Best regards
Tim


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
