Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eskr2-0007dA-Jp
 for barebox@lists.infradead.org; Mon, 05 Mar 2018 07:48:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eskqn-0001r2-V5
 for barebox@lists.infradead.org; Mon, 05 Mar 2018 08:48:01 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eskqn-0000Us-MO
 for barebox@lists.infradead.org; Mon, 05 Mar 2018 08:48:01 +0100
Date: Mon, 5 Mar 2018 08:48:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180305074801.mkoxhnki3n2cb2oc@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2018.03.0
To: Barebox List <barebox@lists.infradead.org>


Hi All,

barebox-v2018.03.0 is out.

Some work has been done in the area if FIT images. We have now a greater
flexibility in which images can be opened, and when they are opened less
memory is used since we have to do one less copy of the image.
Another thing worth noting is that squashfs can now do zstd.

As usual, see below for a detailed list of patches.

Sascha

----------------------------------------------------------------
Aleksander Morgado (5):
      bbremote: rename command subparser variables
      ratp: rename global context variable
      ratp: move barebox-specific command to ratp_bb.h
      ratp: remove unused list pointer from ratp_bb_pkt
      ratp: remove unused context fields

Andrey Smirnov (1):
      at91sam9x5ek: Add appropriate compatibility guards to all initcalls

Antony Pavlov (5):
      sandbox: use 'poweroff' command for exit
      sandbox: avoid symbol conflict for {open,read,close}dir
      sandbox: add gpio support with libftdi1
      sandbox: add i2c and spi libftdi1 bit-bang example
      i2c: i2c_master_send(): don't leave flags uninitialized

Daniel Schultz (2):
      commands: ubi: ubiupdatevol: Reduce error code to 0 or 1
      ARM: configs: am335x_defconfig: Reorder configs

Lucas Stach (7):
      net: phy: scan PHYs referenced by phandle
      net/e1000: remove one level of indentation
      net/e1000: use correct bit for flash detection
      net/e1000: EEPROM isn't valid if only iNVM is available
      net/e1000: don't check EEPROM signature if populated from iNVM
      net/e1000: don't register EERPOM device if the content is invalid
      net: phy: fixed-link: read link parameters from devicetree

Michael Olbrich (1):
      scripts/compiler.h: inline functions in headers must be static

Philipp Zabel (7):
      fs/parseopt: Add parseopt_llu_suffix
      filetype: Add type detection at an offset
      fs: add support loop mount offset
      include linux/compiler.h in linux/unaligned/generic.h
      lib: Add xxhash module
      lib: Add zstd decompression module
      squashfs: Add zstd support

Sascha Hauer (51):
      startup: create /tmp
      fs: implement is_tftp_fs()
      libfile: implement make_temp
      libfile: implement a function to cache a file
      uimage: fix memory leak in error path
      uimage: Use is_tftp_fs() and cache_file() to ease TFTP workaround
      fs/uimagefs: Use is_tftp_fs() and cache_file() to ease TFTP workaround
      fs: remove now unused function can_lseek_backward()
      fs: Fix memory leak in mount()
      bootargs: Fix memory leak in linux_bootargs_get()
      imd: Make all pointers into image const
      bbu: imx-bbu-internal: Do not modify image
      bbu: imx-bbu-internal: make pointers to image const
      bbu: command: create temporary variable holding the pointer to the im=
age
      bbu: Make pointer to image const
      usb: gadget: fastboot: allow data.image to be const
      ARM: am33xx: bbu: Make pointers to image const
      rsa: Add missing newline to pr_err messages
      pinctrl: do not dereference a device tree property directly
      libfile: Make write_file buffer const
      of: Allow for const properties
      of: fdt: add of_unflatten_dtb_const
      pstore: lower message priority
      state: refuse to set dirty parameter via setenv
      state: Add 'init_from_defaults' parameter
      startup: Load default environment earlier
      boot: Make independent of command support
      bootchooser: Drop SHELL_NONE conflict
      bootm: FIT: do not depend on FIT pre-opened images
      FIT: Do not pre-open images
      FIT: Let user specify the configuration to use
      FIT: store device_nodes in fit_handle
      FIT: move handle->verify check to fit_verify_hash()
      FIT: factor out some helper functions
      FIT: Implement opening images with no configuration
      FIT: Allow to open buffer as FIT image
      env: Add more context to error message
      Merge branch 'for-next/FIT'
      Merge branch 'for-next/at91'
      Merge branch 'for-next/constify'
      Merge branch 'for-next/e1000'
      Merge branch 'for-next/misc'
      Merge branch 'for-next/of'
      Merge branch 'for-next/ratp'
      Merge branch 'for-next/sandbox-libftdi'
      Merge branch 'for-next/tftp-workaround'
      Merge branch 'for-next/zstd'
      FIT: Use const dtb unflatten variant
      state: remove unused arguments from state_new_from_node()
      state: find backend node with its reproducible name
      Release v2018.03.0

Uwe Kleine-K=F6nig (1):
      i2c: read/write_reg: don't assume client->dev to be valid
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
