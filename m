Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEDxV-0003Sm-7X
 for barebox@lists.infradead.org; Tue, 17 Mar 2020 15:16:46 +0000
Received: by mail-lj1-x243.google.com with SMTP id o10so23306615ljc.8
 for <barebox@lists.infradead.org>; Tue, 17 Mar 2020 08:16:44 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue, 17 Mar 2020 18:16:11 +0300
Message-Id: <20200317151611.4313-1-pmamonov@gmail.com>
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
Subject: [PATCH] reset: add missing stub for device_reset()
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Fixes: 45b95b50cd0b (reset: add reset controller framework)
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 include/linux/reset.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index a22bcf9a5..0d4ff5d19 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -49,6 +49,12 @@ static inline void reset_control_put(struct reset_control *rstc)
 	WARN_ON(1);
 }
 
+static inline int device_reset(struct device_d *dev)
+{
+	WARN_ON(1);
+	return 0;
+}
+
 static inline int device_reset_us(struct device_d *dev, int us)
 {
 	WARN_ON(1);
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
