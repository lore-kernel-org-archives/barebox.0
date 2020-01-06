Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSjP-000423-U7
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 13:47:45 +0000
Message-ID: <bda10b42b8fd15316beff74d9b4102a17f7312a9.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 06 Jan 2020 14:47:41 +0100
In-Reply-To: <XnsAB3C88D4289BBfgotham@195.159.176.226>
References: <XnsAB3C88D4289BBfgotham@195.159.176.226>
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
Subject: Re: Watchdog Timer with x86 processor
To: Frederick Gotham <cauldwell.thomas@gmail.com>, barebox@lists.infradead.org

Hi Frederick,

On Mon, 2020-01-06 at 13:27 +0000, Frederick Gotham wrote:
> I have an embedded Linux project with an x86_64 CPU.
> 
> I'm looking through the Barebox documentation and it seems that
> there's a lot 
> of support for ARM, but I'm trying to find something that will work
> with my 
> Intel processor.
> 
> When I go into the "menuconfig", I see the following symbols:
> 
>     WATCHDOG
>     RAVE_SP_WATCHDOG
>     WATCHDOG_AR9344
>     WATCHDOG_BCM2835
>     WATCHDOG_DAVINCI
>     WATCHDOG_DW
>     WATCHDOG_IMX
>     WATCHDOG_IMX_RESET_SOURCE
>     WATCHDOG_JZ4740
>     WATCHDOG_MXS28
>     WATCHDOG_OMAP
>     WATCHDOG_ORION
>     WATCHDOG_POLLER

Your list is interesntigly missing WATCHDOG_EFI, which can be used on
x86_64 machines.

> Right now the only one that I have enabled is:WATCHDOG. I think the
> Intel 
> Watchdog timer is referred to as iTCO_wdt, but I don't see it in the
> above 
> list.
> Is it possible to use the Barebox bootloader with a watchdog timer on
> an x86 
> CPU?
https://www.barebox.org/doc/latest/boards/efi.html?highlight=watchdog#u-efi-watchdog

is probably the relevant documentation for this, the watchdog for efi
is implemented in drivers/watchdog/efi_wdt.c.

Regards,
Rouven



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
