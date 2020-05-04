Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVry-0003ra-2z
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:50:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0005g7-OC
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0007d3-CB
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 May 2020 09:50:17 +0200
Message-Id: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/5] net: cpsw: dual_emac mode
To: barebox@lists.infradead.org

This series enables the dual_emac mode for cpsw controller.
It enables both ports to be used individually.

Michael Grzeschik (5):
  net: cpsw: fix cpsw_slave_regs register offsets
  net: cpsw: move generic setup code to probe
  net: cpsw: cpsw_process should only handle rx channels for its own
    port
  net: cpsw: add vlan handling for dual_emac mode
  net: cpsw: make cpsw_send directional

 drivers/net/cpsw.c | 154 ++++++++++++++++++++++++++++++++++++++-------
 1 file changed, 130 insertions(+), 24 deletions(-)

-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
