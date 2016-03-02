Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abDko-000255-Dt
 for barebox@lists.infradead.org; Wed, 02 Mar 2016 20:52:20 +0000
Received: from antimon.Speedport_W_504V_Typ_A (p54831D4B.dip0.t-ipconnect.de
 [84.131.29.75]) by lynxeye.de (Postfix) with ESMTPA id 76FFA26C2002
 for <barebox@lists.infradead.org>; Wed,  2 Mar 2016 21:51:23 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Wed,  2 Mar 2016 21:50:34 +0100
Message-Id: <1456951837-20843-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
References: <1456951837-20843-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/5] net: efi: correct function signature of set_ethaddr
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/net/efi-snp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 5b96fbf..963d539 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -238,7 +238,7 @@ static int efi_snp_get_ethaddr(struct eth_device *edev, unsigned char *adr)
 	return 0;
 }
 
-static int efi_snp_set_ethaddr(struct eth_device *edev, unsigned char *adr)
+static int efi_snp_set_ethaddr(struct eth_device *edev, const unsigned char *adr)
 {
 	return 0;
 }
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
