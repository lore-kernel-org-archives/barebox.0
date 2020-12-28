Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ktmKv-0002wK-PT
 for barebox@lists.infradead.org; Mon, 28 Dec 2020 06:48:58 +0000
Received: by mail-lf1-x136.google.com with SMTP id h22so21865621lfu.2
 for <barebox@lists.infradead.org>; Sun, 27 Dec 2020 22:48:55 -0800 (PST)
Date: Mon, 28 Dec 2020 09:48:53 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20201228094853.5a6d2f111e6bfc8da2b2d2cd@gmail.com>
In-Reply-To: <20201227215042.101009-5-dev@lynxeye.de>
References: <20201227215042.101009-1-dev@lynxeye.de>
 <20201227215042.101009-5-dev@lynxeye.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH 5/5] ARM: i.MX: add MNT Reform board support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Sun, 27 Dec 2020 22:50:42 +0100
Lucas Stach <dev@lynxeye.de> wrote:

Hi!

I'm very glad to see that barebox runs on MNT Reform!

Are you planning to add MIPI DSI display output?

> The MNT Reform is a DIY Laptop, built around a Boundarydevices i.MX8MQ So=
M.
> This adds a pretty minimal support, as there is no upstream DT yet. It al=
so
> does not properly abstract the SoM (power supply init in MNT Reform lowle=
vel
> code and only single DRAM configuration supported), as there are a lot of
> variants of the SoM and I'm only able to test the single one that will be
> shipped with the Reform.
> =

> What has been tested to work:
> - SD card
> - eMMC
> - Gigabit network
> - NVMe storage
> =

> There is a quirk in the board support: the Nitrogen SoM only allows to
> configure one of the BOOT_MODE straps, which means the choices for the bo=
ot
> selection are only "boot from fuses", which means eMMC boot and
> "serial boot". As serial boot isn't really useful on the device (requires
> USB A<->A cable with VBUS protection), we rely on the BootROM fallback to
> boot from SD card in this mode. The board support code thus treats the
> bootsource "serial" as SD card boot.
> =

> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  arch/arm/boards/Makefile                      |    1 +
>  arch/arm/boards/mnt-reform/Makefile           |    2 +
>  arch/arm/boards/mnt-reform/board.c            |   40 +
>  .../mnt-reform/flash-header-mnt-reform.imxcfg |    6 +
>  arch/arm/boards/mnt-reform/lowlevel.c         |  187 +++
>  arch/arm/boards/mnt-reform/lpddr4-timing.c    | 1012 +++++++++++++++++
>  arch/arm/dts/Makefile                         |    1 +
>  arch/arm/dts/imx8mq-mnt-reform2.dts           |  223 ++++
>  arch/arm/mach-imx/Kconfig                     |    9 +
>  images/Makefile.imx                           |    6 +
>  10 files changed, 1487 insertions(+)
>  create mode 100644 arch/arm/boards/mnt-reform/Makefile
>  create mode 100644 arch/arm/boards/mnt-reform/board.c
>  create mode 100644 arch/arm/boards/mnt-reform/flash-header-mnt-reform.im=
xcfg
>  create mode 100644 arch/arm/boards/mnt-reform/lowlevel.c
>  create mode 100644 arch/arm/boards/mnt-reform/lpddr4-timing.c
>  create mode 100644 arch/arm/dts/imx8mq-mnt-reform2.dts
> =

...
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
