Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i6kiq-0008Kq-Ij
 for barebox@lists.infradead.org; Sun, 08 Sep 2019 00:06:29 +0000
Received: by mail-pg1-x541.google.com with SMTP id n190so5612098pgn.0
 for <barebox@lists.infradead.org>; Sat, 07 Sep 2019 17:06:28 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat,  7 Sep 2019 17:06:15 -0700
Message-Id: <20190908000615.28868-7-andrew.smirnov@gmail.com>
In-Reply-To: <20190908000615.28868-1-andrew.smirnov@gmail.com>
References: <20190908000615.28868-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 7/7] ARM: zii-vf610-dev: Re-align SCU4's hostname with
 upstream kernel
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 0697a1660e..1d10f12f63 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -128,7 +128,7 @@ static int zii_vf610_dev_set_hostname(void)
 		{ "zii,vf610cfu1", "cfu1" },
 		{ "zii,vf610dev-b", "dev-rev-b" },
 		{ "zii,vf610dev-c", "dev-rev-c" },
-		{ "zii,vf610scu4-aib-c", "scu4-aib-rev-c" },
+		{ "zii,vf610scu4-aib", "scu4-aib" },
 	};
 
 	if (!of_machine_is_compatible("zii,vf610dev"))
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
