Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYPh5-0002KK-RQ
 for barebox@lists.infradead.org; Wed, 05 Jun 2019 06:46:45 +0000
Received: by mail-lf1-x141.google.com with SMTP id j29so4327837lfk.10
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2019 23:46:43 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  5 Jun 2019 09:46:12 +0300
Message-Id: <20190605064612.13693-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] filetype: fix typo
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/filetype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index e2d707b156..9675009eb0 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -37,7 +37,7 @@ struct filetype_str {
 };
 
 static const struct filetype_str filetype_str[] = {
-	[filetype_unknown] = { "unknown", "unkown" },
+	[filetype_unknown] = { "unknown", "unknown" },
 	[filetype_arm_zimage] = { "ARM Linux zImage", "arm-zimage" },
 	[filetype_lzo_compressed] = { "LZO compressed", "lzo" },
 	[filetype_lz4_compressed] = { "LZ4 compressed", "lz4" },
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
