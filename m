Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gGCIx-0003AF-AA
 for barebox@lists.infradead.org; Sat, 27 Oct 2018 00:18:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id 30-v6so1189466plb.10
 for <barebox@lists.infradead.org>; Fri, 26 Oct 2018 17:18:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 26 Oct 2018 17:17:48 -0700
Message-Id: <20181027001748.26931-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] partitions: efi: Constify force_gpt
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

No one is modifying 'force_gpt', so constify it to reflect that fact.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/partitions/efi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 64de4cb32..c3ec4f246 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -23,7 +23,7 @@
 #include "efi.h"
 #include "parser.h"
 
-static int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
+static const int force_gpt = IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_NO_FORCE);
 
 /**
  * efi_crc32() - EFI version of crc32 function
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
