Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvW-000669-CW
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:09 +0000
Received: by mail-pl1-x62d.google.com with SMTP id g18so8475847plq.0
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:14 -0700
Message-Id: <20200331184722.22707-16-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 15/23] ARM: zii-vf610-dev: Add newline to end of board.c
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add newline to end of board.c so that git doesn't complain.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 35fc9e404..6445025b2 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -194,4 +194,4 @@ static int zii_vf610_register_emmc_bbu(void)
 
 	return 0;
 }
-late_initcall(zii_vf610_register_emmc_bbu);
\ No newline at end of file
+late_initcall(zii_vf610_register_emmc_bbu);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
