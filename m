Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.171])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Sqi0G-0006Ov-S1
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 09:54:10 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Mon, 16 Jul 2012 11:53:58 +0200
Message-Id: <1342432439-27455-2-git-send-email-christian.kapeller@cmotion.eu>
In-Reply-To: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
References: <1342432439-27455-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH 1/2] tx51: ensure eth phy resets properly by driving reset pin
 explicitly.
To: barebox@lists.infradead.org


diff --git a/arch/arm/boards/karo-tx51/tx51.c b/arch/arm/boards/karo-tx51/tx51.c
index 096683a..d862a68 100644
--- a/arch/arm/boards/karo-tx51/tx51.c
+++ b/arch/arm/boards/karo-tx51/tx51.c
@@ -205,6 +205,12 @@ static inline void tx51_fec_init(void)
 	}
 
 	/*
+	 *Turn off phy power, be cautious and wait
+	 */
+	gpio_set_value(TX51_FEC_PHY_PWR, 0);
+	mdelay(20);
+
+	/*
 	 *Turn on phy power, leave in reset state
 	 */
 	gpio_set_value(TX51_FEC_PHY_PWR, 1);
@@ -212,7 +218,7 @@ static inline void tx51_fec_init(void)
 	/*
 	 * Wait some time to let the phy activate the internal regulator
 	 */
-	mdelay(10);
+	mdelay(20);
 
 	/*
 	 * Deassert reset, phy latches the rest of bootstrap pins
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
