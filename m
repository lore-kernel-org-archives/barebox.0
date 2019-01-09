Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh82X-0003q0-TT
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 07:12:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id g62so3209973pfd.12
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 23:12:37 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 23:11:55 -0800
Message-Id: <20190109071210.18896-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190109071210.18896-1-andrew.smirnov@gmail.com>
References: <20190109071210.18896-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 06/21] regulator: Add primitive support for deferred probe
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
index 795dcdb8c..a5ac8f3c9 100644
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
