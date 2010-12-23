Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qy0-f170.google.com ([209.85.216.170])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PVjNd-0001it-6n
	for barebox@lists.infradead.org; Thu, 23 Dec 2010 11:30:46 +0000
Received: by qyk10 with SMTP id 10so7933069qyk.15
	for <barebox@lists.infradead.org>; Thu, 23 Dec 2010 03:30:43 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
References: <1292930721-31734-1-git-send-email-jbe@pengutronix.de>
Date: Thu, 23 Dec 2010 12:30:42 +0100
Message-ID: <AANLkTik0aw9XY6Lqcmwhihwgk0CW86cGEmC+Q3=Kf-mS@mail.gmail.com>
From: Gregory CLEMENT <gclement00@gmail.com>
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
Subject: Re: [PATCH] Add gpio command support to STM/i.MX arch
To: Juergen Beisert <jbe@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

2010/12/21 Juergen Beisert <jbe@pengutronix.de>:
> In order to complete graphics handling on STM/i.MX architecture, the plat=
forms
> need GPIO command support (for example to enable the display and backligh=
t).
>
Hi,
I tested this patchset on my board using an imx23. It seems OK.
So if you want you can add a
Tested-by: Gregory CLEMENT <gregory.clement@free-electrons.com>

> The following changes since commit af05a9dd223f0a77133e37893354680c2f857a=
54:
>
> =A0xyzModem.c: fix 'dummy' is used uninitialized in this function warning=
 (2010-12-21 10:23:41 +0100)
>
> are available in the git repository at:
> =A0http://git.pengutronix.de/git/jbe/for_barebox_next/ next_stm_gpio_v3
>

I didn't manage to get your git tree:
$ git remote add -f jbe http://git.pengutronix.de/git/jbe/for_barebox_next
Updating jbe
fatal: http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
not found: did you run git update-server-info on the server?
error: Could not fetch jbe

Indeed http://git.pengutronix.de/git/jbe/for_barebox_next/info/refs
does not exist.
Maybe I did something wrong or maybe be you have to run git
update-server-info on the server ;)

> Juergen Beisert (9):
> =A0 =A0 =A0Fix a typo in the GPIO doc
> =A0 =A0 =A0ARM STM/i.MX: Fix register offset calculation for GPIO input p=
ins
> =A0 =A0 =A0ARM STM/i.MX: Remove variable size restrictions in iomux manag=
ing routines
> =A0 =A0 =A0ARM STM/i.MX: Setting the iomux needs at least 32 bit.
> =A0 =A0 =A0ARM STM/i.MX: Just fix the docs
> =A0 =A0 =A0ARM STM/i.MX: Add support for the gpio commands
> =A0 =A0 =A0ARM STM/i.MX: Avoid very long lines
> =A0 =A0 =A0ARM STM/i.MX: Replace cryptic numbers
> =A0 =A0 =A0ARM Chumby: Add list of available GPIOs and their meaning
>
> =A0arch/arm/Kconfig =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 | =A0 =A01 +
> =A0arch/arm/boards/chumby_falconwing/falconwing.c | =A0 85 ++++++++++++++=
++++++++++
> =A0arch/arm/configs/chumbyone_defconfig =A0 =A0 =A0 =A0 =A0 | =A0 =A01 +
> =A0arch/arm/configs/tx28stk5_defconfig =A0 =A0 =A0 =A0 =A0 =A0| =A0 =A01 +
> =A0arch/arm/mach-stm/include/mach/gpio.h =A0 =A0 =A0 =A0 =A0| =A0 =A08 ++-
> =A0arch/arm/mach-stm/iomux-imx.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0| =A0=
 85 +++++++++++++++++++++---
> =A0commands/gpio.c =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =
=A0 =A0 =A0| =A0 =A02 +-
> =A07 files changed, 171 insertions(+), 12 deletions(-)
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>



-- =

Gregory CLEMENT

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
