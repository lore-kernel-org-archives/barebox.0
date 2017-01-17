Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x234.google.com ([2a00:1450:4010:c07::234])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cTWKv-0003LB-Hw
 for barebox@lists.infradead.org; Tue, 17 Jan 2017 16:10:19 +0000
Received: by mail-lf0-x234.google.com with SMTP id n124so43129730lfd.2
 for <barebox@lists.infradead.org>; Tue, 17 Jan 2017 08:09:56 -0800 (PST)
From: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
Date: Tue, 17 Jan 2017 19:09:31 +0300
Message-Id: <1484669371-6373-1-git-send-email-andrey.gusakov@cogentembedded.com>
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
Subject: [PATCH] video: tc358767: add copyright lines
To: barebox@lists.infradead.org
Cc: Andrey Gusakov <andrey.gusakov@cogentembedded.com>

Add copyright lines for Zodiac who paid for driver development.

Signed-off-by: Andrey Gusakov <andrey.gusakov@cogentembedded.com>
---
 drivers/video/tc358767.c |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/video/tc358767.c b/drivers/video/tc358767.c
index 72f55f4..ab2e86e 100644
--- a/drivers/video/tc358767.c
+++ b/drivers/video/tc358767.c
@@ -6,6 +6,8 @@
  *
  * Copyright (C) 2016 Pengutronix, Philipp Zabel <p.zabel@pengutronix.de>
  *
+ * Copyright (C) 2016 Zodiac Inflight Innovations
+ *
  * This program is free software; you can redistribute it and/or modify
  * it under the terms of the GNU General Public License as published by
  * the Free Software Foundation; either version 2 of the License, or
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
