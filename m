Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XozNj-0005zv-0V
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 18:44:36 +0000
Date: Thu, 13 Nov 2014 19:44:12 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141113184412.GQ27002@pengutronix.de>
References: <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de> <546342EE.20500@gmail.com>
 <20141113090938.GO27002@pengutronix.de>
 <54647FAA.2090603@gmail.com>
 <20141113104642.GP27002@pengutronix.de>
 <5464967C.2040006@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5464967C.2040006@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 0/4] mvebu: Add network support for Armada 370/XP
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Hallo Sebastian,

On Thu, Nov 13, 2014 at 12:31:08PM +0100, Sebastian Hesselbarth wrote:
> >I don't manage to boot via UART. The usual outcome is:
> >
> >Sending boot message. Please reboot the target...\
> >Sending boot image...
> >   0 % [................................................................=
......]
> >   2 % [................................................................=
......]
> >   5 % [................................................................=
......]
> >   7 % [................................................................=
......]
> >  10 % [................................................................=
......]
> >  13 % [..................................xmodem: Connection timed out
> >
> >If I try to boot a barebox-globalscale-mirabox.img (provided by
> >ezequielg in #mvlinux), I get:
> >
> >$ scripts/kwboot -b ../barebox-globalscale-mirabox.img -t /dev/ttyUSB1
> >Sending boot message. Please reboot the target...\
> >Sending boot image...
> >   0 % [................................................................=
......]
> >   5 % [................................................................=
......]
> >  10 % [................................................................=
......]
> >  14 % [................................................................=
......]
> >  19 % [................................................................=
......]
> >  24 % [.................................DDR3 Training Sequence - Ver 2.=
1.6
> >DDR3 Training Sequence - Number of DIMMs detected: 1
> >+xmodem: Connection timed out
> =

> That indeed is strange and indicates some general problem. Can you retry
> with setting the baudrate to 115200 (-b 115200 IIRC).
Doesn't change anything. In fact the tty is already configured for
115200 Baud. And I would expect that on a mismatch it wouldn't always
die just after the header is uploaded.

Just noticed that my binary.0 was corrupted as I extraced it from a nand
dump that also included the oob area ...

With a proper image I get barebox up now.

> >And funny enough, during testing I added
> >
> >	select(fd + 1, &rfds, NULL, NULL, &tv);
> >
> >to kwboot_tty_recv after the read, this results reproduibly into a
> >single NAK and "BootROM: Invalid header checksum".
This is still not explained. I would have expected that this select
doesn't do anything noticable on the remote end.

> >When booting from nand (as shipped by Netgear) the output starts with:
> =

> You need to set boot source byte to UART (0x52 IIRC). Otherwise the NAND
Just for the log: UART =3D 0x69.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
