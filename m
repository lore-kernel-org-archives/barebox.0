Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oi4wo-0007Rw-20
	for barebox@lists.infradead.org; Sun, 08 Aug 2010 12:25:51 +0000
Date: Sun, 8 Aug 2010 14:20:59 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100808122059.GN24069@game.jcrosoft.org>
References: <1281241073-19115-1-git-send-email-plagnioj@jcrosoft.com>
	<20100808064846.GA31364@merkur.ravnborg.org>
	<20100808090612.GM24069@game.jcrosoft.org>
	<20100808120741.GA32022@merkur.ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100808120741.GA32022@merkur.ravnborg.org>
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
Subject: Re: [PATCH] Kconfig: sync with linux kernel v2.6.35-4771-g1787985
To: Sam Ravnborg <sam@ravnborg.org>
Cc: barebox@lists.infradead.org

> > 
> > also a small doc for the mandatory env and symbol will be nice for people to
> > integrate it as not everyone is also a kernel dev or maintainer
> 
> I actually take this that integrating kconfig should be simpler.
> So it:
> a) should be documented using a HOW-TO
> b) we sould rely on very little outside scripts/kconfig
> 
> The primary 'customer' is the kernel but it would be good
> to generalize stuff a bit more.
> This is by far the biggest task listed.
> I will add it to my mental TODO list - but no promises :-) 
for barebox point of view just be able to change the projects name will be enough as most
of us if not all are kernel dev or maintainer

> > 
> > and a last thing It will be nice to be able to set a value to a symbol from an
> > other one and not only select it
> 
> I am not sure I see how this is usefull.
> Can you give me an example.
> 
> Note: We recently had a patch where "select" was extended to
> specify an optional value.
> But my issue with that was that I failed to see the use of it so
> I was not happy with the extension.
> 
> But I may have missed something!
ok take a look on arch/arm/mach-at91/Kconfig

as example for the

config BOARDINFO
        default "Atmel at91rm9200-ek" if MACH_AT91RM9200EK
        default "Atmel 91SAM9260-EK" if MACH_AT91SAM9260EK
        default "Atmel at91sam9261-ek" if MACH_AT91SAM9261EK
        default "Atmel at91sam9263-ek" if MACH_AT91SAM9263EK
        default "Bucyrus MMC-CPU" if MACH_MMCCPU
        default "Ronetix PM9261" if MACH_PM9261
        default "Ronetix PM9263" if MACH_PM9263

if you change the board via the interface it will not be change and it will the same for
config ARCH_TEXT_BASE in some case

and I'll prefer to do set BOARDINFO="Atmel at91rm9200-ek" from the config MACH_AT91RM9200EK

hope it will be a good example

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
