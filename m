Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xorvc-0000DH-MN
 for barebox@lists.infradead.org; Thu, 13 Nov 2014 10:47:05 +0000
Date: Thu, 13 Nov 2014 11:46:42 +0100
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141113104642.GP27002@pengutronix.de>
References: <1415544978-22392-1-git-send-email-ezequiel.garcia@free-electrons.com>
 <20141110080657.GA18558@pengutronix.de>
 <5460FFB0.9080205@free-electrons.com>
 <20141110184345.GC27002@pengutronix.de> <546113A7.30500@gmail.com>
 <20141111090649.GE27002@pengutronix.de>
 <20141112105637.GN27002@pengutronix.de> <546342EE.20500@gmail.com>
 <20141113090938.GO27002@pengutronix.de>
 <54647FAA.2090603@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54647FAA.2090603@gmail.com>
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

On Thu, Nov 13, 2014 at 10:53:46AM +0100, Sebastian Hesselbarth wrote:
> On 11/13/2014 10:09 AM, Uwe Kleine-K=F6nig wrote:
> >On Wed, Nov 12, 2014 at 12:22:22PM +0100, Sebastian Hesselbarth wrote:
> >>On 11/12/2014 11:56 AM, Uwe Kleine-K=F6nig wrote:
> >>>Hello again,
> >>>
> >>>here come the recent insights.
> >>[...]
> >>>
> >>>It seems to be not possible to easily dump the register space in both
> >>>U-Boot and barebox for comparison. md 0xf1074000+0x4000 just hangs
> >>>somewhere in the middle.
> >>>
> >>>A difference between U-Boot and barebox is the location where the
> >>>internal registers are mapped. Maybe something that depends on U-Boot's
> >>>memory layout leaks into barebox because I do 2nd stage booting?
> >>>
> >>>Out of ideas at the moment. :-(
> >>
> >>Uwe,
> >>
> >>Nice comparison, but did you double check caches are disabled? There is
> >>no support for Dcache on mvebu SoCs in barebox atm.
> >I would expect that U-Boot disables caches on go. But I remember there
> >was a bug in that area some time ago.
> =

> Why should U-Boot do anything on go except jumping to that location?
> =

> >Now I saw a different behaviour:
> =

> Let's start from scratch and change one thing at a time:
> =

> Can you try to UART boot barebox directly and try both eth interfaces?
I don't manage to boot via UART. The usual outcome is:

Sending boot message. Please reboot the target...\
Sending boot image...
  0 % [....................................................................=
..]
  2 % [....................................................................=
..]
  5 % [....................................................................=
..]
  7 % [....................................................................=
..]
 10 % [....................................................................=
..]
 13 % [..................................xmodem: Connection timed out

If I try to boot a barebox-globalscale-mirabox.img (provided by
ezequielg in #mvlinux), I get:

$ scripts/kwboot -b ../barebox-globalscale-mirabox.img -t /dev/ttyUSB1 =

Sending boot message. Please reboot the target...\
Sending boot image...
  0 % [....................................................................=
..]
  5 % [....................................................................=
..]
 10 % [....................................................................=
..]
 14 % [....................................................................=
..]
 19 % [....................................................................=
..]
 24 % [.................................DDR3 Training Sequence - Ver 2.1.6 =

DDR3 Training Sequence - Number of DIMMs detected: 1
+xmodem: Connection timed out

And funny enough, during testing I added

	select(fd + 1, &rfds, NULL, NULL, &tv);

to kwboot_tty_recv after the read, this results reproduibly into a
single NAK and "BootROM: Invalid header checksum".

When booting from nand (as shipped by Netgear) the output starts with:

------------------------

BootROM 1.08
Booting from NAND flash
DDR3 Training Sequence - Ver 2.1.7 =

DDR3 Training Sequence - Ended Successfully =

BootROM: Image checksum verification PASSED
...
------------------------

> If that already does not work we have to look at barebox only.
That would be great, yes.

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
