Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x233.google.com ([2a00:1450:4010:c07::233])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f0MBp-0002x7-LZ
 for barebox@lists.infradead.org; Mon, 26 Mar 2018 07:05:11 +0000
Received: by mail-lf0-x233.google.com with SMTP id x205-v6so26522643lfa.0
 for <barebox@lists.infradead.org>; Mon, 26 Mar 2018 00:04:59 -0700 (PDT)
Date: Mon, 26 Mar 2018 10:20:37 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20180326102037.57959f6175c61967d9e9c5b4@gmail.com>
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
Subject: socfpga: ethernet problem
To: Sascha Hauer <s.hauer@pengutronix.de>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Trent Piepho <tpiepho@kymetacorp.com>
Cc: barebox@lists.infradead.org

Hi!

Barebox for DE0-Nano-SoC succesfully starts on Terasic DE10-Nano board
but there is an ethernet issue.

After `make ARCH=3Darm socfpga_defconfig` I see that the CONFIG_DRIVER_NET_=
DESIGNWARE_SOCFPGA
option is disabled.

  #
  # Network drivers
  #
  ...
  CONFIG_DRIVER_NET_DESIGNWARE=3Dy
  # CONFIG_DRIVER_NET_DESIGNWARE_GENERIC is not set
  # CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA is not set

after enabling CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA I see 'Could not get sy=
smgr-syscon node'
error message:


  barebox 2018.03.0-00408-g5b07a6b67d #5 Sat Mar 24 19:50:00 MSK 2018


  Board: Terasic DE0-Nano-SoC/Atlas-SoC Kit
  socfpga_designware_eth ff702000.ethernet: user ID: 0x10, Synopsys ID: 0x37
  mdio_bus: miibus0: probed
  WARNING: at include/linux/reset.h:43/reset_control_get()!
  socfpga_designware_eth ff702000.ethernet: Could not get sysmgr-syscon node
  socfpga_designware_eth ff702000.ethernet: probe failed: Function not impl=
emented
  dw_mmc ff704000.dwmmc0: registered as ff704000.dwmmc0
  netconsole: registered as netconsole-1
  malloc space: 0x1fefd9c0 -> 0x3fdfb37f (size 511 MiB)
  mmc0: detected SD card version 2.0
  mmc0: registered mmc0
  environment load /boot/barebox.env: No such file or directory
  Maybe you have to create the partition.
  running /env/bin/init...

  Hit any key to stop autoboot:    3
  barebox@Terasic DE0-Nano-SoC/Atlas-SoC Kit:/


Any suggestions or comments, please?

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
