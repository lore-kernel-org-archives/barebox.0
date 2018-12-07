Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAbU-0000Yz-EB
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:31:17 +0000
Received: by mail-pf1-x442.google.com with SMTP id 64so1517252pfr.9
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:31:08 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:30:59 -0800
Message-Id: <20181207073059.1703-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181207073059.1703-1-andrew.smirnov@gmail.com>
References: <20181207073059.1703-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/3] led: core: Make use of ARRAY_AND_SIZE
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/led/core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index 34c514be8..431966d06 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -188,7 +188,7 @@ int led_blink(struct led *led, unsigned int on_ms, unsigned int off_ms)
 {
 	unsigned int pattern[] = {on_ms, off_ms};
 
-	return led_blink_pattern(led, pattern, 2);
+	return led_blink_pattern(led, ARRAY_AND_SIZE(pattern));
 }
 
 int led_flash(struct led *led, unsigned int duration_ms)
@@ -196,7 +196,7 @@ int led_flash(struct led *led, unsigned int duration_ms)
 	unsigned int pattern[] = {duration_ms, 0};
 	int ret;
 
-	ret = led_blink_pattern(led, pattern, 2);
+	ret = led_blink_pattern(led, ARRAY_AND_SIZE(pattern));
 	if (ret)
 		return ret;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
