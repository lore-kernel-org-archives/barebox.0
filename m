Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAQzM-0000cA-Qg
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 20:19:08 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1UAQzK-0001ci-Ea
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 21:18:58 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1UAQzK-0001BS-DD
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 21:18:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Feb 2013 21:18:27 +0100
Message-Id: <1361909936-2665-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] remove libfdt
To: barebox@lists.infradead.org

In the beginning we only had libfdt to handle devicetrees. With
devicetree probing support we gained two parallel universes for
handling devicetrees. This series cleans this up by switching to
the internal devicetree completely and removing libfdt.

The dtb format is now only used while flattening/unflattening
the tree. All tree manipulation is done on the internal tree
format only. This introduces some time overhead (~2ms on a i.MX51)
needed for (un)flattening the tree, but actually manipulating
the tree is a factor of about 50 faster compared to libfdt.
This means the overhead can become more than compensated once
we start manipulating the tree in more places.

The overall code and binary size becomes a bit smaller with
this due to less duplicated code.

Sascha

The following changes since commit 8c82b1b2021591a8c3537958c7fa60816c584d8a:

  OMAP4 USB BOOT: remove double line endings (2013-02-25 09:18:03 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu/oftree

for you to fetch changes up to 417227b61e2331fa4285aaac42ee22f5db84cbc1:

  of_property command: Fix crash with empty property value (2013-02-26 20:42:46 +0100)

----------------------------------------------------------------
Sascha Hauer (29):
      of: unflatten: allocate root node explicitly
      of: export of_find_child
      of: removed unused variables
      of: Let of_find_node_by_path iterate over tree
      of: remove allnodes list
      ARM bootm: Use of_get_fixed_tree
      of: Add of_set_property and of_create_node
      of_node command: use of_create_node
      of: Add root node argument to of_find_node_by_path
      of: Add missing prototype for of_device_is_compatible
      of: let of_unflatten_dtb return the unflattened tree
      of: make unflatten independent of libfdt
      of: make flatten independent of libfdt
      of/fdt: use optimized endianess conversion
      oftree command: Use of_print_nodes
      of: move OFTREE Kconfig option to drivers/of/
      of: make OFDEVICE a user selectable option
      oftree command: retire CMD_OFTREE_PROBE Kconfig option
      of: move oftree Kconfig to the top of the drivers menu
      of: Pass barebox internal format devicetree to of_get_fixed_tree
      bootm: Use of_print_nodes instead of fdt_print
      of: move flat devicetree functions to separate file
      of: Add of property write functions for u32
      of: make value of property in of_new_property optional
      of: Add missing prototype for size/address counting functions
      of: fixup unflattened devicetree
      of: remove unused libfdt
      of_* commands: print usage when insufficient arguments are given
      of_property command: Fix crash with empty property value

 arch/arm/boards/at91sam9m10ihd/hw_version.c |    1 -
 arch/arm/boards/at91sam9x5ek/hw_version.c   |   32 +-
 arch/arm/boards/sama5d3xek/hw_version.c     |    1 -
 arch/arm/lib/bootm.c                        |   13 +-
 arch/ppc/mach-mpc5xxx/cpu.c                 |   26 +-
 commands/Kconfig                            |   10 -
 commands/bootm.c                            |   16 +-
 commands/of_node.c                          |   33 +-
 commands/of_property.c                      |   24 +-
 commands/oftree.c                           |   42 +-
 common/memory.c                             |   49 +-
 common/oftree.c                             |  223 +----
 drivers/Kconfig                             |    2 +-
 drivers/Makefile                            |    2 +-
 drivers/of/Kconfig                          |    6 +-
 drivers/of/Makefile                         |    2 +-
 drivers/of/base.c                           |  319 ++++---
 drivers/of/dtb.c                            |  400 +++++++++
 include/fdt.h                               |   13 +
 include/libfdt.h                            | 1235 ---------------------------
 include/libfdt_env.h                        |   22 -
 include/of.h                                |   68 +-
 lib/Kconfig                                 |    7 -
 lib/Makefile                                |    1 -
 lib/fdt/Makefile                            |    2 -
 lib/fdt/TODO                                |    3 -
 lib/fdt/fdt.c                               |  222 -----
 lib/fdt/fdt_ro.c                            |  574 -------------
 lib/fdt/fdt_rw.c                            |  465 ----------
 lib/fdt/fdt_strerror.c                      |   96 ---
 lib/fdt/fdt_sw.c                            |  256 ------
 lib/fdt/fdt_wip.c                           |  118 ---
 lib/fdt/libfdt_internal.h                   |   95 ---
 33 files changed, 770 insertions(+), 3608 deletions(-)
 create mode 100644 drivers/of/dtb.c
 delete mode 100644 include/libfdt.h
 delete mode 100644 include/libfdt_env.h
 delete mode 100644 lib/fdt/Makefile
 delete mode 100644 lib/fdt/TODO
 delete mode 100644 lib/fdt/fdt.c
 delete mode 100644 lib/fdt/fdt_ro.c
 delete mode 100644 lib/fdt/fdt_rw.c
 delete mode 100644 lib/fdt/fdt_strerror.c
 delete mode 100644 lib/fdt/fdt_sw.c
 delete mode 100644 lib/fdt/fdt_wip.c
 delete mode 100644 lib/fdt/libfdt_internal.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
