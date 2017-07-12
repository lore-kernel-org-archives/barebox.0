Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dVDRf-0002fa-0T
 for barebox@lists.infradead.org; Wed, 12 Jul 2017 08:56:33 +0000
Message-ID: <1499849768.5060.32.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 12 Jul 2017 10:56:08 +0200
In-Reply-To: <CAHQ1cqFqxy5WPcRtmeq5WSxNQqWdPBS_e901L9+yEp8NiKGG+w@mail.gmail.com>
References: <20170711093050.23278-1-p.zabel@pengutronix.de>
 <CAHQ1cqFqxy5WPcRtmeq5WSxNQqWdPBS_e901L9+yEp8NiKGG+w@mail.gmail.com>
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
Subject: Re: [PATCH] i.MX: clk-pllv3: Initially disable PLL_BYPASS bit
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Am Dienstag, den 11.07.2017, 12:41 -0500 schrieb Andrey Smirnov:
> On Tue, Jul 11, 2017 at 4:30 AM, Philipp Zabel <p.zabel@pengutronix.de> wrote:
> > Commit cbff8031b491 ("i.MX: clk-pllv3: Do not touch PLL_BYPASS bit")
> > overreached a bit by removing the code that disables the PLL_BYPASS bit
> > for all architectures instead of making an exception for Vybrid and
> > i.MX6SL. This causes the USB controller on i.MX6Q to run at bypass
> > frequency and fail:
> >
> >     barebox@Boundary Devices i.MX6 Quad Nitrogen6x Board:/ usb
> >     usb: USB: scanning bus for devices...
> >     usb: Bus 001 Device 001: ID 0000:0000 EHCI Host Controller
> >     imx-usb 2184200.usb: port(0) reset error
> >
> > Also, the linux clk-pllv3 driver never looks at or touches the
> > PLL_BYPASS bit, but expects the bootloader to set it up correctly.
> >
> 
> Hmm, wouldn't this code:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/imx/clk-imx6q.c?h=v4.12#n469
> 
> alter the state of BYPASS bit?
> 
> > This patch adds code to unconditionally disable the PLL_BYPASS bit
> > initially, when the PLL clocks are registered.
> >
> 
> The reason I didn't make that patch as a exception for Vybrid and
> i.MX6SL was because any other i.MX6 clock trees didn't reference that
> clock mux, so I incorrectly assumed it not to be present in the
> hardware. IMHO, if this is not the case, a better fix for this would
> be to change the clock tree to include PLL_BYPASS related mux and call
> clk_set_parent() explicitly.
> 
> And having looked at i.MX6Q clock tree code in the kerenel it seems
> like Barebox version got out of sync and kernel code does create such
> clock tree node, so maybe we should do that as well?

Possibly, but that's a bigger change than what I would like to pull into
master and probably a 2017.07 stable.

Also do we ever have a need to use the PLLs in bypass mode?

Regards,
Lucas


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
