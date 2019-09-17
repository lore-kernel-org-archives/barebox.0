Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAC4t-0003zF-UZ
 for barebox@lists.infradead.org; Tue, 17 Sep 2019 11:55:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 17 Sep 2019 13:55:12 +0200
Message-Id: <20190917115518.14953-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 0/6] ARM: layerscape: streamline and document boot
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

v1 -> v2:
  - Not calling back into bootm code. We now read barebox and invoke
    it directly in the bootm handler (Sascha)
  - Dropped copy_file_2 implementation, because it's no longer needed
  - Fixed a commit message typo (Roland)

Ahmad Fatoum (6):
  ARM: Layerscape: add bootm handler for images
  ARM: Layerscape: don't generate second-stage 2nd.image
  filetype: support fastboot barebox_update with layerscape image
  scripts: pblimage: explicitly set architecture to ARM
  ARM: layerscape: tqmls1046a: disable all SGMII PHYs
  Documentation: boards: document layerscape support

 Documentation/boards/layerscape.rst           | 61 +++++++++++++++++++
 .../boards/layerscape/ls1046ardb.rst          | 36 +++++++++++
 .../boards/layerscape/tqmls1046a.rst          | 49 +++++++++++++++
 .../defaultenv-tqmls1046a/nv/dev.eth0.mode    |  1 +
 .../defaultenv-tqmls1046a/nv/dev.eth1.mode    |  1 +
 arch/arm/mach-layerscape/Makefile             |  1 +
 arch/arm/mach-layerscape/pblimage.c           | 58 ++++++++++++++++++
 common/filetype.c                             |  2 +
 images/Makefile.layerscape                    |  8 +--
 scripts/pblimage.c                            |  2 +-
 10 files changed, 212 insertions(+), 7 deletions(-)
 create mode 100644 Documentation/boards/layerscape.rst
 create mode 100644 Documentation/boards/layerscape/ls1046ardb.rst
 create mode 100644 Documentation/boards/layerscape/tqmls1046a.rst
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth0.mode
 create mode 100644 arch/arm/boards/tqmls1046a/defaultenv-tqmls1046a/nv/dev.eth1.mode
 create mode 100644 arch/arm/mach-layerscape/pblimage.c

-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
