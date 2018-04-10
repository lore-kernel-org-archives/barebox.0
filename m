Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f62rt-0004uc-BC
 for barebox@lists.infradead.org; Tue, 10 Apr 2018 23:40:07 +0000
Received: by mail-pf0-x243.google.com with SMTP id g14so12583pfh.3
 for <barebox@lists.infradead.org>; Tue, 10 Apr 2018 16:39:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 10 Apr 2018 16:39:43 -0700
Message-Id: <20180410233943.4372-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] pinctrl-vf610: Make use of BIT macro
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pinctrl/pinctrl-vf610.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-vf610.c b/drivers/pinctrl/pinctrl-vf610.c
index 4234263d3..a46b0e2ca 100644
--- a/drivers/pinctrl/pinctrl-vf610.c
+++ b/drivers/pinctrl/pinctrl-vf610.c
@@ -29,9 +29,9 @@
 enum {
 	PINCTRL_VF610_MUX_LINE_SIZE = 20,
 
-	PINCTRL_VF610_IBE = 1 << 0,
-	PINCTRL_VF610_OBE = 1 << 1,
-	PINCTRL_VF610_xBE = 0b11,
+	PINCTRL_VF610_IBE = BIT(0),
+	PINCTRL_VF610_OBE = BIT(1),
+	PINCTRL_VF610_xBE = PINCTRL_VF610_OBE | PINCTRL_VF610_IBE,
 };
 
 struct pinctrl_vf610 {
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
