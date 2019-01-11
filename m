Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ghrVi-0006K1-BN
 for barebox@lists.infradead.org; Fri, 11 Jan 2019 07:45:47 +0000
Received: by mail-lj1-x232.google.com with SMTP id c19-v6so12078355lja.5
 for <barebox@lists.infradead.org>; Thu, 10 Jan 2019 23:45:45 -0800 (PST)
Date: Fri, 11 Jan 2019 10:45:41 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190111104541.7dec78587e650eb199e81cf1@gmail.com>
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
Subject: barebox: plathome-openblocks-a6/kwbimage.cfg is missed
To: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org, Uwe =?ISO-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>

Hi!

It looks like the file arch/arm/boards/plathome-openblocks-a6/kwbimage.cfg =
is missed.

Here is my build log quotes:

  git clone git://git.pengutronix.de/git/barebox.git
  cd barebox
  git describe
  v2018.12.0-140-g64fc4ac1b

  touch arch/arm/boards/globalscale-mirabox/binary.0
  touch arch/arm/boards/lenovo-ix4-300d/binary.0
  touch arch/arm/boards/marvell-armada-xp-gp/binary.0
  touch arch/arm/boards/netgear-rn104/binary.0
  touch arch/arm/boards/plathome-openblocks-ax3/binary.0

  CROSS_COMPILE=3Darm-linux-gnueabi- ./MAKEALL -a arm mvebu_defconfig

  ...

  Could not open input file /home/builduser/barebox/arch/arm/boards/plathom=
e-openblocks-a6/kwbimage.cfg

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
