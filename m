Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMgka-0001dc-0I
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 11:48:35 +0000
Date: Mon, 21 Dec 2009 06:47:48 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <87hbrkzh9w.fsf@macbook.be.48ers.dk>
Message-ID: <alpine.LFD.2.00.0912210643010.14007@localhost>
References: <alpine.LFD.2.00.0912210615350.13305@localhost>
	<20091221113052.GG15126@pengutronix.de>
	<87hbrkzh9w.fsf@macbook.be.48ers.dk>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] commands:  Remove reference to non-existent
	CONFIG_CMD_I2C.
To: Peter Korsgaard <jacmet@sunsite.dk>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 21 Dec 2009, Peter Korsgaard wrote:

> >>>>> "Sascha" == Sascha Hauer <s.hauer@pengutronix.de> writes:
>
>  Sascha> Ok, applied.
>
>  Sascha> Is a i2c command really useful? For I2C eeproms you would
>  Sascha> create an epprom driver which creates a file under /dev/ which
>  Sascha> you can then access using the usual mm/mw commands.  Maybe an
>  Sascha> i2c command could be useful to register a new device on an I2C
>  Sascha> bus.
>
> I could see basic I2C access being useful for debugging (of
> non-eeprom devices).

  i was imagining the same thing, but since there's no such support at
the moment, there's little value in leaving that config variable
there.

  just to be clear, i'm a big fan of adding new functionality all at
once, in one logical patch.  when i run my scanning scripts on the
linux kernel, i frequently get *numerous* hits on undefined or
unreferences CONFIG_ variables, which turn out to be because someone
has *partially* added a feature but it's not complete, so you have
mysterious code or variables that no one else seems to reference, with
people saying, "oh, yeah, i'm getting to that, i'll be adding some
code to hook up with that shortly and finish it off."

  personally, i'd rather that didn't happen, just because it's easier
to track paches if they're logically complete and coherent.  in short,
when the time comes to add an "i2c" command, we can put everything
back in in one patch.  sound reasonable?

rday
--

========================================================================
Robert P. J. Day                               Waterloo, Ontario, CANADA

            Linux Consulting, Training and Kernel Pedantry.

Web page:                                          http://crashcourse.ca
Twitter:                                       http://twitter.com/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
