Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo5.mail-out.ovh.net ([188.165.51.82]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGpyZ-0005zF-01
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 11:40:23 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id B0BE0FFB652
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2012 13:46:23 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 26 Sep 2012 13:37:51 +0200
Message-Id: <1348659472-7038-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120926110244.GH24458@pengutronix.de>
References: <20120926110244.GH24458@pengutronix.de>
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
Subject: [PATCH 1/2] calao: at91 qil/tny/usb auto detect the phy addr
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/qil-a9260/init.c |    2 +-
 arch/arm/boards/tny-a926x/init.c |    2 +-
 arch/arm/boards/usb-a926x/init.c |    2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/qil-a9260/init.c b/arch/arm/boards/qil-a9260/init.c
index 6b1ed85..8a12b17 100644
--- a/arch/arm/boards/qil-a9260/init.c
+++ b/arch/arm/boards/qil-a9260/init.c
@@ -80,7 +80,7 @@ static void qil_a9260_add_device_mci(void) {}
 #ifdef CONFIG_CALAO_MB_QIL_A9260
 static struct at91_ether_platform_data macb_pdata = {
 	.flags		= AT91SAM_ETHER_RMII,
-	.phy_addr	= 0,
+	.phy_addr	= -1,
 };
 
 static void qil_a9260_phy_reset(void)
diff --git a/arch/arm/boards/tny-a926x/init.c b/arch/arm/boards/tny-a926x/init.c
index 1e8a732..ce36570 100644
--- a/arch/arm/boards/tny-a926x/init.c
+++ b/arch/arm/boards/tny-a926x/init.c
@@ -114,7 +114,7 @@ static void tny_a9260_add_device_nand(void)
 #ifdef CONFIG_DRIVER_NET_MACB
 static struct at91_ether_platform_data macb_pdata = {
 	.flags		= AT91SAM_ETHER_RMII,
-	.phy_addr	= 0,
+	.phy_addr	= -1,
 };
 
 static void __init ek_add_device_macb(void)
diff --git a/arch/arm/boards/usb-a926x/init.c b/arch/arm/boards/usb-a926x/init.c
index 2366c77..7b946a3 100644
--- a/arch/arm/boards/usb-a926x/init.c
+++ b/arch/arm/boards/usb-a926x/init.c
@@ -113,7 +113,7 @@ static void usb_a9260_add_device_nand(void)
 
 static struct at91_ether_platform_data macb_pdata = {
 	.flags		= AT91SAM_ETHER_RMII,
-	.phy_addr	= 0,
+	.phy_addr	= -1,
 };
 
 static void usb_a9260_phy_reset(void)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
