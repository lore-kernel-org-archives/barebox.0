Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NLf4m-0005CV-SV
	for barebox@lists.infradead.org; Fri, 18 Dec 2009 15:49:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Dec 2009 16:47:52 +0100
Message-Id: <1261151305-18627-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
References: <1261151305-18627-1-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-2-git-send-email-s.hauer@pengutronix.de>
	<1261151305-18627-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/36] scb9328: setup chipselect the correct way
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 board/scb9328/scb9328.c |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/board/scb9328/scb9328.c b/board/scb9328/scb9328.c
index 6b86352..356c4b8 100644
--- a/board/scb9328/scb9328.c
+++ b/board/scb9328/scb9328.c
@@ -67,9 +67,7 @@ static struct device_d dm9000_dev = {
 
 static int scb9328_devices_init(void) {
 
-	/* adjust chipselects */
-	GPR(0) = 0x00800000;
-	GIUS(0) = 0x0043fffe;
+	imx_gpio_mode(PA23_PF_CS5);
 
 /* CS3 becomes CS3 by clearing reset default bit 1 in FMCR */
 	FMCR = 0x1;
-- 
1.6.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
