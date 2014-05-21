Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x235.google.com ([2a00:1450:4010:c03::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wn74S-0005Dn-Ud
 for barebox@lists.infradead.org; Wed, 21 May 2014 14:00:41 +0000
Received: by mail-la0-f53.google.com with SMTP id ty20so51827lab.26
 for <barebox@lists.infradead.org>; Wed, 21 May 2014 07:00:18 -0700 (PDT)
Date: Wed, 21 May 2014 18:11:23 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
In-Reply-To: <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
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
Subject: Re: [PATCH] [RFC] [WIP] commands: add tree view capable lsusb
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 21 May 2014 15:20:21 +0200
Holger Schurig <holgerschurig@gmail.com> wrote:

> Nice, I would just remove the extra empty lines. Linux' "lsusb -t" for

Good idea! I'll take a look on Linux' lsusb too.

> example produces this:
> =

> holger@desktop:~$ lsusb -t
> /:  Bus 02.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dehci-pci/2p, 480M
>     |__ Port 1: Dev 2, If 0, Class=3Dhub, Driver=3Dhub/8p, 480M
>         |__ Port 1: Dev 27, If 0, Class=3DHID, Driver=3Dusbhid, 1.5M
>         |__ Port 2: Dev 4, If 0, Class=3DHID, Driver=3Dusbhid, 1.5M
>         |__ Port 6: Dev 126, If 0, Class=3Dhub, Driver=3Dhub/2p, 480M
> /:  Bus 01.Port 1: Dev 1, Class=3Droot_hub, Driver=3Dehci-pci/2p, 480M
>     |__ Port 1: Dev 2, If 0, Class=3Dhub, Driver=3Dhub/6p, 480M
> =

> Also please add an entry into commands/Kconfig:

I'll separate lsusb code into independent lsusb.c file.

> And put it into the
> info group, lsusb just shows something, it doesn't manipulate any
> hardware.

Not exactly so. It invokes usb_rescan(0).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
