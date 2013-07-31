Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og105.obsmtp.com ([64.18.0.180])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1V4Swm-0000pd-DJ
 for barebox@lists.infradead.org; Wed, 31 Jul 2013 09:43:57 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 31 Jul 2013 10:43:13 +0100
Message-Id: <1375263795-5348-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/2] ppc 85xx: remove early local bus initialisation
To: barebox@lists.infradead.org

The local bus initialisation is moved from the cpu early
initialisation to the board specific code to avoid dependencies
on board definitions.

Renaud Barbier (2):
  mpc85xx: remove local bus initialisation
  P2020RDB: map boot flash.

 arch/ppc/boards/freescale-p2020rdb/config.h   |    4 ----
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c |    4 ++++
 arch/ppc/cpu-85xx/start.S                     |    1 -
 arch/ppc/include/asm/fsl_lbc.h                |    2 --
 arch/ppc/mach-mpc85xx/Makefile                |    1 -
 arch/ppc/mach-mpc85xx/cpu_init.c              |    5 +++--
 arch/ppc/mach-mpc85xx/fsl_lbc.c               |   17 -----------------
 7 files changed, 7 insertions(+), 27 deletions(-)
 delete mode 100644 arch/ppc/mach-mpc85xx/fsl_lbc.c


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
