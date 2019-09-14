Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x434.google.com ([2607:f8b0:4864:20::434])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i91PW-0002sA-Ko
 for barebox@lists.infradead.org; Sat, 14 Sep 2019 06:19:55 +0000
Received: by mail-pf1-x434.google.com with SMTP id w22so19416975pfi.9
 for <barebox@lists.infradead.org>; Fri, 13 Sep 2019 23:19:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 13 Sep 2019 23:19:36 -0700
Message-Id: <20190914061943.4715-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/8] ARM: zii-imx8mq-dev: Drop extra relocation code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Since commit 3ce6447849 ("ARM: zii-imx8mq-dev: Do setup_c() before
accessing global variables") appropriate relocation will be done
unconditionally, so we don't need to do it again in this corner case.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index 7eb8b684d2..8442beb4f4 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -155,8 +155,6 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
 	switch (system_type) {
 	default:
 		if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-			relocate_to_current_adr();
-			setup_c();
 			puts_ll("\n*********************************\n");
 			puts_ll("* Unknown system type: ");
 			puthex_ll(system_type);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
