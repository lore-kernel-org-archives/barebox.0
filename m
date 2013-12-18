Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vb0-x22c.google.com ([2607:f8b0:400c:c02::22c])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtOlP-0004CD-AG
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 21:34:44 +0000
Received: by mail-vb0-f44.google.com with SMTP id x8so143563vbf.31
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2013 13:34:21 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
 <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
Date: Wed, 18 Dec 2013 16:34:20 -0500
Message-ID: <CAJyuEee+jyV6DTs3ZGYTercny4FNnxjj_PwWxNmjAEhe2eqeBg@mail.gmail.com>
From: Michael Burkey <mdburkey@gmail.com>
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
Subject: Re: Porting barebox (devicetree) to Variscite iMX6 SOM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

I have answered some of my own questions and got more working on the
Variscite port.

So, for anyone else trying to do basically the same thing I am:

1) The built-in devicetree does get probed and enumerated.

2) By the time the _init function in board.c gets called, the probing
is complete and devices such as i2c are available.

I also got my uart problem fixed -- which was actually a devicetree
error on my part.

However, I am still back to working on part of my problem. When
configured correctly, the Variscite development board is SUPPOSED to
gate the 3.3V line to the onboard peripherals using the 3.3V output of
the PF0100 -- which, unfortunately, means that some of the devices
that may need to be probed in devicetree probably won't respond until
after I can use I2C to properly configure the PF0100.

So...after I have configured the PF0100, can "oftree -p" be used to
re-probe the current tree?? Or do I have to figure out a way to bring
I2C up early as well?

Thanks,
Michael Burkey

On 12/18/13, Michael Burkey <mdburkey@gmail.com> wrote:
> Variscite SOM...the saga continues.
>
> First off, I now have the serial console up (more or less -- more on
> this in a second), but it's not accepting input and I have other
> issues.
>
> My questions:
>
> 1) When using devicetree inside barebox, does a built-in devicetree
> get automatically enumerated and probed?
> 2) At what point in the boot process do devices specified in
> devicetree become available? (specifically, the I2C bus support)
> 3) Is there any voltage regulator support in barebox? I notice on some
> of the i.MX6 SOM's that the PF0100 is specified and configured, but
> I'm not actually seeing any driver code in barebox itself that
> accesses it (unless I'm overlooking it). I assume the voltage
> regulator definitions are just for pushing upstream when booting a
> kernel?
>
>
> What I am running into is that the Variscite SOM uses the 3.3V output
> of the PF0100 voltage regulator as a "power good" signal that brings
> up the 3.3V rail on their development board -- which, among other
> things, powers the RS232 transceiver that the debug port connects to
> (which is the reason I get output, but no input). It also powers the
> USB hub on the board, which is also fairly important.
>
> So, basically, I'm trying to figure out the proper way to configure
> I2C devices early in the barebox boot sequence when using devicetree.
> I know how to do it the old-fashioned way in the board file (which I
> have done before).
>
> Thanks,
> Michael Burkey
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
