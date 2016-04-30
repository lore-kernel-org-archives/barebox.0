Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x22a.google.com ([2a00:1450:4010:c07::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1awSvp-0003Bs-N2
 for barebox@lists.infradead.org; Sat, 30 Apr 2016 11:19:30 +0000
Received: by mail-lf0-x22a.google.com with SMTP id j11so163731537lfb.1
 for <barebox@lists.infradead.org>; Sat, 30 Apr 2016 04:19:09 -0700 (PDT)
Date: Sat, 30 Apr 2016 14:19:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160430141937.1220ebe28aa234eeaf9454a9@gmail.com>
In-Reply-To: <HK2PR04MB16186F8CC6854410CD25F0CDBE670@HK2PR04MB1618.apcprd04.prod.outlook.com>
References: <HK2PR04MB16186F8CC6854410CD25F0CDBE670@HK2PR04MB1618.apcprd04.prod.outlook.com>
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
Subject: Re: How to run barebox gui on linux, fb or x?
To: DU HUANPENG <no_rep1y@hotmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Sat, 30 Apr 2016 10:13:28 +0000
DU HUANPENG <no_rep1y@hotmail.com> wrote:

> Hello, I want to test the is the barebox font working
> correctly, but I still don't know how to run barebox(sandbox)
> on linux fb or x.
> any one can help?

Here is barebox-sandbox-sdl howto.

Go to your barebox repo directory and checkout next branch.
Generate .config and enable SDL support:

    $ make mrproper
    $ make defconfig
    $ sed -i "s/# CONFIG_DRIVER_VIDEO_SDL is not set/CONFIG_DRIVER_VIDEO_SD=
L=3Dy/" .config

Next, compile sandbox barebox and run it:

    $ make
    $ ./barebox

Inside barebox enable fbconsole0 output:

    barebox@barebox sandbox:/ fbconsole0.active=3Doe
    fb0: framebuffer console 80x30 activated

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
