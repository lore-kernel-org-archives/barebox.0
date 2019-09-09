Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Ey2-0000RP-LJ
 for barebox@lists.infradead.org; Mon, 09 Sep 2019 08:24:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Sep 2019 10:24:07 +0200
Message-Id: <20190909082407.8631-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH] param: make dev_add_param_string_fixed value parameter const
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The function is so far unused and the parameter's only use is to be passed
as argument to dev_add_param_fixed which is const as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/param.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/param.h b/include/param.h
index b618a2305d89..dea699049739 100644
--- a/include/param.h
+++ b/include/param.h
@@ -272,7 +272,7 @@ static inline struct param_d *dev_add_param_string_ro(struct device_d *dev, cons
 }
 
 static inline struct param_d *dev_add_param_string_fixed(struct device_d *dev, const char *name,
-		char *value)
+		const char *value)
 {
 	return dev_add_param_fixed(dev, name, value);
 }
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
