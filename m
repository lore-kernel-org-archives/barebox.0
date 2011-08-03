Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qobdp-0002QM-HO
	for barebox@lists.infradead.org; Wed, 03 Aug 2011 13:37:46 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 466F0FF979B
	for <barebox@lists.infradead.org>;
	Wed,  3 Aug 2011 15:38:52 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  3 Aug 2011 15:19:36 +0200
Message-Id: <1312377576-19425-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] Documentation/porting.txt: switch to resoruce
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/porting.txt |    9 ++-------
 1 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/Documentation/porting.txt b/Documentation/porting.txt
index ccfe598..80e35ae 100644
--- a/Documentation/porting.txt
+++ b/Documentation/porting.txt
@@ -32,15 +32,10 @@ extra-y += barebox.lds
   To see anything you have to at least register a console. In scb9328.c this
   looks like this:
 
-	static struct device_d scb9328_serial_device = {
-		.name     = "imx_serial",
-		.map_base = IMX_UART1_BASE,
-		.size     = 4096,
-	};
-
 	static int scb9328_console_init(void)
 	{
-		register_device(&scb9328_serial_device);
+		add_generic_device("imx_serial", -1, NULL, IMX_UART1_BASE, SZ_4K,
+				   IORESOURCE_MEM, NULL);
 		return 0;
 	}
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
