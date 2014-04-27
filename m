Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp46.i.mail.ru ([94.100.177.106])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WeIbO-0007U0-39
 for barebox@lists.infradead.org; Sun, 27 Apr 2014 06:30:15 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 27 Apr 2014 10:29:47 +0400
Message-Id: <1398580187-4950-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] video: imx-ipu-v3: Fix ipu_ch_param_zero()
To: barebox@lists.infradead.org

Sizeof(*p) returns the size of the pointer, not the size of the
struct ipu_ch_param.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/video/imx-ipu-v3/imx-ipu-v3.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/video/imx-ipu-v3/imx-ipu-v3.h b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
index 7c48a7c..39255be 100644
--- a/drivers/video/imx-ipu-v3/imx-ipu-v3.h
+++ b/drivers/video/imx-ipu-v3/imx-ipu-v3.h
@@ -241,7 +241,7 @@ static inline void ipu_ch_param_zero(struct ipu_ch_param __iomem *p)
 	int i;
 	void __iomem *base = p;
 
-	for (i = 0; i < sizeof(*p) / sizeof(u32); i++)
+	for (i = 0; i < sizeof(struct ipu_ch_param) / sizeof(u32); i++)
 		ipuwritel("chp", 0, base + i * sizeof(u32));
 }
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
