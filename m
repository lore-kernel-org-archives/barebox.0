Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TJfSP-00022Y-T8
 for barebox@lists.infradead.org; Thu, 04 Oct 2012 07:02:54 +0000
Received: from mail405.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 72CCEFF8F77
 for <barebox@lists.infradead.org>; Thu,  4 Oct 2012 09:11:58 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu,  4 Oct 2012 09:00:26 +0200
Message-Id: <1349334027-9525-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
References: <1349334027-9525-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/3] net/designware: fix phy_addr type to int
To: barebox@lists.infradead.org

so we can pass -1 for auto detect

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/net/designware.h |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/net/designware.h b/include/net/designware.h
index 3f9f5b9..1c8a00e 100644
--- a/include/net/designware.h
+++ b/include/net/designware.h
@@ -2,7 +2,7 @@
 #define __DWC_UNIMAC_H
 
 struct dwc_ether_platform_data {
-	u8 phy_addr;
+	int phy_addr;
 	void (*fix_mac_speed)(int speed);
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
