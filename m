Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x22f.google.com ([2a00:1450:4010:c04::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCXmV-0005xy-Dp
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 17:35:15 +0000
Received: by mail-lb0-f175.google.com with SMTP id 10so1172248lbg.34
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 10:34:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 30 Jul 2014 21:34:36 +0400
Message-Id: <1406741676-1641-6-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
References: <1406741676-1641-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 5/5] led: triggers: fix "no previous prototype for
 'trigger_init'" warning
To: barebox@lists.infradead.org

Here is compiler's message:

    drivers/led/led-triggers.c:148:5: warning: no previous prototype for 'trigger_init' [-Wmissing-prototypes]
    int trigger_init(void)
        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/led/led-triggers.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/led/led-triggers.c b/drivers/led/led-triggers.c
index 1a5a09f..c5484d5 100644
--- a/drivers/led/led-triggers.c
+++ b/drivers/led/led-triggers.c
@@ -145,7 +145,7 @@ int led_get_trigger(enum led_trigger trigger)
 	return led_get_number(triggers[trigger].led);
 }
 
-int trigger_init(void)
+static int trigger_init(void)
 {
 	return poller_register(&trigger_poller);
 }
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
