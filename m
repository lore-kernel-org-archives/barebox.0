Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCUct-0001li-Km
 for barebox@lists.infradead.org; Thu, 12 Mar 2020 20:40:22 +0000
Received: by mail-lj1-x243.google.com with SMTP id 19so8064741ljj.7
 for <barebox@lists.infradead.org>; Thu, 12 Mar 2020 13:40:16 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 12 Mar 2020 23:39:57 +0300
Message-Id: <20200312203957.22867-1-pmamonov@gmail.com>
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
Subject: [PATCH] pinctrl-single: fix parsing of `pinctrl-single, bits` property
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

According to dts/Bindings/pinctrl/pinctrl-single.txt:113 the correct order of
parameters is <offset, value, mask>.

Fixes: f7e0cae43 ('pinctrl-single: Handle "pinctrl-single,function-mask" dt property')
Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/pinctrl/pinctrl-single.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
index d4f411b4a..2cd58df93 100644
--- a/drivers/pinctrl/pinctrl-single.c
+++ b/drivers/pinctrl/pinctrl-single.c
@@ -87,8 +87,8 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
 
 		for (i = 0; i < rows; i++) {
 			offset = be32_to_cpup(mux + index++);
-			mask = be32_to_cpup(mux + index++);
 			val = be32_to_cpup(mux + index++);
+			mask = be32_to_cpup(mux + index++);
 			reg = pcs->read(pcs->base + offset);
 			reg &= ~mask;
 			reg |= val;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
