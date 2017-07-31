Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dcFJA-0004RI-0y
 for barebox@lists.infradead.org; Mon, 31 Jul 2017 18:20:50 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=localhost)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1dcFIl-0002qm-08
 for barebox@lists.infradead.org; Mon, 31 Jul 2017 20:20:23 +0200
Message-ID: <1501525216.5056.1.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 31 Jul 2017 20:20:16 +0200
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============5770033858025035654=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2017.08.0
To: Barebox List <barebox@lists.infradead.org>


--===============5770033858025035654==
Content-Type: multipart/signed; micalg="pgp-sha256";
	protocol="application/pgp-signature"; boundary="=-fwFGoa9++ehiOQRM7dsk"


--=-fwFGoa9++ehiOQRM7dsk
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I've just released barebox 2017.08.0. Just like the last release we are
 one day early, this time due to me going back to enjoy my vacations
for the rest of the week.

We don't have any major new feature, but a good bunch of fixes, with
the majority of them being targeted at the RATP implementation. One
notable addition is support for the Turris Omnia, so you can now run
your favorite bootloader on a nice open-hardware router.

I'll also merge -next to master in a few minutes. I think I picked up
most of the patches floating around, aside from the AT91 conversion to
multi-image, which I haven't had the time to look at properly yet. So
if anything you expected to go in is missing, please reach out to me.

Shortlog of the changes in this release is below.

Regards,
Lucas

-----------------------------------------------------------------------
Aleksander Morgado (16):
      ratp: add missing transition to SYN-RECEIVED in behavior B
      ratp: avoid unnecessary variable initializations
      ratp: send missing RST in behavior C2
      ratp: add missing RST flag in behavior G
      ratp: completely ignore RST flagged packets in behavior G
      ratp: fix data presence check
      ratp: fix single byte sending flagged with SO
      ratp: remove bogus data checks in behavior C2
      ratp: remove FIXME comment: FIN always requires ACK
      ratp: fix sending ACKs without data
      ratp: consolidate ratp_sn_expected() and ratp_an_expected()
      ratp: prefer using ratp_send_ack() in behaviour I1
      ratp: send initial data in behaviour B if any pending
      ratp: don't ignore data that may arrive in behaviour H1
      ratp: consolidate setting the next AN or SN flags
      ratp: user close may happen in SYN-RECEIVED state

Andrey Smirnov (9):
      mtd: dataflash: Replace C99 types with their kernel counterparts
      mtd: dataflash: Improve coding style in jedec_probe()
      mtd: dataflash: Replace pr_debug, printk with dev_* functions
      mtd: dataflash: Get rid of loop counter in jedec_probe()
      mtd: dataflash: Make use of "extened device information"
      mtd: dataflash: Add flash_info for AT45DB641E
      ARM: Update zii_vf610_dev_defconfig
      gpiolib: Fix buggy flag detection code
      gpiolib: Simplify code of gpio_request_one()

Daniel Schultz (1):
      arm: boards: phytec-som-am335x: Update boot scripts

Lucas Stach (3):
      Revert "param: fix stub prototype of dev_add_param"
      gpio: move active state function stubs to GPIOLIB
      Release v2017.08.0

Oleksij Rempel (1):
      crypto: caam: use dma_alloc_coherent instead of dma_alloc

Philipp Zabel (2):
      i.MX: clk-pllv3: Initially disable PLL_BYPASS bit
      state: backend_bucket_circular: fix old state reads

Sam Ravnborg (2):
      clk: fix clk_get error handling
      gpio: fix null pointer exception when there is no oftree

Sascha Hauer (16):
      dts: update to v4.12-rc5
      state: backend: always pass backend type to Linux dtb
      dts: update to v4.12-rc6
      dts: update to v4.12-rc7
      fs: Make locally used function canonicalize_dir() static
      ARM: omap: phytec-phycore-omap4460: Fix compiler warning
      ARM: omap: Fix error printing
      Merge branch 'for-next/arm'
      Merge branch 'for-next/clk'
      Merge branch 'for-next/dts'
      Merge branch 'for-next/imx'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/mtd'
      Merge branch 'for-next/mvebu'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/state'

Steffen Trumtrar (1):
      ARM: socfpga: remove unused fpgaintf setup

Sven Schneider (1):
      lib/fonts: add 6x8 font

Uwe Kleine-K=C3=B6nig (13):
      clk: let clk_get return errors from of_clk_get_by_name
      scripts/kwbimage: support empty binary.0 files
      serial: ns16550: emit an error message if getting the clock fails
      of_device_is_stdout_path: simplify
      of_device_is_stdout_path: split off options and support aliases
      mtd: spi-nor: sync definition of Spansion chips from Linux
      ARM: mvebu: initial support for Armada 38x
      clk: mvebu: Add support for Armada 38x's coreclk
      ARM: mvebu: Add initial support for Turris Omnia
      scripts/kwboot: document -n option
      docs: mvebu: describe -n more accurately in the sphinx document
      enable LFS support for host programs
      crypto: digest: Fix digesting over memory chunks > 4096 bytes
--=-fwFGoa9++ehiOQRM7dsk
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: This is a digitally signed message part
Content-Transfer-Encoding: 7bit

-----BEGIN PGP SIGNATURE-----

iQEzBAABCAAdFiEEz9DmVLy+XdLQMNIiz8wpfG0KEgsFAll/dOAACgkQz8wpfG0K
EgtZ5Af9HOwEJaHvbLftmJWwKvLzeZIlxws2wFfvGo0F+4TcpoWBC0aIemKWPC3V
WYpqysyd9p0UDE2vAgaqCUzdDDqWcfuhH6Yv5J87PCpA/RDHRsuoRxjRCi0vt2wB
kluLAFXAL5NNsXP2uloMLXy9Ud89XKjNazyChSHGEtWu6UBkljOpCP3mNaftF+nk
MroyjYUK6lNxFC41IRrnktbbVTdoSbLIjkrQ14sJKnR8Y/ZAp8xyOzpA2sUhcP9m
HJqvkfQAYS9ldFeL2yz6c5wnWhaPbeT5ktqIsUa7LxrrGUT+trJiFoxd+aHhAl5H
BlZkISA/jqk7z3d0xua4ZQoA/1sY+Q==
=vt9a
-----END PGP SIGNATURE-----

--=-fwFGoa9++ehiOQRM7dsk--



--===============5770033858025035654==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============5770033858025035654==--
