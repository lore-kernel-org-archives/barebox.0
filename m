Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kX6tQ-0004vU-T2
 for barebox@lists.infradead.org; Mon, 26 Oct 2020 18:06:54 +0000
Date: Mon, 26 Oct 2020 19:06:49 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20201026180649.GQ30556@pengutronix.de>
References: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
 <20200918110442.25159-2-u.kleine-koenig@pengutronix.de>
 <bb53e525-250d-4572-ba93-ec7ddd35b5cf@pengutronix.de>
 <20201020072634.qfe4zo4gcgq7qkw2@pengutronix.de>
 <b100a2ce-91b9-bd04-3a52-c5f257428d9f@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b100a2ce-91b9-bd04-3a52-c5f257428d9f@pengutronix.de>
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
Subject: Re: [PATCH 2/2] x86/config/efi: drop DRIVER_SERIAL_NS16550
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Tue, Oct 20, 2020 at 09:35:30AM +0200, Ahmad Fatoum wrote:
> On 10/20/20 9:26 AM, Uwe Kleine-K=F6nig wrote:
> > On Tue, Oct 20, 2020 at 07:08:47AM +0200, Ahmad Fatoum wrote:
> >> Hello Uwe,
> >>
> >> On 9/18/20 1:04 PM, Uwe Kleine-K=F6nig wrote:
> >>> For most machines having DRIVER_SERIAL_NS16550 and DRIVER_SERIAL_EFI_=
STDIO
> >>> both enabled results in the output appearing twice on the serial outp=
ut.
> >>> So remove disable the lowlevel driver and rely on the EFI bios for se=
rial.
> > =

> > How embarrassing, s/remove //.
> > =

> >> On the flip-side, some systems now won't output anything over serial w=
ith
> >> the defconfig, like the one I just ran into. Maybe we should keep both
> >> enabled, but have a quirk table, which boards to disable the 16550 for?
> > =

> > Expecting that most systems are happy with EFI_STDIO I would suggest a
> > quirk table for those systems which are not?!
> =

> Doubled output is better than no output, so a defconfig that
> by default displays anything if the BIOS is not in the quirk
> table sounds like it's the better choice?

Maybe disable CONSOLE_ACTIVATE_ALL instead? Then you should only get the
output from one driver.

Michael

> > =

> >> My board is
> >>   EFI v2.40 by American Megatrends v327691". What's yours?
> >>   barebox@barebox EFI payload:/ devinfo acpi-FACP0
> >>   [...]
> >>   Revision: 5
> >>   OemId: ALASKA
> >>   OemTableId: A M I
> >>   OemRevision: 17244169
> >>   CreatorId: 0x20494d41
> >>   CreatorRevision: 65555
> >>
> >> What's yours?
> > =

> > I saw the doubled output on my Laptop (Lenovo T460p).
> =

> You have serial output on your laptop?
> =

> > =

> > dmidecode has:
> > =

> > 	BIOS Information
> > 		Vendor: LENOVO
> > 		Version: R07ET81W (2.21 )
> > 		Release Date: 12/18/2017
> > 		Address: 0xE0000
> > 		Runtime Size: 128 kB
> > 		ROM Size: 16 MB
> > 		Characteristics:
> > 			PCI is supported
> > 			PNP is supported
> > 			BIOS is upgradeable
> > 			BIOS shadowing is allowed
> > 			Boot from CD is supported
> > 			Selectable boot is supported
> > 			EDD is supported
> > 			3.5"/720 kB floppy services are supported (int 13h)
> > 			Print screen service is supported (int 5h)
> > 			8042 keyboard services are supported (int 9h)
> > 			Serial services are supported (int 14h)
> > 			Printer services are supported (int 17h)
> > 			CGA/mono video services are supported (int 10h)
> > 			ACPI is supported
> > 			USB legacy is supported
> > 			BIOS boot specification is supported
> > 			Targeted content distribution is supported
> > 			UEFI is supported
> > 		BIOS Revision: 2.21
> > 		Firmware Revision: 1.4
> > =

> > (This is the system I write this mail on, I don't feel like rebooting t=
o check
> > devinfo in barebox, take a picture and then type the stuff into a mail
> > by hand.)
> > =

> > Best regards
> > Uwe
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> =


-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
