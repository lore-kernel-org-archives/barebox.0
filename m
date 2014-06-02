Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WrPBf-00036o-5k
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 10:09:52 +0000
Received: by mail-la0-f46.google.com with SMTP id ec20so2398515lab.5
 for <barebox@lists.infradead.org>; Mon, 02 Jun 2014 03:09:27 -0700 (PDT)
Date: Mon, 2 Jun 2014 14:20:51 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140602142051.330ebed5582ca8489e55d00a@gmail.com>
In-Reply-To: <20140602083107.GX15686@pengutronix.de>
References: <1400662482-23560-1-git-send-email-antonynpavlov@gmail.com>
 <CAOpc7mHG9eaRRWkYxazwRCeVrAXB_LPLuD2zPp8WLOj9yiTVnQ@mail.gmail.com>
 <20140521181123.22fa7c295a12523e27d6964b@gmail.com>
 <20140602072450.GW15686@pengutronix.de>
 <CAOpc7mGZGM7K3TxKQhBb1FesfazzViV5ujumPf8ihAjGNGJNwQ@mail.gmail.com>
 <20140602083107.GX15686@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Mon, 2 Jun 2014 10:31:07 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Mon, Jun 02, 2014 at 09:59:31AM +0200, Holger Schurig wrote:
> > Hmm, I like that it does a rescan, so that it always display the
> > currently connected USB device automatically.
> =

> Note that we only scan scan the bus once during the lifetime of barebox
> unless the force parameter of usb_rescan is true. This is because
> we currently remove all existing USB devices and reinstantiate all
> USB devices found during scanning. The removal of devices is not very
> well implemented. USB only works properly when the tree is scanned once.

If I drop usb_rescan(0) then I have to run 'usb' command to scan bus manual=
ly before running 'lsusb'.
It is very uncomfortable.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
