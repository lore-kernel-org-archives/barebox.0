Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f173.google.com ([209.85.217.173])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UocQV-0006Jd-Q5
 for barebox@lists.infradead.org; Mon, 17 Jun 2013 16:37:09 +0000
Received: by mail-lb0-f173.google.com with SMTP id v1so2736855lbd.4
 for <barebox@lists.infradead.org>; Mon, 17 Jun 2013 09:36:45 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 17 Jun 2013 20:35:20 +0400
Message-Id: <1371486920-4614-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1371486920-4614-1-git-send-email-antonynpavlov@gmail.com>
References: <1371486920-4614-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: pbl: remove extra copyrights
To: barebox@lists.infradead.org

Remove Shinya Kuribayashi's copyright on the ADR macro
in start-pbl.S as we don't define this macro in
this file or even use it where.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start-pbl.S |    1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/mips/boot/start-pbl.S b/arch/mips/boot/start-pbl.S
index 702e291..b6d127a 100644
--- a/arch/mips/boot/start-pbl.S
+++ b/arch/mips/boot/start-pbl.S
@@ -2,7 +2,6 @@
  * Startup Code for MIPS CPU
  *
  * Copyright (C) 2011, 2012 Antony Pavlov <antonynpavlov@gmail.com>
- * ADR macro copyrighted (C) 2009 by Shinya Kuribayashi <skuribay@pobox.com>
  *
  * This file is part of barebox.
  * See file CREDITS for list of people who contributed to this project.
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
