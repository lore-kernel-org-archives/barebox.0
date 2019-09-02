Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4ghD-0002tU-IB
 for barebox@lists.infradead.org; Mon, 02 Sep 2019 07:24:16 +0000
Date: Mon, 2 Sep 2019 09:24:13 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190902072413.ttga5vkvwaw3zzcb@pengutronix.de>
References: <20190829052808.25624-1-a.fatoum@pengutronix.de>
 <20190829112626.GA10723@router.tkernel.org>
 <6aad20a4-ca38-2cd0-5df1-4a6b4950ff6a@pengutronix.de>
 <536956aa-1857-e50b-4123-6063bac836ef@rempel-privat.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <536956aa-1857-e50b-4123-6063bac836ef@rempel-privat.de>
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
Subject: Re: [PATCH] input: add handler for reset and power key input events
To: Oleksij Rempel <linux@rempel-privat.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

On Fri, Aug 30, 2019 at 11:33:22AM +0200, Oleksij Rempel wrote:
> Am 30.08.19 um 11:02 schrieb Ahmad Fatoum:
> > Hello,
> > 
> > On 8/29/19 1:26 PM, duhuanpeng wrote:
> > > Hello, I merged this patch to my barebox. and test on my own board.
> > > 
> > > 1. Abort barebox booting and enter the console.
> > >     the board reboots immediately when I press the button without release.
> > >     here is my .dts about this button:
> > > 
> > >                  net {
> > >                          label = "board:LED1:system";
> > >                          gpios = <&gpio 1 GPIO_ACTIVE_LOW>;
> > >                          default-state = "off";
> > >                          barebox,default-trigger = "net";
> > >                  };
> > 
> > Copy-paste mistake?
> > 
> > > 
> > > 2. Panic.
> > >     type 'go 888' make barebox panic. now I really need a 'reset' key.
> > >     I press and releaes the key, and try to hold this key several seconds.
> > >     no reaction.
> > > 
> > > Is the 'reset' key designed for reset the board when something goes wrong?
> > 
> > That's the watchdog's job. If your hardware features a hardware watchdog, you can
> > have it started on bootm or configure barebox' poller to feed it continuously.
> > If barebox panics or anything else happens before Linux starts feeding the watchdog,
> > your system will then automatically reset.
> > 
> > You could have barebox panic loop on a gpio, but it would only help if barebox
> > actually calls panic. If you run into an infinite loop, or the exception vectors
> > are overwritten, there's nothing barebox can do (short of evolving to barebOS and
> > implementing preemption and privilege separation).
> 
> May be it would make sense to have an option simila to the kernel, to reboot on panic.

We already have that option. It's hidden behind CONFIG_PANIC_HANG.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
