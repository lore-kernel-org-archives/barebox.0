Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x244.google.com ([2a00:1450:400c:c0c::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d5sfC-0007N7-7z
 for barebox@lists.infradead.org; Wed, 03 May 2017 11:41:47 +0000
Received: by mail-wr0-x244.google.com with SMTP id v42so22313185wrc.3
 for <barebox@lists.infradead.org>; Wed, 03 May 2017 04:41:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 May 2017 14:41:18 +0300
Message-Id: <20170503114118.10851-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] state: backend_bucket_circular: drop unused free_pattern
 constant
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/state/backend_bucket_circular.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/common/state/backend_bucket_circular.c b/common/state/backend_bucket_circular.c
index 832f44e599..7c81cdfaff 100644
--- a/common/state/backend_bucket_circular.c
+++ b/common/state/backend_bucket_circular.c
@@ -72,7 +72,6 @@ struct __attribute__((__packed__)) state_backend_storage_bucket_circular_meta {
 };
 
 static const uint32_t circular_magic = 0x14fa2d02;
-static const uint8_t free_pattern = 0xff;
 
 static inline struct state_backend_storage_bucket_circular
     *get_bucket_circular(struct state_backend_storage_bucket *bucket)
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
