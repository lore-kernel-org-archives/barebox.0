Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqOKV-0000ap-Db
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 14:30:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9FD5CBF0EB
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 14:30:58 +0100 (CET)
From: y@numalfix.phytec.de
Date: Tue, 10 Dec 2013 15:30:07 +0100
Message-Id: <1386685809-21530-1-git-send-email-y>
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
Subject: [PATCH 1/3] net: cpsw: Fix gmii_sel config
To: barebox@lists.infradead.org

From: Jan Weitzel <j.weitzel@phytec.de>

Prober slave_num is needed by cpsw_gmii_sel_am335x to calc reg value.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/net/cpsw.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 5e68e1b..52adf50 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1074,6 +1074,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 
 			slave->phy_id = phy_id[1];
 			slave->phy_if = of_get_phy_mode(child);
+			slave->slave_num = i;
 
 			i++;
 		}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
