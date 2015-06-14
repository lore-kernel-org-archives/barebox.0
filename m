Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z4G4I-0004TD-DV
 for barebox@lists.infradead.org; Sun, 14 Jun 2015 22:07:55 +0000
Received: by lagh1 with SMTP id h1so5352277lag.0
 for <barebox@lists.infradead.org>; Sun, 14 Jun 2015 15:07:31 -0700 (PDT)
Date: Mon, 15 Jun 2015 01:13:43 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
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
Subject: barebox picotcp integration (2015.06.14)
To: DI PEDE Michele <michele.dipede@altran.com>, LACAMERA Daniele <daniele.lacamera@altran.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi!

I have just published latest picotcp-enabled barebox.
Please see my 20150614.picotcp branch in my github barebox repo
(https://github.com/frantony/barebox/tree/20150614.picotcp).

This version is based on latest barebox-next and latest picotcp-development.
Here is barebox picotcp network features:

       * network interfaces and the 'ifconfig' command to rule them;
       * the 'route' command to see current picotcp route table;
       * the 'picoping' command to use picotcp ping support (also now bareb=
ox responds
         to ping requests);
       * the 'dhclient' command to use picotcp dhcp client;
       * picotcp-based tftp filesystem support.

Changes since 2015.03.31:

       * split patches (ifconfig, route, picoping and dhclient commands
         are introduced in separate patches now);
       * rework picotcp Kconfig stuff;
       * fix formatting.

Here is note/todo list:

  1. tftp write operation is not supported;

  2. with picotcp we can't easely use 'tftp' command with old syntax
     (no $<current ethernet>.serverip anymore);

  3. just now picotcp-based tftp file transfer is 5 times slower than
     old realisation (partialy it is my bad, e.g. extra memory copy operati=
on
     is used for code simplification);

  4. picotcp has dns support, but just now it is unused in barebox;
 =

  5. no nfs support in picotcp (should we can keep current barebox nfs supp=
ort on
     top of barebox UDP support?).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
