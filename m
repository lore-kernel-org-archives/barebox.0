Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x231.google.com ([2a00:1450:4010:c03::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPAX7-00027a-59
 for barebox@lists.infradead.org; Mon, 08 Apr 2013 11:46:45 +0000
Received: by mail-la0-f49.google.com with SMTP id fs12so567336lab.22
 for <barebox@lists.infradead.org>; Mon, 08 Apr 2013 04:46:41 -0700 (PDT)
Date: Mon, 8 Apr 2013 15:46:10 +0400
From: "antonynpavlov@gmail.com" <antonynpavlov@gmail.com>
Message-Id: <20130408154610.1776c5c60c93cc81a1f237ca@gmail.com>
In-Reply-To: <1365418646.1877.6.camel@antimon>
References: <1364883552-6563-1-git-send-email-dev@lynxeye.de>
 <1364883552-6563-9-git-send-email-dev@lynxeye.de>
 <20130405003244.c9f5c8d09a8f7c0cf2ef17ee@gmail.com>
 <1365418646.1877.6.camel@antimon>
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
Subject: Re: [PATCH v3 08/10] tegra: add generic debug UART support
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, 08 Apr 2013 12:57:26 +0200
Lucas Stach <dev@lynxeye.de> wrote:

> Hi Antony,
> =

> Am Freitag, den 05.04.2013, 00:32 +0400 schrieb antonynpavlov@gmail.com:
> > On Tue,  2 Apr 2013 08:19:10 +0200
> > Lucas Stach <dev@lynxeye.de> wrote:
> > =

> > > ODMdata tells us which UART to use for debugging purposes. This is
> > > agreed upon in both the upstream Linux kernel and U-Boot, so do it the
> > > same way in barebox.
> > =

> > This patch disables serial console on my Toshiba AC100.
> > =

> Hm that's unfortunate, but I already suspected that your ODMdata might
> be wrong.
> What happens if you don't remove the serial init in your board? Do you
> get a duplicate serial, or just your board defined one? If it still
> works for you this way, we might take this as a compromise for now.

IMHO, the right way is to get of_serial.c from linux and put some records =

like this =

 uarta: serial@70006000 {
                compatible =3D "nvidia,tegra20-uart";
                reg =3D <0x70006000 0x40>;
                reg-shift =3D <2>;
                interrupts =3D <0 36 0x04>;
                nvidia,dma-request-selector =3D <&apbdma 8>;
                clocks =3D <&tegra_car 6>;
                status =3D "disabled";
  };

to arch/arm/dts/tegra20.dtsi.

-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
