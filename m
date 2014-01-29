Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og118.obsmtp.com ([64.18.0.160])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W8SzM-0006jm-L9
 for barebox@lists.infradead.org; Wed, 29 Jan 2014 11:07:26 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 29 Jan 2014 11:06:49 +0000
Message-Id: <1390993612-26246-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/3] DA923RC: enable UBIFS support to allow firmware flash
 booting
To: barebox@lists.infradead.org

UBI/UBIFS are enabled for the DA923RC board to load and boot images from
the NOR flash storage. As images may be loaded through a symlink, the
readlink entry point is implemented in the UBIFS driver support.

ppc bit operations header files are updated as they are in conflict with
main header files when UBIFS is enabled.

Renaud Barbier (3):
  ppc: remove bit operation headers file conflict
  UBIFS: implement readlink entry point
  DA923RC: enable UBI/UBIFS configuration

 arch/ppc/boards/geip-da923rc/env/bin/init  |   12 +++++++
 arch/ppc/configs/da923rc_defconfig         |    6 ++++
 arch/ppc/cpu-85xx/tlb.c                    |    2 +-
 arch/ppc/include/asm/bitops.h              |   46 +--------------------------
 arch/ppc/mach-mpc85xx/fsl_law.c            |    1 +
 arch/ppc/mach-mpc85xx/include/mach/ffs64.h |   20 ++++++++++++
 fs/ubifs/ubifs.c                           |   38 +++++++++++++++++++++++
 7 files changed, 80 insertions(+), 45 deletions(-)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/ffs64.h


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
