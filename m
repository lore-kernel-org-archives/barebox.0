Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SNhXR-0006sV-O0
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 09:32:32 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXQ-0000Fq-22
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:28 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1SNhXP-0004Dz-VT
 for barebox@lists.infradead.org; Fri, 27 Apr 2012 11:32:27 +0200
From: Juergen Beisert <jbe@pengutronix.de>
Date: Fri, 27 Apr 2012 11:32:22 +0200
Message-Id: <1335519145-12349-5-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
References: <1335519145-12349-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 4/7] netX/network: fix debug outputs
To: barebox@lists.infradead.org

If DEBUG is defined it fails due to wrong variable names

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 drivers/net/netx_eth.c |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/netx_eth.c b/drivers/net/netx_eth.c
index 345dad4..2d92a2e 100644
--- a/drivers/net/netx_eth.c
+++ b/drivers/net/netx_eth.c
@@ -130,7 +130,7 @@ static int netx_miidev_read(struct mii_device *mdev, int phy_addr, int reg)
 	value = MIIMU_REG >> 16;
 
 	debug("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n", __func__,
-	      addr, reg, value);
+	      phy_addr, reg, value);
 
 	return value;
 }
@@ -139,7 +139,7 @@ static int netx_miidev_write(struct mii_device *mdev, int phy_addr,
 	int reg, int val)
 {
 	debug("%s: addr: 0x%02x reg: 0x%02x val: 0x%04x\n",__func__,
-	      addr, reg, val);
+	      phy_addr, reg, val);
 
 	MIIMU_REG = MIIMU_SNRDY | MIIMU_PREAMBLE | MIIMU_PHYADDR(phy_addr) |
 	            MIIMU_REGADDR(reg) | MIIMU_PHY_NRES | MIIMU_OPMODE_WRITE |
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
