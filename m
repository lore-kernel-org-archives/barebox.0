Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egY1L-00012I-EA
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 15:40:31 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1egY17-0007Xl-Ub
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 16:40:13 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 30 Jan 2018 16:40:13 +0100
Message-Id: <20180130154013.8446-2-l.stach@pengutronix.de>
In-Reply-To: <20180130154013.8446-1-l.stach@pengutronix.de>
References: <20180130154013.8446-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] reset: add missing stub for reset_control_get
To: barebox@lists.infradead.org

Fixes: 45b95b50cd0b (reset: add reset controller framework)
Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 include/linux/reset.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index be0d1bb5a621..a22bcf9a5d64 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -37,6 +37,13 @@ static inline int reset_control_deassert(struct reset_control *rstc)
 	return 0;
 }
 
+static inline struct reset_control *
+reset_control_get(struct device_d *dev, const char *id)
+{
+	WARN_ON(1);
+	return NULL;
+}
+
 static inline void reset_control_put(struct reset_control *rstc)
 {
 	WARN_ON(1);
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
