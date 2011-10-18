Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG8I2-0007Il-Ej
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 11:57:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1RG8I0-0006Af-Go
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 13:57:00 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1RG8I0-0002zQ-Fn
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 13:57:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Oct 2011 13:56:55 +0200
Message-Id: <1318939019-32713-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH v2] devicetree support
To: barebox@lists.infradead.org

This is the second version of devicetree support for ARM.
Changes since v1:

- Move most code except the command from commands/oftree.c to common/oftree.c
  so that the code can be used independent of the command
- add a function to fixup the memory nodes

Next step would be to rework the ppc code to use the new libfdt support
and remove the old (so far ppc only) devicetree support.

Sascha Hauer (4):
      initial libfdt support
      initial oftree command support
      ARM Linux: Add device tree support
      oftree: add fixup for memory nodes

 arch/arm/lib/armlinux.c   |   15 +-
 commands/Kconfig          |    6 +
 commands/Makefile         |    1 +
 commands/oftree.c         |  135 +++++
 common/Makefile           |    1 +
 common/memory.c           |   80 +++
 common/oftree.c           |  312 ++++++++++++
 include/fdt.h             |   60 +++
 include/libfdt.h          | 1235 +++++++++++++++++++++++++++++++++++++++++++++
 include/libfdt_env.h      |   24 +
 include/of.h              |   21 +
 lib/Kconfig               |    6 +
 lib/Makefile              |    4 +
 lib/fdt/Makefile          |    2 +
 lib/fdt/TODO              |    3 +
 lib/fdt/fdt.c             |  222 ++++++++
 lib/fdt/fdt_ro.c          |  574 +++++++++++++++++++++
 lib/fdt/fdt_rw.c          |  465 +++++++++++++++++
 lib/fdt/fdt_strerror.c    |   96 ++++
 lib/fdt/fdt_sw.c          |  256 ++++++++++
 lib/fdt/fdt_wip.c         |  118 +++++
 lib/fdt/libfdt_internal.h |   95 ++++
 22 files changed, 3728 insertions(+), 3 deletions(-)
 create mode 100644 commands/oftree.c
 create mode 100644 common/oftree.c
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
