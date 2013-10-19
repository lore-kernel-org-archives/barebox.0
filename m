Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x236.google.com ([2a00:1450:4013:c01::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VXVX3-0002ng-Ps
 for barebox@lists.infradead.org; Sat, 19 Oct 2013 12:21:26 +0000
Received: by mail-ea0-f182.google.com with SMTP id o10so2542781eaj.41
 for <barebox@lists.infradead.org>; Sat, 19 Oct 2013 05:21:05 -0700 (PDT)
Received: from mamamia.internal (a89-182-1-5.net-htp.de. [89.182.1.5])
 by mx.google.com with ESMTPSA id b42sm17147502eem.9.2013.10.19.05.21.03
 for <barebox@lists.infradead.org>
 (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
 Sat, 19 Oct 2013 05:21:04 -0700 (PDT)
From: Andre Heider <a.heider@gmail.com>
Date: Sat, 19 Oct 2013 14:20:50 +0200
Message-Id: <1382185254-29183-4-git-send-email-a.heider@gmail.com>
In-Reply-To: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
References: <1382185130-28995-1-git-send-email-a.heider@gmail.com>
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
Subject: [PATCH 05/10] ARM: bcm2835: register the clocksource driver earlier
To: barebox@lists.infradead.org

RPi's mailbox driver is used early and it needs clock functions to
handle timeouts.

Promote to a core_initcall().

Signed-off-by: Andre Heider <a.heider@gmail.com>
---
 drivers/clocksource/bcm2835.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d5fe0f0..d1df3d2 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -87,4 +87,4 @@ static int bcm2835_cs_init(void)
 {
 	return platform_driver_register(&bcm2835_cs_driver);
 }
-coredevice_initcall(bcm2835_cs_init);
+core_initcall(bcm2835_cs_init);
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
