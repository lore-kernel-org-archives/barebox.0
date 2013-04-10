Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPrAK-0008Sb-DO
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:18:05 +0000
Message-ID: <1365585481.1951.2.camel@antimon>
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:18:01 +0200
In-Reply-To: <20130408170355.584a86dd71b6831077d34bf1@gmail.com>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-9-git-send-email-dev@lynxeye.de>
 <20130405003244.c9f5c8d09a8f7c0cf2ef17ee@gmail.com>
 <1365418646.1877.6.camel@antimon>
 <20130408154610.1776c5c60c93cc81a1f237ca@gmail.com>
 <1365423846.1877.15.camel@antimon>
 <20130408170355.584a86dd71b6831077d34bf1@gmail.com>
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
Subject: Re: [PATCH v3 08/10] tegra: add generic debug UART support
To: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Am Montag, den 08.04.2013, 17:03 +0400 schrieb antonynpavlov@gmail.com:
> On Mon, 08 Apr 2013 14:24:06 +0200
> Lucas Stach <dev@lynxeye.de> wrote:
> 
> > Am Montag, den 08.04.2013, 15:46 +0400 schrieb antonynpavlov@gmail.com:
> > > On Mon, 08 Apr 2013 12:57:26 +0200
> > > Lucas Stach <dev@lynxeye.de> wrote:
> > > 
> > > > Hi Antony,
> > > > 
> > > > Am Freitag, den 05.04.2013, 00:32 +0400 schrieb antonynpavlov@gmail.com:
> > > > > On Tue,  2 Apr 2013 08:19:10 +0200
> > > > > Lucas Stach <dev@lynxeye.de> wrote:
> > > > > 
> > > > > > ODMdata tells us which UART to use for debugging purposes. This is
> > > > > > agreed upon in both the upstream Linux kernel and U-Boot, so do it the
> > > > > > same way in barebox.
> > > > > 
> > > > > This patch disables serial console on my Toshiba AC100.
> > > > > 
> > > > Hm that's unfortunate, but I already suspected that your ODMdata might
> > > > be wrong.
> > > > What happens if you don't remove the serial init in your board? Do you
> > > > get a duplicate serial, or just your board defined one? If it still
> > > > works for you this way, we might take this as a compromise for now.
> > > 
> > > IMHO, the right way is to get of_serial.c from linux and put some records 
> > > like this 
> > >  uarta: serial@70006000 {
> > >                 compatible = "nvidia,tegra20-uart";
> > >                 reg = <0x70006000 0x40>;
> > >                 reg-shift = <2>;
> > >                 interrupts = <0 36 0x04>;
> > >                 nvidia,dma-request-selector = <&apbdma 8>;
> > >                 clocks = <&tegra_car 6>;
> > >                 status = "disabled";
> > >   };
> > > 
> > > to arch/arm/dts/tegra20.dtsi.
> > > 
> > 
> > No, this doesn't help with the decision which UART barebox should use
> > for it's output. This is a configuration option and therefore not
> > allowed to reside in the DT, so NVIDIA decided to put this information
> > into the ODMdata. Both U-Boot and the Linux kernel(for earlyconsole) use
> > the information stored in this location.
> > 
> > You can always activate more consoles from board code or DT, but the
> > first/debug console should IMHO be handled the same way it's done in
> > Linux.
> 
> Yes, this doesn't help to select the console UART, but it provide  the
> information about platform available UARTs.
> The selection of console port is board-dependent (e.g. the chip can have
> many UARTs, but the board can use only one of them), so let's move this
> selection to board configuration section.
> 
> Moreother, Toshiba AC100 is a netbook (or smartbook :), in normal mode it
> use keyboard and LCD screen for user interaction, not UART.
> 
The generic serial patch in the series v4 now introduces a Kconfig to
override the ODMdata value. I folded in the right config into the ac100
defconfig, so this patch should no longer break your console.

Also I fixed a bug that may lead to wrong ODMdata console detection, so
could you please test if it maybe also works with the automatic
detection for you now?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
