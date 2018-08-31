Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvbn4-0000Ta-B6
 for barebox@lists.infradead.org; Fri, 31 Aug 2018 05:16:16 +0000
Received: by mail-pf1-x444.google.com with SMTP id k21-v6so4935029pff.11
 for <barebox@lists.infradead.org>; Thu, 30 Aug 2018 22:16:05 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 30 Aug 2018 22:15:47 -0700
Message-Id: <20180831051551.10662-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180831051551.10662-1-andrew.smirnov@gmail.com>
References: <20180831051551.10662-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/5] mfd: rave-sp: Fix incorrectly specified checksum type
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

RAVE SP firmware covered by "legacy" variant uses 16-bit CCITT
checksum algorithm. Change the code to correctly reflect that.

This is a backport of Linux kernel patch [1]

[1] https://lore.kernel.org/lkml/20180707024108.32373-5-andrew.smirnov@gmail.com/T/#m6251b0a4869dd303c21910fc99f2ce127cf8aae0

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/rave-sp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rave-sp.c b/drivers/mfd/rave-sp.c
index 47b1e68ba..a711633a0 100644
--- a/drivers/mfd/rave-sp.c
+++ b/drivers/mfd/rave-sp.c
@@ -653,7 +653,7 @@ static const struct rave_sp_checksum rave_sp_checksum_ccitt = {
 };
 
 static const struct rave_sp_variant rave_sp_legacy = {
-	.checksum = &rave_sp_checksum_8b2c,
+	.checksum = &rave_sp_checksum_ccitt,
 	.cmd = {
 		.translate = rave_sp_default_cmd_translate,
 	},
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
