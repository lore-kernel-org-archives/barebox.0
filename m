Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UhIRk-0003fj-El
 for barebox@lists.infradead.org; Tue, 28 May 2013 11:52:09 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9F5DBBF0E8
 for <barebox@lists.infradead.org>; Tue, 28 May 2013 13:48:12 +0200 (CEST)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 28 May 2013 13:51:43 +0200
Message-Id: <1369741903-24988-5-git-send-email-j.weitzel@phytec.de>
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
Subject: [PATCH] twl6030: Set WR_S for VMMC
To: barebox@lists.infradead.org

After Reset VMMC goes to default VSEL. This is not a clean power cycle for
some SD cards.
Set flag WR_S for VMMC to avoid going to default VSEL.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
 drivers/mci/twl6030.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/mci/twl6030.c b/drivers/mci/twl6030.c
index 4a875bd..ad1043d 100644
--- a/drivers/mci/twl6030.c
+++ b/drivers/mci/twl6030.c
@@ -21,6 +21,7 @@ static int twl6030_mci_write(u8 address, u8 data)
 void twl6030_mci_power_init(void)
 {
 	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_VOLTAGE,
+			TWL6030_VMMC_WR_S | 
 			TWL6030_VMMC_VSEL_0 | TWL6030_VMMC_VSEL_2 |
 			TWL6030_VMMC_VSEL_4);
 	twl6030_mci_write(TWL6030_PMCS_VMMC_CFG_STATE,
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
