Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x244.google.com ([2607:f8b0:400e:c00::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1coWxn-0005cc-Ox
 for barebox@lists.infradead.org; Thu, 16 Mar 2017 15:05:20 +0000
Received: by mail-pf0-x244.google.com with SMTP id x63so5971513pfx.2
 for <barebox@lists.infradead.org>; Thu, 16 Mar 2017 08:04:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 16 Mar 2017 08:04:38 -0700
Message-Id: <20170316150448.11773-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170316150448.11773-1-andrew.smirnov@gmail.com>
References: <20170316150448.11773-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 01/11] clocksource: at91: Add DT compatibility table
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Acked-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clocksource/timer-atmel-pit.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index cc7ad2f..947a1e7 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -102,9 +102,18 @@ static int at91_pit_probe(struct device_d *dev)
 	return init_clock(&cs);
 }
 
+const static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {
+	{
+		.compatible = "atmel,at91sam9260-pit",
+	}, {
+		/* sentinel */
+	}
+};
+
 static struct driver_d at91_pit_driver = {
 	.name = "at91-pit",
 	.probe = at91_pit_probe,
+	.of_compatible = DRV_OF_COMPAT(at91_pit_dt_ids),
 };
 
 static int at91_pit_init(void)
-- 
2.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
