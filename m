Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by casper.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gMveP-000201-Ct
 for barebox@lists.infradead.org; Wed, 14 Nov 2018 13:56:14 +0000
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 14 Nov 2018 14:56:01 +0100
Message-Id: <1542203761-4417-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] arm: mach-omap: xload: Enable network interface
To: barebox@lists.infradead.org

Since f0624a701513 ("net: Do not route traffic to interfaces that are not up")
interfaces need to be "up" before used. To make enthernet boot work again
enable the interface after dhcp is set up.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/mach-omap/xload.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index bb58825dcf9c..47aa8275b9ee 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -257,6 +257,8 @@ static void *am33xx_net_boot(void)
 
 	dhcp_set_result(edev, dhcp_res);
 
+	edev->ifup = true;
+
 	/*
 	 * Older tftp server don't send the file size.
 	 * Then tftpfs needs temporary place to store the file.
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
