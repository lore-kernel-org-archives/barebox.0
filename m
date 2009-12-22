Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NN81c-00036m-C8
	for barebox@lists.infradead.org; Tue, 22 Dec 2009 16:56:00 +0000
Message-ID: <4B30F9DA.2030907@pengutronix.de>
Date: Tue, 22 Dec 2009 17:54:50 +0100
From: Marc Kleine-Budde <mkl@pengutronix.de>
MIME-Version: 1.0
References: <alpine.LFD.2.00.0912221113050.6101@localhost>
In-Reply-To: <alpine.LFD.2.00.0912221113050.6101@localhost>
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
Subject: Re: PROPOSED patch, standardize drivers menuconfig entries
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

Robert P. J. Day wrote:
>   here's a newer pass at cleaning up the drivers menuconfig structure,
> not being officially submitted, i'm going to make another pass and see
> if i missed anything, but i'm open to suggestions.  some observations:
> 
>   - *all* drivers are now selectable at the top level
>   - because of that, there's no need to re-test that same
>     macro in the subdir, which is why some of those lower
>     Makefiles now have obj-y.
> 
>   if this looks good, then i'll submit it for real.

There are some selects that should be fixed, my mx35 shows this error:

arch/arm/mach-imx/Kconfig:173:warning: 'select' used by config symbol 'MACH_PCM038' refers to undefined symbol 'SPI'
arch/arm/mach-imx/Kconfig:217:warning: 'select' used by config symbol 'MACH_FREESCALE_MX35_3STACK' refers to undefined symbol 'I2C'

There's a "#ifdef CONFIG_I2C" in i2c.h, maybe there are more ifdefs.

IMHO there should be reasonable defaults for the new menus...

cheers, Marc
- -- 
Pengutronix e.K.                         | Marc Kleine-Budde           |
Linux Solutions for Science and Industry | Phone: +49-231-2826-924     |
Vertretung West/Dortmund                 | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686         | http://www.pengutronix.de   |
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.9 (GNU/Linux)
Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org

iEYEARECAAYFAksw+doACgkQjTAFq1RaXHO1yQCgj0wACcd6+pVdQf41vOHq74Dn
7KMAnjSDh6YzNKd4PG47IpnR4ghcH4pz
=A+rt
-----END PGP SIGNATURE-----

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
