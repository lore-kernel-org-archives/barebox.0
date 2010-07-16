Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OZmY4-0007VX-9j
	for barebox@lists.infradead.org; Fri, 16 Jul 2010 15:10:01 +0000
Date: Fri, 16 Jul 2010 17:09:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100716150957.GK14113@pengutronix.de>
References: <AANLkTik2E-amNP6qE1RSImyOuPBzH_o6Sbg_WPGc9SLt@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTik2E-amNP6qE1RSImyOuPBzH_o6Sbg_WPGc9SLt@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Amba PL011 driver support
To: Gaurav Singh <gausinghnsit@gmail.com>
Cc: barebox@lists.infradead.org

Hi Gaurav,

On Fri, Jul 16, 2010 at 06:59:09PM +0530, Gaurav Singh wrote:
> Hi all,
> Currently I am working to port Barebox on an ARM11v6 based board. I
> have a PL011 UART peripheral on my board and want to use this UART as
> my console. I read somewhere that the PL010 serial driver would
> support PL011 as well but I was unable to use this driver to bring up
> the console.
> Looking =A0at the device specifications I noticed that some changes to
> the PL010 driver would suffce for my requirement and making these
> changes I was able to initialize the console and use my UART for
> entering bb commands.
> =

> Is there a requirement for a seperate PL011 driver in barebox at the
> moment ? I notice that both U-boot and the kernel have seperate
> drivers for PL010 and PL011.

No, there is no requirement for this. I don't know the differences
between the PL011 and the PL010, but if you manage to handle both in one
driver, maybe with a flag in platform_data specifying which type it is,
that's perfectly fine.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
