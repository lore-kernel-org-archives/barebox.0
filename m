Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp.mei.co.jp ([133.183.100.20])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YGm0k-0002E1-8a
 for barebox@lists.infradead.org; Thu, 29 Jan 2015 10:07:43 +0000
Received: from mail-gw.jp.panasonic.com ([157.8.1.157])
 by smtp.mei.co.jp (8.12.11.20060614/3.7W/kc-maile13) with ESMTP id
 t0TA7K56020330
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 19:07:20 +0900 (JST)
Received: from epochmail.jp.panasonic.com ([157.8.1.130])
 by mail.jp.panasonic.com (8.11.6p2/3.7W/kc-maili13) with ESMTP id t0TA7KJ22504
 for <barebox@lists.infradead.org>; Thu, 29 Jan 2015 19:07:20 +0900
From: Masahiro Yamada <yamada.m@jp.panasonic.com>
Date: Thu, 29 Jan 2015 19:07:16 +0900
Message-Id: <1422526036-30170-1-git-send-email-yamada.m@jp.panasonic.com>
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
Subject: [PATCH v2] ARM: delete useless and wrong comments
To: barebox@lists.infradead.org

These comments are wrong.  Anyway, they do not carry useful
information.  Delete.

Signed-off-by: Masahiro Yamada <yamada.m@jp.panasonic.com>
---

Perhaps, this might be preferable.

Sascha,
If you like, please replace the former one.
(Or you can keep v1 as it is, of course.)

I leave it to you.


Changes in v2:
  - Delete rather than fix them.

 arch/arm/cpu/mmu.c   | 2 --
 arch/arm/cpu/start.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 09fe8d5..e733ec4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -1,6 +1,4 @@
 /*
- * start-pbl.c
- *
  * Copyright (c) 2009-2013 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index 1c29219..1fc7b52 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -1,6 +1,4 @@
 /*
- * start-arm.c
- *
  * Copyright (c) 2010 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
