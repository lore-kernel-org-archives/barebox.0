Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKj6o-0000mQ-D2
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:03:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1eKj6P-0001Lx-J6
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:03:29 +0100
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <sha@pengutronix.de>) id 1eKj6O-0002Mm-0g
 for barebox@lists.infradead.org; Fri, 01 Dec 2017 12:03:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:03:19 +0100
Message-Id: <20171201110326.31598-1-s.hauer@pengutronix.de>
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
Subject: Fix Documentation build warnings
To: Barebox List <barebox@lists.infradead.org>

There are so many warnings during build of the documentation
that one probably doesn't realize when he adds even more. Fix
all these.

Sascha

----------------------------------------------------------------
Sascha Hauer (7):
      Documentation: arm-qemu-vexpress: Fix too short underline
      Documentation: Change many code blocks to no highlight
      Documentation: socfpga: Fix numbered list
      Documentation: change default highlight language to shell
      Documentation: defaultenv-2: Change highlight to make
      Documentation: remove :numbered: from lower level toctrees
      ARM: psci command: Add to misc group

 Documentation/boards/am335x.rst                    |  1 -
 Documentation/boards/arm-qemu-vexpress.rst         |  2 +-
 Documentation/boards/cirrus-logic.rst              |  1 -
 Documentation/boards/imx.rst                       |  1 -
 Documentation/boards/mips.rst                      |  1 -
 Documentation/boards/mvebu.rst                     |  1 -
 Documentation/boards/mxs.rst                       |  1 -
 Documentation/boards/openrisc.rst                  |  4 ++-
 Documentation/boards/powerpc.rst                   |  1 -
 Documentation/boards/pxa.rst                       |  1 -
 Documentation/boards/rk3288.rst                    |  1 -
 Documentation/boards/samsung.rst                   |  1 -
 Documentation/boards/socfpga.rst                   | 22 ++++++------
 Documentation/boards/x86.rst                       | 18 ++++++----
 Documentation/conf.py                              |  2 +-
 .../bindings/barebox/barebox,environment.rst       |  4 ++-
 .../devicetree/bindings/misc/fsl,imx-iim.rst       |  4 ++-
 .../devicetree/bindings/misc/fsl,imx-ocotp.rst     |  4 ++-
 Documentation/devicetree/index.rst                 |  1 -
 Documentation/filesystems/pstore.rst               | 40 +++++++++++++---------
 Documentation/user/defaultenv-2.rst                |  4 ++-
 Documentation/user/user-manual.rst                 |  1 -
 arch/arm/cpu/psci.c                                |  5 +--
 23 files changed, 66 insertions(+), 55 deletions(-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
