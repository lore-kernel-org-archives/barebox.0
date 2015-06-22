Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z78pq-0002Lb-GH
 for barebox@lists.infradead.org; Mon, 22 Jun 2015 21:00:55 +0000
Received: by lbnk3 with SMTP id k3so10412152lbn.1
 for <barebox@lists.infradead.org>; Mon, 22 Jun 2015 14:00:31 -0700 (PDT)
Date: Tue, 23 Jun 2015 00:06:55 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150623000655.25856fe2af2a3143d164cf14@gmail.com>
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
Subject: Fw: [Qemu-devel] [PATCH v7 0/4] i.MX: Add i.MX25 support through
 the 3DS evaluation board.
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha!

AFAIR i.MX chips are your favorite chips.

There is the qemu i.MX25 support proposal.

Can we run barebox on this emulated board?

Begin forwarded message:

Date: Mon, 22 Jun 2015 21:06:11 +0200
From: Jean-Christophe Dubois <jcd@tribudubois.net>
To: qemu-devel@nongnu.org
Cc: Jean-Christophe Dubois <jcd@tribudubois.net>
Subject: [Qemu-devel] [PATCH v7 0/4] i.MX: Add i.MX25 support through the 3=
DS evaluation board.


This series of patches add the support for the i.MX25 processor through the
Freescale 3DS evaluation board.

For now a limited set of devices are supported.
    * GPT timers (from i.MX31)
    * EPIT timers (from i.MX31)
    * Serial ports (from i.MX31)
    * Ethernet FEC port
    * I2C controller

This was tested by:
    * booting a minimal linux system
    * booting the Xvisor hypervisor.

Jean-Christophe Dubois (4):
  i.MX: Add FEC Ethernet Emulator.
  i.MX: Add I2C contoller emulator
  i.MX: Add i.MX25 3DS evaluation board support
  i.MX: Add qtest support for I2C device	emulator

 default-configs/arm-softmmu.mak |   3 +
 hw/arm/Makefile.objs            |   1 +
 hw/arm/imx25_3ds.c              | 273 +++++++++++++
 hw/i2c/Makefile.objs            |   1 +
 hw/i2c/imx_i2c.c                | 361 ++++++++++++++++++
 hw/i2c/imx_i2c_regs.h           |  63 +++
 hw/net/Makefile.objs            |   1 +
 hw/net/imx_fec.c                | 820 ++++++++++++++++++++++++++++++++++++=
++++
 include/hw/arm/imx.h            |   1 +
 tests/Makefile                  |   3 +
 tests/ds1338-test.c             |  75 ++++
 tests/libqos/i2c-imx.c          | 209 ++++++++++
 tests/libqos/i2c.h              |   3 +
 13 files changed, 1814 insertions(+)
 create mode 100644 hw/arm/imx25_3ds.c
 create mode 100644 hw/i2c/imx_i2c.c
 create mode 100644 hw/i2c/imx_i2c_regs.h
 create mode 100644 hw/net/imx_fec.c
 create mode 100644 tests/ds1338-test.c
 create mode 100644 tests/libqos/i2c-imx.c

-- =

2.1.4




-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
