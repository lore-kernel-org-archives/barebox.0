Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cl1WW-0007al-5B
 for barebox@lists.infradead.org; Mon, 06 Mar 2017 22:54:39 +0000
Received: by mail-pf0-x243.google.com with SMTP id j5so18949541pfb.3
 for <barebox@lists.infradead.org>; Mon, 06 Mar 2017 14:54:17 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  6 Mar 2017 14:53:17 -0800
Message-Id: <20170306225356.31475-7-andrew.smirnov@gmail.com>
In-Reply-To: <20170306225356.31475-1-andrew.smirnov@gmail.com>
References: <20170306225356.31475-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/45] clocksource: at91: Add DT compatibility table
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
