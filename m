Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.megiteam.pl ([31.186.83.105])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fQazC-0004L8-2R
 for barebox@lists.infradead.org; Wed, 06 Jun 2018 16:08:36 +0000
From: Marcin Niestroj <m.niestroj@grinn-global.com>
Date: Wed,  6 Jun 2018 18:08:04 +0200
Message-Id: <20180606160809.16233-1-m.niestroj@grinn-global.com>
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
Subject: [RFC PATCH 0/5] ARM: imx: HAB improvements
To: barebox@lists.infradead.org
Cc: Marcin Niestroj <m.niestroj@grinn-global.com>

Hi,

This is a set of patches with HAB-related improvements.
Looking forward to feedback about them. Thanks!

Regards,
Marcin

Marcin Niestroj (5):
  scripts: imx: add optional argument to hab_blocks command
  scripts: imx: Specify CSF using -i option for new CST compatibility
  ARM: imx: Update default image certificate for CST tool
  scripts: imx: Support encrypted boot with HABv4
  images: imx: Add targets for signed encrypted images

 arch/arm/mach-imx/Kconfig                     |  13 +-
 .../mach-imx/include/mach/habv4-imx6-gencsf.h |  14 ++
 images/Makefile.imx                           |   3 +
 scripts/Makefile.lib                          |   3 +-
 scripts/imx/imx-image.c                       |  30 ++-
 scripts/imx/imx.c                             | 186 +++++++++++++++++-
 scripts/imx/imx.h                             |   9 +
 7 files changed, 244 insertions(+), 14 deletions(-)

-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
