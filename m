Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wy0-f177.google.com ([74.125.82.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QrFKJ-0003Ze-FP
	for barebox@lists.infradead.org; Wed, 10 Aug 2011 20:24:32 +0000
Received: by wyh11 with SMTP id 11so1212412wyh.36
	for <barebox@lists.infradead.org>; Wed, 10 Aug 2011 13:24:27 -0700 (PDT)
MIME-Version: 1.0
Date: Thu, 11 Aug 2011 00:24:27 +0400
Message-ID: <CAA4bVAH7aOUcCC0aHWLorE_FAaeBdnUvQcj8d3ZCH4W+ko7adA@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [RFC] add Tegra support to barebox
To: barebox <barebox@lists.infradead.org>

Hi!

I have a Toshiba AC100 smartbook. It is based on Nvidia Tegra 250 T20 chip.
I want to port barebox to it.

I have successfully built and run u-boot for AC100 from
https://github.com/chpec/uboot-ac100.git. This u-boot version has lcd,
serial port and USB support.
There is another tegra support u-boot branch:
https://github.com/muromec/uboot-tegra.git
Also linux has satisfactory tegra support.

I want to discuss source file organization for Tegra and AC100 support
in the barebox.
AFAIK tegra is not resemble to current arm machines, supported by barebox.

For example, this is the comment from barebox tegra source code:

/*
 * Tegra2 uses 2 separate CPUs - the AVP (ARM7TDMI) and the CPU (dual A9s).
 * U-Boot runs on the AVP first, setting things up for the CPU (PLLs,
 * muxes, clocks, clamps, etc.). Then the AVP halts, and expects the CPU
 * to pick up its reset vector, which points here.
 */

I propose such file structure:

  arch/arm/
  arch/arm/boards/toshiba_ac100
  arch/arm/mach-tegra

Has anybody any objections or comments?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
