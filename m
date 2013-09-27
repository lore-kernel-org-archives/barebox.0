Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPSEz-0000jE-OT
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 07:13:30 +0000
Received: from mail195.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 69C5ADC1FC6
 for <barebox@lists.infradead.org>; Fri, 27 Sep 2013 09:13:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 27 Sep 2013 09:14:16 +0200
Message-Id: <1380266058-18501-6-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
References: <20130927071255.GB32444@ns203013.ovh.net>
 <1380266058-18501-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 6/8] animeo_ip: update to use console_open/close for rs485
 crossed detection
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/animeo_ip/init.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/animeo_ip/init.c b/arch/arm/boards/animeo_ip/init.c
index 2fee1ff..e6d2745 100644
--- a/arch/arm/boards/animeo_ip/init.c
+++ b/arch/arm/boards/animeo_ip/init.c
@@ -343,8 +343,6 @@ static void animeo_ip_shutdown(void)
 	 * and use it for decompress
 	 */
 	animeo_ip_shutdown_uart(IOMEM(AT91_DBGU + AT91_BASE_SYS));
-	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US0));
-	animeo_ip_shutdown_uart(IOMEM(AT91SAM9260_BASE_US1));
 }
 
 static int animeo_ip_console_init(void)
@@ -397,8 +395,10 @@ static int animeo_ip_cross_detect_init(void)
 		return -EINVAL;
 
 	at91_set_gpio_input(AT91_PIN_PC16, 0);
+	console_open(cs0);
 	cs0->set_mode(cs0, CONSOLE_MODE_RS485);
 	cs0->setbrg(cs0, 38400);
+	console_open(cs1);
 	cs1->set_mode(cs1, CONSOLE_MODE_RS485);
 	cs1->setbrg(cs1, 38400);
 
@@ -426,6 +426,9 @@ err:
 
 	pr_info("rs485 ports %scrossed\n", crossed ? "" : "not ");
 
+	console_close(cs0);
+	console_close(cs1);
+
 	return 0;
 }
 late_initcall(animeo_ip_cross_detect_init);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
