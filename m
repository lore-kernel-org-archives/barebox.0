Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bCa93-0001xn-Os
 for barebox@lists.infradead.org; Mon, 13 Jun 2016 22:15:46 +0000
Received: by mail-lf0-x244.google.com with SMTP id j191so3031022lfb.3
 for <barebox@lists.infradead.org>; Mon, 13 Jun 2016 15:15:25 -0700 (PDT)
Received: from localhost.localdomain (ppp109-252-109-196.pppoe.spdop.ru.
 [109.252.109.196])
 by smtp.gmail.com with ESMTPSA id k6sm1295064lbd.49.2016.06.13.15.15.22
 for <barebox@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 13 Jun 2016 15:15:23 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 14 Jun 2016 01:15:02 +0300
Message-Id: <1465856107-24133-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
References: <1465856107-24133-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/6] clk: ar933x: fix copyright header
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk-ar933x.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk-ar933x.c b/drivers/clk/clk-ar933x.c
index 373f8cc..ffbd4df 100644
--- a/drivers/clk/clk-ar933x.c
+++ b/drivers/clk/clk-ar933x.c
@@ -1,7 +1,7 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2014 Antony Pavlov <antonynpavlov@gmail.com>
  *
- * Based on the Linux Tegra clock code
+ * Based on the Linux ath79 clock code
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
