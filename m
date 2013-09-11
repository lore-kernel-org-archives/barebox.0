Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VJe1j-00048S-Tx
 for barebox@lists.infradead.org; Wed, 11 Sep 2013 06:35:48 +0000
Date: Wed, 11 Sep 2013 08:35:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130911063526.GH30088@pengutronix.de>
References: <1378738482-15488-1-git-send-email-s.hauer@pengutronix.de>
 <522DF740.9050503@gmail.com>
 <20130910074816.GE30088@pengutronix.de> <522EDED4.700@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <522EDED4.700@gmail.com>
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
Subject: Re: [PATCH] gpio: Add designware gpio controller support
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Sep 10, 2013 at 10:56:52AM +0200, Sebastian Hesselbarth wrote:
> On 09/10/2013 09:48 AM, Sascha Hauer wrote:
> >On Mon, Sep 09, 2013 at 06:28:48PM +0200, Sebastian Hesselbarth wrote:
> >>I have seen this driver and think it can be improved by exploiting
> >>its config1/2 registers where synthesis settings are stored. Please
> >>also look at [1] pp.1229; you can read out number of ports, port
> >>width, interrupt, and debounce features.
> >
> >Ok, the port width feature is easy enough to implement. Will add it in
> >the next version.
> >
> >I also added a check for multiple ports, but just ignore the additional
> >ports for now since I don't know the register offsets and also have no
> >hardware to actually test it (The SoCFPGA only has one port)
> 
> Ok, fair enough. IIRC the Armada 1500 uses multiple instances instead
> of multiple ports, too.
> 
> >>Unfortunately, I am not ready to run barebox on Armada 1500 and I
> >>don't have a socfpga to test. So if you are not eager to modify it now,
> >>I can add config reg based read-out later.
> >>
> >>[1] http://www.altera.com/literature/hb/arria-v/hps.pdf
> >>
> >>[...]
> >>>+static __maybe_unused struct of_device_id dwgpio_match[] = {
> >>>+	{
> >>>+		.compatible = "snps,dw-gpio",
> >>>+	}, {
> >>
> >>Please add "snps,dw-apb-gpio", that's what the linux driver
> >>will look for if make to pick it up for Armada 1500.
> >
> >I'll better just change it to "snps,dw-apb-gpio". There already is a
> >dtsi file in the kernel which uses this binding (although it looks like
> >it hasn't been approved by anyone)
> 
> The driver got Acks, but must have slipped through. I have seen your
> v2 but it still uses "snps,dw-gpio".

Fixed this now for real.

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
