Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kXgy3-0002al-81
 for barebox@lists.infradead.org; Wed, 28 Oct 2020 08:38:04 +0000
Date: Wed, 28 Oct 2020 09:38:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201028083801.GY26805@pengutronix.de>
References: <20200918110442.25159-1-u.kleine-koenig@pengutronix.de>
 <20200918110442.25159-2-u.kleine-koenig@pengutronix.de>
 <bb53e525-250d-4572-ba93-ec7ddd35b5cf@pengutronix.de>
 <20201020072634.qfe4zo4gcgq7qkw2@pengutronix.de>
 <b100a2ce-91b9-bd04-3a52-c5f257428d9f@pengutronix.de>
 <20201026180649.GQ30556@pengutronix.de>
 <bea5dc47-adc4-4096-9617-7d99e48e599e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <bea5dc47-adc4-4096-9617-7d99e48e599e@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/2] x86/config/efi: drop DRIVER_SERIAL_NS16550
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

On Mon, Oct 26, 2020 at 10:07:19PM +0100, Ahmad Fatoum wrote:
> =

> =

> On 10/26/20 7:06 PM, Michael Olbrich wrote:
> > On Tue, Oct 20, 2020 at 09:35:30AM +0200, Ahmad Fatoum wrote:
> >> On 10/20/20 9:26 AM, Uwe Kleine-K=F6nig wrote:
> >>> On Tue, Oct 20, 2020 at 07:08:47AM +0200, Ahmad Fatoum wrote:
> >>>> Hello Uwe,
> >>>>
> >>>> On 9/18/20 1:04 PM, Uwe Kleine-K=F6nig wrote:
> >>>>> For most machines having DRIVER_SERIAL_NS16550 and DRIVER_SERIAL_EF=
I_STDIO
> >>>>> both enabled results in the output appearing twice on the serial ou=
tput.
> >>>>> So remove disable the lowlevel driver and rely on the EFI bios for =
serial.
> >>>
> >>> How embarrassing, s/remove //.
> >>>
> >>>> On the flip-side, some systems now won't output anything over serial=
 with
> >>>> the defconfig, like the one I just ran into. Maybe we should keep bo=
th
> >>>> enabled, but have a quirk table, which boards to disable the 16550 f=
or?
> >>>
> >>> Expecting that most systems are happy with EFI_STDIO I would suggest a
> >>> quirk table for those systems which are not?!
> >>
> >> Doubled output is better than no output, so a defconfig that
> >> by default displays anything if the BIOS is not in the quirk
> >> table sounds like it's the better choice?
> > =

> > Maybe disable CONSOLE_ACTIVATE_ALL instead? Then you should only get the
> > output from one driver.
> =

> And which one should be default? You'll get more compile time coverage
> with the defconfig but the user experience problem of having a defconfig
> that does print nothing at all on some devices is still there.

Maybe there is some way to find out where DRIVER_SERIAL_EFI_STDIO
directs it output to?

Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
