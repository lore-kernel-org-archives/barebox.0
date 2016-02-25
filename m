Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vk0-x22e.google.com ([2607:f8b0:400c:c05::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZ1aE-0000wy-UT
 for barebox@lists.infradead.org; Thu, 25 Feb 2016 19:28:20 +0000
Received: by mail-vk0-x22e.google.com with SMTP id k196so57873036vka.0
 for <barebox@lists.infradead.org>; Thu, 25 Feb 2016 11:27:58 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <56CF068C.4060901@eurek.it>
References: <56CF068C.4060901@eurek.it>
Date: Thu, 25 Feb 2016 11:27:57 -0800
Message-ID: <CAHQ1cqFoYAWjAZQrjNS6S-rpePGNM7oM=6K28aOnKciJMBHHOg@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
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
Subject: Re: iMX6Q First boot
To: gianluca <gianlucarenzi@eurek.it>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Thu, Feb 25, 2016 at 5:50 AM, gianluca <gianlucarenzi@eurek.it> wrote:
> Hello list,
> I am trying to bootup my custom designed board (actually a rev.0, but I know
> it will need a rev.1 ASAP ;-).
>
> I started with the latest (2016.02) barebox version, adding my board to the
> Kconfig & Makefile stuff, copying the udoo stuff to the
> arch/arm/boards/eurek-ek360 (as the board name is EK360) and cut-off any
> unneeded initialization.
>
> I am using imx_v7_defconfig as a starting point for configuration.
>
> I kept the device tree file as short as possible, keeping only the model,
> memory, gpio-pinmux for uart (debug) and the uart3 configurator.
>
> In attachment there are the board.c, the lowlevel.c and the device-tree
> file.

gianluca, the information you included is somewhat incomplete.
Attached file is a .dsti file (include file, not a standalone .dts)
which references phandles not defined in the file itself, so it seems
like there should be more to it.

However there are a couple of things to note about the code you included:

 - The device tree code that you provided doesn't have
    chosen {
          linux,stdout-path = <something>;
     };
     which means that BB's console subsystem doesn't have a assigned
"stdout" device, which might explain why you don't see the output

 - Udoo board, that you used as a reference for your implementation
actually doesn't "support" for CONFIG_DEBUG_LL, and what I mean by
this is that there's no code in lowlevel.c that would set-up pinmux or
UART blocks correctly (see phytech-som-imx6/lowlevel.c for example),
so the  fact that you were able to see any output would mean that
either default in all involved registers are good for your board or
that settings were set during some other initialization process (most
likely when UART driver was probed and pinmux configured as a part of
it)

Hope this helps,

Andrey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
