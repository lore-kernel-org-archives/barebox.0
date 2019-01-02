Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gen5r-00038W-2k
 for barebox@lists.infradead.org; Wed, 02 Jan 2019 20:26:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id x85-v6so28030025ljb.2
 for <barebox@lists.infradead.org>; Wed, 02 Jan 2019 12:26:22 -0800 (PST)
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed,  2 Jan 2019 21:26:08 +0100
Message-Id: <20190102202611.6530-1-sam@ravnborg.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 0/3] bootstrap support for AT91SAM9263-EK
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

This small patchset enables bootstrap support for
the Atmel AT91SAM9263-EK evaluation board.
To achive this there is one questionaable fix in
lib/bootstrap/disk.c - where a detect_all() is
used to allow us to mount the SD card.
I dunno if this is the right approach, but it was required to
mount the SD card.

The patchset is based upon the next branch and is made on top
of the previous patchset I sent with "random collection".

The only dependency is in:
arch/arm/boards/at91sam9263ek/Makefile

I am happy to finally get this working.
Considering that all the heavy lifting was done already by
Jean-Christophe this took me much more effort than
one could expect.

	Sam


Sam Ravnborg (3):
      arm: at91: fix clock to mci1 for at91sam9263
      lib: bootstrap: detect SD card before mounting
      at91sam9263ek: add bootstrap support

 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/at91sam9263ek/Makefile             |  4 +---
 arch/arm/boards/at91sam9263ek/lowlevel_init.c      |  9 +++++++++
 arch/arm/configs/at91sam9263ek_bootstrap_defconfig | 19 +++++++++++++++++++
 arch/arm/mach-at91/Kconfig                         | 14 ++++++++++++++
 arch/arm/mach-at91/at91sam9263_devices.c           |  3 +++
 lib/bootstrap/disk.c                               |  2 ++
 7 files changed, 49 insertions(+), 3 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
