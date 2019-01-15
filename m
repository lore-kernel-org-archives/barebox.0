Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVIA-0005g6-8A
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:26:37 +0000
Received: by mail-pf1-x442.google.com with SMTP id 64so1838021pfr.9
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:34 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:25:49 -0800
Message-Id: <20190115202601.24831-6-andrew.smirnov@gmail.com>
In-Reply-To: <20190115202601.24831-1-andrew.smirnov@gmail.com>
References: <20190115202601.24831-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 05/17] regulator: Assume probe deferral instead of missing
 regulator
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't report requested regulator (via of_regulator_get()) as
non-existent if said regulator is missing from regulator list. Instead
report it as probe deferral to give other, unprobed, drivers a chance
to resolve this.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/core.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 795dcdb8c1..4ca035ae94 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -227,7 +227,12 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 		}
 	}
 
-	ri = ERR_PTR(-ENODEV);
+	/*
+	 * It is possible that regulator we are looking for will be
+	 * added in future initcalls, so, instead of reporting a
+	 * complete failure report probe deferral
+	 */
+	ri = ERR_PTR(-EPROBE_DEFER);
 out:
 	free(propname);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
