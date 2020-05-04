Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVVry-0003rb-2I
 for barebox@lists.infradead.org; Mon, 04 May 2020 07:50:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0005g8-Pi
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mgr@pengutronix.de>) id 1jVVrt-0007d5-G9
 for barebox@lists.infradead.org; Mon, 04 May 2020 09:50:25 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Mon,  4 May 2020 09:50:18 +0200
Message-Id: <20200504075022.28234-2-m.grzeschik@pengutronix.de>
In-Reply-To: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
References: <20200504075022.28234-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 1/5] net: cpsw: fix cpsw_slave_regs register offsets
To: barebox@lists.infradead.org

The cpsw_slave_regs struct also start with max_blks register, so here we
also have to skip the first two bytes like for .host_port_reg_ofs
---
 drivers/net/cpsw.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index c3cc43cc5b..d745737aa3 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1015,7 +1015,7 @@ static struct cpsw_data cpsw1_data = {
 	.cpdma_reg_ofs		= 0x100,
 	.state_ram_ofs		= 0x200,
 	.ale_reg_ofs		= 0x600,
-	.slave_ofs		= 0x050,
+	.slave_ofs		= 0x058,
 	.slave_size		= 0x040,
 	.sliver_ofs		= 0x700,
 	/* FIXME: mdio_reg_ofs and cppi_ram_ofs missing */
@@ -1026,7 +1026,7 @@ static struct cpsw_data cpsw2_data = {
 	.cpdma_reg_ofs		= 0x800,
 	.state_ram_ofs		= 0xa00,
 	.ale_reg_ofs		= 0xd00,
-	.slave_ofs		= 0x200,
+	.slave_ofs		= 0x208,
 	.slave_size		= 0x100,
 	.sliver_ofs		= 0xd80,
 	.mdio_reg_ofs		= 0x1000,
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
