Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og110.obsmtp.com ([64.18.0.20])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vgepa-0008C2-7R
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 18:06:22 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 13 Nov 2013 18:05:32 +0000
Message-Id: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 0/2] DA923RC: add PCI support
To: barebox@lists.infradead.org

This patch set adds the fsl,mpic node frequency property
needed by Linux version 3.x for the PCI driver to function.
Also it was noticed that the board device reset was held
low preventing full probing of the PCI bus.

Renaud Barbier (2):
  ppc: mpc85xx: add fsl,mpic node frequency property
  ppc: DA923RC: update board initialisation

 arch/ppc/boards/geip-da923rc/da923rc.c          |    4 ++--
 arch/ppc/mach-mpc85xx/fdt.c                     |    5 +++++
 arch/ppc/mach-mpc85xx/include/mach/immap_85xx.h |    3 +++
 3 files changed, 10 insertions(+), 2 deletions(-)


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
