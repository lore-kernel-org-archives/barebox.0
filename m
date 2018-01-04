Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt0-x243.google.com ([2607:f8b0:400d:c0d::243])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eX8eX-0001s6-Dl
 for barebox@lists.infradead.org; Thu, 04 Jan 2018 16:46:07 +0000
Received: by mail-qt0-x243.google.com with SMTP id m59so2556289qte.11
 for <barebox@lists.infradead.org>; Thu, 04 Jan 2018 08:45:50 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20171231100244.GA16379@ravnborg.org>
References: <20171231100244.GA16379@ravnborg.org>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 4 Jan 2018 08:45:49 -0800
Message-ID: <CAHQ1cqGm7dhq+fJ=kXP9SzVO59btoPgoJMCpROMELWTnRDMSNQ@mail.gmail.com>
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
Subject: Re: [PATCH v2 0/4] Enable DT support for AT91SAM9263EK
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Dec 31, 2017 at 2:02 AM, Sam Ravnborg <sam@ravnborg.org> wrote:
> This is version 2 of a patchset to enable
> device tree support for AT91SAM9263EK.
>
> On the quest towards getting so far several drivers was
> converted to support DT.
> These patches went in around august.
>
> There was also issues with mach-at91 calling code
> in the board directory (dependency in the
> wrong direction).
> This was fixed in "at91: move reset .." which is
> pending (already posted).
>
> I have failed to get the bootstrap mode to work.
> It stops somewhere - and I have not invested enough
> time to figure out where and why things goes wrong.
> bootstrap mode was also broken before these patches.
> No JTAG debugger available to help me.
> And then I have at91bootstrap that works so motivation
> was not too high.
>
> I do not think the NAND support works either.
> The device tree introduces some nand-controller
> stuff that is not supported by barebox (at least I assume so).
> And this part I did not look further into.
>
> Next step is to get a proprietary board up and
> running (which uses NOR flash).
> But I wanted this patchset out in the open first.
>
> Any fedback highly appreciated!
>
>         Sam
>
> v1 => v2
> Based on feedback from Andrey (thanks!)
> Patches reworked and combined as a result of this
>
> - Included two patches that makes some general
>   improvements to mach-at91.
>   (Updated since the RFC versions sent yesterday)
>
>   - Move irq_fixup, thus allowing us to call this
>     from board code. This makes it possible to have
>     less dependencies between board code and the processor
>     specific files in mach-at91.
>
>   - Simplified soc setup. With this change setup.c
>     no longer requires that at least one of the
>     processor specific files are built.
>
> - Create a minimal dts file, based on top of the
>   dts file supplied from the kernel.
>
> - Utilise gpio-hog - to setup gpio for PHY.
>
> - Simpler Makefile logic in board Makefile
>   It is now obvious that init.c is only used for
>   bootstrap
>
> - Processor specific files in mach-at91 no longer
>   used when DT is enabled
>
> - Use IS_ENABLED() when it makes code simpler
>

Didn't see anything unreasonable in this series, so:

Reviewed-by: Andrey Smirnov <andrew.smirnov@gmail.com>

One note though, Sam, I can see re-roll count in the subject of the
cover letter, but not in the subject of the patches that follow. Would
you mind using "git format-patche" with --reroll-count (-v) going
forward? It's way easier to figure out the version of a given patch in
a series if you can see that in the header.

Thanks,
Andrey Smirnov

>
>
>
> Sam Ravnborg (4):
>       arm: at91: move irq_fixup to header file
>       arm: at91: simplify soc setup
>       at91sam9263ek: enable multi-image build
>       at91sam9263ek: enable DT support
>
>  arch/arm/boards/at91sam9263ek/Makefile        |  4 +-
>  arch/arm/boards/at91sam9263ek/lowlevel_init.c | 17 +++--
>  arch/arm/boards/at91sam9263ek/of_init.c       | 93 +++++++++++++++++++++++++++
>  arch/arm/configs/at91sam9263ek_defconfig      | 10 ++-
>  arch/arm/dts/Makefile                         |  2 +-
>  arch/arm/dts/at91sam9263ek.dts                | 48 ++++++++++++++
>  arch/arm/mach-at91/Kconfig                    | 30 ++++++---
>  arch/arm/mach-at91/Makefile                   |  6 +-
>  arch/arm/mach-at91/at91rm9200.c               | 10 +--
>  arch/arm/mach-at91/at91sam9260.c              | 10 +--
>  arch/arm/mach-at91/at91sam9260_devices.c      |  1 +
>  arch/arm/mach-at91/at91sam9261.c              | 10 +--
>  arch/arm/mach-at91/at91sam9261_devices.c      |  1 +
>  arch/arm/mach-at91/at91sam9263.c              | 10 +--
>  arch/arm/mach-at91/at91sam9263_devices.c      |  1 +
>  arch/arm/mach-at91/at91sam9g45.c              | 10 +--
>  arch/arm/mach-at91/at91sam9g45_devices.c      |  1 +
>  arch/arm/mach-at91/at91sam9n12.c              | 10 +--
>  arch/arm/mach-at91/generic.h                  | 11 +++-
>  arch/arm/mach-at91/include/mach/at91_rtt.h    | 16 +++++
>  arch/arm/mach-at91/irq_fixup.c                | 22 -------
>  arch/arm/mach-at91/sama5d3.c                  | 10 +--
>  arch/arm/mach-at91/sama5d4.c                  | 10 +--
>  arch/arm/mach-at91/setup.c                    | 26 ++------
>  arch/arm/mach-at91/soc.h                      | 76 ----------------------
>  images/Makefile.at91                          |  4 ++
>  26 files changed, 277 insertions(+), 172 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
