Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vb0-f46.google.com ([209.85.212.46])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VtKAZ-0003N5-6z
 for barebox@lists.infradead.org; Wed, 18 Dec 2013 16:40:23 +0000
Received: by mail-vb0-f46.google.com with SMTP id w20so5075317vbb.5
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2013 08:39:57 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
References: <CAJyuEeeO5KpoZpmoSFj8AOOPJ+1o-iWjmQVBZS9FCj2Z7d38kA@mail.gmail.com>
 <20131212080359.GE24559@pengutronix.de>
 <CAJyuEefmcqQVKKszuvmGZx4NqaK+j79+-g4gD-ruq9vMO85Wug@mail.gmail.com>
 <20131212195806.GL24559@pengutronix.de>
 <CAJyuEecPnTHU2rTgJzkvkv3p56f32jqaS1aQykn91TNGvcUawg@mail.gmail.com>
Date: Wed, 18 Dec 2013 11:39:57 -0500
Message-ID: <CAJyuEeejqixPzCez0EZU9hhQkO3f8yvpARLGLwPgQUfGBASZug@mail.gmail.com>
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

Variscite SOM...the saga continues.

First off, I now have the serial console up (more or less -- more on
this in a second), but it's not accepting input and I have other
issues.

My questions:

1) When using devicetree inside barebox, does a built-in devicetree
get automatically enumerated and probed?
2) At what point in the boot process do devices specified in
devicetree become available? (specifically, the I2C bus support)
3) Is there any voltage regulator support in barebox? I notice on some
of the i.MX6 SOM's that the PF0100 is specified and configured, but
I'm not actually seeing any driver code in barebox itself that
accesses it (unless I'm overlooking it). I assume the voltage
regulator definitions are just for pushing upstream when booting a
kernel?


What I am running into is that the Variscite SOM uses the 3.3V output
of the PF0100 voltage regulator as a "power good" signal that brings
up the 3.3V rail on their development board -- which, among other
things, powers the RS232 transceiver that the debug port connects to
(which is the reason I get output, but no input). It also powers the
USB hub on the board, which is also fairly important.

So, basically, I'm trying to figure out the proper way to configure
I2C devices early in the barebox boot sequence when using devicetree.
I know how to do it the old-fashioned way in the board file (which I
have done before).

Thanks,
Michael Burkey

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
