Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAbV-0000Yy-FQ
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:31:19 +0000
Received: by mail-pl1-x643.google.com with SMTP id t13so1418251ply.13
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:31:07 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:30:58 -0800
Message-Id: <20181207073059.1703-2-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/3] led: core: Initialize blink_next_event with 0
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

A simpler way to make pattern to trigger immediately is to initialize
blink_next_event to 0 instead of current time value. Save a function
call and convert the code to do just that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/led/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/led/core.c b/drivers/led/core.c
index f11504ace..34c514be8 100644
--- a/drivers/led/core.c
+++ b/drivers/led/core.c
@@ -177,7 +177,7 @@ int led_blink_pattern(struct led *led, const unsigned int *pattern,
 				    pattern_len * sizeof(*led->blink_states));
 	led->blink_nr_states = pattern_len;
 	led->blink_next_state = 0;
-	led->blink_next_event = get_time_ns();
+	led->blink_next_event = 0;
 	led->blink = 1;
 	led->flash = 0;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
