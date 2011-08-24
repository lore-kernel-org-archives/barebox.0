Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QwKKx-0008BJ-LA
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 20:46:12 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QwKKu-0000ha-Ew
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 22:46:08 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QwKKu-0000Ee-Dq
	for barebox@lists.infradead.org; Wed, 24 Aug 2011 22:46:08 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Aug 2011 22:46:00 +0200
Message-Id: <1314218763-31058-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: basic devicetree support
To: barebox@lists.infradead.org

The following adds basic devicetree support to barebox. Right
now we can't do much with the devicetree, but enough to boot
an ARM board.

If devicetree support is enabled, a binary blob can be handled
as follows:

# parse a binary blob and store it internally
oftree -p /env/oftree
# dump it
oftree -d
# or
oftree -d /env/someothertree

If the a tree is stored with oftree -p, booting the kernel
will result in a devicetree boot, otherwise the traditional
ATAG mechanism is used.
So far only the command line in the devicetree is updated
with the barebox bootargs variable, no other manipulation
is supported.

I did some more experiments what else we can do with the devicetree.
If you are interested, try this branch:

git://git.pengutronix.de/git/barebox.git oftree

It is based on an earlier version of the posted patches. It can
do some interesting things, like for example probe devices from
the devicetree or connect the devices from the devicetree with
the platform devices from barebox so that the devicetree node
is printed with devinfo. It looks promising, but still needs
some work, so I decided to first add only basic support to at
least be able to boot the kernel with the devicetree.

Sascha

Sascha Hauer (3):
      initial libfdt support
      initial oftree command support
      ARM Linux: Add device tree support

 arch/arm/lib/armlinux.c   |   15 +-
 commands/Kconfig          |    6 +
 commands/Makefile         |    1 +
 commands/oftree.c         |  352 +++++++++++++
 include/fdt.h             |   60 +++
 include/libfdt.h          | 1235 +++++++++++++++++++++++++++++++++++++++++++++
 include/libfdt_env.h      |   23 +
 include/of.h              |    6 +
 lib/Kconfig               |    5 +
 lib/Makefile              |    1 +
 lib/fdt/Makefile          |    2 +
 lib/fdt/TODO              |    3 +
 lib/fdt/fdt.c             |  222 ++++++++
 lib/fdt/fdt_ro.c          |  574 +++++++++++++++++++++
 lib/fdt/fdt_rw.c          |  465 +++++++++++++++++
 lib/fdt/fdt_strerror.c    |   96 ++++
 lib/fdt/fdt_sw.c          |  256 ++++++++++
 lib/fdt/fdt_wip.c         |  118 +++++
 lib/fdt/libfdt_internal.h |   95 ++++
 19 files changed, 3532 insertions(+), 3 deletions(-)
 create mode 100644 commands/oftree.c
 create mode 100644 include/fdt.h
 create mode 100644 include/libfdt.h
 create mode 100644 include/libfdt_env.h
 create mode 100644 include/of.h
 create mode 100644 lib/fdt/Makefile
 create mode 100644 lib/fdt/TODO
 create mode 100644 lib/fdt/fdt.c
 create mode 100644 lib/fdt/fdt_ro.c
 create mode 100644 lib/fdt/fdt_rw.c
 create mode 100644 lib/fdt/fdt_strerror.c
 create mode 100644 lib/fdt/fdt_sw.c
 create mode 100644 lib/fdt/fdt_wip.c
 create mode 100644 lib/fdt/libfdt_internal.h

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
