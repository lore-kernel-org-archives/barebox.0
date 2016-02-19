Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x235.google.com ([2a00:1450:4010:c04::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aWlm7-0008Pk-66
 for barebox@lists.infradead.org; Fri, 19 Feb 2016 14:11:16 +0000
Received: by mail-lb0-x235.google.com with SMTP id of3so47688079lbc.1
 for <barebox@lists.infradead.org>; Fri, 19 Feb 2016 06:10:54 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 19 Feb 2016 17:10:46 +0300
Message-Id: <1455891046-23236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH] fs: fat: fix copy-paste typo
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 fs/fat/fat.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/fs/fat/fat.c b/fs/fat/fat.c
index ece937d..49cd78f 100644
--- a/fs/fat/fat.c
+++ b/fs/fat/fat.c
@@ -1,7 +1,7 @@
 /*
- * ramfs.c - a malloc based filesystem
+ * fat.c - FAT filesystem barebox driver
  *
- * Copyright (c) 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ * Copyright (c) 2011 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
  *
  * See file CREDITS for list of people who contributed to this
  * project.
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
