Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giCH2-0004ES-FN
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 05:56:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id u6so7720156plm.8
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 21:56:00 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 21:55:12 -0800
Message-Id: <20190112055524.7733-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190112055524.7733-1-andrew.smirnov@gmail.com>
References: <20190112055524.7733-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 06/18] regulator: Add primitive support for deferred probe
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Don't report requested regulator (via of_regulator_get()) as
non-existent if said regulator is missing from regulator list. Instead
rely on driver_deferred_probe_check_state() to properly declare
regulator as such after all of the initcalls were done and no further
missing dependencies could be resolved.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/regulator/core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 795dcdb8c1..a5ac8f3c94 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -227,7 +227,13 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 		}
 	}
 
-	ri = ERR_PTR(-ENODEV);
+	/*
+	 * It is possible that regulator we are looking for will be
+	 * added in future initcalls, so, instead of reporting a
+	 * complete failure we see if probe deferral is more
+	 * appropriate
+	 */
+	ri = ERR_PTR(driver_deferred_probe_check_state(dev));
 out:
 	free(propname);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
