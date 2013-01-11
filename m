Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tteb9-0000oe-HI
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 13:24:43 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <sha@pengutronix.de>) id 1Tteb7-0001Cq-DW
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 14:24:37 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <sha@pengutronix.de>) id 1Tteb7-0006SK-Bz
 for barebox@lists.infradead.org; Fri, 11 Jan 2013 14:24:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 11 Jan 2013 14:24:20 +0100
Message-Id: <1357910676-4231-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] devicetree improvements
To: barebox@lists.infradead.org


This series contains several improvements in how barebox handles
devicetrees. In short barebox has an internal storage place for
devicetrees which can be used to a) probe barebox itself from
the devicetree and b) pass it to the kernel. This is not new,
but the following series implements this much more consistently.
Also with this series it's possible to manipulate (create/update/delete
properties and nodes) the devicetree.

I've already written Documentation for this (hurray!), it can be found
here:

http://wiki.barebox.org/doku.php?id=user:devicetree&do=edit&rev=

Below is what I checked into the Wiki (There's also documentation
for of_node and of_property in the Wiki, not in this mail).

====== devicetree handling in barebox ======

NOTE: This page contains information for patches currently under review.

==== General overview ====

barebox handles devicetrees for two different purposes. First barebox itself
can be probed from devicetrees. This feature is currently under development and
is not generally used. Second barebox can pass devicetrees to the Linux Kernel.
This feature is ready to use on ARM and PowerPC.

barebox has a single internal place for storing a devicetree. This is further
referred to as internal devicetree storage or short internal storage. This
storage place is used to probe barebox from the devicetree and to pass a
devicetree to the Kernel. The devicetree manipulation commands generally work
on the internal storage. For just starting a kernel with devicetree the
internal storage can completely be bypassed when a dtb file is given to the
bootm command, but then the devicetree manipulation commands can't be used.

==== barebox internal devicetree storage ====

Unless barebox itself is probed from the devicetree the internal storage will
be empty after startup. A devicetree can be loaded to internal storage using
the oftree command:

  oftree -l /env/oftree

After executing this command the internal devicetree storage can be shown with:

  oftree -d
   {
          #address-cells: <0x1>
          #size-cells: <0x1>
          model: "Freescale i.MX51 Babbage Board"
          compatible: "fsl,imx51-babbage", "fsl,imx51"
          chosen {
          };
          ...
    };

Further arguments exist to show only parts of the devicetree, see
[[commands:oftree]] for more details.

By default the [[commands:bootm]] command uses this devicetree to start the
kernel with.

==== Manipulating the devicetree ====

the [[commands:of_node]] and [[commands:of_property]] commands exist to
manipulate the internal devicetree storage. [[commands:of_node]] is used to
create or delete nodes:

  # create a node /soc/foo:
  of_node -c /soc/foo
  # and delete it again:
  of_node -d /soc/foo

The [[commands:of_property]] command is used to create/modify/delete
properties:

  # add/modify a property:
  of_property -s /soc/aips@70000000/serial@73fc0000 status okay
  # delete a property:
  of_property -d /soc/aips@70000000/serial@73fc0000 status

the [[commands:of_property]] command understands several formats for specifying
the value of the property for specifying cells, bytestreams and cells, see the
command help for more details.

==== devicetree overlays ====

Basic support for devicetree overlays exist, but this is currently not
complete. phandles are not handled currently, so this can only be used for
updates which does not contain phandles. Overlays can be done simply by calling
oftree -l multiple times:

  oftree -l /env/base.dtb
  oftree -l /env/overlay.dtb

==== probing devices from the devicetree ====

Once a devicetree has been loaded into internal storage the devices found there
can be probed using the -p option to the oftree command. barebox will only
probe devices which are not probed already from platform devices. For detecting
whether a device is probed already the physical address is used. This means
that only platform devices with a physical address can be handled this way. If
a node describes a i2c bus the (additional) i2c devices will not be probed.
After probing each existing device which has a correspondent device in the
devicetree will have a devicenode attached to it. This can be examined using
the devinfo command:

  barebox@Freescale i.MX51 PDK:/ devinfo 73fc0000.serial
  resources:
  num   : 0
  start : 0x73fc0000
  size  : 0x00004000
  driver: imx_serial
  bus: platform
  
  no info available for 73fc0000.serial
  no parameters available
  
  device node: /soc/aips@70000000/serial@73fc0000
  serial@73fc0000 {
          compatible: "fsl,imx51-uart", "fsl,imx21-uart"
          reg: <0x73fc0000 0x4000>
          interrupts: <0x20>
          clocks: <0x2 0x1e 0x2 0x1f>
          clock-names: "ipg", "per"
          status: "okay"
          pinctrl-names: "default"
          pinctrl-0: <0xb>
  };


barebox will only use the internal devicetree during probe, so after the
devicetree has been probed it can (but of course does not have to) be freed
again using oftree -f. The newly probed devices will continue to exist, just
the additional devicenode is gone.


The following changes since commit 46dae550cdccfee407f8ced183f9102296cb79b7:

  ARM am33xx: the hsmmc is a omap4 type mmc controller (2013-01-10 20:41:42 +0100)

are available in the git repository at:

  git://git.pengutronix.de/git/barebox.git pu/oftree

for you to fetch changes up to 8d84eb6090e46c6013dfd1890b09a78096b5ca46:

  commands: Add of_node command (2013-01-11 14:10:17 +0100)

----------------------------------------------------------------
Sascha Hauer (16):
      of: make of_get_fixed_tree more universally usable
      of: Fix invalid path for of_find_node_by_path
      ARM android image: remove double of_fix_tree
      of: of_free fixes
      of of_free: remove old node from allnodes list
      of: return root node when looking for a node with path /
      of: rename of_parse_dtb to of_unflatten_dtb
      of: Add support for converting the unflattened tree back to a dtb
      of: remove unused barebox_fdt
      ARM bootm: only use concatenated oftree when no other is available
      of: unflatten: allow overlay dtbs
      oftree command: refactor
      of: add of_delete_property
      of: rename new_device_node to of_new_node and export it
      commands: Add of_property command
      commands: Add of_node command

 arch/arm/lib/bootm.c   |    9 +-
 arch/arm/lib/bootu.c   |    2 +-
 arch/arm/lib/bootz.c   |    2 +-
 commands/Kconfig       |   15 +++
 commands/Makefile      |    2 +
 commands/bootm.c       |   32 ++----
 commands/of_node.c     |  111 +++++++++++++++++++
 commands/of_property.c |  280 ++++++++++++++++++++++++++++++++++++++++++++++++
 commands/oftree.c      |  110 ++++++++++++-------
 common/oftree.c        |   59 ++++++++--
 drivers/of/base.c      |  143 ++++++++++++++++++++++---
 include/of.h           |   11 +-
 12 files changed, 677 insertions(+), 99 deletions(-)
 create mode 100644 commands/of_node.c
 create mode 100644 commands/of_property.c

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
