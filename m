Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og115.obsmtp.com ([64.18.0.246])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Vgeq5-0008Dv-SU
 for barebox@lists.infradead.org; Wed, 13 Nov 2013 18:06:54 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Wed, 13 Nov 2013 18:05:34 +0000
Message-Id: <1384365934-7693-3-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
References: <1384365934-7693-1-git-send-email-renaud.barbier@ge.com>
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
Subject: [PATCH 2/2] ppc: DA923RC: update board initialisation
To: barebox@lists.infradead.org

Pull the board device reset GPIO pin high as this prevents
PCI bus probing.
The function da923rc_board_init_r is called at the postcore
initcall level so that the udelay function can take advantage
of the core initialisation.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/geip-da923rc/da923rc.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/ppc/boards/geip-da923rc/da923rc.c b/arch/ppc/boards/geip-da923rc/da923rc.c
index 99d1393..976aa8d 100644
--- a/arch/ppc/boards/geip-da923rc/da923rc.c
+++ b/arch/ppc/boards/geip-da923rc/da923rc.c
@@ -195,7 +195,7 @@ static int da923rc_board_init_r(void)
 		gpio_set_value(1, 1);
 		/* De-assert Board reset */
 		udelay(1000);
-		gpio_set_value(0, 0);
+		gpio_set_value(0, 1);
 	}
 
 	/* Enable PCI error reporting */
@@ -209,4 +209,4 @@ static int da923rc_board_init_r(void)
 	return 0;
 }
 
-core_initcall(da923rc_board_init_r);
+postcore_initcall(da923rc_board_init_r);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
