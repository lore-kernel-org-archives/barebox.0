Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cnolC-0005Df-N7
 for barebox@lists.infradead.org; Tue, 14 Mar 2017 15:53:22 +0000
Received: by mail-pg0-x242.google.com with SMTP id g2so20813265pge.2
 for <barebox@lists.infradead.org>; Tue, 14 Mar 2017 08:52:57 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 14 Mar 2017 08:52:12 -0700
Message-Id: <20170314155222.11657-2-andrew.smirnov@gmail.com>
In-Reply-To: <20170314155222.11657-1-andrew.smirnov@gmail.com>
References: <20170314155222.11657-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/11] clocksource: at91: Add DT compatibility table
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/clocksource/timer-atmel-pit.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index cc7ad2f..d59efa6 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -102,9 +102,18 @@ static int at91_pit_probe(struct device_d *dev)
 	return init_clock(&cs);
 }
 
+static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {
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
