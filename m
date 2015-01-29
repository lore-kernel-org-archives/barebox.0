Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGgLW-0003bi-Re
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 04:04:48 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile14) with ESMTP id
 t0T44PFK022535
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 13:04:25 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili12) with ESMTP id t0T44Po27661
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 13:04:25 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 13:04:23 +0900
Message-Id: <1422504263-9317-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH] ARM: fix file names in comment blocks
To: barebox@lists.infradead.org

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

Or delete?
They do not carry useful information.


 arch/arm/cpu/mmu.c   | 2 +-
 arch/arm/cpu/start.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 09fe8d5..a507954 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -1,5 +1,5 @@
 /*
- * start-pbl.c
+ * mmu.c
  *
  * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 1c29219..0c85430 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -1,5 +1,5 @@
 /*
- * start-arm.c
+ * start.c
  *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
